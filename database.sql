CREATE DATABASE era;
USE era;

/* ------- Periods -------- */

CREATE TABLE periods (
    periods_id INT NOT NULL AUTO_INCREMENT,
    periods_name VARCHAR(100) NOT NULL,
    periods_time_start VARCHAR(20) NOT NULL,
    periods_time_end VARCHAR(20) NOT NULL,
    periods_introduction TEXT NOT NULL,
    periods_description TEXT NOT NULL,
    periods_image TEXT,
    periods_image_logo TEXT,
    periods_index_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (periods_id)
);

/* missing the images for it */

INSERT INTO periods 
(periods_name, 
periods_time_start, 
periods_time_end, 
periods_introduction, 
periods_description, 
periods_image_logo,
periods_index_name) 
VALUES 
("Phanérozoïque/ Précambrien", "-541 Ma", "-300 000", "L'origine de la vie", "Bla bla bla dinosaure ROAAAAR", "assets/periods/logo/piouPP.png", "index_phanerozoique"),
("Préhistoire", "-300 000", "-3 000", "L'aube de l'humanité", "Bla bla Mammouth", "assets/periods/logo/piouPH.png", "index_prehistoire"),
("Antiquité", "-3 000", "476", "Civilisations fondatrices", "Bla bla pyramides bla bla rome", "assets/periods/logo/piouAN.png", "index_antiquite"),
("Moyen-Âge", "476", "1492", "L'ère des chevaliers", "Dragons, chevalier et princesses", "assets/periods/logo/piouMA.png", "index_moyen-age"), 
("Époque moderne", "1492", "1789", "Renaissance et Lumières", "Je sais passssssss", "assets/periods/logo/piouEC.png", "index_epoque_moderne"),
("Époque contemporaine", "1789", "2117", "Révolutions et modernité", "Téléphones", "assets/periods/logo/piouEM.png", "index_epoque_contemporaine"),
("Époque apocalyptique", "2117", "maintenant", "L'humanité transcendée", "Je connais le future ahah", "assets/periods/logo/piouEA.png", "index_epoque_apocalyptique");


/* ------- Events -------- */

CREATE TABLE events (
    events_id INT NOT NULL AUTO_INCREMENT,
    events_name VARCHAR(100) NOT NULL,
    events_periods_id INT NOT NULL,
    events_time DATE NOT NULL,
    events_time_trip DATE NOT NULL,
    events_introduction VARCHAR(255) NOT NULL,
    events_description TEXT NOT NULL,
    events_max_join INT NOT NULL,
    events_risque_level INT NOT NULL,
    events_image TEXT NOT NULL,
    events_price FLOAT NOT NULL,
    PRIMARY KEY (events_id),
    CONSTRAINT fk_periods_events
        FOREIGN KEY (events_periods_id)
        REFERENCES (periods_id)
);


/* Need do add INSERT INTO events request 
*/