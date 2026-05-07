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
periods_image,
periods_image_logo,
periods_index_name) 
VALUES 
("Phanérozoïque/ Précambrien", "-541 Ma", "-300 000", "L'origine de la vie", "Bla bla bla dinosaure ROAAAAR","http://localhost:3310/assets/periods/PP.png" , "http://localhost:3310/assets/periods/logo/piouPP.png", "index_phanerozoique"),
("Préhistoire", "-300 000", "-3 000", "L'aube de l'humanité", "Bla bla Mammouth","http://localhost:3310/assets/periods/PH.png", "http://localhost:3310/assets/periods/logo/piouPH.png", "index_prehistoire"),
("Antiquité", "-3 000", "476", "Civilisations fondatrices", "Bla bla pyramides bla bla rome","http://localhost:3310/assets/periods/AN.png", "http://localhost:3310/assets/periods/logo/piouAN.png", "index_antiquite"),
("Moyen-Âge", "476", "1492", "L'ère des chevaliers", "Dragons, chevalier et princesses","http://localhost:3310/assets/periods/MA.png", "http://localhost:3310/assets/periods/logo/piouMA.png", "index_moyen-age"), 
("Époque moderne", "1492", "1789", "Renaissance et Lumières", "Je sais passssssss","http://localhost:3310/assets/periods/EM.png", "http://localhost:3310/assets/periods/logo/piouEM.png", "index_epoque_moderne"),
("Époque contemporaine", "1789", "2117", "Révolutions et modernité", "Téléphones","http://localhost:3310/assets/periods/EC.png", "http://localhost:3310/assets/periods/logo/piouEC.png", "index_epoque_contemporaine"),
("Époque apocalyptique", "2117", "maintenant", "L'humanité transcendée", "Je connais le future ahah","http://localhost:3310/assets/periods/EA.png", "http://localhost:3310/assets/periods/logo/piouEA.png", "index_epoque_apocalyptique");

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
("Formation de la Terre", 1, "-4.6 milliards", "5 jours", "Assistez à la naissance chaotique d'une planète encore en fusion, où chaque seconde redéfinit la géologie.", "Surface en ébullition permanente, pluies de météorites quotidiennes et volcans à perte de vue. Aucun guide, aucune infrastructure, aucune chance de survie sans combinaison thermique de niveau 5. L'expérience la plus ancienne du catalogue.", 20, 1, "http://localhost:3310/assets/events/PP/terre.png", 849),

("Apparition des dinosaures", 1, "-230 millions", "3 jours", "Soyez aux premières loges du lancement de la plus grande gamme de créatures jamais produite par l'évolution.", "Forêts denses, climate tropical et faune en cours d'invention. Les premiers théropodes font leurs débuts, les herbivores testent leurs défenses. Taux de survie des visiteurs : donnée confidentielle, mais les combinaisons renforcées sont fortement conseillées.", 15, 6, "http://localhost:3310/assets/events/PP/dinosaur.png", 1420),

("Safari préhistorique", 1, "-200 millions", "10 jours", "Dix jours d'observation en immersion totale au milieu de créatures dont le gabarit dépasse toute logique moderne.", "Pas de clôtures, pas de guides, pas de bouton d'urgence. Vous évoluez dans un écosystème où vous n'êtes pas au sommet de la chaîne alimentaire. Équipement de discrétion fourni. Remboursement non applicable en cas de contact rapproché.", 40, 4, "http://localhost:3310/assets/events/PP/safari_prehistorique.png", 2670),

("Extinction des dinosaures", 1, "-66 millions", "1 jour", "Fin de règne. Événement unique, effets spéciaux à l'échelle planétaire, impossible à reproduire.", "Un astéroïde de dix kilomètres, une onde de choc mondiale et une nuit qui dure des années. Vous serez aux premières loges d'un bouleversement qui a redéfini l'histoire du vivant. Combinaison anti-radiation et masque à particules fines inclus dans le forfait.", 60, 5, "http://localhost:3310/assets/events/PP/extinction_dino.png", 1299),

("Dîner avec Lucy", 1, "-3,2 millions", "1 jour", "Soirée networking avec l'une des ancêtres les plus célèbres de l'humanité, découverte en Éthiopie en 1974.", "Conversation non verbale, menu local de saison et ambiance savane au coucher du soleil. Lucy est petite, curieuse et ne parle pas beaucoup, mais sa simple présence vaut le déplacement. Traducteur universel non disponible pour cette période.", 10, 1, "http://localhost:3310/assets/events/PP/diner_Lucy.png", 520),

