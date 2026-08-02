# Student Record Management System

A menu-driven Bash Shell Scripting project for managing student records using a text file as the database. This project demonstrates core shell scripting concepts such as functions, loops, conditional statements, file handling, logging, and backups.

Features

- Add a new student
- View all student records
- Search a student by Roll Number
- Delete a student record
- Count total student records
- Create database backups
- Activity logging with timestamps
- Menu-driven interface

Technologies Used

- Bash Shell Scripting
- Linux
- Standard Linux commands ("grep", "cp", "wc", "mkdir", "cat", "date")

Project Structure

Student-Record-System/
├── student_record.sh
├── students.txt
├── README.md
├── backup/
└── logs/
    └── activity.log

Requirements

- Linux Operating System
- Bash Shell

Installation

1. Clone the repository:

git clone https://github.com/Akshay94os/Student-Record-System.git

2. Move to the project directory:

cd Student-Record-System

3. Give execute permission:

chmod +x student_record.sh

4. Run the script:

./student_record.sh

Menu

1. Add Student
2. View Students
3. Search Student
4. Delete Student
5. Count Students
6. Backup Database
7. Exit

Concepts Covered

- Variables
- Functions
- "if" Statements
- "case" Statement
- "while" Loop
- File Handling
- User Input
- Logging
- Backup Creation
- Text Processing with "grep"

Sample Student Record

101|Akshay|MCA|90
102|Rahul|MCA|85

Future Enhancements

- Update Student Record
- Sort Records
- Export to CSV
- Password Protection
- Colored Terminal Output
- Report Generation

Author

Akshay Subhash Borase

GitHub: https://github.com/Akshay94os

License

This project is licensed under the MIT License.
