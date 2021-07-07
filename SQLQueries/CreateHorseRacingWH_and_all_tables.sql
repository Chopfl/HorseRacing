Create DATABASE HorseRacingWH

go 

USE HorseRacingWH

go

CREATE TABLE Jockeys(
	ID INT PRIMARY KEY IDENTITY,
	Country VARCHAR(255),
);

CREATE TABLE Trainers(
	ID INT PRIMARY KEY IDENTITY,
	Country VARCHAR(255),
);

CREATE TABLE Races(
	ID INT PRIMARY KEY IDENTITY,
	RaceDate DATETIME NOT NULL,
	Venue VARCHAR(2) NOT NULL,
	Surface INT NOT NULL DEFAULT 0,
	Distance DECIMAL(5,2),
	HorseRatings VARCHAR(16),
	Prize DECIMAL(16,2)
);

CREATE TABLE Horses(
	ID INT PRIMARY KEY IDENTITY,
	Age INT,
	Country VARCHAR(255),
	HorseType VARCHAR(32),
	Rating DECIMAL(5,2),
	DeclaredlWeight DECIMAL(5,2)
);

CREATE TABLE Runs(
	ID INT PRIMARY KEY IDENTITY,
	RaceID INT NOT NULL,
	HorseID INT NOT NULL,
	TrainerID INT NOT NULL,
	JockeyID INT NOT NULL,
	Result INT,
	ActualWeight DECIMAL(5,2),
	PositionSec1 DECIMAL(5,2),
	PositionSec2 DECIMAL(5,2),
	PositionSec3 DECIMAL(5,2),
	PositionSec4 DECIMAL(5,2),
	PositionSec5 DECIMAL(5,2),
	PositionSec6 DECIMAL(5,2),
	BehindSec1 DECIMAL(5,2),
	BehindSec2 DECIMAL(5,2),
	BehindSec3 DECIMAL(5,2),
	BehindSec4 DECIMAL(5,2),
	BehindSec5 DECIMAL(5,2),
	BehindSec6 DECIMAL(5,2),
	Time1 DECIMAL(5,2),
	Time2 DECIMAL(5,2),
	Time3 DECIMAL(5,2),
	Time4 DECIMAL(5,2),
	Time5 DECIMAL(5,2),
	Time6 DECIMAL(5,2),
	FinishTime DECIMAL(5,2),
	FOREIGN KEY (RaceID) REFERENCES Races(ID),
	FOREIGN KEY (HorseID) REFERENCES Horses(ID),
	FOREIGN KEY (TrainerID) REFERENCES Trainers(ID),
	FOREIGN KEY (JockeyID) REFERENCES Jockeys(ID)
);