from database.database import connect_db  # Import database connection logic

def fetch_microlearning(keyword):
    db = connect_db()
    cursor = db.cursor()

    query = """
    SELECT title, tips, resource_link
    FROM skills_microlearning
    WHERE title LIKE %s
    """
    cursor.execute(query, (f"%{keyword}%",))
    results = cursor.fetchall()

    cursor.close()
    db.close()
    return results

def start():
    print("Skills Microlearning Platform")
    print("Choose a category you're interested in:")

    categories = [
        "1. Professional Development Skills",
        "2. Technical Skills",
        "3. Leadership and Management Skills",
        "4. Financial and Business Skills",
        "5. Communication and Soft Skills",
        "6. Technology and Innovation Skills",
        "7. Personal Development Skills",
        "8. Research and Academic Skills",
        "9. Creative and Design Skills",
        "10. Health and Wellness Skills"
    ]

    keywords = [
        "Professional", "Technical", "Leadership", "Financial", "Communication",
        "Technology", "Personal", "Research", "Creative", "Health"
    ]

    for category in categories:
        print(category)

    choice = int(input("Enter the number of your choice: "))

    if 1 <= choice <= 10:
        selected_keyword = keywords[choice - 1]  # Get the corresponding keyword for filtering
        print(f"\nFetching microlearning resources for {categories[choice - 1]}...\n")

        # Fetch microlearning resources from the database
        resources = fetch_microlearning(selected_keyword)

        if resources:
            print("Here are some recommended resources:\n")
            for title, tips, link in resources:
                print(f"Title: {title}\nTips: {tips}\nResource Link: {link}")
                print("-" * 50)  # Draw a horizontal line
        else:
            print("No microlearning resources found for this category.")
    else:
        print("Invalid choice. Please choose a number between 1 and 10.")

