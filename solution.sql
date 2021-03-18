-- TABLE PERSON
-- 1
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INTEGER,
  city VARCHAR(250),
  favorite_color VARCHAR(50)
  );

--   2
INSERT INTO person (name, age, height_cm, city, favorite_color)
VALUES ('Peter', 32, 171.3, 'Phoenix', 'Red'),
('Dan', 46, 172.8, 'Seattle', 'Blue'),
('Angie', 42, 153.2, 'Tacoma', 'Purple'),
('John', 28, 165.5, 'Salt Lake City', 'green'),
('Stu', 21, 171.4, 'Denver', 'Gray');

-- 3
SELECT * FROM person
ORDER BY height_cm DESC;

-- 4
SELECT * FROM person
ORDER BY height_cm ASC;

-- 5
SELECT * FROM person
ORDER BY age DESC;

-- 6
SELECT * FROM person
WHERE age > 20;

-- 7
SELECT * FROM person
WHERE age = 18;

-- 8
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- 9
SELECT * FROM person
WHERE age != 27;

-- 10
SELECT * FROM person
WHERE favorite_color NOT ILIKE 'red';

-- 11
SELECT * FROM person
WHERE favorite_color NOT ILIKE 'red' AND favorite_color NOT ILIKE 'blue';

-- 12
SELECT * FROM person
WHERE favorite_color ILIKE 'orange' OR favorite_color ILIKE 'green';

-- 13
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- 14
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

-- TABLE - ORDERS
-- 1
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id integer,
  product_name VARCHAR(250),
  product_price DECIMAL,
  quantity INT
);

-- 2
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'space dust', 12.99, 2),
(1, 'knob creek', 35.99, 1),
(2, 'totinos', 1.50, 10),
(3, 'gatorade', 2.99, 30),
(4, 'snickers', 0.50, 1);

-- 3
SELECT * FROM orders;

-- 4
SELECT SUM(quantity) FROM orders;

-- 5
SELECT SUM(product_price * quantity) FROM orders;

-- 6
SELECT SUM(product_price) FROM orders
WHERE person_id = 1;


-- TABLE - ARTIST
-- 1
INSERT INTO artist (name)
VALUES ('Illenium'), 
('Seven Lions'), 
('Excision');

-- 2
SELECT name FROM artist
ORDER  BY name DESC
LIMIT 10;

-- 3
SELECT name FROM artist
ORDER  BY name ASC
LIMIT 5;

-- 4
SELECT name FROM artist
WHERE name LIKE 'Black%';

-- 5
SELECT name FROM artist
WHERE name LIKE '%Black%';


-- TABLE - EMPLOYEE
-- 1
SELECT first_name, last_name FROM employee
WHERE city = 'calgary';

-- 2
SELECT MAX(birth_date) FROM employee;

-- 3
SELECT MIN(birth_date) FROM employee;

-- 4
SELECT * FROM employee
WHERE reports_to IN (2);

-- 5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- TABLE - INVOICE
-- 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- 2
SELECT MAX(total) FROM invoice;

-- 3
SELECT MIN(total) FROM invoice;

-- 4
SELECT * FROM invoice
WHERE total > 5;

-- 5
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- 6
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- 7
SELECT AVG(total) FROM invoice;

-- 8
SELECT SUM(total) FROM invoice;
