INSERT INTO products_table1(name, category, price, in_stock) VALUES('Jeans', 'Cloth', '2499', 'No' ), 
('bread', 'Groceries', '80', 'Yes'), 
('Shoes', 'Footwear', '7499', 'Yes'),
 ('Salt 5kg', 'Groceries', '120', 'Yes'),
  ('Rice 1kg','Groceries','60', 'No');
SELECT DISTINCT category FROM products_table1;
SELECT * FROM products_table1 WHERE in_stock = 'Yes' AND price < 500;
SELECT * FROM products_table1 WHERE in_stock = 'No' OR price > 1000;
SELECT name, price FROM products_table1 ORDER BY price DESC;
SELECT name, price*1.18 AS 'price_with_tax' FROM products_table1;