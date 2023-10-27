CREATE USER Admin IDENTIFIED BY password;

GRANT CONNECT TO Admin;
GRANT CONNECT, RESOURCE, DBA To Admin;
GRANT CREATE SESSION To Admin;
GRANT ALL PRIVILEGE To Admin;

CREATE TABLE customers(id NUMBER, name VARCHAR2(20), age NUMBER, address VARCHAR2(20), salary NUMBER);

INSERT INTO customers VALUES (1, 'Jayash',19,'Thane',20000);


CREATE OR REPLACE TRIGGER display_salary_change
BEFORE DELETE OR INSERT OR UPDATE ON customers
FOR EACH ROW
WHEN (NEW.id > 0)
DECLARE
  sal_diff NUMBER;
BEGIN
  sal_diff := :NEW.salary - :OLD.salary; 
  DBMS_OUTPUT.PUT_LINE('Old Salary: ' || :OLD.salary);
  DBMS_OUTPUT.PUT_LINE('New Salary: ' || :NEW.salary);
  DBMS_OUTPUT.PUT_LINE('Salary difference: ' || sal_diff); 
END;
/


UPDATE customers SET salary = salary + 1000 WHERE id = 1;