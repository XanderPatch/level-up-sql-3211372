-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT Barcode, Title 
FROM Books
WHERE Published BETWEEN 1890 AND 1899
  AND (Books.BookID NOT IN 
  (SELECT BookID from Loans where ReturnedDate is NULL)
  )
ORDER by Title;
