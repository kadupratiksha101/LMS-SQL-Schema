drop database if exists LMS;        
create database if not exists LMS;
select database();
use LMS;   

-- 1. Student Table
CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- 2. Instructor Table
CREATE TABLE Instructor (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);


-- 3. Course Table
CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    credits INT NOT NULL,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id) on delete cascade
);

-- 4. Assignment Table
CREATE TABLE Assignment (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    due_date DATE NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES Course(course_id) on delete cascade
);

-- 5. Submission Table
CREATE TABLE Submission (
    submission_id INT PRIMARY KEY AUTO_INCREMENT,
    content TEXT NOT NULL,
    submit_date DATE NOT NULL,
    assignment_id INT,
    student_id INT,
    FOREIGN KEY (assignment_id) REFERENCES Assignment(assignment_id) on delete cascade,
    FOREIGN KEY (student_id) REFERENCES Student(student_id) on delete cascade
);

-- 6. Grade Table
CREATE TABLE Grade (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    marks DECIMAL(5,2) NOT NULL,
    remarks VARCHAR(255),
    submission_id INT,
    FOREIGN KEY (submission_id) REFERENCES Submission(submission_id) on delete cascade
);

-- Insert into Student
INSERT INTO Student (name, email) VALUES
('Amit Kumar', 'amit.kumar@example.com'),
('Pooja Singh', 'pooja.singh@example.com'),
('Rohit Sharma', 'rohit.sharma@example.com'),
('Sneha Patil', 'sneha.patil@example.com'),
('Vikas Nair', 'vikas.nair@example.com'),
('Meena Yadav', 'meena.yadav@example.com'),
('Rahul Deshmukh', 'rahul.deshmukh@example.com'),
('Kiran Shah', 'kiran.shah@example.com'),
('Anita Reddy', 'anita.reddy@example.com'),
('Sanjay Malhotra', 'sanjay.malhotra@example.com');

-- Insert into Instructor
INSERT INTO Instructor (name, email) VALUES
('Dr. Anjali Mehta', 'anjali.mehta@example.com'),
('Prof. Ramesh Gupta', 'ramesh.gupta@example.com'),
('Dr. Kavita Sharma', 'kavita.sharma@example.com'),
('Prof. Suresh Iyer', 'suresh.iyer@example.com'),
('Dr. Priya Kulkarni', 'priya.kulkarni@example.com'),
('Prof. Vivek Menon', 'vivek.menon@example.com'),
('Dr. Sneha Joshi', 'sneha.joshi@example.com'),
('Prof. Rajesh Verma', 'rajesh.verma@example.com'),
('Dr. Neha Kapoor', 'neha.kapoor@example.com'),
('Prof. Arjun Rao', 'arjun.rao@example.com');


-- Insert into Course
INSERT INTO Course (title, credits, instructor_id) VALUES
('Database Management Systems', 4, 1),
('Operating Systems', 3, 2),
('Data Structures', 4, 3),
('Computer Networks', 3, 4),
('Artificial Intelligence', 4, 5),
('Software Engineering', 3, 6),
('Cloud Computing', 4, 7),
('Cyber Security', 3, 8),
('Machine Learning', 4, 9),
('Web Development', 3, 10);

-- Insert into Assignment
INSERT INTO Assignment (title, due_date, course_id) VALUES
('ER Diagram Project', '2025-09-20', 1),
('Process Scheduling', '2025-09-25', 2),
('Binary Tree Implementation', '2025-09-28', 3),
('Network Protocols Report', '2025-09-30', 4),
('AI Mini Project', '2025-10-05', 5),
('Software Design Document', '2025-10-10', 6),
('Cloud Deployment Task', '2025-10-15', 7),
('Encryption Algorithms', '2025-10-18', 8),
('ML Model Training', '2025-10-20', 9),
('Responsive Website', '2025-10-25', 10);

-- Insert into Submission
INSERT INTO Submission (content, submit_date, assignment_id, student_id) VALUES
('Submitted ER diagram and explanation.', '2025-09-19', 1, 1),
('Submitted process scheduling code.', '2025-09-23', 2, 2),
('Binary tree implementation in C++.', '2025-09-27', 3, 3),
('Report on TCP/IP protocols.', '2025-09-29', 4, 4),
('AI chatbot mini project.', '2025-10-03', 5, 5),
('Software design document draft.', '2025-10-09', 6, 6),
('AWS deployment files.', '2025-10-14', 7, 7),
('AES encryption implementation.', '2025-10-17', 8, 8),
('Trained ML model and results.', '2025-10-19', 9, 9),
('Responsive portfolio website.', '2025-10-24', 10, 10);

-- Insert into Grade
INSERT INTO Grade (marks, remarks, submission_id) VALUES
(85.5, 'Good work on ER diagram', 1),
(78.0, 'Needs improvement in efficiency', 2),
(92.0, 'Excellent coding standards', 3),
(80.0, 'Well-written report', 4),
(95.0, 'Innovative project', 5),
(70.0, 'Document structure needs improvement', 6),
(88.0, 'Correct deployment setup', 7),
(82.5, 'Good implementation of encryption', 8),
(90.0, 'Model accuracy is high', 9),
(93.0, 'Clean and responsive design', 10);

select * from student;
desc student;
select * from instructor;
select * from course;
select * from assignment;
select * from submission;
desc submission;
select * from grade;

-- CRUD operation
-- 1.Insert new data
-- Add a new student
INSERT INTO Student (name, email)
VALUES ('Deepak Mishra', 'deepak.mishra@example.com');
select * from student;

-- 2. retrive data
-- Get all courses with credits > 3
SELECT title, credits FROM Course WHERE credits > 3;

-- 3. update 
select * from student;
-- Change email of a student

UPDATE Student
SET email = 'amit.new@example.com'
WHERE name = 'Amit Kumar';

-- 4.delete
-- Delete a submission
DELETE FROM Submission WHERE submission_id = 5;
select * from submission;











/* -- Delete a student (will fail if foreign key references exist unless ON DELETE CASCADE is used)
DELETE FROM Student WHERE student_id = 10;*/







                                      