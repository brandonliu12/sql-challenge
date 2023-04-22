SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';

SELECT m.empt_no as manager_number, d.dept_no as department_number, d.dept_name as department_name, e.emp_no, e.first_name, e.last_name
FROM departments as d
JOIN dept_manager as m ON d.dept_no = m.dept_no
JOIN employees as e ON m.empt_no = e.emp_no

SELECT n.dept_no as employee_department_number, e.emp_no as employee_number, e.first_name, e.last_name, d.dept_name
FROM employees as e
JOIN dept_emp as n ON n.empt_no = e.emp_no
JOIN departments as d ON d.dept_no = n.dept_no

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT d.dept_name, e.first_name, e.last_name, n.empt_no
FROM employees as e
JOIN dept_emp as n ON n.empt_no = e.emp_no
JOIN departments as d ON d.dept_no = n.dept_no
WHERE dept_name = 'Sales'

SELECT d.dept_name, e.first_name, e.last_name, n.empt_no
FROM employees as e
JOIN dept_emp as n ON n.empt_no = e.emp_no
JOIN departments as d ON d.dept_no = n.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

SELECT e.last_name, COUNT(*) as frequency
FROM employees as e
JOIN dept_emp as n ON n.empt_no = e.emp_no
JOIN departments as d ON d.dept_no = n.dept_no
GROUP BY e.last_name
ORDER BY frequency DESC;