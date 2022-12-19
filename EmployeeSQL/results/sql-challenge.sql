CREATE TABLE Departments (
    dept_no serial PRIMARY KEY,
    dept_name varchar NOT NULL
);

CREATE TABLE Titles (
    title_id serial PRIMARY KEY,
    title varchar NOT NULL
);

CREATE TABLE Employees (
    emp_no serial PRIMARY KEY,
    emp_title_id int NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE Dept_emp (
    dept_no int NOT NULL,
    emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no), 
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_manager (
    dept_no int NOT NULL,
    emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries (
    emp_no int NOT NULL,
    salary money NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

