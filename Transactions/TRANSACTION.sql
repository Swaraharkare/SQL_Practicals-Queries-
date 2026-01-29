

BEGIN TRANSACTION;

UPDATE employee_info SET emp_age=39 WHERE emp_id=6;

UPDATE department SET payment=60000 WHERE dept_id=3;

COMMIT;