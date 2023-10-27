CREATE OR REPLACE FUNCTION add_number(num1 NUMBER,num2 NUMBER)
RETURN NUMBER IS
result NUMBER;
BEGIN
result := num1 + num2;
RETURN result;
END add_number;
/

DECLARE
num1 NUMBER := 10;
num2 NUMBER := 20;
sum_result NUMBER;
BEGIN
sum_result := add_number(num1,num2);
DBMS_OUTPUT.PUT_LINE('THE addition of ' || num1 || ' + ' || num2 || ' is ' || sum_result);
END;
/