USE master
GO
CREATE DATABASE EFM2018_V1_2_DB
GO
USE EFM2018_V1_2_DB
GO
CREATE TABLE ATHLETE(NumAthlete INT PRIMARY KEY,
					 NomAthlete VARCHAR(50),
					 MotDePasse VARCHAR(50),
					 Categorie VARCHAR(50))
GO
CREATE TABLE PICINE(NumPicine INT PRIMARY KEY,
					NomPicine VARCHAR(50),
					AdressePicine VARCHAR(50))
GO
CREATE TABLE ENTRAINEMENT(NumEntrainement INT PRIMARY KEY,
						  NumAthlete INT FOREIGN KEY REFERENCES ATHLETE(NumAthlete),
						  NumPicine INT FOREIGN KEY REFERENCES PICINE(NumPicine),
						  DateEntrainement DATE,
						  DistanceAParcourir FLOAT,
						  DistanceAParcourue FLOAT,
						  heureDebut TIME,
						  heureFin TIME)