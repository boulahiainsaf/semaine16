CREATE DATABASE automobile_oto ;
 USE DATABASE automobil_oto ;

 CREATE TABLE voiture(
 voi_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT ,
 voi_ref VARCHAR(225) NOT NULL,
 voi_couleur  VARCHAR(225) NOT NULL,
 voi_stock INT NOT NULL,
 voi_prix DECIMAL NOT NULL,
 voi_nom VARCHAR(225) NOT NULL,
 voi_description VARCHAR(225) NOT NULL,
 voi_age INT NOT NULL 
 );

 CREATE TABLE entretien_reparation(

 entr_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 entr_type VARCHAR(225) ,
 entr_date DATE,
 entr_prix DECIMAL,
 repar_typr VARCHAR(225),
 repar_date DATE,
 repar_prix DECIMAL?
 entr_voi_id INT NOT NULL,
 FOREIGN KEY(entr_voi_id) REFERENCES voiture(voi_id)
 );

 CREATE TABLE accessoire_option(
     acc_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     acc_ajout VARCHAR(225),
     acc_ref VARCHAR(225),
     acc_prix DECIMAL,
     opt_ajout VARCHAR(225),
     opt_ref VARCHAR(225),
     opt_prix DECIMAL,
     acc_voi_id INT NOT NULL,
     FOREIGN KEY(acc_voi_id) REFERENCES voiture(voi_id)
 );

CREATE TABLE client(
     cli_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     cli_nom VARCHAR(50) NOT NULL,
     cli_prenom VARCHAR(50) NOT NULL,
     cli_type VARCHAR(225) NOT NULL,
     cli_adresse VARCHAR(225)NOT NULL,
     cli_motspass VARCHAR(225),
     cli_telephone INT,
     cli_mail VARCHAR(225)
 );


CREATE TABLE commande(
    comm_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    comm_date DATE NOT NULL ,
    comm_payement_dte DATE NOT NULL ,
    comm_reception_date DATE NOT NULL,
    comm_statut VARCHAR(225),
    comm_cli_id INT,
    FOREIGN KEY(comm_cli_id) REFERENCES client(cli_id)
);

CREATE TABLE detail_de_commande(
    ddc_id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ddc_acc_prix DECIMAL,
    ddc_discount DECIMAL,
    ddc_quantity INT NOT NULL,
    add_entr_prix DECIMAL,
    ddc_credit VARCHAR(225),
    ddc_voi_id INT,
    ddc_acc_id  INT,
    ddc_entr_id INT,
    ddc_comm_id INT,
    FOREIGN KEY(ddc_voi_id) REFERENCES voiture(voi_id),
    FOREIGN KEY(ddc_acc_id) REFERENCES accessoire_option(acc_id),
    FOREIGN KEY(ddc_entr_id) REFERENCES entretien_reparation(entr_id),
    FOREIGN KEY(ddc_comm_id) REFERENCES commande(comm_id)
);


