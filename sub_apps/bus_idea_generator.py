from database.database import connect_db

def fetch_ideas(category_name):
    db = connect_db()
    cursor = db.cursor()

    query = """
    SELECT idea, description, required_skills
    FROM business_ideas
    WHERE category = %s
    """
    cursor.execute(query, (category_name,))
    results = cursor.fetchall()

    cursor.close()
    db.close()
    return results

def generate():
    print("Business Idea Generator")
    print("Choose an industry you're interested in:")

    categories = [
        "1. Technology Innovation",
        "2. Health and Wellness",
        "3. Sustainability Solutions",
        "4. Education and Learning",
        "5. Digital Transformation",
        "6. Financial Technology",
        "7. Social Impact",
        "8. Creative Services",
        "9. Consumer Solutions",
        "10. Emerging Technologies"
    ]

    for category in categories:
        print(category)

    choice = int(input("Enter the number of your choice: "))

    if 1 <= choice <= 10:
        selected_category = categories[choice - 1].split(". ")[1]  # Extract the category name
        print(f"Fetching business ideas for {selected_category}...")

        # Fetch ideas from the database
        ideas = fetch_ideas(selected_category)

        if ideas:
            print("\nHere are some business ideas:\n")
            for idea, description, skills in ideas:
                print(f"Idea: {idea}\nDescription: {description}\nRequired Skills: {skills}")
                print("-" * 50)  # Draw a horizontal line
        else:
            print("No ideas found for this category.")
    else:
        print("Invalid choice. Please choose a number between 1 and 10.")
