import mysql.connector

def connect_db():
    return mysql.connector.connect(
        host="localhost",  
        user='root',
        password='bruest2500',
        database="career_pathfinder"     
    )


