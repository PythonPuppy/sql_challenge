
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT  e.emp_no, e.first_name, e.last_name, e.sex, s.salary from employees as e 
LEFT JOIN salaries as s 
on e.emp_no = s.emp_no
order by first_name ;


--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name,last_name ,hire_date from employees where to_char(hire_date,'YYYY')='1986'
order by hire_date;

--List the manager of each department along with their department number, department name, employee number, last name, and first name

select m.dept_no,m.emp_no,e.first_name,e.last_name,d.dept_name from dept_manager as m 
LEFT JOIN employees as e
LEFT JOIN departments as d
on m.emp_no=e.emp_no 
and m.dept_no=d.dept_no ;
--and m.dept_no = e.dept_no;

select e.first_name,e.last_name from employees e,dept_manager as m where m.emp_no IN(
select m.dept_no,m.emp_no,d.dept_name from dept_manager as m,departments as d
where m.dept_no=d.dept_no);













