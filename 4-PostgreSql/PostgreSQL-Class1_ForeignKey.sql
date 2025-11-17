CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
enrollment_date DATE
);

CREATE TABLE subjects (
subject_id SERIAL PRIMARY KEY,
subject_name VARCHAR(100) UNIQUE NOT NULL,
student_id INTEGER,
FOREIGN KEY (student_id) REFERENCES students(student_id) -- ENSURES ONE TO MANY RELATION
);

CREATE TABLE student_profiles (
profile_id SERIAL PRIMARY KEY,
student_id INTEGER UNIQUE, --ENSURES ONE TO ONE RELATION
bio TEXT,
linkedin VARCHAR(100),
FOREIGN KEY (student_id) REFERENCES students(student_id)
);


--Add students
INSERT INTO students (name, email, enrollment_date) VALUES
('Alice Johnson', 'alice@gmail.com', '2024-09-01'),
('Bob Smith', 'bob@gmail.com', '2024-09-01')
('Bob Bobbsky', 'bob123@gmail.com', '2024-09-01')

--Add subjects 
INSERT INTO subjects (subject_name, student_id) VALUES
('Databases', 1),
('NodeJS', 2),
('JavaScript', 2);

--Add profiles (one to one)
INSERT INTO student_profiles (student_id,bio,linkedin) VALUES
(2, 'Data science student', 'blabla123');

SELECT * FROM subjects






