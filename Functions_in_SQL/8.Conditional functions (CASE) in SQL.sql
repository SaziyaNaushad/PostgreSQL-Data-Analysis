SELECT * FROM products;

/* 1.CASE Function -Categorizing Based on Conditions
We will categorize products into price ranges:

Expensive if price is greater than or equal to 50,000.
Moderate if the price is between 10,000 and 49,999.
Affordable if the price is less than 10,000.
*/


SELECT product_name,price,
	CASE 
		WHEN price>=50000 THEN 'Expensive'
		 WHEN price>=10000 AND price<=49999 THEN 'Moderate'
		 ELSE 'Affordable'
		END AS price_category
FROM products;

--Assignment on CASE Function and AND 

SELECT product_name,quantity,
	CASE 
		WHEN quantity>=10 THEN 'In Stock'
		WHEN quantity BETWEEN 5 AND 9 THEN 'Limited Stock'
		ELSE 'Out of Stock soon'
	END AS stock_status
FROM products;


--2nd Assignment using CASE and LIKE
SELECT product_name,category,
	CASE 
		WHEN category='Electronics' THEN 'Electronics Item'
		WHEN category='Furniture' THEN 'Furniture Item'
		ELSE 'Accessory Item'
	END AS category_type
FROM products;


--2nd Method
SELECT product_name,category,
	CASE 
		WHEN category LIKE 'Electronics%' THEN 'Electronics Item'
		WHEN category LIKE 'Furniture%' THEN 'Furniture Item'
		ELSE 'Accessory Item'
	END AS category_type
FROM products;
