--drop table Beziehung_Kunde_Gesuch;
--drop table Beziehung_kunde_angebot;
--drop table Beziehung_Strecken;
--drop table Beziehung_Vermittlung;
--drop table angebot;
--drop table gesuch;
--drop table auto;
--drop table mitarbeiter;
--drop table kunde;
--drop table ort;


--delete table Beziehung_Kunde_Gesuch;
--delete table Beziehung_kunde_angebot;
--delete table Beziehung_Strecken;
--delete table Beziehung_Vermittlung;
--delete table angebot;
--delete table gesuch;
--delete table auto;
--delete table mitarbeiter;
--delete table kunde;
--delete table ort;

--DROP sequence Mitarbeiterseq;
--DROP sequence Kundenseq  ;
--DROP sequence Gesuchseq;
--DROP sequence Angebotseq;


create sequence Mitarbeiterseq start with 1;

CREATE TABLE Mitarbeiter(
	PersonalNr Number(10) CONSTRAINT mitPNR_PK PRIMARY KEY,
	Name VARCHAR2(20) NOT Null,
	Vorname VARCHAR2(20) NOT NULL,
	Strasse VARCHAR2(20) NOT NUll,
	PLZ NUMBER(5) NOT NULL,
	Stadt VARCHAR2(20) NOT NULL,
	Telefonnummer NUMBER(20) NOT NULL ,
  Position VARCHAR2(20) NOT NULL
);


create sequence Kundenseq start with 1;

CREATE TABLE Kunde(
	KundenNr Number(10) CONSTRAINT KdrNR_PK PRIMARY KEY,
	Vorname VARCHAR2(20) NOT NULL,
	Name VARCHAR2(20) NOT NULL,
	Strasse VARCHAR2(20),
	PLZ NUMBER(5) NOT NULL,
	Stadt VARCHAR2(20) NOT NULL,
	Telefonnummer NUMBER(20) NOT NULL

);


CREATE Table Auto(
	Modell VARCHAR2(20),
	Sitze Number(2) NOT NULL,
	Kennzeichen VARCHAR2(15) ,
	Besitzer NUMBER(10) --CONSTRAINT ZugAuto_Kunde  REFERENCES Kunde(KundenNr)
	constraint ZugAuto_Kunde FOREIGN KEY(Besitzer) REFERENCES Kunde(KundenNr)
	
);

create sequence Gesuchseq start with 1;

CREATE TABLE GESUCH(
	Suchender NUMBER(10) --Constraint Gesuch_Kunde REFeRENCES Kunde(KundenNr),
	
	constraint Gesuch_Kunde FOREIGN KEY(Suchender) REFERENCES Kunde(KundenNr),
	
	
	GesuchNr Number(10) CONSTRAINT GesuchNR_PK PRIMARY KEY,
	
	Ort_Start NUMBER(5), --constraint gesuch_start_ortSK REFERENCES Ort(PLZ),
	Ort_Ziel  Number(5), --constraint gesuch_ziel_ortSK  REFERENCES Ort(PLZ),
	
	
	
	Constraint angebot_start_ortSK FOREIGN KEY(Ort_Start,Ort_Ziel) REFERENCES Ort(Name),
	
	Fruehste_Startzeit TIMESTAMP(0)  NOT NULL,
	Spateste_Startzeit TIMESTAMP(0)  NOT NULL,
	Gesuchte_Plaetze   NUMBER(2)     NOT NULL,
	Bemerkung          VARCHAR2(255)           ,
	Erfasst_von        VARCHAR2(20)  NOT NULL,
	Erfasst_am         TIMESTAMP(0)  NOT NULL,
	
	constraint erfasst_SK foreign key(Erfasst_am) REFERENCES Mitarbeiter(PersonalNr)
	--SK auf PK zum mitarbeiter (PersonalNr)
);

create sequence Angebotseq start with 1;

CREATE TABLE Angebot(
	Bietender NUMBER(10),-- Constraint Angebot_Kunde REFERENCES Kunde(KundenNr),
	
	constraint Angebot_Kunde FOREIGN KEY(Bietender) REFERENCES Kunde(KundenNr),
	AngebotNr Number(10) CONSTRAINT AngebotNR_PK PRIMARY KEY,
	
	
	Ort_Start NUMBER(5) --constraint angebot_start_ortSK REFERENCES Ort(PLZ),
	Ort_Ziel  Number(5) --constraint angebot_ziel_ortSK  REFERENCES Ort(PLZ),
	Ort_ueber Number(5) --constraint angebot_ueber_ort_SK REFERENCES Ort(PLZ), 


	Constraint angebot_start_ortSK FOREIGN KEY(Ort_Start,Ort_Ziel,Ort_ueber) REFERENCES Ort(Name), 


	
	Fruehste_Startzeit TIMESTAMP(0)  NOT NULL,
	Spateste_Startzeit TIMESTAMP(0)  NOT NULL,
	Gebotene_Plaetze   NUMBER(2)     NOT NULL,
	Treffpunkt         VARCHAR2(255)  NOT NULL,
	Bemerkung          VARCHAR2(255)          ,
	Erfasst_von        VARCHAR2(20)  NOT NULL,
	Erfasst_am         TIMESTAMP(0)  NOT NULL,
	
	
	
	constraint erfasst_SK foreign key(Erfasst_am) REFERENCES Mitarbeiter(PersonalNr)
	--SK auf PK zum mitarbeiter (PersonalNr)
);

CREATE TABLE Ort(
	PLZ NUMBER(5) ,
	NAME VARCHAR2(30) constraint name_PR PRIMARY KEY
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
	KM VARCHAR2(5) NOT NULL,
	Ort_Start NUMBER(5),
	Ort_Ziel Number(5),
	Constraint strecke_start_SK FOREIGN KEY(Ort_Start) REFERENCES Ort(Name),
	constraint strecke_ziel_SK FOREIGN KEY(Ort_Ziel) REFERENCES Ort(Name)

);

CREATE TABLE Beziehung_Vermittlung(
	AngebotNr Number(10),
	GesuchNr Number(10),
	
	Constraint angebot_SK FOREIGN KEY(AngebotNr) REFERENCES Angebot(AngebotNr),
	constraint gesuch_SK  FOREIGN KEY(GesuchNr)  REFERENCES Gesuch (GesuchNr),

	Fahrer NUMBER(10),
	Mitfahrer NUMBER(10),
	
	constraint fahrer_sk FOREIGN KEY(Fahrer) REFERENCES Angebot(Bietender),
	constraint mitfahrer_sk FOREIGN KEY(Mitfahrer) REFERENCES Gesuch(Suchender),
	
	
	Fahrt_duerchgefuehrt BOOLEAN, --weis nicht wie genau
	GEBUEHR varchar2(20),
	Bezahlt_am TIMESTAMP(0),
	Bezahlt_bei varchar2(20),
	vermittelt_von varchar2(209,
	vermittelt_am TIMESTAMP(0)

	
);
