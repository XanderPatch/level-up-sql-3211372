-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT FirstName, LastName, Date, PartySize FROM Customers 
JOIN Reservations on Customers.CustomerID = Reservations.CustomerID
WHERE LastName LIKE 'Ste%n'
AND Date LIKE '%06-14%';
