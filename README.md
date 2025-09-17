Learning Management System (LMS) – SQL Schema & ER Diagram
<p align="center"> <img src="https://img.shields.io/badge/SQL-LMS-blue?style=for-the-badge&logo=mysql&logoColor=white" /> <img src="https://img.shields.io/badge/ER-Diagram-success?style=for-the-badge&logo=diagramsdotnet&logoColor=white" /> <img src="https://img.shields.io/badge/DBMS-Project-orange?style=for-the-badge&logo=postgresql&logoColor=white" /> </p>
📖 Project Overview

This project demonstrates the SQL schema design for a Learning Management System (LMS) along with its Entity Relationship (ER) Diagram.
The schema models students, instructors, courses, assignments, submissions, and grades — creating a realistic academic database system.

The goal is to practice database design, ER modeling, and CRUD operations while simulating a real-world education platform.

🏗️ ER Diagram

👉 (Add your ER Diagram here – export from dbdiagram.io, draw.io, or Lucidchart)

![ER Diagram](er-diagram.png)


The ER diagram shows the relationships between entities like:

One Instructor teaches many Courses

One Course has many Assignments

One Student makes many Submissions

Each Submission receives a Grade

🛠️ Database Schema

Database Name: LMS

📂 Tables

Student 👩‍🎓 → Student details (ID, Name, Email)

Instructor 👨‍🏫 → Instructor details (ID, Name, Email)

Course 📘 → Courses with credits & instructor reference

Assignment 📝 → Assignments with due dates & course reference

Submission 📤 → Student submissions for assignments

Grade 🏆 → Marks & feedback for submissions

📂 Project Files

LMS Schema.sql → SQL script (schema creation, inserts, CRUD operations)

er-diagram.png → ER diagram visualization (to be added)

📸 Example Queries
🔹 Insert a Student
INSERT INTO Student (name, email)
VALUES ('Deepak Mishra', 'deepak.mishra@example.com');

🔹 Retrieve Courses with Credits > 3
SELECT title, credits 
FROM Course 
WHERE credits > 3;

🔹 Update Student Email
UPDATE Student
SET email = 'amit.new@example.com'
WHERE name = 'Amit Kumar';

🔹 Delete a Submission
DELETE FROM Submission 
WHERE submission_id = 5;

🎯 Learning Outcomes

✔️ Strong understanding of database schema design
✔️ Use of Primary & Foreign Keys
✔️ Hands-on with ON DELETE CASCADE constraints
✔️ CRUD operations in SQL
✔️ Mapping real-world system into ER model

⚡ Suggestions for Enhancement

Add ER diagram image (critical for GitHub readers ✅)

Include joins-based queries (e.g., list student grades per course)

Extend with views & stored procedures for reporting

Document normalization process (1NF → 3NF) for academic depth

Add sample dataset exports so others can test easily

🤝 Contributing

Contributions are welcome! Feel free to fork this repo and enhance the schema with new queries or entities 🚀

📬 Contact

👩‍💻 Your Name
🔗 LinkedIn
 | GitHub