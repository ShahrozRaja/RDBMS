
-- BASIC QUERIES

CREATE DATABASE shahroz;
SHOW DATABASES;
USE shahroz;
SHOW TABLES;
CREATE TABLE student(
    student_id INT AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL,
    course VARCHAR(25) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
DESCRIBE student;

INSERT INTO student(name, course) VALUES('Vibhuti', 'Computer Science');
INSERT INTO student(name, course) VALUES('Anita', 'Chemistry');
INSERT INTO student(name, course) VALUES('Manmohan', 'Bhojpuri');
INSERT INTO student(name, course) VALUES('Angoori', 'English Literature');
INSERT INTO student(name, course) VALUES('Babita', 'Sociology');

SELECT *
FROM student;

ALTER TABLE student ADD sex VARCHAR(1);
ALTER TABLE student ADD percentage DECIMAL(4,2);

UPDATE student
SET sex = 'M', percentage = 90.0
WHERE student.student_id = 1;

UPDATE student
SET sex = 'F', percentage = 85.0
WHERE name = 'Anita' AND course = 'Chemistry';

UPDATE student
SET sex = 'M', percentage = 40, course = 'Economics'
WHERE name = 'Manmohan' AND course = 'Bhojpuri';

UPDATE student
SET student.sex = 'F', student.percentage = 50
WHERE student.student_id = 4;

UPDATE student
SET student.sex = 'F', student.percentage = 75
WHERE student.student_id = 5 OR student.course = 'Sociology';

ALTER TABLE student DROP COLUMN sex;

SELECT *
FROM student;

DELETE FROM student
WHERE student.student_id = 5 AND student.name = 'Babita';

SELECT student.name, student.course
FROM student

SELECT *
FROM student
ORDER BY name DESC;

SELECT student.name, student.percentage
FROM student
ORDER BY percentage DESC
LIMIT 3;

INSERT INTO student(name, course, percentage) VALUES('Vibhuti', 'Computer Science', 75.0);
INSERT INTO student(name, course, percentage) VALUES('Babita', 'Chemistry', 76.54);

SELECT student.name, student.course, student.percentage
FROM student
WHERE course = 'Computer Science'
ORDER BY student.percentage DESC, student.course ASC;

SELECT *
FROM student
WHERE student.student_id <= 6 AND student.name <> 'Manmohan';

SELECT *
FROM student
WHERE name IN('Anita', 'Angoori', 'Manmohan');

SELECT *
FROM student
WHERE course IN('Computer Science', 'Chemistry') AND percentage >= 76;

