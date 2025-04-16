SELECT student_name, major
FROM student
ORDER BY major, student_id;

SELECT TOP 2 student_name, major
FROM student;

SELECT *
FROM student
WHERE major <> 'Biochemistry';

-- <, >, <=, >=, =, <>, AND, OR

SELECT *
FROM student
WHERE student_name IN ('Kate', 'Mary');