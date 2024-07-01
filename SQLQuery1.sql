CREATE DATABASE CodeAcademy;
USE CodeAcademy;

CREATE TABLE Groups (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    BeginDate DATE,
    EndDate DATE,
    LessonHours INT
);

CREATE TABLE GroupTypes (
    Id INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Students (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Surname VARCHAR(100),
    BirthDate DATE,
    RegistrationDate DATE,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Topics (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    LessonHours INT
);

CREATE TABLE ExerciseTypes (
    Id INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Exercises (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Grade DECIMAL(5,2),
    Type INT,
    FOREIGN KEY (Type) REFERENCES ExerciseTypes(Id)
);

INSERT INTO Groups (Id, Name, BeginDate, EndDate, LessonHours) 
VALUES (1, 'Group PB401', '2024-01-01', '2024-06-30', 120);

INSERT INTO GroupTypes (Id, Name) VALUES (1, 'Programming'), (2, 'Backend-Fullstack');

INSERT INTO Students (Id, Name, Surname, BirthDate, RegistrationDate, PhoneNumber, Email) 
VALUES (1, 'Zaur', 'Huseynov', '2005-09-27', '2024-06-30', '1234567890', 'Zaur.Huseynov@example.com');

INSERT INTO Topics (Id, Name, LessonHours) VALUES (1, 'C#', 30), (2, 'SQL', 25);

INSERT INTO Exercises (Id, Name, Grade) 
VALUES (1, 'Homework', 95.5), (2, 'Quiz', 88.0), (3, 'Final Project', 100.0);

INSERT INTO ExerciseTypes (Id, Name) VALUES (1, 'Homework'), (2, 'Quiz'), (3, 'Final Project');

SELECT * FROM Groups;
SELECT * FROM GroupTypes;
SELECT * FROM Students;
SELECT * FROM Topics;
SELECT * FROM Exercises;
SELECT * FROM ExerciseTypes;