CREATE OR REPLACE FUNCTION count_employee
RETURN NUMBER IS
employee_count NUMBER;
BEGIN
SELECT COUNT(*) INTO employee_count FROM employee;
RETURN employee_count;
END count_employee;
/

DECLARE
total_employees NUMBER;
BEGIN
total_employees := count_employee;
DBMS_OUTPUT.PUT_LINE(' Total employee ' || total_employees);
END;
/