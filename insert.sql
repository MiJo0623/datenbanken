drop TABLE Beziehung_Kunde_Gesuch;
drop table Beziehung_kunde_angebot;
drop table Beziehung_Strecken;
drop table Beziehung_Vermittlung;
drop table angebot;
drop table gesuch;
drop table auto;
drop table mitarbeiter;
drop table kunde;
drop table ort;

Create table ort(
PLZ           varchar2(5), --not null,  
Ortsname      varchar2(50) constraint ort_PkOrt primary key --secundarys müssen auf unique oder pk zeige
);

insert into ort (Ortsname) Values ('Augsburg'); 
insert into ort (Ortsname) Values ('München');
insert into ort (Ortsname) Values ('Köln');
insert into ort (Ortsname) Values ('Bonn');
insert into ort (Ortsname) Values ('Dortmund');
insert into ort (Ortsname) Values ('Hannover');
insert into ort (Ortsname) Values ('Frankfurt');
insert into ort (Ortsname) Values ('Bremen');
insert into ort (Ortsname) Values ('Koblenz');
insert into ort (Ortsname) Values ('Kassel');
insert into ort (Ortsname) Values ('Hamburg');
insert into ort (Ortsname) Values ('Heidelberg');
insert into ort (Ortsname) Values ('Nürnberg');
insert into ort (Ortsname) Values ('Stuttgart');
insert into ort (Ortsname) Values ('Ulm');
insert into ort (Ortsname) Values ('');


create table Mitarbeiter(
MitarbeiterNr NUMBER(20)  constraint mitarbeiterNr_PkMitarbeiter primary key,
Vorname       varchar2(50) not null,
nachname      varchar2(50) not null,
Straße        varchar2(50) not null,
--Hausnummer    NUMBER(5)   not null,
plz           varchar2(5)   not null,
stadt         varchar2(50) not null,
telefonnummer varchar2(50),
position_ varchar2(20) NOT NULL  --"position"!!!
);

insert into Mitarbeiter Values (1717234, 'Hans', 'Mueller', 'Clauzenfeld 17', '68162', 'Mannheim','0621/237641', 'Bueroangestelter' );
insert into Mitarbeiter Values (1737255, 'Anna', 'Borreda', 'Muehlenweg 7', '61557', 'Oftersheim','06223/66786', 'Schichtleiterin' );
insert into Mitarbeiter Values (1137327, 'Franz', 'Hoerner', 'Geranienstrasse 7', '68133', 'Mannheim','0621/6652526', 'Bueroangestelter' );


Drop SEQUENCE  K_nr;
CREATE SEQUENCE K_nr start with 1;

Create table kunde(
KundenNr      Serial  constraint kundenNr_PkKunde primary key,
Vorname       varchar2(50) not null,
nachname      varchar2(50) not null,
Straße        varchar2(50) not null,
--Hausnummer    NUMBER(5)   not null,
plz           varchar2(5)   not null,
stadt         varchar2(50) not null,
telefonnummer varchar2(50)
);

insert into kunde
Values ( 'Hans' , 'Meier' , 'Mühlingsstr 13'  , '68145' , 'Niederhockenstadt', '06447/31445');   
insert into kunde
Values ('Hubert' , 'Mahlrumpf' , 'Kirchweg 17' , '45889' , 'Kirchheim', '03445/5617');
insert into kunde
Values ('Frauke' , 'Keller' , 'Schwedenkai 1' , '23435' , 'Kiel', '02015/7617');
insert into kunde
Values ('Uli' , 'Knauf' , 'Hauptstr. 15' , '69411' , 'Wiesloch', '06222/62552');
insert into kunde
Values ('Fiederike' , 'Müller' , 'Speyererstr. 7' , '69133' , 'Heidelberg', '06221/988457');
insert into kunde
Values ('Franz' , 'Fritz' , 'Walzwerkstr. 13' , '65123' , 'Worms', '06231/728282');
insert into kunde
Values ('Franziska' , 'Meier' , 'Muehlingsstr 13' , '68145' , 'Niederhockenstadt', '06447/31445'); 
insert into kunde
Values ('Franz' , 'Mützenmeier' , 'Hauptstr. 15' , '69411' , 'Wiesloch', '06222/67761');
insert into kunde
Values ('Hans' , 'Schindler' , 'Mühlweg 17' , '41778' , 'Heltersberg', '06327/456171');
insert into kunde
Values ('Elisa' , 'Knuff' , 'Geranienstrasse 7' , '98445' , 'Bamberg', '09887/52526');
insert into kunde
Values ('Franz' , 'Bremkauf' , 'Knaufweg 15' , '98770' , 'Buxtehude', '01566/75917');
                  

