insert into ort (name) Values ('Augsburg'); 
insert into ort (name) Values ('Muenchen');
insert into ort (name) Values ('Koeln');
insert into ort (name) Values ('Bonn');
insert into ort (name) Values ('Dortmund');
insert into ort (name) Values ('Hannover');
insert into ort (name) Values ('Frankfurt');
insert into ort (name) Values ('Bremen');
insert into ort (name) Values ('Koblenz');
insert into ort (name) Values ('Kassel');
insert into ort (name) Values ('Hamburg');
insert into ort (name) Values ('Heidelberg');
insert into ort (name) Values ('Nuernberg');
insert into ort (name) Values ('Stuttgart');
insert into ort (name) Values ('Ulm');
insert into ort (name) Values ('Mannheim');

insert into Mitarbeiter Values (1717234, 'Hans',' Mueller', 'Clauzenfeld 17', '68162', 'Mannheim' , '0621/237641', 'Bueroangestelter' );
insert into Mitarbeiter Values (1737255, 'Anna' ,'Borreda', 'Muehlenweg 7', '61557', 'Oftersheim', '06223/66786', 'Schichtleiterin' );
insert into Mitarbeiter Values (1137327, 'Franz',' Hoerner', 'Geranienstrasse 7', '68133', 'Mannheim','0621/6652526', 'Bueroangestelter' );

insert into kunde
Values ( kundenseq.nextval ,'Hans' , 'Meier' , 'Muehlingsstr 13'  , '68145' , 'Niederhockenstadt', '06447/31445');   
insert into kunde
Values (kundenseq.nextval,'Hubert' , 'Mahlrumpf' , 'Kirchweg 17' , '45889' , 'Kirchheim', '03445/5617');
insert into kunde
Values (kundenseq.nextval,'Frauke' , 'Keller' , 'Schwedenkai 1' , '23435' , 'Kiel', '02015/7617');
insert into kunde
Values (kundenseq.nextval,'Uli' , 'Knauf' , 'Hauptstr. 15' , '69411' , 'Wiesloch', '06222/62552');
insert into kunde
Values (kundenseq.nextval,'Fiederike' , 'Müller' , 'Speyererstr. 7' , '69133' , 'Heidelberg', '06221/988457');
insert into kunde
Values (kundenseq.nextval,'Franz' , 'Fritz' , 'Walzwerkstr. 13' , '65123' , 'Worms', '06231/728282');
insert into kunde
Values (kundenseq.nextval,'Franziska' , 'Meier' , 'Muehlingsstr 13' , '68145' , 'Niederhockenstadt', '06447/31445'); 
insert into kunde
Values (kundenseq.nextval,'Franz' , 'Muetzenmeier' , 'Hauptstr. 15' , '69411' , 'Wiesloch', '06222/67761');
insert into kunde
Values (kundenseq.nextval,'Hans' , 'Schindler' , 'Muehlweg 17' , '41778' , 'Heltersberg', '06327/456171');
insert into kunde
Values (kundenseq.nextval,'Elisa' , 'Knuff' , 'Geranienstrasse 7' , '98445' , 'Bamberg', '09887/52526');
insert into kunde
Values (kundenseq.nextval,'Franz' , 'Bremkauf' , 'Knaufweg 15' , '98770' , 'Buxtehude', '01566/75917');

insert into Auto Values ('Gruene Ford Transit',6,'DA - XL 9');
insert into Auto Values ('Blauer VW Golf',5,'BOR - H 9987');
insert into Auto Values ('Weisses Mercedes Kombi',5,'DA - MH 312');
insert into Auto Values ('Blauer Renault Twingo',5,'KI - T 556 ');
insert into Auto Values ('Schwarzer Porsche',5,'HD - JJ 119');
insert into Auto Values ('Schwarzer Porsche',5,'HD - UT 86');
insert into Auto Values ('Verrosteter Renault R4',5,'WO - KJ 907');

insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Abfahrt,
gesuchte_plaetze ,bemerkung ,Vermittlungsgebuehr,erfasst_von ,erfasst_am ) VALUES (1,Gesuchseq.nextval, 'Augsburg','Muenchen',
TO_TIMESTAMP( '5-5-15', 'DD-MM-YY'),2,'Abhohlung am liebsten Augsburg Hbf','bezhalt',1137327,TO_TIMESTAMP( '2-5-15', 'DD-MM-YY') );
insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Abfahrt,
gesuchte_plaetze,erfasst_von ,erfasst_am ) VALUES (9,Gesuchseq.nextval, 'Mannheim','Dortmund',
TO_TIMESTAMP( '30-5-15', 'DD-MM-YY'),1,1137327,TO_TIMESTAMP( '27-5-15', 'DD-MM-YY') );
insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Abfahrt,
gesuchte_plaetze,erfasst_von ,erfasst_am ) VALUES (10,Gesuchseq.nextval, 'Koeln','Hannover',
TO_TIMESTAMP( '1-6-15', 'DD-MM-YY'),2,1717234,TO_TIMESTAMP( '29-5-15', 'DD-MM-YY') );
insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Abfahrt,
gesuchte_plaetze,erfasst_von ,erfasst_am ) VALUES (8,Gesuchseq.nextval, 'Mannheim','Hannover',
TO_TIMESTAMP( '1-6-15', 'DD-MM-YY'),1,1717234,TO_TIMESTAMP( '30-5-15', 'DD-MM-YY') );
insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Abfahrt,
gesuchte_plaetze,erfasst_von ,erfasst_am ) VALUES (11,Gesuchseq.nextval, 'Mannheim','Hannover',
TO_TIMESTAMP( '1-6-15', 'DD-MM-YY'),1,1717234,TO_TIMESTAMP( '30-5-15', 'DD-MM-YY') );
insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Abfahrt,
gesuchte_plaetze,erfasst_von ,erfasst_am ) VALUES (8,Gesuchseq.nextval, 'Heidelberg','Frankfurt',
TO_TIMESTAMP( '4-6-15', 'DD-MM-YY'),1,1137327,TO_TIMESTAMP( '2-6-15', 'DD-MM-YY') );
insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Abfahrt,
gesuchte_plaetze,erfasst_von ,erfasst_am ) VALUES (10,Gesuchseq.nextval, 'Bremen','Kassel',
TO_TIMESTAMP( '19-6-15', 'DD-MM-YY'),2,1717234,TO_TIMESTAMP( '10-6-15', 'DD-MM-YY') );
insert into Gesuch (suchender ,gesuchnr ,ort_start ,ort_ziel ,Fruehste_Startzeit,Spaeteste_Startzeit,
gesuchte_plaetze,erfasst_von ,erfasst_am ) VALUES (3,Gesuchseq.nextval, 'Stuttgart','Ulm',
TO_TIMESTAMP( '23-6-15 12:00', 'DD-MM-YY HH24:MI'),TO_TIMESTAMP( '23-6-15 18:00', 'DD-MM-YY HH24:MI'),2,1717234,TO_TIMESTAMP( '20-6-15', 'DD-MM-YY') );


insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Bemerkung,Erfasst_von,Erfasst_am) VALUES (1,Angebotseq.nextval,'Mannheim','Muenchen',TO_TIMESTAMP( '5-5-15 8:00', 'DD-MM-YY HH24:MI'),
2, 'Mannheim, ADAC-Stand Planetarium','Abholung Augsburg Hbf ok!, ca. 11:00 Uhr',1717234, TO_TIMESTAMP( '1-5-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Fruehste_Startzeit,Spateste_Startzeit,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (2,Angebotseq.nextval,'Mannheim','Dortmund',TO_TIMESTAMP( '29-5-15 12:00', 'DD-MM-YY HH24:MI'),
TO_TIMESTAMP( '30-5-15 12:00', 'DD-MM-YY HH24:MI'),2, 'Mannheim, Wasserturm',1137327, TO_TIMESTAMP( '15-5-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Bemerkung,Erfasst_von,Erfasst_am) VALUES (1,Angebotseq.nextval,'Mannheim','Dortmund',TO_TIMESTAMP( '30-5-15', 'DD-MM-YY'),
2, 'Mannheim, ADAC-Stand Planetarium','ausgemachte Abfahrtszeit 10:00 Uhr ',1137327, TO_TIMESTAMP( '19-5-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Ort_ueber,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (3,Angebotseq.nextval,'Mannheim','Hannover','Koeln',TO_TIMESTAMP( '1-6-15', 'DD-MM-YY'),
3, 'Mannheim, vor Haupteingang Rosengarten',1717234, TO_TIMESTAMP( '29-5-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (4,Angebotseq.nextval,'Mannheim','Hannover',TO_TIMESTAMP( '1-6-15 10:30' ,'DD-MM-YY HH24:MI'),
1, 'Mannheim, ADAC-Stand Planetarium',1717234, TO_TIMESTAMP( '30-5-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (1,Angebotseq.nextval,'Dortmund','Mannheim',TO_TIMESTAMP( '4-6-15 10:00', 'DD-MM-YY HH24:MI'),
3, 'Dortmund, Litfasssaeule am Haupteingang des Hauptbahnhofs',1717234, TO_TIMESTAMP( '1-6-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (3,Angebotseq.nextval,'Heidelberg','Kassel',TO_TIMESTAMP( '4-6-15 17:00', 'DD-MM-YY HH24:MI'),
2, 'Heidelberg, Seiteneingang des Hauptbahnhofs',1717234, TO_TIMESTAMP( '1-6-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (5,Angebotseq.nextval,'Mannheim','Dortmund',TO_TIMESTAMP( '13-6-15 9:00', 'DD-MM-YY HH24:MI'),
2, 'Mannheim, vor Wasserturm',1137327, TO_TIMESTAMP( '9-6-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (6,Angebotseq.nextval,'Bremen','Frankfurt',TO_TIMESTAMP( '17-6-15 10:00', 'DD-MM-YY HH24:MI'),
2, 'Skulptur "Bremer Stadtmusikanten"',1137327, TO_TIMESTAMP( '14-6-15', 'DD-MM-YY'));
insert into Angebot (Bietender,AngebotNr,Ort_Start,Ort_Ziel,Abfahrt,
Gebotene_Plaetze,Treffpunkt,Erfasst_von,Erfasst_am) VALUES (7,Angebotseq.nextval,'Hannover','Bremen',TO_TIMESTAMP( '30-6-15 9:00', 'DD-MM-YY HH24:MI'),
1, 'Hannover, Linie 1, Fahrtrichtung Messe, Haltestelle Rotenbaumchaussee ',1717234, TO_TIMESTAMP( '25-6-15', 'DD-MM-YY'));

insert into Beziehung_Kunde_Gesuch VALUES (1,7);
insert into Beziehung_Kunde_Gesuch VALUES (2,9);
insert into Beziehung_Kunde_Gesuch VALUES (3,10);
insert into Beziehung_Kunde_Gesuch VALUES (4,8);
insert into Beziehung_Kunde_Gesuch VALUES (5,11);
insert into Beziehung_Kunde_Gesuch VALUES (6,8);
insert into Beziehung_Kunde_Gesuch VALUES (7,10);
insert into Beziehung_Kunde_Gesuch VALUES (8,11);

insert into Beziehung_Kunde_Angebot VALUES (1,1);
insert into Beziehung_Kunde_Angebot VALUES (2,2);
insert into Beziehung_Kunde_Angebot VALUES (3,1);
insert into Beziehung_Kunde_Angebot VALUES (4,3);
insert into Beziehung_Kunde_Angebot VALUES (5,4);
insert into Beziehung_Kunde_Angebot VALUES (6,1);
insert into Beziehung_Kunde_Angebot VALUES (7,3);
insert into Beziehung_Kunde_Angebot VALUES (8,5);
insert into Beziehung_Kunde_Angebot VALUES (9,6);
insert into Beziehung_Kunde_Angebot VALUES (10,7);

insert into Beziehung_Strecken VALUES (68, 'Augsburg', 'Muenchen');
insert into Beziehung_Strecken VALUES (27, 'Bonn', 'Koeln');
insert into Beziehung_Strecken VALUES (208, 'Dortmund', 'Hannover');
insert into Beziehung_Strecken VALUES (482, 'Frankfurt', 'Bremen');
insert into Beziehung_Strecken VALUES (264, 'Frankfurt', 'Dortmund');
insert into Beziehung_Strecken VALUES (126, 'Frankfurt', 'Koblenz');
insert into Beziehung_Strecken VALUES (193, 'Frankfurt', 'Kassel');
insert into Beziehung_Strecken VALUES (125, 'Hannover', 'Bremen');
insert into Beziehung_Strecken VALUES (154, 'Hannover', 'Hamburg');
insert into Beziehung_Strecken VALUES (95, 'Heidelberg', 'Frankfurt');
insert into Beziehung_Strecken VALUES (288, 'Heidelberg', 'Kassel');
insert into Beziehung_Strecken VALUES (289, 'Kassel', 'Bremen');
insert into Beziehung_Strecken VALUES (164, 'Kassel', 'Hannover');
insert into Beziehung_Strecken VALUES (63, 'Koblenz', 'Bonn');
insert into Beziehung_Strecken VALUES (83, 'Koeln', 'Dortmund');
insert into Beziehung_Strecken VALUES (291, 'Koeln', 'Hannover');
insert into Beziehung_Strecken VALUES (352, 'Mannheim', 'Dortmund');
insert into Beziehung_Strecken VALUES (88, 'Mannheim', 'Frankfurt');
insert into Beziehung_Strecken VALUES (445, 'Mannheim', 'Hannover');
insert into Beziehung_Strecken VALUES (21, 'Mannheim', 'Heidelberg');
insert into Beziehung_Strecken VALUES (184, 'Mannheim', 'Koblenz');
insert into Beziehung_Strecken VALUES (383, 'Mannheim', 'Muenchen');
insert into Beziehung_Strecken VALUES (142, 'Mannheim', 'Stuttgart');
insert into Beziehung_Strecken VALUES (167, 'Muenchen', 'Nuernberg');
insert into Beziehung_Strecken VALUES (309, 'Nuernberg', 'Kassel');
insert into Beziehung_Strecken VALUES (235, 'Nuernberg', 'Mannheim');
insert into Beziehung_Strecken VALUES (222, 'Nuernberg', 'Frankfurt');
insert into Beziehung_Strecken VALUES (92, 'Stuttgart', 'Ulm');
insert into Beziehung_Strecken VALUES (81, 'Ulm', 'Augsburg');

INSERT INTO Beziehung_Vermittlung (AngebotNr,GesuchNr,Fahrer,Mitfahrer,Fahrt_duerchgefuehrt,GEBUEHR,Bezahlt_am,Bezahlt_bei,vermittelt_von,vermittelt_am) 
VALUES  (1,1,1,8,1,'bezahlt',TO_TIMESTAMP( '4-5-15', 'DD-MM-YY'),1717234,1717234,TO_TIMESTAMP( '2-5-15', 'DD-MM-YY') );
INSERT INTO Beziehung_Vermittlung (AngebotNr,GesuchNr,Fahrer,Mitfahrer,Fahrt_duerchgefuehrt,GEBUEHR,Bezahlt_am,Bezahlt_bei,vermittelt_von,vermittelt_am) 
VALUES  (3,2,1,9,0,'bezahlt',TO_TIMESTAMP( '29-5-15', 'DD-MM-YY'),1717234,1137327,TO_TIMESTAMP( '27-5-15', 'DD-MM-YY') );
INSERT INTO Beziehung_Vermittlung (AngebotNr,GesuchNr,Fahrer,Mitfahrer,Fahrt_duerchgefuehrt,vermittelt_von,vermittelt_am) 
VALUES  (4,3,3,10,0,1717234,TO_TIMESTAMP( '30-5-15', 'DD-MM-YY') );











