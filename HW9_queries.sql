SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no;

SELECT *
FROM employees
WHERE hire_date >= '19860101'  
AND hire_date <= '19861231';

SELECT d.dept_no, d.dept_name, m.emp_no, 
  e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager as m
JOIN departments as d
ON m.dept_no = d.dept_no
JOIN employees as e
ON m.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN departments as d
ON de.dept_no = d.dept_no
JOIN employees as e
ON de.emp_no = e.emp_no;

SELECT emp_no, last_name, first_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN departments as d
ON de.dept_no = d.dept_no
JOIN employees as e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN departments as d
ON de.dept_no = d.dept_no
JOIN employees as e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

SELECT last_name, COUNT(*) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;
