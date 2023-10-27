DECLARE
x NUMBER := 10;
counter NUMBER := 1;
BEGIN
LOOP
DBMS_OUTPUT.PUT_LINE('Counter = ' || counter);
counter := counter + 1;
IF counter > 5 THEN
EXIT;
END IF;
END LOOP;
IF x > 5 THEN
NULL;
END IF;
END; 
/