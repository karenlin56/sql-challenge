-- Drop tables if they exist from prior tries
DROP TABLE if EXISTS departments;
DROP TABLE if EXISTS titles;
DROP TABLE if EXISTS salaries;
DROP TABLE if EXISTS dept_manager;
DROP TABLE if EXISTS dept_emp;
DROP TABLE if EXISTS employees;




	
CREATE TABLE departments
(
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(100)
);


CREATE TABLE employees
(
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_ VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(30), 
	last_name VARCHAR(30), 
	sex VARCHAR(1),
	hire_date DATE
);


	
CREATE TABLE dept_emp
(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager
(
	dept_no VARCHAR(10),
	emp_no INTEGER,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
	
);


CREATE TABLE salaries
(
	emp_no INTEGER, 
	salary NUMERIC, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
);

CREATE TABLE titles
(
	
	title_id VARCHAR(100) PRIMARY KEY,
	title VARCHAR(100)
	
);
