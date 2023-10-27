DECLARE
custom_exception EXECPTION;
PRAGMA EXCEPTION_INIT(custom_exception, -20201);
v_employee_name VARCHAR2(20);
v_employee_id NUMBER := 101;
BEGIN
SELECT name INTO v_employee_name FROM employee WHERE id = v_employee_id;
DBMS_OUTPUT.PUT_LINE('Employee: ' || v_employee_name);
EXECPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('Custom NO DATA_FOUND Exception: employee with id' || v_employee_id || ' not found ');
WHEN custom_exception THEN
DBMS_OUTPUT.PUT_LINE('Custom Exception: This is a custom error message');
END;
/