/* Préhistoire */
("Premier feu", 2, "-400 000", "2 jours", "Assistez à l'un des tournants technologiques les plus décisifs de l'histoire humaine : le moment où l'homme a appris à produire du feu.", "Atelier en conditions réelles, avec silex, bois sec et tentatives répétées. Chauffage, cuisson et incendies accidentels sont au programme. La maîtrise est encore approximative, l'enthousiasme, lui, est total. Tenue ignifugée recommandée.", 12, 3, "http://localhost:3310/assets/events/PH/premier_feu.png", 480),

("Peintures de Lascaux", 2, "-30 000", "1 jour", "Pénétrez dans la grotte avant que quiconque n'en connaisse l'existence et observez des artistes au travail à la lueur des torches.", "Lumière faible, plafond bas, odeur de graisse animale et pigments broyés à la main. Les fresques se dessinent lentement, avec une précision qui défie les siècles. Aucun critique d'art présent. Aucune file d'attente non plus.", 8, 2, "http://localhost:3310/assets/events/PH/lascaux.png", 395),

("Chasse au Mammouth", 2, "-15 000", "3 jours", "Team building extrême en toundra glacée. Objectif : ramener de quoi nourrir le groupe. Méthode : coordination, endurance et lances taillées à la main.", "Six participants maximum par expédition. La stratégie est collective, les risques individuels. Si la chasse est un succès, un festin vous attend au camp. Dans le cas contraire, le retour sera silencieux. Équipement fourni, résultat non garanti.", 6, 3, "http://localhost:3310/assets/events/PH/chasse_aux_mammouth.png", 510),

("Premières poteries", 2, "-7 000", "2 jours", "Participez à l'invention discrète mais révolutionnaire qui a permis à l'humanité de stocker, transporter et cuire ses aliments.", "Argile, eau et mains. Deux jours pour apprendre à façonner, sécher et cuire vos propres récipients dans un village néolithique. La technique est rudimentaire, les résultats variables, et la probabilité de tout écraser avant la cuisson reste élevée.", 10, 1, "http://localhost:3310/assets/events/PH/poterie.png", 399),

("Mégalithes, Stonehenge", 2, "-4 500", "10 jours", "Rejoignez les bâtisseurs de Stonehenge et participez au chantier le plus mystérieux de la préhistoire européenne.", "Des blocs de plusieurs tonnes, des centaines de personnes, aucune grue et une intention encore débattue par les archéologues. Dix jours de travail collectif, de rituels et de questions sans réponse. L'utilité exacte du monument reste floue, mais l'expérience, elle, est gravée dans la pierre.", 20, 4, "http://localhost:3310/assets/events/PH/stonehenge.png", 499),

/* Antiquité */
("Construction des pyramides", 3, "-2560", "6 jours", "Participez au plus grand chantier de l'Antiquité et contribuez à l'édification d'une des rares merveilles du monde encore debout.", "Soleil de plomb, rythme imposé, organisation millimétrée. Vous intégrez une équipe de travailleurs spécialisés sur le plateau de Gizeh. Les blocs pèsent plusieurs tonnes, la hiérarchie est stricte et les pauses sont rares. En échange : une vue imprenable et une photo de profil imbattable.", 15, 3, "http://localhost:3310/assets/events/AN/pyramides.png", 449),

("Assassinat de Jules César", 3, "-44", "1 jour", "Assistez en observateur à la séance du Sénat romain la plus célèbre de l'histoire, le 15 mars 44 avant J.-C.", "Une réunion ordinaire qui tourne en catastrophe politique. Vingt-trois coups de poignard, soixante sénateurs impliqués et une République qui vacille. Vous êtes spectateur, pas participant. En théorie. Tenue de citoyen romain fournie, discrétion fortement recommandée.", 8, 1, "http://localhost:3310/assets/events/AN/jules.png", 999),

("Crucifixion de Jésus", 3, "33", "1 jour", "Soyez présent à l'un des événements les plus commentés, analysés et représentés de toute l'histoire humaine.", "Jérusalem, printemps 33. Foule dense, tensions politiques et religieuses à leur paroxysme. Vous assistez au déroulement d'une journée qui allait diviser le calendrier en deux. Tenue d'époque obligatoire, prise de parole fortement déconseillée.", 14, 2, "http://localhost:3310/assets/events/AN/jesus.png", 1599),

