CREATE OR REPLACE TYPE my_nested_table IS TABLE OF VARCHAR(10);
/

CREATE TABLE my_subject(
    sub_id NUMBER,
    sub_name VARCHAR2(10),
    sub_schedule_day my_nested_table
) NESTED TABLE sub_schedule_day STORE AS nested_tab_space;

DESC my_subject;

INSERT INTO my_subject(sub_id ,sub_name,sub_schedule_day)
VALUES(101,'Maths',my_nested_table('Mon','Tue'));

SELECT * FROM my_subject;