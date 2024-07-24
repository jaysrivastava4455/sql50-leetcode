#1174. Immediate Food Delivery II

WITH Immediate_Orders AS
    (SELECT DISTINCT customer_id,
        FIRST_VALUE(order_date=customer_pref_delivery_date) 
        OVER(PARTITION BY customer_id ORDER BY order_date) immediate
        FROM Delivery)
SELECT ROUND(AVG(immediate)*100,2) AS immediate_percentage
    FROM Immediate_Orders