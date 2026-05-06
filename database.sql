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
("Phanérozoïque/ Précambrien", "-541 Ma", "-300 000", "L'origine de la vie", "Bla bla bla dinosaure ROAAAAR", "http://localhost:3310/assets/periods/logo/piouPP.png", "index_phanerozoique"),
("Préhistoire", "-300 000", "-3 000", "L'aube de l'humanité", "Bla bla Mammouth", "http://localhost:3310/assets/periods/logo/piouPH.png", "index_prehistoire"),
("Antiquité", "-3 000", "476", "Civilisations fondatrices", "Bla bla pyramides bla bla rome", "http://localhost:3310/assets/periods/logo/piouAN.png", "index_antiquite"),
("Moyen-Âge", "476", "1492", "L'ère des chevaliers", "Dragons, chevalier et princesses", "http://localhost:3310/assets/periods/logo/piouMA.png", "index_moyen-age"), 
("Époque moderne", "1492", "1789", "Renaissance et Lumières", "Je sais passssssss", "http://localhost:3310/assets/periods/logo/piouEC.png", "index_epoque_moderne"),
("Époque contemporaine", "1789", "2117", "Révolutions et modernité", "Téléphones", "http://localhost:3310/assets/periods/logo/piouEM.png", "index_epoque_contemporaine"),
("Époque apocalyptique", "2117", "maintenant", "L'humanité transcendée", "Je connais le future ahah", "http://localhost:3310/assets/periods/logo/piouEA.png", "index_epoque_apocalyptique");

/* ------- Events -------- */

CREATE TABLE events (
    events_id INT NOT NULL AUTO_INCREMENT,
    events_name VARCHAR(100) NOT NULL,
    events_periods_id INT NOT NULL,
    events_time VARCHAR(20) NOT NULL,
    events_time_trip VARCHAR(20) NOT NULL,
    events_introduction VARCHAR(255) NOT NULL,
    events_description TEXT NOT NULL,
    events_max_join INT NOT NULL,
    events_risque_level INT NOT NULL,
    events_image TEXT NOT NULL,
    events_price FLOAT NOT NULL,
    PRIMARY KEY (events_id),
    CONSTRAINT fk_periods_events
        FOREIGN KEY (events_periods_id)
        REFERENCES periods(periods_id)
);


/* Need do add INSERT INTO events request 
*/

INSERT INTO events 
(events_name, 
events_periods_id, 
events_time, 
events_time_trip, 
events_introduction, 
events_description, 
events_max_join, 
events_risque_level, 
events_image, 
events_price) VALUES 
/* Phanérozoïque/ Précambrien */
("Formation de la Terre", 1, "-4.6 milliards", "5 jours", "Livraison d’une planète. Assemblage encore chaud.", "Surface instable, ambiance volcanique, zéro mode d’emploi.", 20, 1, "http://localhost:3310/assets/events/PP/terre.png", 849),
("Apparition des dinosaures", 1, "-230 millions", "3 jours", "Lancement d’une nouvelle gamme de super-faune.", "Expérience grandeur nature. Taux de survie des visiteurs : non communiqué.", 15, 6, "http://localhost:3310/assets/events/PP/dinosaur.png", 1420),
("Safari préhistorique", 1, "-200 millions", "10 jours", "Observation de créatures géantes en liberté totale.", "Guides absents. Clôtures inexistantes. Sensations garanties.", 40, 4, "http://localhost:3310/assets/events/PP/safari_prehistorique.png", 2670),
("Extinction des dinosaures", 1, "-66 millions", "1 jour", "Fin de saison imprévue.", "Effets spéciaux à l’échelle planétaire. Remboursement impossible.", 60, 5, "http://localhost:3310/assets/events/PP/extinction_dino.png", 1299),
("Dîner avec Lucy", 1, "-3,2 millions", "1 jour", "Soirée networking très ancienne.", "Conversation limitée, mais ambiance historique assurée.", 10, 1, "http://localhost:3310/assets/events/PP/diner_Lucy.png", 520),

