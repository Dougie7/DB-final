CREATE DATABASE DougLibrary;

USE DougLibrary
GO

CREATE TABLE Book (
	Bookid INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL CONSTRAINT Ffk_PublisherName FOREIGN KEY REFERENCES Publisher(Name)
);

INSERT INTO Book
(Title, PublisherName)
VALUES
('The Lost Tribe', 'Random House'),
('Book Title 2', 'Random House'),
('Book Title 3', 'Random House'),
('Book Title 4', 'Random House'),
('Book Title 5', 'Random House'),
('Book Title 6', 'Random House'),
('Book Title 7', 'Random House'),
('Book Title 8', 'Random House'),
('Book Title 9', 'Random House'),
('Book Title 10', 'Random House'),
('Book Title 11', 'Dougie'),
('Book Title 12', 'Dougie'),
('Book Title 13', 'Dougie'),
('Book Title 14', 'Dougie'),
('Book Title 15', 'Dougie'),
('Book Title 16', 'Dougie'),
('Book Title 17', 'Dougie'),
('Book Title 18', 'Dougie'),
('Book Title 19', 'Dougie'),
('Book Title 20', 'Dougie')
;

CREATE TABLE Book_Authors (
	Bookid INT FOREIGN KEY REFERENCES Book(Bookid),
	AuthorName VARCHAR(50) NOT NULL
);

INSERT INTO Book_Authors
(Bookid, AuthorName)
VALUES
(1, 'Stephan King'),
(2, 'Doug'),
(3, 'Jan'),
(4, 'Dylan'),
(5, 'Mom'),
(6, 'Dan'),
(7, 'Jules'),
(8, 'Tina'),
(9,'Dummy'),
(10, 'Ernest'),
(11, 'Jan'),
(12, 'Dylan'),
(13, 'Stephan King'),
(14, 'Doug'),
(15, 'Jan'),
(16, 'Dylan'),
(17, 'Stephan King'),
(18, 'Doug'),
(19, 'Jan'),
(20, 'Dylan')
;