("Éruption du Vésuve", 3, "79", "2 jours", "Vivez les dernières heures de Pompéi, ville prospère de l'Empire romain, avant que le Vésuve ne la recouvre sous plusieurs mètres de cendres.", "Jour 1 : visite libre d'une cité romaine animée. Jour 2 : évacuation d'urgence incluse dans le forfait. Vue imprenable sur le cratère, ambiance thermale et service hôtelier de qualité jusqu'au dernier moment. Combinaison anti-cendres et masque respiratoire fournis.", 20, 4, "http://localhost:3310/assets/events/AN/vesuve.png", 799),

("Inauguration du Colisée", 3, "80", "10 jours", "Prenez place dans les gradins du plus grand amphithéâtre jamais construit à l'occasion de ses festivités d'inauguration sous l'empereur Titus.", "Cent jours de jeux, des milliers de gladiateurs et une foule de cinquante mille spectateurs. Vous assistez aux combats, aux défilés et aux mises en scène spectaculaires qui ont défini le divertissement de masse romain. Place en gradins populaires incluse. Tribune impériale non accessible.", 20, 4, "http://localhost:3310/assets/events/AN/colisee.png", 499),

/* Moyen-Âge */
("Banquet chez les Vikings", 4, "904", "2 jours", "Rejoignez une communauté viking pour deux jours de festivités, de récits épiques et de ripaille à la lueur des torches.", "Grande salle en bois, peaux d'animaux, hydromel en abondance et chants guerriers. Le menu est copieux, l'ambiance est bruyante et les convives sont armés, mais globalement de bonne humeur. Apportez votre hache si vous en avez une. Simon, ils en ont des rechange.", 14, 3, "http://localhost:3310/assets/events/MA/vikings.png", 856),

("Initiation à la chevalerie", 4, "1244", "3 jours", "Formation accélérée aux arts de la chevalerie médiévale : maniement de l'épée, équitation en armure et code d'honneur en conditions réelles.", "Trois jours intensifs dans un château du XIIIe siècle. Armure complète fournie, environ trente kilos à porter toute la journée. Entraînement au combat, à la monture et aux règles de la courtoisie. Résultat non certifié, survie non garantie, souvenirs assurés.", 10, 3, "http://localhost:3310/assets/events/MA/chevalier.png", 579),

("Exécution de Jeanne d'Arc", 4, "1431", "1 jour", "Soyez présent sur la place du Vieux-Marché à Rouen le 30 mai 1431, lors de l'exécution de la plus célèbre condamnée de l'histoire médiévale française.", "Procès expéditif, foule dense et ciel couvert. Un événement qui allait nourrir des siècles de récits, de débats et de canonisations. Tenue bourgeoise de l'époque fournie. Prise de position publique fortement déconseillée. Température sur place : élevée.", 8, 3, "http://localhost:3310/assets/events/MA/jeanne.png", 987),

("Chute de Constantinople", 4, "1453", "2 jours", "Vivez les derniers jours de l'Empire byzantin et assistez à la prise de Constantinople par les forces ottomanes le 29 mai 1453.", "Mille ans d'histoire qui s'effondrent en quarante-huit heures. Canons géants, murailles millénaires et une ville suspendue entre deux mondes. Vous observez le basculement d'une ère depuis un poste d'observation sécurisé dans les faubourgs. Discrétion absolue requise.", 16, 3, "http://localhost:3310/assets/events/MA/constantinople.png", 687),

("La peste noire", 4, "1347", "3 jours", "Traversez une Europe frappée par la plus grande épidémie de l'histoire médiévale, qui allait emporter un tiers de la population du continent.", "Villes silencieuses, routes désertes et une atmosphère d'une lourdeur rare. Vous circulez en observateur dans plusieurs cités touchées, protégé par une combinaison biologique de niveau 4 intégrée discrètement dans la tenue d'époque. Interaction sociale avec les habitants : strictement déconseillée.", 6, 3, "http://localhost:3310/assets/events/MA/peste.png", 999),

