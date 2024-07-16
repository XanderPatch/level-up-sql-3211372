-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT FirstName, LastName, Email, Count(Orders.OrderID) AS Orders_Placed FROM Orders
JOIN Customers on Customers.CustomerID = Orders.CustomerID 
GROUP BY Orders.CustomerID 
ORDER BY Orders_Placed DESC
LIMIT 6; --NATURAL BREAK AT 15 OR MORE ORDERS
