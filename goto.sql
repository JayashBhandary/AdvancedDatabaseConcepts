BEGIN
GOTO second_message;
<<first_message>>
DBMS_OUTPUT.PUT_LINE('HELLO');
GOTO the_end;
<<second_message>>
DBMS_OUTPUT.PUT_LINE('PL/SQL GOTO DEMO');
GOTO first_message;
<<the_end>>
DBMS_OUTPUT.PUT_LINE('AND GOOD BYEEE');
END;
/