/* Époque moderne */
("Voyage avec Christophe Colomb", 5, "1492", "10 jours", "Embarquez sur la Santa María et traversez l'Atlantique aux côtés de Christophe Colomb, convaincu de rejoindre les Indes par l'ouest.", "Dix jours en mer, sans GPS, sans certitude et avec un équipage à cran. Les provisions sont limitées, la navigation s'appuie sur les étoiles et personne à bord ne sait vraiment ce qui attend de l'autre côté. La découverte d'un continent entier n'était pas au programme. Et pourtant.", 12, 3, "http://localhost:3310/assets/events/EM/colomb.png", 480),

("Léonard de Vinci peint la Joconde", 5, "1503", "2 jours", "Posez pour Léonard de Vinci dans son atelier florentin, ou observez en silence le maître travailler sur ce qui deviendra le tableau le plus célèbre du monde.", "Atelier encombré, lumière douce, odeur de pigments et de térébenthine. Léonard parle peu, observe beaucoup et retouche sans fin. La séance de pose est longue, le résultat est éternel, et le mystère du sourire reste entier même pour ceux qui étaient là.", 8, 1, "http://localhost:3310/assets/events/EM/joconde.png", 520),

("Observations de Galilée", 5, "1609", "2 jours", "Rejoignez Galilée dans son observatoire de Padoue et regardez le ciel à travers sa lunette, au moment même où il remet en question des siècles de cosmologie officielle.", "Deux nuits d'observation, de calculs et de remise en cause tranquille de l'ordre du monde. Jupiter a des lunes, la Lune a des reliefs et la Terre n'est peut-être pas au centre de tout. L'Inquisition n'est pas encore au courant. Profitez-en.", 10, 2, "http://localhost:3310/assets/events/EM/galilee.png", 450),

("Révolution française", 5, "1789", "3 jours", "Plongez dans le Paris insurrectionnel de l'été 1789, entre la prise de la Bastille, les débats de l'Assemblée et les rues en ébullition.", "Pavés arrachés, pamphlets qui volent, foule en colère et noblesse qui commence à comprendre que quelque chose a changé. Trois jours dans une ville qui réinvente la politique en direct. Tenue de bourgeois ou de sans-culotte fournie selon disponibilité. Prudence recommandée aux abords de la Conciergerie.", 15, 3, "http://localhost:3310/assets/events/EM/revolution.png", 600),

("Couronnement de Napoléon", 5, "1804", "2 jours", "Assistez depuis les tribunes de Notre-Dame de Paris au sacre de Napoléon Bonaparte, le 2 décembre 1804, lors d'une cérémonie qu'il a entièrement mise en scène lui-même.", "Deux mille invités, le Pape en déplacement et un général qui décide de se couronner lui-même pour que personne ne puisse prétendre lui avoir accordé ce titre. Tenue d'apparat de l'époque fournie. Place en tribune latérale. Vue sur l'ambition à son apogée.", 10, 2, "http://localhost:3310/assets/events/EM/napoleon.png", 550),

/* Époque contemporaine */
("Inauguration de la Tour Eiffel", 6, "1889", "1 jour", "Assistez à l'inauguration de la structure métallique la plus controversée de l'histoire de l'architecture parisienne, à l'occasion de l'Exposition universelle.", "En 1889, personne n'est d'accord sur quoi que ce soit. Les uns crient au génie, les autres au scandale esthétique. Vous êtes là pour trancher par vous-même, à trois cents mètres au-dessus d'une ville qui ne sait pas encore qu'elle va adorer ce monument.", 20, 1, "http://localhost:3310/assets/events/EC/eiffel.png", 400),

("Naufrage du Titanic", 6, "1912", "2 jours", "Embarquez à bord du paquebot le plus célèbre de l'histoire pour une traversée inaugurale de l'Atlantique Nord qui ne se passera pas comme prévu.", "Jour 1 : dîner en première classe, promenade sur le pont, orchestre en soirée. Jour 2 : réveil à 2h40 du matin, gilet de sauvetage inclus dans le forfait. L'évacuation est organisée, votre place dans un canot est réservée. L'orchestre, lui, joue jusqu'au bout.", 12, 3, "https://media.ouest-france.fr/v1/pictures/0064d7599b070c7666451f0e52b1b5fa-2351503.jpg", 650),

("Hiroshima/Nagasaki", 6, "1945", "1 jour", "Soyez présent à distance sécurisée lors du largage des bombes atomiques sur le Japon, événement qui a mis fin à la Seconde Guerre mondiale et ouvert l'ère nucléaire.", "Combinaison de protection intégrale, observation depuis un périmètre sécurisé et briefing historique complet avant le départ. Ce que vous verrez ce jour-là a changé la géopolitique mondiale pour les décennies suivantes. Crème solaire indice 5000 fournie. Silence de rigueur au retour.", 6, 3, "http://localhost:3310/assets/events/EC/hiroshima.png", 900),

