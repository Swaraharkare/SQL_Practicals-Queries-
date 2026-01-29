USE Employee;

--Create CTE(Common Table Expression) on joins of employee_info and department table

WITH emp_payment AS(
SELECT e.emp_name,d.dept_name,d.payment
FROM employee_info e 
JOIN department d
ON e.dept_id=d.dept_id
)

/* Show all records from table*/
--SELECT * FROM emp_payment ;

/* select dept_name, avg payment from emp_payment CTE*/
SELECT dept_name,AVG(payment)
FROM emp_payment
GROUP BY dept_name;

