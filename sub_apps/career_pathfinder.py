from database.database import connect_db  # Import database connection logic

def fetch_jobs(category_name):
    db = connect_db()
    cursor = db.cursor()

    query = """
    SELECT job_title, skills_required, job_links
    FROM job_recommendations
    WHERE category = %s
    """
    cursor.execute(query, (category_name,))
    results = cursor.fetchall()

    cursor.close()
    db.close()
    return results

def start():
    print("Job Recommendations")
    print("Choose a category you're interested in:")

    categories = [
        "1. Engineering",
        "2. Medicine",
        "3. Technology",
        "4. Business",
        "5. Creative Arts",
        "6. Education",
        "7. Environmental",
        "8. Finance",
        "9. Social Impact",
        "10. Research & Development"
    ]

    for category in categories:
        print(category)

    choice = int(input("Enter the number of your choice: "))

    if 1 <= choice <= 10:
        selected_category = categories[choice - 1].split(". ")[1]  # Extract the category name
        print(f"Fetching job recommendations for {selected_category}...")

        # Fetch jobs from the database
        jobs = fetch_jobs(selected_category)

        if jobs:
            print("\nHere are some job recommendations:\n")
            for job_title, skills, links in jobs:
                print(f"Job Title: {job_title}\nRequired Skills: {skills}\nJob Links: {links}")
                print("-" * 50)  # Draw a horizontal line
        else:
            print("No jobs found for this category.")
    else:
        print("Invalid choice. Please choose a number between 1 and 10.")
