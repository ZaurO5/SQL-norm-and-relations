CREATE DATABASE CodeAcademy
USE CodeAcademy

CREATE TABLE Groups (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
BeginDate DATE,
EndDate DATE,
LessonHours INT
);

INSERT INTO Groups (Name, BeginDate, EndDate, LessonHours)
VALUES ('Back-End Fullstack', '2023-09-01', '2023-12-15', 60), ('UX/UI Designer', '2023-10-01', '2023-12-31', 45);

CREATE TABLE GroupTypes (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50)
);

INSERT INTO GroupTypes (Name)
VALUES ('Programming'), ('Design');

CREATE TABLE Students (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
Surname VARCHAR(50),
BirthDate DATE,
RegistrationDate DATE,
PhoneNumber VARCHAR(20),
Email VARCHAR(100)
);

INSERT INTO Students (Name, Surname, BirthDate, RegistrationDate, PhoneNumber, Email)
VALUES ('Aliya', 'Akhmedova', '2000-03-10', '2023-08-15', '+9940502945105', 'aliya83@mail.com'), ('Orxan', 'Mammedov', '1999-07-20', '2023-09-01', '+9940557204821', '	0rxanM2mm4ed0v@mail.com');

CREATE TABLE Topics (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(50),
LessonHours INT
);

INSERT INTO Topics (Name, LessonHours)
VALUES ('C# Programming', 20), ('Intrroduction DESIGN', 15);

CREATE TABLE Exercises (
Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(100),
Grade VARCHAR(10),
Type VARCHAR(50)
);

INSERT INTO Exercises (Name, Grade, Type)
VALUES ('Homework 1', 'A', 'Homework'), ('Quiz 1', 'B', 'Quiz');

CREATE TABLE ExerciseTypes (
    Id INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO ExerciseTypes (Name)
VALUES
('Homework'),
('Quiz');
