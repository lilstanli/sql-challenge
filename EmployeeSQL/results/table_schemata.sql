/*
SQL CHALLENGE WEEK 9 TABLE SCHEMATA
*/

CREATE TABLE Departments (
    dept_no varchar(20) PRIMARY KEY,
    dept_name varchar(50)
);

CREATE TABLE Titles (
    title_id varchar(20) PRIMARY KEY,
    title varchar(50)
);

CREATE TABLE Employees (
    emp_no int PRIMARY KEY,
    emp_title_id varchar(20) REFERENCES Titles(title_id),
    birth_date varchar(20) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(20) NOT NULL,
    hire_date varchar(20) NOT NULL
);

CREATE TABLE Dept_emp (
    emp_no int REFERENCES Employees(emp_no),
    dept_no varchar(20) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_manager (
    dept_no varchar(20) REFERENCES Departments(dept_no),
    emp_no int NOT NULL REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries (
    emp_no int REFERENCES Employees(emp_no),
    salary money NOT NULL
);