Create table Auto(
Modell        varchar2(50),
sitze         NUMBER(2) not null,
kennzeichen   varchar2(50) unique,
besitzer      NUMBER(20),-- constraint besitzer_sk references kunde(kundennr)

Constraint besitzer_sk foreign key(besitzer) references Kunde(Kundennr)
);

insert into Auto Values ('Grüne Ford Transit',6,'DA - XL 9',1);
insert into Auto Values ('Blauer VW Golf',5,'BOR - H 9987',2);
insert into Auto Values ('Weißes Mercedes Kombi',5,'DA - MH 312',1);
insert into Auto Values ('Blauer Renault Twingo',5,'KI - T 556 ',3);
insert into Auto Values ('Schwarzer Porsche',5,'HD - JJ 119',4);
insert into Auto Values ('Schwarzer Porsche',5,'HD - UT 86',5);
insert into Auto Values ('Verrosteter Renault R4',5,'WO - KJ 907',6);
--insert into Automobil Values ('Weißes Mercedes Kombi',5,'DA - MH 312',7);



create table angebot(
AngebotNr     NUMBER(20)  constraint angebotNr_PkAngebot primary key,
KundeNr       NUMBER(20)  constraint kundenNr_skAngebot references Kunde(KundenNr),
Ort_Start     varchar2(50)   constraint ort_start_skAngebot references ort(Ortsname),
Ort_Ueber     varchar2(50)   constraint ort_ueber_skAngebot references ort(Ortsname),
Ort_Ziel      varchar2(50)   constraint ort_ziel_skAngebot  references ort(Ortsname),
Fruehste_Startzeit  Timestamp,
Spaeteste_Startzeit Timestamp,
Sitzplaetze   NUMBER(2),
Treffpunkt    varchar2(50),
Bemerkung     varchar2(50),
Erfasst_von   varchar2(50),
Erfasst_am    timestamp,
MitarbeiterNr NUMBER(20) constraint mitarbeiter_nr_skAngebot references Mitarbeiter(MitarbeiterNr),

Constraint kunden_nr_con$angebot unique(kundenr)
);






create table Gesuch(
GesuchNr      NUMBER(20)  constraint gesuchNr_PkGesuch primary key,
KundeNr       NUMBER(20)  constraint kundenNr_skgesuch references Kunde(KundenNr),
Ort_Start     varchar2(50)   constraint ort_start_skgesuch references ort(Ortsname),
Ort_Ziel      varchar2(50)   constraint ort_ziel_skgesuch  references ort(Ortsname),
Fruehste_Startzeit  Timestamp,
Spaeteste_Startzeit Timestamp,
Gesuchte_plaetze   NUMBER(2),
Treffpunkt    varchar2(50),
Bemerkung     varchar2(50),
Erfasst_von   varchar2(50),
Erfasst_am    timestamp,
MitarbeiterNr NUMBER(20) constraint mitarbeiter_nr_skGesuch references Mitarbeiter(MitarbeiterNr),
Constraint kunden_nr_con$gesuch unique(kundenr)
);


create table Beziehung_Kunde_Gesuch(
GesuchNr      NUMBER(20) constraint gesuch_nr_skBz_gesuch references gesuch(GesuchNr),
KundeNr      NUMBER(20) constraint kunde_nr_skBz_gesuch references kunde(kundenNr)
);

create table Beziehung_kunde_angebot(
AngebotNr      NUMBER(20) constraint angebot_nr_skBz_angebot references angebot(angebotNr),
KundeNr      NUMBER(20) constraint kunde_nr_skBz_angebot references kunde(kundenNr)
);

create table Beziehung_Strecken(
Ort_Start     varchar2(50)   constraint ort_start_skStrecke references ort(Ortsname),
Ort_Ziel      varchar2(50)   constraint ort_ziel_skStrecke references ort(Ortsname),
km            NUMBER(5)
);


create table Beziehung_Vermittlung(
AngebotNr     NUMBER(20) constraint angebot_nr_skBz_vermit references angebot(angebotNr),
GesuchNr      NUMBER(20) constraint gesuch_nr_skBz_vermit references gesuch(GesuchNr),
Fahrer        NUMBER(20) constraint fahrer_bz_vermit references Angebot(KundeNr),
Mitfahrer     NUMBER(20) constraint mitfahrerBez_vermit references Gesuch(KundeNr),
Fahrt_done    NUMBER(1),
gebuehr       float(20),
Bezahlt_am    timestamp,
Bezahlt_bei   varchar2(50),
Vermittelt_von varchar2(50),
vermittel_am varchar2(50)
);

select * from kunde