CREATE TABLE Publisher (
	Name VARCHAR(50) PRIMARY KEY NOT NULL, 
	AddressP VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO Publisher
(Name, AddressP, Phone)
VALUES
('Random House', '111 Thomas Street', '123-456-7373'),
('Dougie', '222 Lovers Lane', '987-654-3213')
;

CREATE TABLE Book_Loans (
	Bookid INT NOT NULL CONSTRAINT fk_Bookid2 FOREIGN KEY REFERENCES Book(Bookid),
	Branchid INT NOT NULL CONSTRAINT fk_Branchid FOREIGN KEY REFERENCES Library_Branch(Branchid),
	CardNo INT NOT NULL CONSTRAINT fk_CardNo FOREIGN KEY REFERENCES Borrower(CardNo),
	DateOut DATE NOT NULL,
	DueDate DATE NOT NULL
);

INSERT INTO Book_Loans
(Bookid, Branchid, CardNo, DateOut, DueDate)
VALUES
(1, 1, 1, '2017-11-01', '2017-11-09'),
(2, 2, 2, '2017-11-02', '2017-11-10'),
(3, 3, 3, '2017-11-03', '2017-11-23'),
(4, 4, 4, '2017-11-09', '2017-11-23'),
(5, 1, 5, '2017-11-01', '2017-11-09'),
(6, 2, 6, '2017-11-02', '2017-11-19'),
(7, 3, 7, '2017-11-02', '2017-11-07'),
(8, 4, 8, '2017-11-02', '2017-11-12'),
(9, 1, 5, '2017-11-02', '2017-11-21'),
(10, 2, 7, '2017-11-03', '2017-11-13'),
(11, 3, 1, '2017-11-03', '2017-11-13'),
(12, 4, 2, '2017-11-03', '2017-11-13'),
(13, 1, 3, '2017-11-03', '2017-11-13'),
(14, 2, 4, '2017-11-04', '2017-11-13'),
(15, 3, 5, '2017-11-03', '2017-11-23'),
(16, 4, 6, '2017-11-02', '2017-11-23'),
(17, 1, 7, '2017-11-03', '2017-11-23'),
(18, 2, 8, '2017-11-03', '2017-11-23'),
(19, 3, 5, '2017-11-02', '2017-11-23'),
(20, 4, 7, '2017-11-02', '2017-11-23'),
(1, 1, 5, '2017-11-04', '2017-11-10'),
(2, 2, 7, '2017-11-01', '2017-11-10'),
(3, 3, 8, '2017-11-01', '2017-11-23'),
(4, 4, 7, '2017-11-01', '2017-11-11'),
(5, 1, 6, '2017-11-01', '2017-11-11'),
(6, 2, 5, '2017-11-01', '2017-11-11'),
(7, 3, 4, '2017-11-01', '2017-11-12'),
(8, 4, 3, '2017-11-01', '2017-11-13'),
(9, 1, 2, '2017-11-01', '2017-11-14'),
(10, 2, 1, '2017-11-01', '2017-11-23'),
(11, 3, 5, '2017-11-02', '2017-11-23'),
(12, 4, 7, '2017-11-02', '2017-11-23'),
(13, 1, 8, '2017-11-04', '2017-11-23'),
(14, 2, 7, '2017-11-04', '2017-11-23'),
(15, 3, 6, '2017-11-04', '2017-11-23'),
(16, 4, 5, '2017-11-02', '2017-11-23'),
(17, 1, 4, '2017-11-02', '2017-11-23'),
(18, 2, 3, '2017-11-03', '2017-11-23'),
(19, 3, 2, '2017-11-03', '2017-11-23'),
(20, 4, 1, '2017-11-03', '2017-11-23'),
(1, 1, 5, '2017-11-03', '2017-11-23'),
(2, 2, 7, '2017-11-02', '2017-11-23'),
(3, 3, 8, '2017-11-01', '2017-11-23'),
(4, 4, 7, '2017-11-01', '2017-11-23'),
(5, 1, 6, '2017-11-01', '2017-11-23'),
(6, 2, 5, '2017-11-01', '2017-11-23'),
(7, 3, 3, '2017-11-01', '2017-11-23'),
(9, 4, 3, '2017-11-01', '2017-11-23'),
(8, 4, 1, '2017-11-01', '2017-11-23'),
(3, 2, 1, '2017-11-02', '2017-11-23')
;

CREATE TABLE Book_Copies (
	Bookid INT NOT NULL CONSTRAINT fk_Bookid3 FOREIGN KEY REFERENCES Book(Bookid),
	Branchid INT CONSTRAINT fk_Branchid2 FOREIGN KEY REFERENCES Library_Branch(Branchid),
	No_of_Copies INT NOT NULL
);

INSERT INTO Book_Copies
(Bookid, Branchid, No_of_Copies)
VALUES
(1, 1, 5),
(2, 1, 5),
(3, 1, 5),
(4, 1, 5),
(5, 1, 5),
(6, 1, 5),
(7, 1, 5),
(8, 1, 5),
(9, 1, 5),
(10, 1, 5),
(11, 1, 5),
(12, 1, 5),
(13, 1, 5),
(14, 1, 5),
(15, 1, 5),
(16, 1, 5),
(17, 1, 5),
(18, 1, 5),
(19, 1, 5),
(20, 1, 5),
(1, 2, 5),
(2, 2, 5),
(3, 2, 5),
(4, 2, 5),
(5, 2, 5),
(6, 2, 5),
(7, 2, 5),
(8, 2, 5),
(9, 2, 5),
(10, 2, 5),
(11, 2, 5),
(12, 2, 5),
(13, 2, 5),
(14, 2, 5),
(15, 2, 5),
(16, 2, 5),
(17, 2, 5),
(18, 2, 5),
(19, 2, 5),
(20, 2, 5),
(1, 3, 5),
(2, 3, 5),
(3, 3, 5),
(4, 3, 5),
(5, 3, 5),
(6, 3, 5),
(7, 3, 5),
(8, 3, 5),
(9, 3, 5),
(10, 3, 5),
(11, 3, 5),
(12, 3, 5),
(13, 3, 5),
(14, 3, 5),
(15, 3, 5),
(16, 3, 5),
(17, 3, 5),
(18, 3, 5),
(19, 3, 5),
(20, 3, 5),
(1, 4, 5),
(2, 4, 5),
(3, 4, 5),
(4, 4, 5),
(5, 4, 5),
(6, 4, 5),
(7, 4, 5),
(8, 4, 5),
(9, 4, 5),
(10, 4, 5),
(11, 4, 5),
(12, 4, 5),
(13, 4, 5),
(14, 4, 5),
(15, 4, 5),
(16, 4, 5),
(17, 4, 5),
(18, 4, 5),
(19, 4, 5),
(20, 4, 5)
;

CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR(50) NOT NULL,
	Address2 VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO Borrower
(Name, Address2, Phone)
VALUES
('Reader', '333 Devil Place', '333-321-3456'),
('Dave', '555 Dump', '345-876-8888'),
('Reader!!!', '876 Street', '543-888-0987'),
('Dummy', '555 Road', '654-222-3543'),
('Crazy', '111 First', '333-321-3456'),
('What?', '999 Last', '345-876-8888'),
('Books?', '333 Middle', '543-888-0987'),
('First', '345 Somewhere', '654-222-3543'),
('Last', '222 Nowhere', '333-321-3456'),
('Mine', '456 There', '345-876-8888')
;

CREATE TABLE Library_Branch (
	Branchid INT PRIMARY KEY NOT NULL IDENTITY (1,1), 
	BranchName VARCHAR(50) NOT NULL,
	Address3 VARCHAR(50) NOT NULL
);

INSERT INTO Library_Branch
(BranchName, Address3)
VALUES
('Sharpstown', '657 Book Street'),
('Central', '435 Here Street'),
('Leigh', '333 Orange County'),
('Cam', '567 Leesburg')
;

CREATE PROCEDURE dbo.uspSharpTribe
AS
SELECT Book_Copies.No_of_Copies FROM Book_Copies
INNER JOIN Library_Branch ON Library_Branch.Branchid = Book_Copies.Branchid
INNER JOIN Book ON Book.Bookid = Book_Copies.Bookid
WHERE Library_Branch.BranchName = 'Sharpstown' AND Book.Title = 'The Lost Tribe'
GO

EXEC dbo.uspSharpTribe

CREATE PROCEDURE dbo.uspFindTribe @Branch VARCHAR(50)
AS
SELECT Book_Copies.No_of_Copies FROM Book_Copies
INNER JOIN Library_Branch ON Library_Branch.Branchid = Book_Copies.Branchid
INNER JOIN Book ON Book.Bookid = Book_Copies.Bookid
WHERE Library_Branch.BranchName = @Branch AND Book.Title = 'The Lost Tribe'
GO

EXEC dbo.uspFindTribe @Branch = 'Central'

CREATE PROCEDURE dbo.uspNoBooks
AS
SELECT Name FROM Borrower
LEFT JOIN Book_Loans ON Book_Loans.CardNo = Borrower.CardNo
WHERE Book_Loans.Bookid IS NULL
GO

EXEC dbo.uspNoBooks

CREATE PROCEDURE dbo.uspSharpDue
AS
SELECT Book.Title, Borrower.Name, Borrower.Address2 FROM Book
INNER JOIN Book_Loans ON Book_Loans.Bookid = Book.Bookid
INNER JOIN Borrower ON Borrower.CardNo = Book_Loans.CardNo
WHERE Book_Loans.Branchid = 1 AND DueDate = '2017-11-09'
GO

EXEC dbo.uspSharpDue

CREATE PROCEDURE dbo.uspBooksOut @Branch VARCHAR(50)
AS
SELECT Library_Branch.BranchName, COUNT(Book_Loans.Bookid) FROM Library_Branch
INNER JOIN Book_Loans ON Book_Loans.Branchid = Library_Branch.Branchid
WHERE Library_Branch.BranchName = @Branch
GROUP BY Library_Branch.BranchName
GO

EXEC dbo.uspBooksOut @Branch = 'Sharpstown'

CREATE PROCEDURE dbo.uspMoreThan5
AS
SELECT Borrower.Name, Address2, COUNT(Book_Loans.Bookid) FROM Borrower
INNER JOIN Book_Loans ON Book_Loans.CardNo = Borrower.CardNo
GROUP BY Borrower.Name, Borrower.Address2
HAVING COUNT(Book_Loans.Bookid)>5
GO

EXEC dbo.uspMoreThan5

CREATE PROCEDURE dbo.uspKing
AS
SELECT Book.Title, Book_Copies.No_of_Copies FROM Book
INNER JOIN Book_Copies ON Book_Copies.Bookid = Book.Bookid
INNER JOIN Book_Authors ON Book_Authors.Bookid = Book_Copies.Bookid
WHERE Book_Authors.AuthorName = 'Stephan King' AND Branchid = 1
GO

EXEC dbo.uspKing