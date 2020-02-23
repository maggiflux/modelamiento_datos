CREATE TABLE teachers (
name VARCHAR(50),
department VARCHAR(40),
id INT PRIMARY KEY);

CREATE TABLE courses 
(id INT PRIMARY KEY,
name VARCHAR(20));

CREATE TABLE students( 
rut VARCHAR(12)PRIMARY KEY, 
name VARCHAR (50),
course_id INT REFERENCES courses(id));

CREATE TABLE tests (
student_id VARCHAR(12) REFERENCES students(rut),teacher_id INT REFERENCES teachers(id));
