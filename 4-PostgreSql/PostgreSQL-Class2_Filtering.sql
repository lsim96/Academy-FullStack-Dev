SELECT * FROM products;

--Null value filtering
SELECT * FROM products
WHERE description IS NOT NULL; --IS NULL will return all products will null value

SELECT * FROM products
WHERE last_restock_Date IS NULL;

--Multiple conditions 
SELECT * FROM products 
WHERE category = 'Electronics'
AND price < 100
AND last_restock_date IS NOT NULL; --AND chaning more conditions together 

SELECT * FROM products
WHERE category = 'Furniture'
AND (price > 20 OR stock_count = 20); 

SELECT * FROM products
WHERE last_restock_date 
BETWEEN '2024-01-01' AND '2024-01-31';

--Complex statement IN
SELECT * FROM products
WHERE category IN('Electronics', 'Appliances')
AND stock_count > 8;










