--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT ee.emp_no, ee.last_name, ee.first_name, ee.gender, sal.salary from employees ee, salaries sal
WHERE ee.emp_no = sal.emp_no;

--2.List employees who were hired in 1986.

SELECT * FROM employees WHERE hire_date >= '01/01/86' AND hire_date <= '12/31/86';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
--I COULD NOT GET 3,4,6,7 TO WORK, ERROR VARCHAR = INTEGER BUT I REMOVED ALL INTEGERS FROM TABLES.. THIS WAS WHY IT TOOK ME SO LONG TO COMPLETE THIS MUCH..
--SELECT mgr.dept_no, depts.dept_name, ee.emp_no, ee.last_name, ee.first_name, mgr.from_date, mgr.to_date 
--FROM employees ee, dept_manager mgr, departments depts 
--WHERE
--ee.emp_no = mgr.emp_no AND
--depts.dept_no = mgr.dept_no;

---4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT ee.emp_no, ee.last_name, ee.first_name, depts.dept_name  
FROM employees ee, departments depts, Dept_Emp dept_ee 
WHERE
dept_ee.emp_no = ee.emp_no AND
depts.dept_no = dept_ee.dept_no;

---5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees 
WHERE
first_name = 'Hercules' AND
last_name LIKE 'B%';

---6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
--SELECT ee.emp_no, ee.last_name, ee.first_name, depts.dept_name  
--FROM employees ee, departments depts, dept_emp dept_ee 
--WHERE
--dept_ee.emp_no = ee.emp_no AND
--depts.dept_no = dept_ee.dept_no
--AND depts.dept_name = 'Sales';

---7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--SELECT ee.emp_no, ee.last_name, ee.first_name, depts.dept_name  
--FROM employees ee, departments depts, dept_emp dept_ee 
--WHERE
--dept_ee.emp_no = ee.emp_no AND
--depts.dept_no = dept_ee.dept_no
--AND depts.dept_name IN ('Sales', 'Development');

---8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*) FROM employees GROUP BY last_name ORDER BY last_name;