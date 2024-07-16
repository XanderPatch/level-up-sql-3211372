-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
SELECT Name, Price from Dishes order by Price
-- Create a report showing appetizers and beverages.
Select Name, Price FROM Dishes where Type in ('Appetizer','Beverage') order by Type
-- Create a report with all items except beverages.
Select Name, Price FROM Dishes where Type != 'Beverage' ORDER BY Type
