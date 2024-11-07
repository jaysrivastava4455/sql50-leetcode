#1045. Customers Who Bought All Products

SELECT c.customer_id
FROM Customer c
JOIN Product p
USING (product_key)
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key)=(SELECT COUNT(*) FROM Product)