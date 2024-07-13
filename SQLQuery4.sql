CREATE DATABASE Library
USE Library

CREATE TABLE Libraries (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(100),
Address VARCHAR(255)
);

INSERT INTO Libraries (Name, Address)
VALUES ('Capital Library', 'yasamal'), ('BDU Library', 'Elmler Akademiyasi');

CREATE TABLE Books (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(200),
Count INT
);

INSERT INTO Books (Name, Count)
VALUES ('Introduction to SQL', 5), ('Programming in C++', 10);

CREATE TABLE Authors (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
Surname VARCHAR(50)
);

INSERT INTO Authors (Name, Surname)
VALUES ('Alexei', 'Enin'), ('Islam', 'Agayev');

CREATE TABLE Genres (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50)
);

INSERT INTO Genres (Name)
VALUES ('Programming'), ('Database');
