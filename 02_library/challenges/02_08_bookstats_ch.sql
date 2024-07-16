-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT Published, Count(DISTINCT(Title))AS PublishedWorks 
FROM Books
GROUP BY Published
ORDER BY PublishedWorks DESC;


-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Title, count(LoanID) AS LoanedTimes FROM Loans
Join Books on Books.BookID = Loans.BookID
group by Title
ORDER BY LoanedTimes DESC
LIMIT 5;
