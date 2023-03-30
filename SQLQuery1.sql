CREATE DATABASE DB_PelFrancis;

CREATE TABLE Users(
	UserID int NOT NULL PRIMARY KEY,
		Username varchar(50),
		Password varchar(50),
		DateCreated DATE
	);

CREATE TABLE Pictures(
	PictureID int NOT NULL PRIMARY KEY,
	Filename varchar(50),
	UserID int,
	LocationID int,
	DateCreated DATE,
	FOREIGN KEY(UserID) REFERENCES Users(UserID),
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID)
);

CREATE TABLE Locations(
	LocationID int NOT NULL PRIMARY KEY,
	City varchar(50),
	CountryAbbrev varchar(50),
	Country varchar(50)
);