DROP TABLE Type_Location
DROP TABLE Location
CREATE TABLE Type_Location
(
	NumTypeLoc DECIMAL,
	typeLoc VARCHAR(30),
	NomLoc VARCHAR(30),
	Taille DECIMAL,
	Capacite DECIMAL,
	Tarif DECIMAL(8,2),
	TarifSup DECIMAL(8,2),
	CONSTRAINTS pk_type_locations PRIMARY KEY (NumTypeLoc)
	
);

CREATE TABLE Location(
	Numloc DECIMAL,
	NumTypeLoc DECIMAL
	Numero DECIMAL
	CONSTRAINT pk_location PRIMARY KEY (Numloc),
	CONSTRAINT pk_type_locations FOREIGN KEY (NumTypeLoc) REFERENCES Type_Location(NumTypeLoc)


);


CREATE TABLE Client(
	NumCli DECIMAL,
	nom VARCHAR(30),
	Prenom VARCHAR(30),
	Genre CHAR(1),
	DateN DATE,
	Pays VARCHAR(3),
	CONSTRAINT pk_Client PRIMARY KEY  (NumCli)


);


CREATE TABLE Reserver(
	Numcli DECIMAL,
	NumLoc DECIMAL,
	DateDeb DATE,
	DateFin DATE,
	
	CONSTRAINT pk_type_reserver FOREIGN KEY (Numcli) REFERENCES Client(Numcli),
	CONSTRAINT pk_type_res FOREIGN KEY (NumLoc) REFERENCES Location(NumLoc),
	CONSTRAINT pk_type_resid PRIMARY KEY(Numcli, NumLoc, DateDeb)



);


CREATE TABLE Participer(

	NumClip DECIMAL,
	NumCli DECIMAL,
	NumLoc DECIMAL,
	DateDeb DATE,
	
	CONSTRAINT pk_
	
);




ALTER TABLE Location
add NumCli DECIMAL;
add DateDeb DATE;
add CONSTRAINT pk_NumCli_location FOREIGN KEY (NumCli) REFERENCES Client(Numcli);
Add CONSTRAINT pk_date_location FOREIGN KEY (DateDeb) REFERENCES Reserver(DateDeb);







