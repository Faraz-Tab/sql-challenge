-- -- List the employee number, last name, first name, sex, and salary of each employee
-- SELECT e.emp_no as "Employee Number", e.first_name as "First Name", 
-- 	e.last_name as "Last Name", e.sex as "Sex", s.salary as "Salary"
-- FROM employees as e
-- INNER JOIN salaries as s ON s.emp_no=e.emp_no;

-- -- List the first name, last name, and hire date for the employees who were hired in 1986
-- SELECT e.first_name as "First Name", e.last_name as "Last Name", e.hire_date as "Date Hired"
-- FROM employees as e
-- WHERE hire_date LIKE '%1986';

-- -- List the manager of each department along with their department number, department name,
-- -- employee number, last name, and first name
-- SELECT dm.emp_no as "Employee Number", dm.dept_no as "Department Number", 
-- 	d.dept_name as "Department name", e.emp_no as "Employee Number",
-- 	e.first_name as "First Name", e.last_name as "Last Name"
-- FROM department_manager as dm
-- INNER JOIN departments as d ON d.dept_no = dm.dept_no
-- INNER JOIN employees as e ON e.emp_no = dm.emp_no;

-- -- List the department number for each employee along with that employee’s employee number, 
-- -- last name, first name, and department name 
-- SELECT de.dept_no as "Department Number", de.emp_no as "Employee Number",
-- 	e.last_name as "Last Name", e.first_name as "First Name",
-- 	d.dept_name as "Department Name"
-- FROM employees as e
-- INNER JOIN department_employee as de ON de.emp_no = e.emp_no
-- INNER JOIN departments as d ON d.dept_no = de.dept_no;

-- -- List first name, last name, and sex of each employee whose first name is Hercules 
-- -- and whose last name begins with the letter B
-- SELECT e.first_name as "First Name", e.last_name, e.sex as "Sex"
-- FROM employees as e
-- WHERE first_name='Hercules'
-- AND last_name LIKE 'B%';

-- -- List each employee in the Sales department, including their employee number, last name, and first name
-- SELECT e.emp_no as "Employee Number", e.first_name as "First Name", e.last_name as "Last Name"
-- FROM employees as e
-- INNER JOIN department_employee as de ON de.emp_no = e.emp_no
-- INNER JOIN departments as d ON d.dept_no = de.dept_no
-- WHERE d.dept_no='d007';

-- -- List each employee in the Sales and Development departments, including their employee number,
-- -- last name, first name, and department name
-- SELECT e.emp_no as "Employee Number", e.first_name as "First Name", e.last_name as "Last Name",
-- 	d.dept_name as "Department Name"
-- FROM employees as e
-- INNER JOIN department_employee as de ON de.emp_no = e.emp_no
-- INNER JOIN departments as d ON d.dept_no = de.dept_no
-- WHERE d.dept_no='d007'
-- OR d.dept_no='d005'

-- -- List the frequency counts, in descending order, of all the employee last names (that is, how many
-- -- employees share each last name) 
-- SELECT e.last_name as "Last Name", COUNT(e.last_name) 
-- FROM employees as e
-- GROUP BY e.last_name
-- ORDER BY COUNT DESC;

