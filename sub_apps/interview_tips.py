from database.database import connect_db  # Import database connection logic

def fetch_tips(category_name):
    db = connect_db()
    cursor = db.cursor()

    query = """
    SELECT TipDescription
    FROM InterviewTips
    WHERE Category = %s
    """
    cursor.execute(query, (category_name,))
    results = cursor.fetchall()

    cursor.close()
    db.close()
    return results

def start():
    print("Interview Tips")
    print("Choose a category to explore:")

    categories = [
        "1. Before Interview",
        "2. During Interview"
    ]

    for category in categories:
        print(category)

    choice = input("Enter the number of your choice: ")

    if choice == "1":
        selected_category = "Before Interview"
    elif choice == "2":
        selected_category = "During Interview"
    else:
        print("Invalid choice. Please select a valid option.")
        return

    print(f"\nFetching tips for {selected_category}...\n")

    # Fetch interview tips from the database
    tips = fetch_tips(selected_category)

    if tips:
        print("Here are some helpful tips:\n")
        for tip in tips:
            print(f"• {tip[0]}")
        print("\nGood luck with your interview!")
    else:
        print("No tips found for this category.")