/* Préhistoire */
("Premier feu", 2, "-400 000", "2 jours", "Nouvelle technologie. Très tendance.", "Chauffage, cuisson… et incendies accidentels inclus. Manipulation encore approximative.", 12, 3, "http://localhost:3310/assets/events/PH/premier_feu.png", 480),
("Peintures de Lascaux", 2, "-30 000", "1 jour", "Atelier créatif en milieu confiné.", "Lumière faible. Inspiration animale. Critiques d’art absentes.", 8, 2, "http://localhost:3310/assets/events/PH/lascaux.png", 395),
("Chasse au Mammouth", 2, "-15 000", "3 jours", "Team building en conditions extrêmes.", "Coordination essentielle. Lances recommandées. Retour non garanti pour tous les participants. Buffet prévu… si succès.", 6, 3, "http://localhost:3310/assets/events/PH/chasse_aux_mammouth.png", 510),
("Premières poteries", 2, "-7 000", "2 jours", "Révolution du rangement.", "Enfin un moyen de stocker… avant de tout casser par maladresse.", 10, 1, "http://localhost:3310/assets/events/PH/poterie.png", 399),
("Mégalithes, Stonehenge", 2, "-4 500", "10 jours", "Projet collectif. Objectif flou.", "Déplacement de pierres très lourdes. Utilité toujours en discussion.", 20, 4, "http://localhost:3310/assets/events/PH/stonehenge.png", 499),

/* Antiquité */
("Construction des pyramides", 3, "-2560", "6 jours", "Stage intensif. Soleil garanti, pause non.", "Participez à un projet éphémère et pimpez vos photos de profil.", 15, 3, "http://localhost:3310/assets/events/AN/pyramides.png", 449),
("Assassinat de Jules César", 3, "-44", "1 jour", "Une réunion politique tout à fait ordinaire.", "Collègues engagés. Communication directe, parfois un peu trop.", 8, 1, "http://localhost:3310/assets/events/AN/jules.png", 999),
("Crucifixion de Jésus", 3, "33", "1 jour", "Un séjour bref mais marquant.", "Accueil mitigé mais gros héritage (prenez quelques clous, au cas où).", 14, 2, "http://localhost:3310/assets/events/AN/jesus.png", 1599),
("Éruption du Vésuve", 3, "79", "2 jour", "Une soirée luxueuse. Très courte.", "Vue imprenable. Service rapide. Départ précipité.", 20, 4, "http://localhost:3310/assets/events/AN/vesuve.png", 799),
("Inauguration du Colisée", 3, "80", "10 jours", "Grand spectacle. Engagement total demandé.", "Public enthousiaste. Retour non garanti.", 20, 4, "http://localhost:3310/assets/events/AN/colisee.png", 499),

/* Moyen-Âge */
("Banquet chez les Vikings", 4, "904", "2 jours", "Dîner convivial. Apportez votre hache, au cas où.", "Menu : viande, hydromel et discussions animées sur le pillage.", 14, 3, "http://localhost:3310/assets/events/MA/vikings.png", 856),
("Initiation à la chevalerie", 4, "1244", "3 jours", "Devenez chevalier. Formation accélérée, risques inclus.", "Apprenez à manier l’épée, porter 30 kg de métal et survivre plus de deux jours.", 10, 3, "http://localhost:3310/assets/events/MA/chevalier.png", 579),
("Exécution de Jeanne d'Arc", 4, "1431", "1 jour", "Barbecue rouennais en famille.", "Ambiance religieuse. Température élevée. Fin de visite abrupte.", 8, 3, "http://localhost:3310/assets/events/MA/jeanne.png", 987),
("Chute de Constantinople", 4, "1453", "2 jours", "Visitez une capitale. Avant, pendant, ou juste après.", "Expérience immersive avec sièges, canons et changement de propriétaire.", 16, 3, "http://localhost:3310/assets/events/MA/constantinople.png", 687),
("La peste noire", 4, "1347", "3 jours", "Séjour détente, très calme et étonnamment vide", "Découvrez une Europe légèrement désertée. Interaction sociale fortement déconseillée.", 6, 3, "http://localhost:3310/assets/events/MA/peste.png", 999),

