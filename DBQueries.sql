-- Create the database
CREATE DATABASE IF NOT EXISTS FraudDetectionDatabase;


-- Create the Account table
CREATE TABLE Account (
    AccountID INT PRIMARY KEY,
    AccountCreationDate DATE,
    Balance INT,
    Currency VARCHAR(50) NOT NULL,
    accountStatus VARCHAR(50) NOT NULL,
    UserType VARCHAR(100) NOT NULL UNIQUE,
    FOREIGN KEY (EntityID) REFERENCES EntityType(EntityID) NOT NULL 
);

CREATE TABLE EntityType (
    EntityID INT PRIMARY KEY,
    DateIssued DATE 
);

CREATE TABLE Passwords (
    PasswordID INT PRIMARY KEY,
    FOREIGN KEY (AccountID) REFERENCES  INT
    DateIssued DATE 
);

CREATE TABLE User (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Email VARCHAR(255) UNIQUE NOT NULL,
    SIN_Number VARCHAR(20) UNIQUE NOT NULL,
    Phone_Number VARCHAR(20),
    DOB DATE NOT NULL,
    Client_In_Other_Bank BOOLEAN DEFAULT FALSE,
    Status VARCHAR(50)
);
