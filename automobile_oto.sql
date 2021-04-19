CREATE DATABASE automobile_oto ;
 USE DATABASE automobil_oto ;

 CREATE TABLE voiture(
 id_voiture INT PRIMARY KEY NOT NULL AUTO_INCREMENT ,
 modéle_voiture VARCHAR(225) NOT NULL,
 typr_voiture  VARCHAR(225) NOT NULL

 )

 CREATE TABLE entretien_reparation()
 id_voiture INT NOT NULL,
 id_entretien INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 type_entretien VARCHAR(225) ,
 date_entretien DATE,
 typr_reparation VARCHAR(225),
 date_reparation DATE,
 FOREIGN KEY (id_voiture) REFERENCES voiture(id_voiture)
 )
 CREATE TABLE vente(
     id_vente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     id_voiture_vente INT NOT NULL,
     date_vente  DATE ,
     type_contrat_vente VARCHAR NOT NULL,
     prix_vente DECIMAL NOT NULL,
     date_vente DATE NOT NULL, 
     FOREIGN KEY (id_voiture_vente) REFERENCES voiture(id-voiture)
 )
 CREATE TABLE accessoire_option(
     id_accessoire INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     vent_id_accessoire INT NOT NULL,
     ajout_accessoire VARCHAR(225),
     ajout_option VARCHAR(225),
     FOREIGN KEY (vent_id_accessoire)REFERENCES vente(id_vente) 
 )
 CREATE TABLE client(
     cli_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     cli_id_voiture INT,
     cli_nom VARCHAR(50) NOT NULL,
     cli_prenom VARCHAR(50) NOT NULL,
     cli_type VARCHAR(225) NOT NULL,
     cli_adresse VARCHAR(225)NOT NULL,
     FOREIGN KEY(cli_id_voiture) REFERENCES voiture(id_voiture)
 )

