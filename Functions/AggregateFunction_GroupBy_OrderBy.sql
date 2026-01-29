USE Employee;

SELECT dept_id,
COUNT(*) totalNoOfEmp,
MAX(emp_age) maxAgeOfEmp,
MIN(emp_age) minAgeOfEmp,
AVG(emp_age) avgAgeOfEmp
FROM employee_info
GROUP BY dept_id
ORDER BY dept_id DESC;