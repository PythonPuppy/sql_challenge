CREATE TABLE employees(
emp_no INTEGER,
emp_title_id varchar(30),
birth_date date,
first_name varchar(50),
last_name varchar(50),
sex varchar(15),
hire_date date,
CONSTRAINT empno PRIMARY KEY(emp_no)
);


CREATE TABLE dept_emp(	
emp_no INTEGER FOREIGN KEY (emp_no) 
REFERENCES employees (emp_no)
dept_no varchar(50)
);


CREATE TABLE departments(
dept_no varchar(20),CONSTRAINT dept_no PRIMARY KEY(dept_no),
dept_name varchar(50)
);



CREATE TABLE salaries(
emp_no INTEGER ,FOREIGN KEY (emp_no) 
REFERENCES employees (emp_no),
salary numeric	
);

CREATE TABLE titles(
title_id varchar(30),
title varchar(50)
);

CREATE TABLE dept_manager(

dept_no varchar(20),FOREIGN KEY (dept_no) 
REFERENCES departments (dept_no),
emp_no INTEGER , FOREIGN KEY (emp_no) 
REFERENCES employees (emp_no)

);



CREATE TABLE dept_emp(
emp_no INTEGER , FOREIGN KEY (emp_no) 
REFERENCES employees (emp_no),
dept_no varchar(20),FOREIGN KEY (dept_no) 
REFERENCES departments (dept_no)
);
