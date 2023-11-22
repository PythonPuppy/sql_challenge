
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT  e.emp_no, e.first_name, e.last_name, e.sex, s.salary FROM employees as e 
LEFT JOIN salaries as s 
ON e.emp_no = s.emp_no
ORDER BY first_name ;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name,last_name ,hire_date FROM employees WHERE to_char(hire_date,'YYYY')='1986'
ORDER BY hire_date;

--List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT m.dept_no,m.emp_no,e.first_name,e.last_name,d.dept_name FROM dept_manager as m 
LEFT JOIN employees as e on m.emp_no=e.emp_no 
LEFT JOIN departments as d on m.dept_no=d.dept_no ;
ORDER BY first_name,last_name;




--List the manager of each department along with their department number, department name, employee number, last name, and first name


SELECT d.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM dept_manager dm
INNER JOIN departments d on d.dept_no = dm.dept_no
INNER JOIN employees e on dm.emp_no = e.emp_no
ORDER BY first_name,last_name;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT d.dept_no, d.dept_name, de.emp_no, e.first_name, e.last_name
FROM dept_emp de
INNER JOIN departments d on d.dept_no = de.dept_no
INNER JOIN employees e on de.emp_no = e.emp_no
ORDER BY first_name,last_name;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name,last_name,sex FROM employees e 
WHERE first_name ilike 'Hercules'
AND last_name ilike 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e on e.emp_no = de.emp_no
INNER JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN employees e on e.emp_no = de.emp_no
INNER JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, count(*) AS Total_count
FROM employees
GROUP By last_name
ORDER By Total_count DESC;


