DROP DATABASE GorreluPotteluDB;
CREATE DATABASE GorreluPotteluDB;
USE GorreluPotteluDB;
-- Shed Table
CREATE TABLE Sheds (
    ShedID INT PRIMARY KEY,
    ShedName VARCHAR(50),
    Capacity INT,
    Location VARCHAR(100)
);

-- Sheep Table
CREATE TABLE Sheep (
    SheepID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Breed VARCHAR(50),
    ShedID INT,
    HealthStatus VARCHAR(50),
    FOREIGN KEY (ShedID) REFERENCES Sheds(ShedID)
);

-- Health Records Table
CREATE TABLE HealthRecords (
    RecordID INT PRIMARY KEY,
    SheepID INT,
    CheckupDate DATE,
    DiseaseDetected VARCHAR(100),
    TreatmentGiven VARCHAR(100),
    DoctorName VARCHAR(50),
    FOREIGN KEY (SheepID) REFERENCES Sheep(SheepID)
);

-- Feeding Schedule Table
CREATE TABLE FeedingSchedule (
    ScheduleID INT PRIMARY KEY,
    SheepID INT,
    FeedType VARCHAR(50),
    Quantity VARCHAR(20),
    FeedTime TIME,
    Date DATE,
    FOREIGN KEY (SheepID) REFERENCES Sheep(SheepID)
);

-- Breeding History Table
CREATE TABLE BreedingHistory (
    BreedingID INT PRIMARY KEY,
    SheepID INT,
    PartnerSheepID INT,
    BreedingDate DATE,
    OffspringCount INT,
    FOREIGN KEY (SheepID) REFERENCES Sheep(SheepID),
    FOREIGN KEY (PartnerSheepID) REFERENCES Sheep(SheepID)
);
INSERT INTO Sheds VALUES (1, 'Shed-A', 50, 'ATP Village');
INSERT INTO Sheep VALUES (1, 'Dolly', 2, 'Female', 'Deccani', 1, 'Healthy');
INSERT INTO HealthRecords VALUES (1, 1, '2025-05-01', 'None', 'Deworming', 'Dr. Raju');
INSERT INTO FeedingSchedule VALUES (1, 1, 'Grass', '2kg', '08:00:00', '2025-05-24');
INSERT INTO BreedingHistory VALUES (1, 1, 1, '2025-04-01', 2);
select*from sheep;
show databases;