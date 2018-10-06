DROP database if exists Hubway;

CREATE database Hubway;
USE Hubway;

CREATE TABLE Stations (
	id int NOT NULL UNIQUE,
    stationname varchar(50),
    longitude decimal,
    latitude decimal,
    PRIMARY KEY (id)
);

CREATE TABLE Google (
	id int NOT NULL,
    duration int,
    shortestdistance int,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES Stations(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Trips (
	id int NOT NULL AUTO_INCREMENT,
    duration int,
    starttime datetime,
    stoptime datetime,
    startstation int,
    endstation int,
    bikeid int,
    customer int, 
    subscriber int,
    birthyear year,
    gender int,
    PRIMARY KEY (id),
    FOREIGN KEY (startstation) REFERENCES Stations(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (endstation) REFERENCES Stations(id) ON UPDATE CASCADE ON DELETE CASCADE
);