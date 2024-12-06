-- (3)
-- SELECT name, price
-- FROM Products;

-- SELECT 
--     p.name AS product_name,
--     od.quantity,
--     (od.quantity * p.price) AS total_price
-- FROM 
--     Order_Details od
-- JOIN 
--     Products p ON od.product_id = p.product_id
-- WHERE 
--     od.order_id = 1; 
--     order_details
--     SELECT 
--     u.name AS user_name,
--     COUNT(o.order_id) AS total_orders,
--     SUM(o.total_price) AS total_spent
-- FROM 
--     Users u
-- JOIN 
--     Orders o ON u.user_id = o.user_id
-- GROUP BY 
--     u.user_id;





-- (5)
-- UPDATE Products
-- SET stock_quantity = 50
-- WHERE product_id = 1;

-- DELETE FROM Order_Details
-- WHERE order_id = 1 AND product_id = 3;

-- (8)
-- DELETE FROM Products
-- WHERE stock_quantity = 0;

-- DELETE FROM Products
-- WHERE expiry_date < CURDATE();

-- (9)
--  SELECT * FROM Products
--  WHERE price >= 1000;

-- SELECT * FROM users
-- WHERE email LIKE '%@gmail.com';

-- (10)
-- SELECT U.name
-- FROM Users U
-- JOIN Orders O ON U.user_id = O.user_id
-- JOIN Order_Details OD ON O.order_id = OD.order_id
-- GROUP BY U.user_id
-- ORDER BY SUM(OD.quantity) DESC
-- LIMIT 1;

-- SELECT P.category, SUM(OD.quantity) AS total_sales
-- FROM Products P
-- JOIN Order_Details OD ON P.product_id = OD.product_id
-- GROUP BY P.category
-- ORDER BY total_sales DESC;

-- (11)
-- SELECT * 
-- FROM Products
-- WHERE price >= 1000;

-- (12)
-- SELECT 
--     u.name AS user_name,
--     o.order_date,
--     SUM(od.quantity) AS total_items_ordered
-- FROM 
--     Users u
-- JOIN 
--     Orders o ON u.user_id = o.user_id
-- JOIN 
--     Order_Details od ON o.order_id = od.order_id
-- GROUP BY 
--     u.name, o.order_date
-- ORDER BY 
--     o.order_date;


-- (14)
-- SELECT u.name AS user_name, o.order_id, o.order_date
-- FROM Users u
-- JOIN Orders o ON u.user_id = o.user_id
-- WHERE o.order_date = (
--     SELECT MAX(order_date)
--     FROM Orders
--     WHERE user_id = u.user_id
-- );

-- SELECT p.name AS product_name, SUM(od.quantity) AS total_sales
-- FROM Products p
-- JOIN Order_Details od ON p.product_id = od.product_id
-- GROUP BY p.product_id
-- ORDER BY total_sales DESC
-- LIMIT 1;

-- (6)
-- CREATE TABLE Suppliers (
--     supplier_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     address VARCHAR(255),
--     phone_number VARCHAR(20)
-- );
-- ALTER TABLE Products
-- ADD COLUMN supplier_id INT,
-- ADD FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id);

-- INSERT INTO Suppliers (name, address, phone_number)
-- VALUES
-- ('diddy', 'Address 1', '3456789'),
-- ('justin', 'Address 2', '987654321'),
-- ('beiber', 'Address 3', '567890123');

-- UPDATE Products
-- SET supplier_id = 1
-- WHERE product_id = 1;

-- UPDATE Products
-- SET supplier_id = 2
-- WHERE product_id = 2;

-- UPDATE Products
-- SET supplier_id = 3
-- WHERE product_id = 3;






-- SELECT 
--     supplier_name, 
--     SUM(total_products) AS total_supplied_products
-- FROM supplier_product_summary
-- GROUP BY supplier_name;


-- SELECT 
--     product_category, 
--     GROUP_CONCAT(supplier_name ORDER BY supplier_name) AS suppliers
-- FROM supplier_product_summary
-- GROUP BY product_category;

-- (13)
-- CREATE TABLE product_category_summary (
--     category_id INT AUTO_INCREMENT PRIMARY KEY,
--     category_name VARCHAR(255) NOT NULL,
--     total_quantity INT NOT NULL
-- );

-- INSERT INTO product_category_summary (category_name, total_quantity)
-- SELECT category, SUM(stock_quantity) AS total_quantity
-- FROM Products
-- GROUP BY category;










