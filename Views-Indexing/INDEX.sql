USE Employee;

--CREATE INDEX 
CREATE INDEX idx_age ON employee_info(emp_age);

--SHOW ALL INDEXES FROM TABLE
EXEC sp_helpindex 'employee_info';

--CREATE UNIQUE INDEX
CREATE UNIQUE INDEX idx_deptID ON department(dept_id);

--RETRIVE DATA USING INDEX
SELECT * FROM employee_info 
WITH(INDEX(idx_age))
WHERE dept_id<3;

SELECT * FROM department 
WITH(INDEX(idx_deptID))
WHERE dept_id<3;

--RETRIVE DATA WITHOUT INDEX
SELECT * FROM employee_info 
WHERE dept_id<3;