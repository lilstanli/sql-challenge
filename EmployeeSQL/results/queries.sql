/*List the employee number, last name, first name, sex, and salary 
of each employee (2 points)*/
SELECT employees.emp_no AS "Employee number", 
	last_name AS "Last name", 
	first_name AS "First name", 
	sex AS "Sex", 
	Salary AS "Salary" 
	FROM employees
		INNER JOIN salaries ON employees.emp_no = salaries.emp_no;


/*List the first name, last name, and hire date for the employees 
who were hired in 1986 (2 points)*/
SELECT first_name AS "First name",
	last_name AS "Last name",
	hire_date AS "Hire date"
	FROM employees
		WHERE (SELECT EXTRACT (YEAR FROM hire_date) = '1986');


/*List the manager of each department along with their department 
number, department name, employee number, last name, and first name (2 points)*/
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT departments.dept_no AS "Department number",
	departments.dept_name AS "Department name", 
	employees.emp_no AS "Employee number", 
	employees.last_name AS "Last name", 
	employees.first_name AS "First name"
	FROM departments
		INNER JOIN dept_manager ON 
			departments.dept_no = dept_manager.dept_no
			INNER JOIN employees ON
				employees.emp_no = dept_manager.emp_no;
	


/*List the department number for each employee along with that employee’s
employee number, last name, first name, and department name (2 points)*/


/*List first name, last name, and sex of each employee whose first name 
is Hercules and whose last name begins with the letter B (2 points)*/



/*List each employee in the Sales department, including their employee number,
last name, and first name (2 points)*/



/*List each employee in the Sales and Development departments, including 
their employee number, last name, first name, and department name (4 points)*/



/*List the frequency counts, in descending order, of all the employee 
last names (that is, how many employees share each last name) (4 points)*/

