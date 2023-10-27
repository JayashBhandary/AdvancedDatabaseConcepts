DECLARE
score NUMBER := 75;
BEGIN 
IF score >= 90 THEN
DBMS_OUTPUT.PUT_LINE('A');
ElSIF score >= 80 THEN
DBMS_OUTPUT.PUT_LINE('B');
ElSIF score >= 70 THEN
DBMS_OUTPUT.PUT_LINE('C');
ELSE
DBMS_OUTPUT.PUT_LINE('F');
END IF;
END;
/


/*Second Code*/
DECLARE
x NUMBER := 10;
BEGIN
IF x > 5 THEN
DBMS_OUTPUT.PUT_LINE('x is greater than 5');
ELSE
DBMS_OUTPUT.PUT_LINE('x is not greater thane 5');
END IF;
END;
/
