CREATE OR REPLACE PROCEDURE empty_proc
AS
BEGIN
DBMS_OUTPUT.PUT_LINE('JAYASH');
END;
/

EXEC empty_proc;

CREATE OR REPLACE PROCEDURE my_shared
AS
BEGIN
DBMS_OUTPUT.PUT_LINE('Hello from the stored preference!');
END;
/

EXEC my_shared;