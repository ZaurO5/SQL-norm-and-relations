CREATE DATABASE LibraryManagement;
USE LibraryManagement;

CREATE TABLE Libraries (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

CREATE TABLE Books (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Count INT NOT NULL
);

CREATE TABLE Authors (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL
);

CREATE TABLE Genres (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL
);

DROP TABLE Genres 

INSERT INTO Libraries (Name, Address) VALUES ('Central Library', '123 Main St');
INSERT INTO Libraries (Name, Address) VALUES ('Westside Branch', '456 West St');
INSERT INTO Libraries (Name, Address) VALUES ('Eastside Branch', '789 East St');

INSERT INTO Books (Name, Count) VALUES ('To Kill a Mockingbird', 5);
INSERT INTO Books (Name, Count) VALUES ('1984', 8);
INSERT INTO Books (Name, Count) VALUES ('The Great Gatsby', 3);

INSERT INTO Authors (Name, Surname) VALUES ('Harper', 'Lee');
INSERT INTO Authors (Name, Surname) VALUES ('George', 'Orwell');
INSERT INTO Authors (Name, Surname) VALUES ('F. Scott', 'Fitzgerald');

INSERT INTO Genres (Name) VALUES ('Fiction');
INSERT INTO Genres (Name) VALUES ('Science Fiction');
INSERT INTO Genres (Name) VALUES ('Classic');

SELECT * FROM Libraries;
SELECT * FROM Books;
SELECT * FROM Authors;
SELECT * FROM Genres;
