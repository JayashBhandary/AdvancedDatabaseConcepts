CREATE OR REPLACE FUNCTION cal_square(input_number NUMBER)
RETURN NUMBER IS
result NUMBER;
BEGIN
result := input_number * input_number;
RETURN result;
END cal_square;
/

DECLARE
number_to_square NUMBER := 2;
BEGIN
DBMS_OUTPUT.PUT_LINE('THE sqaure of ' || number_to_square || ' is ' || cal_square(number_to_square));
END;
/