--1. List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.employee_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.employee_no = salaries.employee_no;

---------------
--2. List employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date like '1986%';

---------------
--3. List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.

SELECT departments.department_no, departments.department_name, dept_manager.employee_no, employees.last_name, 
	   employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments
JOIN dept_manager
ON departments.department_no = dept_manager.department_no
JOIN employees
ON dept_manager.employee_no = employees.employee_no;

---------------
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.employee_no, employees.last_name, employees.first_name, departments.department_name, departments.department_no
FROM dept_emp
JOIN employees
ON dept_emp.employee_no = employees.employee_no
JOIN departments
ON dept_emp.department_no = departments.department_no;

---------------
--5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

---------------
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_emp.employee_no, employees.last_name, employees.first_name, departments.department_name
FROM dept_emp
JOIN employees
ON dept_emp.employee_no = employees.employee_no
JOIN departments
ON dept_emp.department_no = departments.department_no
WHERE departments.department_name = 'Sales';

---------------
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_emp.employee_no, employees.last_name, employees.first_name, departments.department_name
FROM dept_emp
JOIN employees
ON dept_emp.employee_no = employees.employee_no
JOIN departments
ON dept_emp.department_no = departments.department_no
WHERE departments.department_name = 'Sales'
OR departments.department_name = 'Development';

---------------
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;















