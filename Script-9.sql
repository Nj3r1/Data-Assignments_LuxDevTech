create schema city_sales

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price NUMERIC
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);

INSERT INTO customers (name, city) VALUES
('Alice', 'Nairobi'),
('Brian', 'Mombasa'),
('Cynthia', 'Kisumu'),
('David', 'Nakuru'),
('Eva', 'Eldoret');

INSERT INTO products (product_name, price) VALUES
('Laptop', 900),
('Phone', 500),
('Tablet', 300),
('Monitor', 200),
('Keyboard', 50);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2025-01-10'),
(2, 2, 2, '2025-01-12'),
(3, 3, 1, '2025-01-15'),
(1, 2, 1, '2025-02-01'),
(4, 4, 2, '2025-02-03'),
(2, 1, 1, '2025-02-10'),
(5, 5, 3, '2025-02-12');