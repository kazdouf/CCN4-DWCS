USE master
GO
CREATE DATABASE CCN4_DWCS_V1_ETABLISEMENT
GO
USE CCN4_DWCS_V1_ETABLISEMENT
GO
CREATE TABLE Themes (codeTheme INT PRIMARY KEY, 
					 libelleTheme VARCHAR(50), 
					 descriptionTheme VARCHAR(50))
GO
CREATE TABLE Utilisateurs ([login] VARCHAR(50) PRIMARY KEY, 
						   nom VARCHAR(50), 
						   prenom VARCHAR(50), 
						   email VARCHAR(50), 
						   motDePasse VARCHAR(50), 
						   [role] VARCHAR(50))
GO
CREATE TABLE Documents (codeDoc INT PRIMARY KEY, 
						descriptionDoc VARCHAR(50), 
						dossierDoc VARCHAR(50),
						dateEnvoi DATE, 
						etatDoc VARCHAR(50),
						codeTheme INT FOREIGN KEY REFERENCES Themes(codeTheme), 
						[login] VARCHAR(50) FOREIGN KEY REFERENCES Utilisateurs([login])) 
GO
CREATE TABLE Commentaires ( numCommt INT PRIMARY KEY, 
						   dateCommt DATE, 
						   texteCommt VARCHAR(250), 
						   etatCommt VARCHAR(50),
						   codeDoc INT FOREIGN KEY REFERENCES Documents(codeDoc), 
						   [login] VARCHAR(50) FOREIGN KEY REFERENCES Utilisateurs([login])) 


						   SELECT * FROM Documents WHERE login = 'admin' and codeDoc =1