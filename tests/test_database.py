from database import database

def test_connection():
    try:
        conn = database.connect()
        print("Database connection successful!")
        conn.close()
    except Exception as e:
        print(f"Database connection failed: {e}")

if __name__ == "__main__":
    test_connection()
