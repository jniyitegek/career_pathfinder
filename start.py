#!/usr/bin/python3

import os
import mysql.connector
import getpass
import subprocess

def connect_to_mysql(username, password):
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user=username,
            password=password
        )
        return conn
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None

def create_database_if_not_exists(cursor, db_name):
    cursor.execute(f"CREATE DATABASE IF NOT EXISTS {db_name}")
    print(f"Database '{db_name}' is ready.")

def import_database(username, password, db_name, sql_file):
    try:
        command = f"mysql -u {username} -p{password} {db_name} < {sql_file}"
        result = subprocess.run(command, shell=True, capture_output=True, text=True)
        if result.returncode == 0:
            print("Database imported successfully!")
        else:
            print("Error importing database:", result.stderr)
    except Exception as e:
        print("Error:", e)

def update_database_py(db_username, db_password):
    db_file = "database/database.py"
    try:
        with open(db_file, "r") as file:
            content = file.readlines()
        
        with open(db_file, "w") as file:
            for line in content:
                if "user=" in line:
                    file.write(f"        user='{db_username}',\n")
                elif "password=" in line:
                    file.write(f"        password='{db_password}',\n")
                else:
                    file.write(line)
        print("database.py updated with new credentials.")
    except Exception as e:
        print("Error updating database.py:", e)

def install_dependencies():
    print("Installing dependencies...")
    subprocess.run("pip install -r requirements.txt", shell=True)

def main():
    print("Setting up Career Pathfinder App...\n")
    db_username = input("Enter your MySQL username: ")
    db_password = getpass.getpass("Enter your MySQL password: ")
    database_name = "career_pathfinder"
    sql_file = "db/career_pathfinder.sql"
    
    conn = connect_to_mysql(db_username, db_password)
    if conn:
        cursor = conn.cursor()
        create_database_if_not_exists(cursor, database_name)
        conn.commit()
        cursor.close()
        conn.close()
        
        import_database(db_username, db_password, database_name, sql_file)
        update_database_py(db_username, db_password)
        install_dependencies()
        
        start_now = input("Would you like to start the app now? (Y/N): ").strip().lower()
        if start_now == "y":
            print("Starting the app...")
            subprocess.run("python run.py", shell=True)
        else:
            print("Setup complete. You can start the app manually using 'python run.py'.")
    else:
        print("Failed to connect to MySQL. Please check your credentials and try again.")

if __name__ == "__main__":
    main()
