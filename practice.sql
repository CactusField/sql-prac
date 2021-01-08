
--PERSON TABLE--
--Answer 1--
CREATE TABLE person (
    persons_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age int,
    height int,
    city VARCHAR(100),
    favorite_color VARCHAR(60)
)

--Answer 2--
INSERT INTO person(
    name,
    age,
    height,
    city,
    favorite_color
    )
    VALUES
    ('John', 45, 160, 'McKinney', 'Blue'),
    ('Paully', 22, 170, 'Dallas', 'Red'),
    ('Max', 19, 155, 'Lehi', 'Purple'),
    ('Rubey', 26, 140, 'Las-Vegas', 'Lilac'),
    ('Po', 30, 144, 'Plano', 'Green');

--Answer 3--
SELECT * from person 
order by height DESC;

--Answer 4--
SELECT * from person
order by height ASC;

--Answer 5--
SELECT * from person
order by age DESC;

--Answer 6--
SELECT * from person
where age > 20;
--Answer 67--
SELECT * from person
where age = 18;
--Answer 8--
SELECT * from person
where age < 20 or age > 30;
--Answer 9--
SELECT * from person
where age !=27;
--Answer 10--
SELECT * from person
where favorite_color != 'Red';

--Answer 11--
SELECT * from person
where favorite_color != 'Red' AND favorite_color != 'Blue';

--Answer 12--
SELECT * from person
where favorite_color = 'Orange' OR favorite_color = 'Green';

--Answer 13--
SELECT * from person
where favorite_color IN ('Orange', 'Green', 'Blue');

--Answer 14--
SELECT * from person
where favorite_color IN ('Yellow', 'Purple');


--ORDERS TABLE--
--Answer 1--
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id int,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity int
);

--Answer 2--
INSERT into orders(person_id, product_name,product_price,quantity)
    VALUES(1, 'Aha Sparkling Water', 10.00, 3), (2, 'Glizzy', 4.20, 69);

--Answer 3--
SELECT * from orders

--Answer 4--
SELECT SUM(quantity) from orders;
--Answer 5--
SELECT SUM(product_price * quantity) from orders;

--Answer 6--
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;


--ARTIST TABLE--
--Answer 1--
INSERT INTO ARTIST(name)
VALUES
('Poppy'),
('Heimerdinger'),
('Xerath');

--Answer 2--
SELECT * from ARTIST ORDER BY name DESC LIMIT 10;

--Answer 3--
SELECT * from ARITST ORDER BY name ASC LIMIT 5;

--Answer 4--
SELECT * FROM artist WHERE name LIKE 'Black%';

--Answer 5--
SELECT * FROM artist WHERE name LIKE '%Black%';


--EMPLOYEE TABLE--
--Answer 1--
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

--Answer 2--
SELECT MAX(birth_date) from employee;

--Answer 3--
SELECT MIN(birth_date) from employee;

--Answer 4--
SELECT * from employee WHERE reports_to = 2;

--Answer 5--
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


--INVOICE TABLE--
--Answer 1--
SELECT COUNT(*) from invoice WHERE billing_country = 'USA';

--Answer 2--
SELECT MAX(total) from invoice;

--Answer 3--
SELECT MIN(total) from invoice;

--Answer 4--
SELECT * from invoice WHERE total > 5;

--Answer 5--
SELECT COUNT(*) from invoice WHERE total < 5;

--Answer 6--
SELECT COUNT(*) from invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

--Answer 7--
SELECT AVG(total) from invoice;

--Answer 8--
SELECT SUM(total) from invoice;
