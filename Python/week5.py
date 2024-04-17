# File Creation
try:
    # Creating a new text file named "my_file.txt" in write mode ('w')
    with open("my_file.txt", "w") as file:
        # Writing at least three lines of text to the file
        file.write("This is line 1\n")
        file.write("12345\n")
        file.write("Line 3 with some numbers: 56789\n")
except IOError as e:
    print("Error:", e)
finally:
    print("File creation completed.")

# File Reading and Display
try:
    # Reading the contents of "my_file.txt"
    with open("my_file.txt", "r") as file:
        # Displaying the contents on the console
        print("Contents of my_file.txt:")
        for line in file:
            print(line.strip())
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied.")
finally:
    print("File reading completed.")

# File Appending
try:
    # Opening "my_file.txt" in append mode ('a')
    with open("my_file.txt", "a") as file:
        # Appending three additional lines of text to the existing content
        file.write("This is line 4\n")
        file.write("Another line with some text\n")
        file.write("And a final line\n")
except IOError as e:
    print("Error:", e)
finally:
    print("File appending completed.")
