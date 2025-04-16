-- INT
-- DECIMAL(M,N)
-- VARCHAR(1)
-- BLOB
-- DATE
-- TIMESTAMP

CREATE TABLE student (
	student_id INT IDENTITY(1,1) PRIMARY KEY,
	student_name VARCHAR(20) NOT NULL,
	major VARCHAR(20) DEFAULT 'Undecided'
);

EXEC sp_help 'student';

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3, 2);

INSERT INTO student(student_id, student_name) VALUES(3, 'Mary');

SELECT * FROM student;

INSERT INTO student(student_name, major) VALUES('Jack', 'Biology');
INSERT INTO student(student_name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(student_name) VALUES('Mary');

UPDATE student
SET student_name = 'Tom', major = 'Biochemistry'
WHERE major = 'Biology' OR major = 'Chemistry';

-- Delete rows
DELETE FROM student
WHERE student_id = 5;