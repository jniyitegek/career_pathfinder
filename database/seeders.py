from database import connect_db

def seed_data():
    db = connect_db()
    cursor = db.cursor()

    jobs = [
        ("Software Developer", "Programming, Problem-Solving", "https://example.com/dev"),
        ("Technical Writer", "Writing, Research", "https://example.com/writer"),
        ("Data Analyst", "Python, SQL, Excel", "https://example.com/data")
    ]

    cursor.executemany("INSERT INTO jobs (title, skills_required, job_link) VALUES (%s, %s, %s)", jobs)
    
    db.commit()
    cursor.close()
    db.close()
    print("✅ Sample job data inserted!")

if __name__ == "__main__":
    seed_data()

