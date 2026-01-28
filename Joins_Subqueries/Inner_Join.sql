USE Employee;

--Inner Join
SELECT * FROM employee_info 
INNER JOIN department 
ON employee_info.dept_id=department.dept_id;



