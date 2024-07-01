CREATE DATABASE DrugstoreApp;
USE DrugstoreApp;

CREATE TABLE Owners (
    Id INT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Surname VARCHAR(25) NOT NULL
);

CREATE TABLE Drugstores (
    Id INT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(25) NOT NULL,
    CreationDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    OwnerId INT,
    FOREIGN KEY (OwnerId) REFERENCES Owners(Id)
);

CREATE TABLE Druggists (
    Id INT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Surname VARCHAR(25) NOT NULL,
    BirthDate DATE NOT NULL,
    Experience VARCHAR(250) NOT NULL,
    DrugStoreId INT,
    FOREIGN KEY (DrugStoreId) REFERENCES Drugstores(Id)
);

CREATE TABLE Drugs (
    Id INT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Price DECIMAL NOT NULL,
    Count INT NOT NULL,
    DrugStoreId INT,
    FOREIGN KEY (DrugStoreId) REFERENCES Drugstores(Id)
);

INSERT INTO Owners (Id, Name, Surname) VALUES (1, 'Zaur', 'Huseynov');

INSERT INTO Drugstores (Id, Name, Address, ContactNumber, CreationDate, OwnerId) VALUES 
(1, 'Good Life', '122 Miles Road Palm Coast, FL 32137', '(212) 658-3916', '2009-12-22', 1);

INSERT INTO Druggists (Id, Name, Surname, BirthDate, Experience, DrugStoreId) VALUES 
(1, 'Ramin', 'Aqayev', '1989-05-03', '5 years', 1);

INSERT INTO Drugs (Id, Name, Price, Count, DrugStoreId) VALUES 
(1, 'Diabeton', 16.00, 20, 1);

SELECT * FROM Owners;

SELECT * FROM Drugstores;

SELECT * FROM Druggists;

SELECT * FROM Drugs;
