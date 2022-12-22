/*List the employee number, last name, first name, sex, and salary 
of each employee (2 points)*/
SELECT e.emp_no AS "Employee number", 
	e.last_name AS "Last name", 
	e.first_name AS "First name", 
	e.sex AS "Sex", 
	s.salary AS "Salary" 
	FROM employees e
		INNER JOIN salaries s ON
			e.emp_no = s.emp_no;


/*List the first name, last name, and hire date for the employees 
who were hired in 1986 (2 points)*/
SELECT e.first_name AS "First name",
	e.last_name AS "Last name",
	e.hire_date AS "Hire date"
	FROM employees e
		WHERE (SELECT EXTRACT (YEAR FROM e.hire_date) = '1986');


/*List the manager of each department along with their department 
number, department name, employee number, last name, and first name (2 points)*/
SELECT d.dept_no AS "Department number",
	d.dept_name AS "Department name", 
	e.emp_no AS "Employee number (Manager)", 
	e.last_name AS "Last name (Manager)", 
	e.first_name AS "First name (Manager)"
	FROM departments d
		INNER JOIN dept_manager dm ON 
			d.dept_no = dm.dept_no
		INNER JOIN employees e ON
			e.emp_no = dm.emp_no

/*List the department number for each employee along with that employee’s
employee number, last name, first name, and department name (2 points)*/
SELECT d.dept_no AS "Department number",
	e.emp_no AS "Employee number",
	e.last_name AS "Last name",
	e.first_name AS "First name",
	d.dept_name AS "Department name"
	FROM departments d
		INNER JOIN dept_emp de ON 
			d.dept_no = de.dept_no
		INNER JOIN employees e ON
			de.emp_no = e.emp_no;


/*List first name, last name, and sex of each employee whose first name 
is Hercules and whose last name begins with the letter B (2 points)*/
SELECT first_name AS "First name",
	last_name AS "Last name",
	sex AS "Sex"
	FROM employees
		WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';
	

/*List each employee in the Sales department, including their employee number,
last name, and first name (2 points)*/
SELECT e.emp_no AS "Employee number",
	e.last_name AS "Last name",
	e.first_name AS "First name"
	FROM departments d
		INNER JOIN dept_emp de ON
			d.dept_no = de.dept_no
		INNER JOIN employees e ON
			de.emp_no = e.emp_no
		WHERE d.dept_name = 'Sales';


/*List each employee in the Sales and Development departments, including 
their employee number, last name, first name, and department name (4 points)*/
SELECT e.emp_no AS "Employee number",
	e.last_name AS "Last name",
	e.first_name AS "First name",
	d.dept_name AS "Department name"
	FROM departments d
		INNER JOIN dept_emp de ON
			d.dept_no = de.dept_no
		INNER JOIN employees e ON
			de.emp_no = e.emp_no
		WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


/*List the frequency counts, in descending order, of all the employee 
last names (that is, how many employees share each last name) (4 points)*/
SELECT last_name as "Last name",
	COUNT(*) AS "Frequency Counts"
	FROM employees
		GROUP BY last_name
		ORDER BY "Frequency Counts" DESC;
		