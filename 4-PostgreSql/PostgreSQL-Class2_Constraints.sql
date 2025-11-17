DROP TABLE IF EXISTS students;
CREATE TABLE students (
id INTEGER,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
age INTEGER
);

SELECT * FROM students;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INTEGER,
	username VARCHAR(50) NOT NULL UNIQUE,
	email VARCHAR(100) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS products_with_constraints;
CREATE TABLE products_with_constraints (
id INTEGER,
name VARCHAR(100) NOT NULL,
price DECIMAL(8,2) CHECK (price > 0),
stock_count INTEGER CHECK (stock_count >= 0),
category VARCHAR(50) CHECK (category IN ('Electronics', 'Furniture', 'Appliances'))
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
id INTEGER,
product_name VARCHAR(100) NOT NULL,
quantity INTEGER DEFAULT 1,
order_date DATE DEFAULT CURRENT_DATE,
status VARCHAR(20) DEFAULT 'Pending' --DEFAULT VALUES ALWAYS GO LAST
);


INSERT INTO students VALUES (1, 'John', 'Doe', 'john@email.com', 20);

--this will not work
INSERT INTO students VALUES (1, 'John', 20);

INSERT INTO users VALUES (1, 'john_doe', 'john@email.com');

--this will not work, as it is not unique
INSERT INTO users VALUES (2, 'john_doe', 'john@email.com');

INSERT INTO products_with_constraints VALUES (1, 'laptop', 900.99, 10, 'Electronics');

--This will not work since the category is non existant
INSERT INTO products_with_constraints VALUES (1, 'Book', 9.99, 10, 'Books');

INSERT INTO orders VALUES (1, 'Keyboard');
SELECT * FROM orders;






