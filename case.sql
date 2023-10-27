DECLARE
day_number NUMBER :=3;
day_name VARCHAR2(20);
BEGIN
CASE day_number
WHEN 1 THEN day_name := 'Sunday';
WHEN 2 THEN day_name := 'Monday';
WHEN 3 THEN day_name := 'Tuesday';
WHEN 4 THEN day_name := 'Wednesday';
WHEN 5 THEN day_name := 'Thursday';
WHEN 6 THEN day_name := 'Friday';
WHEN 7 THEN day_name := 'Saturday';
ELSE day_name := 'INVALID DAY';
END CASE;
DBMS_OUTPUT.PUT_LINE('Day name:' || day_name);
END;
/

/*Second*/

DECLARE
score NUMBER := 77;
grade VARCHAR2(20);
BEGIN
CASE
WHEN score >= 90 THEN grade := 'A';
WHEN score >= 80 THEN grade := 'B';
WHEN score >= 70 THEN grade := 'C';
ELSE grade := 'F';
END CASE;
DBMS_OUTPUT.PUT_LINE('GRADE is ' || grade);
END;
/