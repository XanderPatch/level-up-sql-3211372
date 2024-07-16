-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT Count(Title) AS CopiesOwned
FROM Books
WHERE Title = 'Dracula'
GROUP BY Title;

SELECT count(*) AS CopiesLoaned
FROM Loans
WHERE BookID IN (SELECT BookID FROM Books WHERE Title = 'Dracula')
and ReturnedDate IS NULL;

SELECT
(SELECT Count(Title)
FROM Books
WHERE Title = 'Dracula'
GROUP BY Title)-
(SELECT count(*) 
FROM Loans
WHERE BookID IN (SELECT BookID FROM Books WHERE Title = 'Dracula')
and ReturnedDate IS NULL) AS CopiesAvailable;
