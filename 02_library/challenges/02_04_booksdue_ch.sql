-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT Loans.DueDate, Books.Title, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons on Patrons.PatronID = Loans.PatronID
JOIN Books on Books.BookID = Loans.BookID
WHERE Loans.DueDate = '2022-07-13'
AND Loans.ReturnedDate IS NULL;

SELECT Loans.DueDate, Books.Title, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons on Patrons.PatronID = Loans.PatronID
JOIN Books on Books.BookID = Loans.BookID
WHERE Loans.ReturnedDate IS NULL
ORDER BY DueDate ASC;
