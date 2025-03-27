## run.py - Main entry point
# Handles user input, displays menu, and directs users to sub-apps.

from sub_apps import microlearning, bus_idea_generator, career_pathfinder, resumeCoverletter, interview_tips

def main():
    print("Welcome to Career PathFinder!")
    user_name = input("Please enter your name: ")
    
    while True:
        print(f"\nHello, {user_name}! Choose an option:")
        print("1. Career Path Recommendation")
        print("2. Resume & Cover Letter Builder")
        print("3. Business Idea Generator")
        print("4. Job Interview Coach")
        print("5. Skills Microlearning Platform")
        print("6. Exit")
        
        choice = input("Enter your choice: ")
        if choice == "1":
            career_pathfinder.start()
        elif choice == "2":
            resumeCoverletter.start()
        elif choice == "3":
            bus_idea_generator.generate()
        elif choice == "4":
            interview_tips.start()
        elif choice == "5":
            microlearning.start()
        elif choice == "6":
            print("Goodbye!")
            break
        else:
            print("Invalid choice. Please select a valid option.")

if __name__ == "__main__":
    main()
