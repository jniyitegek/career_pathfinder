from database.database import connect_db  # Import database connection logic

def fetch_tips(category_name):
    db = connect_db()
    cursor = db.cursor()

    query = """
    SELECT title, description, best_practices, common_mistakes
    FROM writing_tips
    WHERE category = %s
    """
    cursor.execute(query, (category_name,))
    results = cursor.fetchall()

    cursor.close()
    db.close()
    return results

def start():
    print("Resume & Cover Letter Writing Tips")
    print("Choose a category to explore:")

    categories = [
        "1. Resume - Contact Information",
        "2. Resume - Education",
        "3. Resume - Work Experience",
        "4. Resume - Skills",
        "5. Cover Letter - Opening",
        "6. Cover Letter - Body",
        "7. Cover Letter - Closing",
        "8. Resume - Formatting",
        "9. Cover Letter - Formatting",
        "10. Universal Tips"
    ]

    for category in categories:
        print(category)

    choice = int(input("Enter the number of your choice: "))

    if 1 <= choice <= 10:
        selected_category = categories[choice - 1].split(". ")[1]  # Extract the category name
        print(f"\nFetching tips for {selected_category}...\n")

        # Fetch writing tips from the database
        tips = fetch_tips(selected_category)

        if tips:
            print("Here are some tips to help you:\n")
            for title, description, best_practices, common_mistakes in tips:
                print(f"Title: {title}\nDescription: {description}\n")
                print(f"Best Practices:\n{best_practices}\n")
                print(f"Common Mistakes:\n{common_mistakes}")
                print("-" * 50)  # Draw a horizontal line
        else:
            print("No tips found for this category.")
    else:
        print("Invalid choice. Please select a valid option.")