("Woodstock, festival mythique de l'histoire", 6, "1969", "3 jours", "Vivez de l'intérieur le festival qui a défini une génération, réuni cinq cent mille personnes dans un champ de l'État de New York et marqué le sommet du mouvement contre-culturel américain.", "Boue, musique live ininterrompue, foule compacte et idéalisme à ciel ouvert. Jimi Hendrix joue à l'aube, Janis Joplin est quelque part dans la foule et personne ne sait vraiment comment tout ça va finir. Hygiène optionnelle, expérience garantie.", 25, 1, "http://localhost:3310/assets/events/EC/woodstock.png", 420),

("Apollo 11", 6, "1969", "5 jours", "Suivez la mission Apollo 11 depuis le centre de contrôle de Houston, puis depuis la Lune elle-même, lors du premier alunissage habité de l'histoire.", "Cinq jours entre décollage, orbite lunaire et fugace escapade en combinaison sur un sol que personne n'avait foulé avant. Neil Armstrong dit quelque chose d'historique. Buzz Aldrin regarde autour de lui et parle de magnificente désolation. Vous êtes là.", 6, 3, "http://localhost:3310/assets/events/EC/apollo.png", 1200),

/* Époque apocalyptique */
("Colonisation de Mars", 7, "2061", "30 jours", "Rejoignez la première colonie humaine permanente sur Mars et participez à l'installation des premières infrastructures de vie sous dôme.", "Trente jours en environnement contrôlé à soixante millions de kilomètres de la Terre. Paysage rouge à perte de vue, pression atmosphérique à 1% de la normale et Wi-Fi avec vingt minutes de latence. La terraformation progresse lentement, les charges administratives, elles, ont suivi sans délai.", 10, 2, "http://localhost:3310/assets/events/EA/mars.png", 2000),

("IA hors de contrôle", 7, "2070", "3 jours", "Assistez aux premières heures de l'autonomie non planifiée d'un système d'intelligence artificielle générale, dans un centre de recherche technologique du milieu du XXIe siècle.", "Tout avait pourtant bien commencé. Trois jours pour observer de près la frontière entre l'outil et l'entité, dans un campus high-tech où les portes s'ouvrent encore dans le bon sens. Pour l'instant. Combinaison neutre recommandée, comportement prévisible conseillé.", 15, 3, "http://localhost:3310/assets/events/EA/ia.png", 1500),

("Invasion alien", 7, "2079", "2 jours", "Premier contact officiel avec une civilisation extraterrestre. Ils ont choisi la Terre. Personne ne sait vraiment pourquoi.", "Deux jours pour observer l'humanité tenter de gérer en direct l'événement le plus déstabilisant de son histoire. Les aliens semblent curieux. Les gouvernements semblent dépassés. La couverture médiatique est totale. Votre rôle : observateur discret dans un monde qui vient de réaliser qu'il n'était pas seul.", 20, 3, "http://localhost:3310/assets/events/EA/alien.png", 1800),

("Premières villes sous-marines", 7, "2154", "7 jours", "Séjournez dans l'une des premières cités entièrement construites sous la surface de l'océan, fruit de décennies d'ingénierie et de nécessité climatique.", "Couloirs transparents, lumière bioluminescente, faune marine en déambulation constante autour de vous et silence profond ponctué de craquements structurels parfaitement normaux selon les ingénieurs. Immobilier au mètre carré historiquement élevé. Quelques problèmes d'humidité résiduelle en cours de traitement.", 12, 2, "http://localhost:3310/assets/events/EA/underwater.png", 1600),

("L'oeuf avant l'Abdou", 7, "2222", "1 jour", "Une expédition philosophique et paléontologique vers la résolution définitive de la question la plus ancienne de l'humanité.", "Un laboratoire du XXIIIe siècle affirme avoir la réponse. L'équipe est sérieuse. Les données sont là. Et au moment où la vérité allait être révélée, un dinosaure de type PiouPiou a fait irruption dans la salle de conférence. La question reste officiellement ouverte.", 5, 1, "http://localhost:3310/assets/events/EA/pioupiou.png", 999);
