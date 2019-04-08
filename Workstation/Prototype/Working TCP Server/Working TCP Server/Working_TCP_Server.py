from Functions import SetUp, RunAll, PrintLastRun, Initialize

Initialize()

choice = ''
while choice != '4':

    print("\n")
    print("[1] Set Up")
    print("[2] Run All")
    print("[3] Print Last Run")
    print("[4] Quit")

    # Ask for the user's choice.
    choice = input("\nWhat would you like to do? ")

    # Respond to the user's choice.
    if choice == '1':
        SetUp()
    elif choice == '2':
        RunAll()
    elif choice == '3':
        PrintLastRun()
    elif choice == '4':
        print("\nQuitting Application.\n")
    else:
        print("\nNot a valid option, please try again.")
print("Thanks again, bye now.")





