USE master
GO
CREATE DATABASE EFM2018_DWCS_V11
GO
USE EFM2018_DWCS_V11
GO
CREATE TABLE Client(CINClient VARCHAR(50) PRIMARY KEY,
					NomEtPrenom VARCHAR(50),
					MotDePasse VARCHAR(50))
GO
CREATE TABLE SalleFete(CodeSalle INT PRIMARY KEY,
			 Adresse VARCHAR(50),
			 Capacite INT)
GO
CREATE TABLE Evenement(NumEvenement INT PRIMARY KEY,
					   dateEvenement DATE,
					   CINClient VARCHAR(50) FOREIGN KEY REFERENCES Client(CINClient),
					   Capacite INT)
GO
CREATE TABLE Louer(NumLocation INT PRIMARY KEY,
				   CodeSalle INT FOREIGN KEY REFERENCES SalleFete(CodeSalle),
				   NumEvenement INT FOREIGN KEY REFERENCES Evenement(NumEvenement),
				   dateLocation DATE,
				   prixLocation FLOAT)