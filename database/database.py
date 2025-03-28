import mysql.connector

def connect_db():
    return mysql.connector.connect(
        host="localhost",  
        user='root',
        password='MomDaddy@2003',
        database="career_pathfinder"     
    )


