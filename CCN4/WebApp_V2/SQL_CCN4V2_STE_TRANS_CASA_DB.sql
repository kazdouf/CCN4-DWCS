USE master
GO
CREATE DATABASE CCN4V2_STE_TRANS_CASA
GO
USE CCN4V2_STE_TRANS_CASA
GO
CREATE TABLE Conducteurs (idCond INT PRIMARY KEY, nomCond VARCHAR(50), preCond VARCHAR(50), dateN DATE, motDePasse VARCHAR(50))
GO
CREATE TABLE Voitures (numImmat INT PRIMARY KEY, marque VARCHAR(50), model VARCHAR(50), puissance VARCHAR(50), dateAchat DATE,
						idConducteur INT FOREIGN KEY REFERENCES Conducteurs(idCond))
GO
CREATE TABLE HistoriqueConducteurs (numHis INT PRIMARY KEY, numImmat INT FOREIGN KEY REFERENCES Voitures(numImmat), 
									idCond INT FOREIGN KEY REFERENCES Conducteurs(idCond), dateDebut DATE, dateFin DATE)
GO
CREATE TABLE Pannes (numPan INT PRIMARY KEY, datePan DATE, dateReprise DATE, descriptionPan VARCHAR(150),
					numImmat INT FOREIGN KEY REFERENCES Voitures(numImmat))
GO
CREATE TABLE Accidents (numAcc INT PRIMARY KEY, dateAcc DATE, remarques VARCHAR(150), numImmat INT FOREIGN KEY REFERENCES Voitures(numImmat)) 