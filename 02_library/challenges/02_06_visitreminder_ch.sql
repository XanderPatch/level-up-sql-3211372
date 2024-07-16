-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT Patrons.FirstName,Patrons.Email, count(Loans.BookID) AS LoanedTimes from Loans
Join Patrons on Loans.PatronID = Patrons.PatronID
GROUP by Loans.PatronID
Order by LoanedTimes ASC
LIMIT 9;
