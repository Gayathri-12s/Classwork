CREATE DATABASE grocery_shop;
USE grocery_shop;
CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT(20));
INSERT INTO products(product_id, product_name, price)
VALUES
(1, 'sugar', 160),
(2, 'salt', 150),
(3, 'chilli', 180);

ALTER TABLE products
ADD category INT(20);

TRUNCATE TABLE products;

DROP DATABASE grocery_shop;
