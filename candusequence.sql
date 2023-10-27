CREATE SEQUENCE customer_id
START WITH 1
INCREMENT BY 1
MAXVALUE 100000
NOCYCLE
CACHE 20
NOORDER;

CREATE TABLE customer(
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(20),
    last_name VARCHAR2(20),
    email VARCHAR2(100)
);

-- Use single quotes for string values and customer_id.NEXTVAL for the ID
INSERT INTO customer(customer_id, first_name, last_name, email)
VALUES (customer_id.NEXTVAL, 'Jayash', 'Bhandary', 'findjayash@gmail.com');

-- Select the data from the customer table
SELECT * FROM customer;
