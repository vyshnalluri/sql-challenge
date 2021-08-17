-- Drop table if exists
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create table
CREATE TABLE departments(
	dept_no VARCHAR(255) primary key not null,
	dept_name VARCHAR(255) not null
);

--Query table
SELECT * FROM departments;

-- Create table
CREATE TABLE titles(
	title_id VARCHAR(255) primary key not null,
	title VARCHAR (255) not null
);

--Query table
SELECT * FROM titles;

-- Create table
CREATE TABLE employees(
	emp_no INTEGER primary key not null,
	emp_title VARCHAR(255) not null,
	birth_date DATE,
	first_name VARCHAR(255) not null,
	last_name VARCHAR(255) not null,
	sex VARCHAR(2) not null,
	hire_date DATE,
	foreign key (emp_title) references titles(title_id)
);

--Query table
SELECT * FROM employees;

-- Create table
CREATE TABLE department_employees(
	emp_no INTEGER not null,
	dept_no VARCHAR(255) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

--Query table
SELECT * FROM department_employees;

-- Create table
CREATE TABLE department_manager(
	dept_no VARCHAR(255) not null,
	emp_no INTEGER not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

--Query table
SELECT * FROM department_manager;

-- Create table
CREATE TABLE salaries(
	emp_no INTEGER not null,
	salary INTEGER,
	foreign key (emp_no) references employees(emp_no)
);

--Query table
SELECT * FROM salaries;