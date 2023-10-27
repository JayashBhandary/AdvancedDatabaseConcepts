DECLARE
counter NUMBER := 1;
BEGIN
LOOP
DBMS_OUTPUT.PUT_LINE('Counter = ' || counter);
counter := counter + 1;
IF counter > 5 THEN
EXIT;
END IF;
END LOOP;
END;
/