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
