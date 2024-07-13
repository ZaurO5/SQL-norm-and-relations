CREATE DATABASE DrugStore
USE DrugStore

CREATE TABLE Owners (
ID INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
Surname VARCHAR(50)
);

INSERT INTO Owners (Name, Surname)
VALUES ('Zaur', 'Huseynov'), ('Ibrahim', 'Ismayilov');

CREATE TABLE Drugstores (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(100),
Address VARCHAR(255),
ContactNumber VARCHAR(20),
CreationDate DATE,
OwnerId INT REFERENCES Owners(Id)
);

INSERT INTO Drugstores (Name, Address, ContactNumber, CreationDate, OwnerId)
VALUES ('MedEra', 'Azadliq pr.', '+9940507938614', '2020-07-24', 1), ('West Aptek', 'Azadliq pr.', '+99405093026658', '2022-02-17', 2);

CREATE TABLE Druggists (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
Surname VARCHAR(50),
BirthDate DATE,
Experience INT,
DrugstoreId INT REFERENCES Drugstores(Id)
);

INSERT INTO Druggists (Name, Surname, BirthDate, Experience, DrugstoreId)
VALUES ('Shamil', 'Aleskerov', '1998-08-15', 10, 1), ('Ramin', 'Veliyev', '1995-09-20', 12, 2);

CREATE TABLE Drugs (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(100),
Price DECIMAL(10, 2),
Count INT,
DrugstoreId INT REFERENCES Drugstores(Id)
);

INSERT INTO Drugs (Name, Price, Count, DrugstoreId)
VALUES
    ('Paracetamol', 4.20, 100, 1),
    ('Teraflu', 7.50, 50, 2);
