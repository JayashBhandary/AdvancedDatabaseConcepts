CREATE OR REPLACE FUNCTION factorial(n NUMBER)
RETURN NUMBER IS
BEGIN
IF n = 0 THEN
RETURN 1;
ELSE 
RETURN n * factorial(n - 1);
END IF;
END factorial;
/

DECLARE
n NUMBER := 5;
result NUMBER;
BEGIN
result := factorial(n);
DBMS_OUTPUT.PUT_LINE('The factorial of ' || n || ' is ' || result);
END;
/