/* Époque moderne */
("Voyage avec Christophe Colomb", 5, "1492", "10 jours", "Montez à bord d’une caravelle, cap vers les Indes. Normalement.", "Voyage garanti sans GPS. Possibilité de découvrir un continent par accident.", 12, 3, "http://localhost:3310/assets/events/EM/colomb.png", 480),
("Léonard de Vinci peint la Joconde", 5, "1503", "2 jours", "draw me like one of your french girl", "Atelier peinture avec Léo: pose longue, résultat éternel, mystère garanti.", 8, 1, "http://localhost:3310/assets/events/EM/joconde.png", 520),
("Observations de Galilée", 5, "1609", "2 jours", "Regardez le ciel. Remettez tout en question.", "Effet secondaire : désaccord possible avec les autorités locales.", 10, 2, "http://localhost:3310/assets/events/EM/galilee.png", 450),
("Révolution française", 5, "1789", "3 jours", "Ambiance tendue, peuple motivé, monarchie en solde.", "Revivez les dernières heures du roi, un voyage qui vous fera probablement perdre la tête", 15, 3, "http://localhost:3310/assets/events/EM/revolution.png", 600),
("Napoléon couronnement", 5, "1804", "2 jours", "Assistez à un couronnement. Il s’en charge lui-même.", "Vue imprenable sur l’ambition. Retour à votre époque recommandé.", 10, 2, "http://localhost:3310/assets/events/EM/napoleon.png", 550),


/* Époque contemporaine */
("Tour Eiffel inauguration", 6, "1899", "1 jour", "Découverte d’une structure métallique controversée.", "Tout le monde débat. Certains appellent ça de l’art, d’autres une erreur de calcul durable.", 20, 1, "http://localhost:3310/assets/events/EC/eiffel.png", 400),
("Naufrage du Titanic", 6, "1912", "2 jours", "Un concert à vous glacer le sang", "Ambiance chic, orchestre déterminé, mouille un peu.", 12, 3, "https://media.ouest-france.fr/v1/pictures/0064d7599b070c7666451f0e52b1b5fa-2351503.jpg", 650),
("Hiroshima/Nagasaki", 6, "1945", "1 jour", "Chapitre final d’une démonstration technologique.", "Prendre crème solaire, quelques effets secondaires attendus.", 6, 3, "http://localhost:3310/assets/events/EC/hiroshima.png", 900),
("Woodstock Vivez le festival le plus mythique de l’histoire", 6, "1969", "3 jours", "Vivez le festival le plus mythique de l’histoire.", "Boue, musique et foule compacte : expérience immersive garantie, hygiène optionnelle.", 25, 1, "http://localhost:3310/assets/events/EC/woodstock.png", 420),
("Apollo 11", 6, "1969", "5 jours", "Avant la Lune, pour eux, c’était loin.", "Petit pas pour l’homme, grand saut pour le tourisme spatial (très expérimental).", 6, 3, "http://localhost:3310/assets/events/EC/apollo.png", 1200),


/* Époque apocalyptique */
("Colonisation de Mars", 7, "2061", "30 jours", "Nouvelle vie, nouvelle planète, toujours l’URSSAF.", "Air rare, paysages rouges, et promesse d’un avenir… sous dôme.", 10, 2, "http://localhost:3310/assets/events/EA/mars.png", 2000),
("IA hors de contrôle", 7, "2070", "3 jours", "Mise à jour système. Un peu trop réussie.", "L’assistant devient autonome. Les utilisateurs, eux, attendent encore la version 2.0.", 15, 3, "http://localhost:3310/assets/events/EA/ia.png", 1500),
 ("Invasion alien", 7, "2079", "2 jours", "Premier contact. Mauvais timing.", "Ils sont venus voir l’humanité. Ils restent pour le chaos organisationnel.", 20, 3, "http://localhost:3310/assets/events/EA/alien.png", 1800),
("Premières villes sous-marines", 7, "2154", "7 jours", "Urbanisme innovant. Vue sur poissons incluse.", "Immobilier unique : lumineux, silencieux, quelques problèmes d'humidité.", 12, 2, "http://localhost:3310/assets/events/EA/underwater.png", 1600),
("L'œuf avant l’Abdou.", 7, "2222", "1 jour", "Question ancestrale. Réponse discutable.", "Un dinosaure de type PiouPiou apparaît.", 5, 1, "http://localhost:3310/assets/events/EA/pioupiou.png", 999);
