CREATE DATABASE university;
USE university;
CREATE TABLE student(
 student_id INT,
 student_name VARCHAR(20),
birth_date DATE,
branch VARCHAR(20),
state VARCHAR(20));
DESCRIBE student;
INSERT INTO student VALUES(194001,'PRANAB','1999-03-17','CSE','PUNJAB'),
(194002,'PRAKASH','2000-08-07','ECE','TAMIL NADU'),(194003,'ROCKY','2000-03-10','ECE','PUNJAB'),
(194004,'TRIBHUVAN','1999-03-15','CSE','ANDHRA PRADESH'),
(194005,'VAMSI','2000-04-19','CSE','TELANGANA');
SELECT * FROM student;
SELECT *
    FROM student
    WHERE branch='CSE'AND state='PUNJAB';
SELECT *
    FROM student
    WHERE branch='CSE' OR branch='ECE';
SELECT *
      FROM student
      WHERE NOT state='PUNJAB';