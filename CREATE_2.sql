


create sequence Mitarbeiterseq start with 1;

CREATE TABLE Mitarbeiter(
	PersonalNr NUMBER(10)constraint Mitarbeiter_Pk PRIMARY KEY ,
	Name VARCHAR2(20) NOT Null,
	Vorname VARCHAR2(20) NOT NULL,
	Strasse VARCHAR2(20) NOT NUll,
	PLZ VARCHAR2(5) NOT NULL,
	Stadt VARCHAR2(20) NOT NULL,
	Telefonnummer VARCHAR2(50) NOT NULL ,
  Position VARCHAR2(20) NOT NULL



);



CREATE TABLE Ort(
	PLZ NUMBER(5) ,
	NAME VARCHAR2(30) constraint name_PR PRIMARY KEY
);

   
CREATE Table Auto(
	Modell VARCHAR2(50),
	Sitze NUMBER(2) NOT NULL,
	Kennzeichen VARCHAR2(15) CONSTRAINT AutoPK PRIMARY KEY
	--Besitzer NUMBER(10), --CONSTRAINT ZugAuto_Kunde  REFERENCES Kunde(KundenNr)
	--constraint ZugAuto_Kunde FOREIGN KEY(Besitzer) REFERENCES Kunde(KundenNr)
	
);



create sequence kundenseq start with 1;

CREATE TABLE Kunde(
	KundenNr NUMBER(10) CONSTRAINT KdrNR_PK PRIMARY KEY,
	Vorname VARCHAR2(20) NOT NULL,
	Name VARCHAR2(20) NOT NULL,
	Strasse VARCHAR2(20),
	PLZ VARCHAR2(5) NOT NULL,
	Stadt VARCHAR2(20) NOT NULL, 
	Telefonnummer VARCHAR2(50) NOT NULL 
  
);





create sequence Gesuchseq start with 1;

CREATE TABLE GESUCH(
	Suchender NUMBER(10)constraint Gesuch_Kunde REFERENCES Kunde(KundenNr), 
	
--	constraint Gesuch_Kunde FOREIGN KEY(Suchender) REFERENCES Kunde(KundenNr),
	
	
	GesuchNr NUMBER(10) CONSTRAINT GesuchNR_PK PRIMARY KEY,
	
	Ort_Start VARCHAR2(20) constraint gesuch_start_ortSK REFERENCES Ort(name),
	Ort_Ziel  VARCHAR2(20) constraint gesuch_ziel_ortSK  REFERENCES Ort(name),
	
--	Constraint angebot_start_ortSK FOREIGN KEY(Ort_Start,Ort_Ziel) REFERENCES Ort(Name),
--  Constraint angebot_ziel_ortSK FOREIGN KEY(Ort_Ziel) REFERENCES Ort(Name),
	Abfahrt TIMESTAMP(0) ,
	Fruehste_Startzeit TIMESTAMP(0) ,
	Spaeteste_Startzeit TIMESTAMP(0) ,
	Gesuchte_Plaetze   NUMBER(2)     NOT NULL,
	Bemerkung          VARCHAR2(255)           ,
	Vermittlungsgebuehr VARCHAR2 (20),
	Erfasst_von        NUMBER(10)  NOT NULL,
	Erfasst_am         TIMESTAMP(0)  NOT NULL, 
	
	constraint erfasst_SK foreign key(Erfasst_von) REFERENCES Mitarbeiter(PersonalNr)
	  --SK auf PK zum mitarbeiter (PersonalNr)
);



create sequence Angebotseq start with 1;

