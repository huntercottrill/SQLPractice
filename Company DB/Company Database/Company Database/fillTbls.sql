-- Corporate
INSERT INTO employee VALUES(102, 'Michael', 'Scott', '1967-11-17', 'M', 200000, NULL, NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102, '2006-02-09');

-- Get count of column and group by values in column;
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Wildcards
SELECT count(emp_id)
FROM employee
WHERE birth_date LIKE '____-11%';

-- Union (combine queries)
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;
-- RULES:
--	HAVE TO BE SAME NUMBER OF COLUMNS
--	HAVE TO BE SIMILAR DATA TYPES

-- Join (combine row from one table into a row from another table based on a condition)
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- Left Join (same as join, but include rows from 'left' table that didn't meet the condition too)
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- Right Join (same as join, but include rows from 'right' table that didn't meet the condition too)
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- Nested query
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
	SELECT works_with.emp_id
	FROM works_with
	WHERE works_with.total_sales > 30000
);