CREATE TABLE Angebot(
	Bietender NUMBER(10) Constraint Angebot_Kunde REFERENCES Kunde(KundenNr),
	
--	constraint Angebot_Kunde FOREIGN KEY(Bietender) REFERENCES Kunde(KundenNr),
	AngebotNr NUMBER(10) CONSTRAINT AngebotNR_PK PRIMARY KEY,
	
	
	Ort_Start VARCHAR2(20) constraint angebot_start_ortSK REFERENCES Ort(Name),
	Ort_Ziel  VARCHAR2(20) constraint angebot_ziel_ortSK  REFERENCES Ort(Name),
	Ort_ueber VARCHAR2(20) constraint angebot_ueber_ort_SK REFERENCES Ort(Name), 


--	Constraint angebot_start_ortSK FOREIGN KEY(Ort_Start,Ort_Ziel,Ort_ueber) REFERENCES Ort(Name), 
 -- Constraint angebot_ziel_ortSK FOREIGN KEY(Ort_Ziel) REFERENCES Ort(Name),
--  Constraint angebot_ueber_ortSK FOREIGN KEY(Ort_ueber) REFERENCES Ort(Name),
	
	Abfahrt TIMESTAMP(0) 			 ,
	Fruehste_Startzeit TIMESTAMP(0)  	 ,
	Spateste_Startzeit TIMESTAMP(0)  	 ,
	Gebotene_Plaetze   NUMBER(2)     NOT NULL,
	Treffpunkt         VARCHAR2(255)  NOT NULL,
	Bemerkung          VARCHAR2(255)          ,
	Erfasst_von        NUMBER(10)  NOT NULL,
	Erfasst_am         TIMESTAMP(0)  NOT NULL,
	
	constraint erfasst_SK2 foreign key(Erfasst_von) REFERENCES Mitarbeiter(PersonalNr)
	--SK auf PK zum mitarbeiter (PersonalNr)
);




CREATE TABLE Beziehung_Kunde_Gesuch(
	GesuchNr NUMBER(10), --constraint kunde_gesuch_gesuchNR_pk REFERENCES GESUCH(GesuchNr),
	KundenNr NUMBER(10), --1constraint kunde_gesuch_KundenNR_pk REFERENCES Kunde(KundenNr),
	CONSTRAINT kunde_gesuch_gesuchNr_sk FOREIGN KEY(GesuchNr) REFERENCES Gesuch(GesuchNr),
	CONSTRAINT kunde_gesuch_KundenNr_sk FOREIGN KEY(KundenNr) REFERENCES Kunde(KundenNr)
	
);



CREATE TABLE Beziehung_Kunde_Angebot(
	AngebotNr NUMBER(10),-- constraint kunde_angebot_gesuchNR_pk REFERENCES Angebot(AngebotNr),
	KundenNr NUMBER(10),-- constraint kunde_angebot_KundenNR_pk REFERENCES Kunde(KundenNr),

	CONSTRAINT kunde_angebot_gesuchNr_sk FOREIGN KEY(AngebotNr) REFERENCES Angebot(AngebotNr),
	CONSTRAINT kunde_angebot_KundenNr_sk FOREIGN KEY(KundenNr) REFERENCES Kunde(KundenNr)
	
		
);



CREATE TABLE Beziehung_Strecken
(
	KM NUMBER(5) NOT NULL,
	Ort_Start VARCHAR2(20),
	Ort_Ziel VARCHAR2(20),
	Constraint strecke_start_SK FOREIGN KEY(Ort_Start) REFERENCES Ort(Name),
	constraint strecke_ziel_SK FOREIGN KEY(Ort_Ziel) REFERENCES Ort(Name)

);




CREATE TABLE Beziehung_Vermittlung(
	AngebotNr NUMBER(10),
	GesuchNr NUMBER(10),
	
	Constraint angebot_SK FOREIGN KEY(AngebotNr) REFERENCES Angebot(AngebotNr),
	constraint gesuch_SK  FOREIGN KEY(GesuchNr)  REFERENCES Gesuch (GesuchNr),

	Fahrer NUMBER(10),
	Mitfahrer NUMBER(10),
	
	--constraint fahrer_sk FOREIGN KEY(Fahrer) REFERENCES Angebot(Bietender),
	--constraint mitfahrer_sk FOREIGN KEY(Mitfahrer) REFERENCES Gesuch(Suchender),

	constraint fahrer_sk FOREIGN KEY(Fahrer) REFERENCES Kunde(KundenNr),
	constraint mitfahrer_sk FOREIGN KEY(Mitfahrer) REFERENCES Kunde(KundenNr),
	
	
	Fahrt_duerchgefuehrt NUMBER, --weis nicht wie genau
	GEBUEHR VARCHAR2(20),
	Bezahlt_am TIMESTAMP(0),
	Bezahlt_bei VARCHAR2(20),
	vermittelt_von VARCHAR2(209),
	vermittelt_am TIMESTAMP(0)

	
);



CREATE TABLE Beziehung_Auto_Kunde(

KundenNr NUMBER(10) CONSTRAINT kundeSk REFERENCES Kunde(KundenNr) ,
Kennzeichen VARCHAR2(20) CONSTRAINT KennzeichenSk REFERENCES Auto(Kennzeichen)
	
);




























