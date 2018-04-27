-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: alleedubio
-- ------------------------------------------------------
-- Server version	5.5.58-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'alleedubio','alleedubio33','administrateur'),(2,'admin','admin335','ico');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `id` int(10) unsigned NOT NULL,
  `categorie` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catproduct`
--

DROP TABLE IF EXISTS `catproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(250) NOT NULL,
  `description` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `image` varchar(250) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `ordre` smallint(6) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catproduct`
--

LOCK TABLES `catproduct` WRITE;
/*!40000 ALTER TABLE `catproduct` DISABLE KEYS */;
INSERT INTO `catproduct` VALUES (1,'Les Huiles Essentielles, Végétales et Eaux Florales ','Notre large gamme est issue de plantes cultivées et récoltées en Drôme et en Ardèche. 55 huiles essentielles sont présentes au magasin.\r\n(60% de plantes françaises et 50% cultivées dans la Drôme et l\'Ardèche.)\r\nNos huiles essentielles et eaux florales sont 100% pures et bio et sont distillée en France.\r\nLes huiles essentielles sont à utiliser en général en mélange avec une huile végétale. Elles sont interdites aux enfants de moins de 3 ans et au femmes enceintes.',0,'/huiles-1.jpg',0,1),(4,'Les plantes médicinales','Un véritable comptoir d\'herboristerie, au mille fleurs et couleurs.\r\nNos tisanes sont toutes labellisées « Nature et Progrès ». 70 plantes et 20 mélanges sont présents au magasin.\r\nVous trouverez les plantes en racines, fleurs, feuilles, graines ou écorce et vous pourrez les déguster en mélanges ou seules après le repas ou au petit déjeuner.\r\nElles sont le fruit de Dame Nature et nous apportent soins, bien-être et réconfort.',0,'/tisane_bloc_accueil_menu_produi-4.jpg',0,2),(13,'Les Pains','Nos pains sont faits au levain, ils sont complets ou demi-complet, avec des graines de tournesol, de lins, de courge, etc.. Vous trouverez aussi nos spécialités : pain au kamut, petit épeautre, seigle, brioches au beurre, aux fruits secs, etc..\r\nEgalement <b>le pain Montignac</b>, conçu avec de la farine intégrale, et dont l\'index glycémique est très bas.\r\nIl est disponible en 1kg, miche ou moulé, tranché ou non, <b>sur commande.</b>\r\nVous dégusterez notre gamme de biscuits en vrac : citron, amandes, noisettes, nougatine, épeautre, etc..',0,'/pain1-13.jpg',0,6),(35,'Les Elixirs Floraux','Toute la gamme est présente dans le magasin.\r\nNos fleurs sont recueillis dans les Pyrénées Orientales, sur les flancs du Mont Canigou où se trouve un site très riche d\'une nature encore sauvage.\r\nLes Elixirs rétablissent un équilibre psychologique en profitant au maximum de l\'énergie des fleurs.\r\nC\'est un soutien non négligeable dans les cas de déséquilibres externes ou internes.',0,'/elixir1-35.jpg',0,3),(36,'Les produits à base de Propolis','Toutes les formes de Propolis sont présentent dans le magasin : extrait, sirop, spray .....\r\nLa Propolis provient d\'une substance résineuse collectée par les abeilles sur les bourgeons de certains arbres. Les abeilles mélanges ensuite cette substance à leurs propres sécrétions salivaires, à la cire et aux pollens pour donner naissance à la Propolis. \r\nLa Propolis protège des germes, des bactéries et autres envahisseurs. Elle protège ainsi les voies ORL.',0,'/propolis_menu_produit_2_-36.png',0,4),(37,'Les Compléments Alimentaires','Préservez-vous de l\'hiver avec l\'extrait de pépins de pamplemousse (antibiotique naturel) ou avec la vitamine C naturelle (cynorrhodon) barrière contre les virus et bactéries. \r\nVous découvrirez les vertus de l\'aloe vera (dépurative, anti-inflammatoire et cicatrisante) et de l\'aloe arborescens.\r\nFaites appel au Quinton pour relancer votre organisme en cas d\'épuisement.\r\nNettoyer votre foie avec le Desmodium, votre organisme avec la sève de bouleau.\r\nAssouplissez vos articulations avec le silicium organique.',0,'/complementsalimentaires-37.jpg',0,5),(38,'Epicerie','De nombreux produits à disposition : pâtes, riz, farine, huiles, chocolats, jus fruits, vins, bières, produits sans gluten, etc...',0,'/epicerie1-38.jpg',0,7),(39,'Cosmétique','Alors qu\' Ecocert n\'oblige qu\'à 10% d\'ingrédients biologiques dans les cosmétiques, nous avons choisi des gammes <br />qui contiennent entre 35 et 87% d\'ingrédients biologiques, dans un souci d\'efficacité et de respect de la peau.',0,'/cosmetic1-39.jpg',0,8),(40,'Fruits et Légumes','Les fruits et légumes sont frais et de saison.',0,'/fruit-40.jpg',0,9);
/*!40000 ALTER TABLE `catproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `message` text,
  `newsletter` tinyint(4) NOT NULL DEFAULT '0',
  `fromgoldbook` tinyint(4) NOT NULL DEFAULT '0',
  `fromcontact` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25497 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (25439,'xav','gonza','xavier.gonzalez@free.fr',NULL,NULL,1,0,0),(25441,'xavi','gonz','xavier@gonzalez.pm',NULL,NULL,1,0,0),(25442,'xavier','gonzalez','fjavi.gonzalez@gmail.com',NULL,NULL,1,0,0),(25445,'Fred ','Lesca','fredericlesca@iconeo.fr',NULL,NULL,1,0,0),(25446,'','Gonzalez','xavier@gonzalez.pm',NULL,NULL,1,1,0),(25448,'jhonny','guitar','jav_gonz@yahoo.com',NULL,NULL,1,0,1),(25450,'','Gonzalez','xavier@gonzalez.pm',NULL,'ça roule ?',1,1,0),(25451,'','lesca','flesca@free.fr',NULL,'atelier medecine chinoise décevant',1,1,0),(25452,'','Nathalie LESCA','nathalie.lesca@free.fr',NULL,'boutique trés sympa. Bons conseils et produits très variés de qualité. ',1,1,0),(25453,'','toto','t@free.fr',NULL,'boutique simbre',1,1,0),(25454,'','Isabelle','isa_carambar@yahoo.fr',NULL,'Un magasin où l\'on se sent bien, à taille humaine. On y trouve tout ce dont on a besoin avec en plus les conseils éclairés; la gentillesse et le sourire de la créatrice de ce lieu unique.',1,1,0),(25455,'','Lisa','eliereynaert@hotmail.fr',NULL,'Un magasin agréable, avec un choix très varié de produits, les conseils sont au rendez vous ! \r\nOn y est très bien accueilli et la gérante de ce dernier rayonne par sa bonne humeur et son sourire. ',1,1,0),(25456,'Sergio','GARCIA','sgarcia@aceitesolimpo.com',NULL,'Madame, Monsieur, \r\n\r\nACEITES OLIMPO est un fabricant de qualité et de confiance qui offre à ses clients une large gamme de produits de qualité (huile, olives, safran, vin, fromage et vinaigre).\r\n\r\nNous exportons nos produits principalement en Europe (dont la France), en Asie (Indonésie, Inde, Chine…). Mais nous fournissons aussi des établissements de notre région.\r\nNos huiles font parties des meilleures d’Espagne car elles proviennent directement des oliveraies de notre province.\r\nNotre produit phare est l’huile d’olive biologique. Les olives sont cultivées dans le respect de l’environnement. En effet, nous n’utilisons pas d’engrais, ni de pesticides ou d’autres produits chimiques. De plus, l’extraction de l’huile est réalisée par des procédés mécaniques et conservée dans des conditions thermiques qui n’altèrent pas sa qualité. L’huile d’olive extra vierge produite se caractérise pour être fruitée, pour avoir des arômes intenses en narines et raffinées en bouche avec une touche  d’amertume et de piquant. Elle satisfait les goûts de chacun.\r\n\r\nNous proposons deux autres produits biologiques, qui sont le vinaigre (balsamique, de cidre, de vin blanc et rouge) et le fromage de brebis (au lait tendre, au lait demi-affiné et au lait affiné).\r\n \r\nL’appellation de nos produits : « produits sains d’Espagne » certifie de la grande qualité des produits.\r\n\r\nVotre enseigne biologique nous intéresse fortement et souhaiterions vous proposer nos produits afin de les y exposer. \r\n\r\nVous trouverez plus d’informations sur notre entreprise et nos produits sur notre site web : http://aceitesolimpo.com/fr/ \r\n\r\nNous sommes, évidemment, prêts à vous fournir de plus amples renseignements, si nécessaire.\r\n\r\nSERGIO GARCÍA\r\n\r\nDpto. comercial\r\n\r\nCtra. de Mahora, Km. 3\r\n\r\n02080 Albacete\r\n\r\nTlf.+34 967 21 76 61\r\n\r\nFax.+34 967 24 25 82\r\n\r\nGSM: +34 673 814 854\r\n\r\nskype: aceitesolimpo\r\n\r\nsgarcia@aceitesolimpo.com\r\n\r\nwww.aceitesolimpo.com',0,0,1),(25457,'','ER-IMMO','contact@er-immo.com',NULL,'Un très joli magasin à Saint Sulpice et Cameyrac où on trouve du conseil, le sourire et des produits de très grandes qualités.\r\nSi vous ne connaissez pas encore, n\'hésitez pas à vous y rendre, la santé et le bien être n\'ont pas de prix.',1,1,0),(25458,'','harvey','gsddgsgd@free.fr',NULL,'boutique sympa',1,1,0),(25459,'','test','test@test.fr',NULL,'<b>bob<b>',1,1,0),(25460,'','MaaGiiK','Maagdddiik@gmail.co',NULL,'<b>test<b>',0,1,0),(25461,'','<b>test</b>','test@hotmail.com',NULL,'<b>test</b>',1,1,0),(25462,'','','veronique.pasquiers@wanadoo.fr',NULL,'je n\'habite plus en gironde, donc ce serait \"sympa\" de ne plus m\'envoyer de mails ; merci',1,0,1),(25463,'','Mathieu','mathieu.datore@hotmail.com',NULL,'Excellent magasin, touriste de passage mais j\'ai beaucoup apprécié l\'ambiance! Très gentille commerçante avec un magnifique sourire ! Jolie boutique comme la vendeuse ;)',1,1,0),(25464,'jérôme ','maubourguet','communication@biogalta.com',NULL,'Bonjour, \r\n\r\nNotre famille située à Cheste (Valencia) en Espagne produit, depuis plusieurs générations, des fruits bio ( oranges, citrons, pamplemousses , mandarines, raisin et de huile d’olive). \r\n\r\nSi vous  êtes intéressés par notre démarche de fruits bio en direct du producteur, nous restons à votre disposition pour échanger en fonction de vos besoins.\r\n\r\nCordialement\r\n\r\nJérôme Maubourguet \r\nLaura Sanchez Fortea 06 98 09 00 26\r\nwww.biogalta.com',0,0,1),(25465,'DOMINIQUE','SLOAN','dermotechnic@orange.fr',NULL,'Chère Madame, Cher Monsieur,        \r\nJe souhaiterais vous adresser le dossier de presse de notre marque d’éponges konjac bio DBS connues et reconnues dans le monde entier et en Europe chez les plus grandes boutiques en ligne de produits bio de France, de Belgique qui l’ont adoptée comme www.sequoiashop.be , www.newpharma.be, mais aussi en Hollande, Canada et aux USA ; l’éponge konjac est un excellent produit consommable ludique et de faible prix qui engrange de très bons profits et a déjà séduit des millions de consommateurs femmes ou hommes.\r\nJe reste à votre écoute et c’est avec grand plaisir que je vous compterais parmi nos nouveaux distributeurs et mettrais à votre disposition nos outils marketing. Dans l’attente de votre réponse je vous souhaite une belle journée.\r\nDominique SLOAN\r\nTél Direct: 04.93.24.66.51\r\nDermotechnic Beauty Systems LLC « Anti Aging Global Solutions »\r\nFrance (Nice) USA (Miami) \r\nwww.dermotechnic.com \r\n',0,0,1),(25466,'','maïté','maite.moreau.izon@gmai.com',NULL,'Une épicerie pleine de bonnes choses .. je recommande les poires, les dattes, le nougat..\r\nPour les compléments alimentaires, les cosmétiques, les huiles éssentielles etc... Céline connait vraiment très bien ses produits et il ne faut pas hésiter à lui demander conseils !!\r\n\r\n',1,1,0),(25467,'Jérome ','Cordoba','Contact@bordeaux-surf.fr',NULL,'Bonjour, suite à la demande des commerçants, nous avons créer un tarif \"heures creuses\" qui permet d\'accéder à l\'ensemble du plateau cardio-musculation de votre salle de sport, Fitness Attitude. Je vous invite donc, vous et tous vos collaborateurs à venir profiter de nos installations dans une ambiance bon enfant pendant vos pauses ou heures de fermeture. Sportivement,\r\n\r\nL\'équipe Fitness Attitude.',0,0,1),(25468,'Aldina','Peixoto','aldina@vicbag.com',NULL,'Bonjour,\r\nVICBAG est leader mondial dans la fabrication et distribution de sacs réutilisables, personnalisables et écologiques, dans diverses matières : PP tissé ou non tissé, Nylon, Coton, Jute, Bambou, Rpet.\r\n\r\nNous aimerions vous proposer nos différents modèles de sacs réutilisables pour vos magasins.\r\nNous collaborons avec les plus grandes chaînes de la Grande Distribution ainsi que d’autres magasins.\r\nNos produits sont de très bons supports de communication à des prix très compétitifs compte tenu de notre volume de fabrication en constante évolution.\r\nNous avons également une licence Disney avec qui nous travaillons également sur les sacs Disney, Star Wars et Marvel.\r\n\r\nPourriez vous me communiquer le contact de votre service achat. \r\n\r\nPour vous aider dans le choix de votre modèle de sac, n’hésitez pas à consulter notre site Internet : www.vicbag.com\r\nDans l’attente de votre réponse.\r\nJe reste à VOTRE entière disposition pour toute question ou complément d\'information.\r\nCordialement,\r\nAldina Peixoto\r\n\r\n \r\n16bis rue d’Odessa\r\n75014 PARIS\r\nTel : 01 43 25 91 06\r\nwww.vicbag.com\r\n',0,0,1),(25469,'MARIELLE','VALLE','naturarome@gmail.com',NULL,'Bonjour\r\nVenant de créer une savonnerie artisanale à Ambares et Lagrave, je recherche un partenariat et des points de ventes.\r\nMes savons sont 100% naturels parfumés aux huiles essentielles pour leurs vertus thérapeutiques et adaptés à la peau des patients étant moi-même aromathérapeute, je confectionne les formules.\r\nIl s\'agit de saponification à froid avec des produits certifiés naturels.\r\nJ\'ai aussi développé une gamme de produits ménagers 100 % naturels.\r\nNous avons aussi créé des savons en forme de cannelés de poids différents, des marbrés et des moulés aux formes et couleurs originales.\r\nSi vous souhaitez nous rencontrer, contactez-nous\r\nMerci de votre attention \r\nCordialement\r\nMarielle VALLE\r\nTel : 0614727271\r\nMail : naturarome@gmail.com\r\n',1,0,1),(25470,'','bernier benedicte','contact@ben-qi.fr',NULL,'Bonsoir Céline,\r\nJe viens d\'avoir une demande de RV pour jeudi matin à 9h30 chez vous, est-ce possible? Merci pour votre réponse. Et belle soirée. Bénédicte',1,0,1),(25471,'Nicole','RAMBAUD','danielrambaud@orange.fr',NULL,'Bonjour,\r\nJ\'aimerais savoir si vous avez en magasin de l\'HUILE DE MILLEPERTUIS \r\net à quel tarif.\r\nMerci d\'avance\r\nCdlt',1,0,1),(25472,'Bénédicte','BERNIER','contact@ben-qi.fr',NULL,'Bonjour Céline,\r\nJ\'ai eu des changements pour les réservations de cette semaine. Mme Masson a annulé sa séance, j\'ai donc avancé le RV de Isabelle Borredon à 17h30 ce mercredi.\r\nD\'autre part, je te confirme le RV du 9 juin à 15h30. Dis moi si cela te convient.  Bien à toi. Bénédicte',1,0,1),(25473,'M.Ange','PEREIRA','adange31@hotmail.fr',NULL,'Bonjour Céline, toujours pas mes gélules?? Bisous et bonne journée! tiens moi au courant ok',1,0,1),(25474,'Touche pas à mon popotte','Association','refuge.touchepasamonpopotte@gmail.com',NULL,'Monsieur le Directeur,\r\n\r\nL\'Association Touche Pas à Mon Popotte, pour laquelle j\'ai l\'honneur d\'assurer les fonctions de trésorière, reconnue d\'intérêt général en vertu de l\'arrêté publié au JO le 9/07/ 2014, est à la recherche de donateurs de légumes invendables ou invendus, afin de nourrir les animaux accueillis au sein de son refuge (à ce jour 21 lapins, 6 chinchillas, 5 chats, 2 moutons, 2 chiens).\r\n\r\nLes dons faits à ce titre à notre association ouvrent droit, en vertu de l\'article 23 8 bis du Code général des Impôts, à une réduction d\'Impôt égale à 60% de leur montant (dans la limite de 5 millième du chiffre d\'affaires de l\'entreprise). Un formulaire rempli et signé par nos soins chaque année suffit à obtenir cette réduction d\'impôt, ainsi que votre comptable pourra vous le confirmer.\r\n\r\nConsciente de la charge de travail de votre entreprise, et ne souhaitant pas que l\'organisation du don de légumes vous soit une charge supplémentaire, la Présidente de l\'Association se propose de s\'organiser avec vous afin de pouvoir venir récupérer, à l\'endroit et aux horaires que vous nous indiquerez, les légumes qui ne vous sont pas utiles et qui nous sont nécessaires (à titre d\'exemple, endives, salades, fanes de carottes et carottes font la joie de nos petits protégés).\r\n\r\nDe plus, sauf avis contraire de votre part, nous nous engagerons par Convention à mentionner le nom de votre entreprise comme mécène de notre Association sur l\'ensemble des documents officiels émanant de notre Association (plaquettes de présentation, site internet...).\r\n\r\nLa Présidente de l\'association restant à votre disposition pour toute information complémentaire, je vous prie d\'agréer, Monsieur le Directeur, l\'assurance de notre haute considération.\r\n\r\nLa Trésorière de Touche Pas à Mon Popotte\r\n\r\nAssociation Touche Pas à Mon Popotte\r\n8 Allée de Cardet\r\n33370 SALLEBOEUF\r\n0698144375\r\nhttps://touchepasamonpopotte.wordpress.com ',0,0,1),(25475,'Sergio','Garcia','sgarcia@aceitesolimpo.com',NULL,'Madame, Monsieur\r\n\r\nJe suis Sergio García, responsable commercial export\r\nau sein de l’entreprise espagnole ACEITES OLIMPO,\r\nspécialisée dans la commercialisation d’huiles d’olives extra\r\nvierges bios. Nos produits sont fabriqués dans la région de\r\nCastille-La-Manche, une région connue mondialement pour sa\r\nspécialisation dans le secteur oléicole. Ils sont exportés en\r\nAfrique, en Europe, au Moyen-Orient ainsi qu’en Asie. Notre huile\r\nd\'olive vierge extra a reçu à variables reprises des prix prestigieux\r\npour son meilleur goût lors de grands concours internationaux tels que le\r\nNYIOCC ou encore le prix ITQI.\r\n\r\nCes prix ainsi que l\'appelation \" Produits sains d\'Espagne\" certifient\r\nleur grande qualité.  \r\nNos huiles font parties des meilleures d’Espagne car elles\r\nproviennent directement des oliveraies de notre province, celles-ci\r\nrespectent les normes ISO14001 et ISO9001. \r\n\r\nVotre société commercialisant des produits bio et qui sait valoriser ses\r\nproduits sur le territoire français  a particulièrement retenu notre\r\nattention. C\'est la raison pour laquelle nous vous proposons l\'achat de\r\nnotre huile d\'olive en vrac. \r\n\r\n\r\nVous pouvez  retrouver l\'ensemble de nos produits sur\r\nnotre site internet : http://www.aceitesolimpo.com/fr/.\r\nNous sommes bien évidemment prêts à fournir de plus amples informations\r\nsi nécessaire. \r\n\r\nEn espérant recevoir prochainement de vos nouvelles,\r\nje vous prie d\'agréer, Madame, Monsieur, l\'expression de mes\r\nsalutations distinguées.\r\n\r\nSERGIO GARCÍA\r\n\r\nDépartement Export \r\n\r\n \r\n\r\nCtra. de Mahora, Km. 3\r\n\r\n02080 Albacete\r\n\r\nTLF.+34 967 21 76 61\r\n\r\nFAX.+34 967 24 25 82\r\n\r\nGSM: +34 673 814 854\r\n\r\nSKYPE: ACEITESOLIMPO\r\n\r\nsgarcia@aceitesolimpo.com\r\n\r\nWWW.ACEITESOLIMPO.COM',0,0,1),(25476,'Sergio ','Garcia','sgarcia@aceitesolimpo.com',NULL,'Madame, Monsieur\r\n\r\nMon nom est Sergio Garcia. Je suis responsable commercial export chez ACEITES OLIMPO. Par le le biais de ce mail, je tenais à vous présenter notre entreprise ainsi que nos produits. \r\nACEITES OLIMPO est un fabricant de qualité et de confiance qui offre\r\nà ses clients une grande variété de produits de qualité (huiles\r\nd’olive, olives, safran, vins, fromages et vinaigres).\r\n\r\nNous exportons nos produits principalement en Europe (dont la France),\r\nen Asie, en Afrique, au Moyen Orient et en Amérique latine.\r\nMais nous fournissons aussi des établissements de notre région.\r\n\r\nParmi nos gammes de produits, ressort notre huile d’olive extra\r\nvierge biologique. Elle est certifiée bio au niveau national et\r\neuropéen. Nos huiles font parties des meilleures d’Espagne car elles\r\nproviennent directement des oliveraies de notre région, Castilla La\r\nMancha, connue mondialement pour sa spécialisation dans le secteur\r\noléicole. Nos produits respectent les normes ISO14001 et ISO9001. Nous\r\navons de plus, reçu le prestigieux prix iTQi 2014 considérant notre\r\nhuile vierge extra comme la meilleure des échantillons en compétition.\r\nNotre huile a été recompensé à variables reprises dans plusieurs autres\r\ncompétitions internationaux comme le NYIOOC. Ces prix et l’appellation:\r\n«Produits sains d’Espagne» certifient de leur grande qualité.  \r\n\r\nNous commercialisons également du fromage au lait de brebis bio ainsi que\r\ndu vinaigre balsamique, de cidre et de vin bio. \r\n\r\nVotre magasin bio commercialise des produits  de qualité et sait\r\nvaloriser ses produits sur le territoire français, c’est pourquoi nous vous\r\nproposons l’achat de nos produits qu’il vous est possible de vendre\r\nsous la marque OLIMPO, ou bien la votre.  \r\n\r\n\r\n\r\nNous sommes, évidemment, prêts à vous fournir de\r\nplus amples renseignements, si nécessaire.\r\n\r\nVeuillez agréer,  Madame, Monsieur, l’expression de\r\nnos salutations distinguées.\r\n\r\n SERGIO GARCÍA\r\nResponsable Commercial Export\r\n\r\nCtra de Mahora, km.3 \r\n( Apdo.100) 02007 Albacete ( Espagne) \r\nTéléphone: + 34 967 21 76 61\r\nGSM: +34 673 814 854 \r\n ',0,0,1),(25477,'Bénédicte','BERNIER','bernierbenedicte@yahoo.fr',NULL,'Bonjour Céline,\r\n nous ne nous sommes pas recontactés depuis ton retour. J\'ai une demande de RV dans ta salle pour le mercredi 12 à 17h30 , la salle est-elle libre? Merci pour ta réponse et à mercredi si c\'est bon. Peux-tu me le confirmer par téléphone vu que je n\'aurais pas d\'accès internet d\'ici mardi.\r\n Bien à toi. Bénédicte',1,0,1),(25478,'Laurène','CAPIN ','laurene.capin@hotmail.fr',NULL,'Bonjour, \r\nJe me présente Mlle CAPIN Laurène, stagiaire au sein de Planète Bordeaux, syndicat des Bordeaux et Bordeaux Supérieur situé à Beychac-et-caillau.\r\nNous organisons actuellement un week-end gourmand qui se déroulera le 17 et 18 décembre. Cette manifestation dispose d\'une trentaine d\'exposants qui proposent de nombreuses idées cadeaux accompagnés d\'ateliers culinaires et oenologiques valorisant les produits régionaux et l\'artisanat local.\r\nNous serions très intéressés de vous avoir parmis nos exposants afin que vous puissiez vendre vos produits cosmétiques ainsi que vos compléments alimentaires.\r\nVous avez à disposition un stand gratuit avec une visibilité sur nos supports de communication. \r\nSi vous êtes intéressée et disponible, veuillez me contacter par mail: laurene.capin@hotmail.fr ou par téléphone au 05 57 97 19 22.\r\n\r\nJe vous remercie par avance, \r\nCordialement, \r\nCAPIN Laurène ',1,0,1),(25479,'Laurène','CAPIN','laurene.capin@hotmail.fr',NULL,'Bonjour, \r\nJe me présente Mlle CAPIN Laurène, stagiaire au sein de Planète Bordeaux, syndicat des Bordeaux et Bordeaux Supérieur situé à Beychac-et-caillau.\r\nNous organisons actuellement un week-end gourmand qui se déroulera le 17 et 18 décembre. Cette manifestation dispose d\'une trentaine d\'exposants qui proposent de nombreuses idées cadeaux accompagnés d\'ateliers culinaires et oenologiques valorisant les produits régionaux et l\'artisanat local.\r\nNous serions très intéressés de vous avoir parmis nos exposants afin que vous puissiez vendre vos produits cosmétiques ainsi que vos compléments alimentaires.\r\nVous avez à disposition un stand gratuit avec une visibilité sur nos supports de communication. \r\nSi vous êtes intéressée et disponible, veuillez me contacter par mail: laurene.capin@hotmail.fr ou par téléphone au 05 57 97 19 22.\r\n\r\nJe vous remercie par avance, \r\nCordialement, \r\nCAPIN Laurène ',1,0,1),(25480,'Laurène','CAPIN','laurene.capin@hotmail.fr',NULL,'Bonjour, \r\nJe me présente Mlle CAPIN Laurène, stagiaire au sein de Planète Bordeaux, syndicat des Bordeaux et Bordeaux Supérieur situé à Beychac-et-caillau.\r\nNous organisons actuellement un week-end gourmand qui se déroulera le 17 et 18 décembre. Cette manifestation dispose d\'une trentaine d\'exposants qui proposent de nombreuses idées cadeaux accompagnés d\'ateliers culinaires et oenologiques valorisant les produits régionaux et l\'artisanat local.\r\nNous serions très intéressés de vous avoir parmis nos exposants afin que vous puissiez vendre vos produits cosmétiques ainsi que vos compléments alimentaires.\r\nVous avez à disposition un stand gratuit avec une visibilité sur nos supports de communication. \r\nSi vous êtes intéressée et disponible, veuillez me contacter par mail: laurene.capin@hotmail.fr ou par téléphone au 05 57 97 19 22.\r\n\r\nJe vous remercie par avance, \r\nCordialement, \r\nCAPIN Laurène ',1,0,1),(25481,'anne','HERPIN','herpinthierry@gmail.com',NULL,'Bonjour,\r\n\r\nAvec un petit groupe de Loubésiens et la bibliothèque municipale, nous vous proposons une projection gratuite du film \"Demain\" \r\nà la Coupole MARDI  NOVEMBRE à 20 H, pas de réservation, film pour adultes et ados.\r\nOuverture des portes à 19 h - 800 places, mais il va y avoir du monde... soyez prévoyant !\r\n\r\nC\'est un film documentaire de 2 heures de Mélanie LAURENT et Cyril DION\r\nIl a obtenu le César du meilleur documentaire à Cannes et a fait plus d\'un million d\'entrée au cinéma grâce au bouches à oreilles...\r\n\r\n \"Devant un futur que les scientifiques annoncent préoccupant, le film a la particularité de ne pas donner dans le catastrophisme. Adoptant un point de vue optimiste, il recense des initiatives dans dix pays de par le monde : des exemples concrets de solutions aux défis environnementaux et sociaux du xxie siècle, qu\'il s\'agisse d\'agriculture, d\'énergie, d\'économie, d\'éducation ou de gouvernance.\"\r\n\r\nDans les jours qui suivent nous organiserons plusieurs débats, conférences et forum, voici le programme :\r\nhttp://www.calameo.com/read/002278617cd14f5be32b1\r\nFaites passer l\'information à vos amis.\r\nAu plaisir de vous voir bientôt.\r\nThierry',1,0,1),(25482,'Xavier','Braillard','xavier@braillard.fr',NULL,'Bonjour,\r\njusqu\'à quelle distance livrez vous et avec quel supplément.\r\nMerci par avance',1,0,1),(25483,'xavier','chauvron','xavier.chauvron@gmail.com',NULL,'Mr, Mme le (la) gérant(e) bonjour,\r\n\r\nDans le cadre d\'une création d\'entreprise, je me permets de vous contacter pour vous soumettre une étude de marché.\r\nIntéressé depuis longtemps par le bio et les circuits courts, je réfléchis à l\'opportunité de créer un labo traiteur bordelais afin d\'approvisionner les magasins bio locaux qui seraient intéressés. \r\nA l\'heure où les GMS traditionnelles cherchent à se placer sur le bio et le vrac, les magasins bio ne devraient-ils pas étoffer leur gamme de produits sur des segments plus difficilement accessible à ces GMS?\r\nPourquoi laisser le marché locavore aux ruches? Des produits réalisés localement avec des agriculteurs bio locaux permettrait avec une communication adéquate de renforcer votre présence sur ce segment. \r\nUn traiteur, permettrait de renouveler l\'offre des produits préparés qui est sinon assez figée car industrielle.\r\nCela permettrait aussi aux client plus néophytes, d\'apprendre à connaitre certains produits du magasin qu\'ils n\'ont pas l\'habitude d\'utiliser et d\'en devenir ensuite acheteurs régulier.\r\n\r\nPour résumer, la question est: quelle place y a t-il pour des produits traiteurs ultra frais locaux dans les magasins bio?\r\nC\'est ce que le questionnaire cherchera à déterminer avec votre aimable collaboration.\r\nJe vous en remercie par avance.\r\nLien vers le formulaire:\r\nhttps://goo.gl/forms/PgClkD34a9CwrBHH3\r\nCordialement, \r\n\r\nXavier Chauvron',0,0,1),(25484,'','','',NULL,'',1,0,1),(25485,'','','',NULL,'',1,0,1),(25486,'','','',NULL,'',1,0,1),(25487,'','','',NULL,'',1,0,1),(25488,'nicolas','LD','nico4217@orange.fr',NULL,'Hello, c\'est nicolas, l\'ami de chef jésus. ancien facteur a st loupes. comment vas tu ? as tu reçu une demande de la part de nos stagiaires pour ta participation éventuelle a la foire de bordeaux ? dans 20 jours. bises',0,0,1),(25489,'Laurent','PALMENTIER','laurentpalmentier@transferiod.com',NULL,'Bonjour Mme REYNART,\r\nFaisant suite à notre conversation, je vous adresse ci-joint la plaquette de notre service et vous apporte quelques éléments.\r\n\r\nD2C Gironde est mandaté par le Conseil Départemental de la Gironde et agit comme un service de proximité aux entreprises en soutien sur la gestion de leurs ressources humaines (appui au recrutement, problématiques RH...)\r\nNos prestations sont préfinancées par les collectivités territoriales donc gratuites pour les entreprises girondines.\r\n\r\nJe vous propose dès lors un rendez-vous d’1/2 heure environ dès que votre agenda le permettra afin de vous présenter plus précisément les spécificités de notre action mais également d’échanger sur votre activité et vos enjeux.\r\n\r\nBien cordialement,\r\n\r\n 	Laurent PALMENTIER\r\nConsultant en développement de     carrière	05 56 23 55 04 / Mobile : 06 69 13 20 12\r\nlaurentpalmentier@transferiod.com\r\n \r\n 	 \r\nD2C HAUTS DE GARONNE\r\n3 Rue des arts -anciennement Allée du Vercors-\r\n33310 LORMONT\r\nd2chautsdegaronne@transferiod.com\r\n',0,0,1),(25490,'marie','Desreux','mariedesreux@gmail.com',NULL,'bonjour !  je souhaiterais acheter du lait 2eme age pour ma fille, je rechercher le lait Prémichèvre 2eme age, vendez vous ce produit ? merci d\'avance pour votre réponse et bonne journée ! ',0,0,1),(25491,'Amélie','DURAND','a.durand@wibixi.com',NULL,'	Bonjour, \r\n\r\nNous promouvons le référencement naturel de plusieurs sites dans différents domaines par le biais d\'échanges d’articles. \r\nNous souhaitons ainsi effectuer un échange d’articles avec votre blog afin d’améliorer nos positions respectives dans les moteurs de recherche. \r\nL’article à publier sur votre site suivra entièrement sa ligne éditoriale et sera informatif afin d’apporter satisfaction à vos différents lecteurs. \r\n\r\nNous disposons d’une trentaine de blogs réparties dans différentes thématiques avec de bons Trustflow, Citation flow et Domaine Authority.\r\n\r\nSeriez-vous intéressé par un échange de contenu croisé entre nos sites ? Voici ce que nous vous proposons : \r\n\r\n- Diffusion d’un article unique de 400 mots environ sur notre blog (si vous le souhaitez nous rédigerons un article de 400 mots pour vous contre la publication de 2 articles sur votre blog) \r\n- Libre choix du sujet de votre texte \r\n- Intégration d’une image représentative (logo, photos, etc.) non obligatoire \r\n- 1 ou 2 liens hypertextes pointant vers vos sites ou vos blogs. \r\n\r\nEn retour, nous vous demanderons d’insérer sur votre site un article contenant les liens hypertextes pointant vers notre site ou blog. \r\n\r\nSi cette proposition vous intéresse, merci de bien vouloir nous informer. Nous diffuserons votre texte dans les plus brefs délais. \r\n\r\nBien cordialement \r\nAmélie Durand \r\nAgent de référencement \r\nTéléphone: 0970463777 \r\na.durand@wibixi.com \r\nwww.wibixi.com\r\n\r\n',0,0,1),(25492,'Nathalie','Fribourg blanc Nathalie','Nathalie.Fribourg_blanc@bbox.fr',NULL,'Bonjour, je fais partie de St Loubes en transition, groupe de la monnaie La MIEL, je suis déjà passé e avant l été.pour vous convier à notre 1ere réunion commercants/consommateurs. Une seconde reunion est prevue mercredi 8/11 à partir de 19h45 salle resti du coeur, rue du stade à st loubes avec nos referents afin quevous puissiez poser toutes vos questions et remarques sur notre monnaie locale!ce serait avec plaisir, que nous vous accueillerons. Merci de votre retour sur cette invitation, je reste dispo au 06.63.57.49.70 Nathalie f blanc',0,0,1),(25493,'Garcia','Sergio','sergiukas@gmail.com',NULL,'Bonjour,\r\nJe voudrais vous faire une proposition commerciale,\r\nJe suis le responsable d´exportations en France de Bio Darma, fournisseur de biscuits écologiques et artisanaux, avec une large gamme de biscuits sucrés et salés, ils sont un excellent produit pour leurs magasins.\r\nSi vous voulez plusieurs d´information, contactez moi, svp!\r\nMerci!\r\nCordialement\r\nSergio',0,0,1),(25494,'Arnaud','Marchand','contact@gidonet.fr',NULL,'Bonjour,\r\n\r\nJe suis Mr Marchand Arnaud, dirigeant de Gidonet (Gironde Dordogne Nettoyage) jeune et dynamique société de nettoyage basée sur la commune d\'Abzac.\r\n\r\nNous possédons déjà une clientèle diverse et variée :\r\n- Des fleuristes sur Coutras\r\n- Les rhums Guiose à Saint-Seurin-Sur-l’Isle\r\n- La ville de Coutras (CCAS et château d\'Eygreteau)\r\n\r\nJe souhaiterais savoir si vous voulez confier votre tâche de nettoyage de votre local à une entreprise, dans le cas où vous n’en posséderiez pas, nous pourrions alors vous proposer nos services.\r\n\r\nEn effet, confier votre prestation de nettoyage à une société spécialisée vous permet d’avoir une prestation professionnelle, avec des produits adaptés à diverses besoins : au contact alimentaire, désinfectant/bactéricide… et respectueux de l’environnement : nous travaillons avec des produits éco labélisés ou avec des produits écologiques normés.\r\n\r\nJe suis à votre disposition pour tout entretien et éventuellement le cas échéant la visite de vos locaux afin de voir avec vous les différents besoins de nettoyage et/ou de vitrerie dont vous pourriez bénéficier au sein de ma structure.\r\n\r\nDans l\'attente de votre réponse, recevez mes sincères salutations.\r\n\r\nCordialement,\r\nMr Marchand Arnaud.',0,0,1),(25495,'','Silvagni Brigitte','ladybiker33@orange.fr',NULL,'Un magasin très sympa et surtout une commerçante à votre écoute et demande.\r\nSi elle n\'a pas le produit ,elle met tout en oeuvre pour vous le trouver à un tarif très interressant.\r\nJe vous recommande sa boutique',1,1,0),(25496,'Brigitte','Silvagni','ladybiker33@orange.fr',NULL,'Bonjour,\r\nAvez vous en stock de la faine de graines de caroube \r\nAppelé aussi gomme de caroube\r\nS\'il vous plait.\r\nCordialement \r\nMme Silvagni',1,0,1);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_categorie`
--

DROP TABLE IF EXISTS `contact_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_categorie` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_categorie` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_categorie`
--

LOCK TABLES `contact_categorie` WRITE;
/*!40000 ALTER TABLE `contact_categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldbook`
--

DROP TABLE IF EXISTS `goldbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (2,'2014-12-10 00:00:00','Xavier Gonzalez','xavier@gonzalez.pm','Produits de grande qualité, j\'ai retrouvé le gout des fruits et des légumes.\r\nL\'accueil et les conseils sont vraiment pertinents.\r\n\r\nEt la livraison à domicile c\'est juste parfait !',1),(3,'2015-03-24 00:00:00','Nathalie LESCA','nathalie.lesca@free.fr','boutique trés sympa. Bons conseils et produits très variés de qualité. ',1),(5,'2015-04-16 00:00:00','Isabelle','isa_carambar@yahoo.fr','Un magasin où l\'on se sent bien, à taille humaine. On y trouve tout ce dont on a besoin avec en plus les conseils éclairés; la gentillesse et le sourire de la créatrice de ce lieu unique.',1),(6,'2015-05-08 00:00:00','Lisa','eliereynaert@hotmail.fr','Un magasin agréable, avec un choix très varié de produits, les conseils sont au rendez vous ! \r\nOn y est très bien accueilli et la gérante de ce dernier rayonne par sa bonne humeur et son sourire. ',1),(7,'2015-05-23 00:00:00','ELIE','contact@er-immo.com','Un très joli magasin à Saint Sulpice et Cameyrac où on trouve du conseil, le sourire et des produits de très grandes qualités.\r\nSi vous ne connaissez pas encore, n\'hésitez pas à vous y rendre, la santé et le bien être n\'ont pas de prix.',1),(8,'2015-06-11 00:00:00','harvey','gsddgsgd@free.fr','boutique tres sympa',1),(12,'2015-07-31 00:00:00','Mathieu','mathieu.datore@hotmail.com','Excellent magasin, touriste de passage mais j\'ai beaucoup apprécié l\'ambiance! Très gentille commerçante avec un magnifique sourire ! Jolie boutique !!',1),(13,'2015-09-01 00:00:00','maïté','maite.moreau.izon@gmai.com','Une épicerie pleine de bonnes choses .. je recommande les poires, les dattes, le nougat..\r\nPour les compléments alimentaires, les cosmétiques, les huiles éssentielles etc... Céline connait vraiment très bien ses produits et il ne faut pas hésiter à lui demander conseils !!\r\n\r\n',1),(14,'2018-04-16 00:00:00','Silvagni Brigitte','ladybiker33@orange.fr','Un magasin très sympa et surtout une commerçante à votre écoute et demande.\r\nSi elle n\'a pas le produit ,elle met tout en oeuvre pour vous le trouver à un tarif très interressant.\r\nJe vous recommande sa boutique',0);
/*!40000 ALTER TABLE `goldbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_news`
--

DROP TABLE IF EXISTS `media_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `url_media` varchar(250) NOT NULL,
  `url_apercu` varchar(250) NOT NULL,
  `type_media` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`id_news`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_news`
--

LOCK TABLES `media_news` WRITE;
/*!40000 ALTER TABLE `media_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `date_news` datetime NOT NULL,
  `titre` varchar(250) NOT NULL,
  `accroche` text,
  `contenu` text,
  `image1` varchar(250) DEFAULT NULL,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (18,'2015-02-19 00:00:00','Livraison à domicile','','Allée du Bio vous propose la livraison de vos commandes <strong>à domicile.</strong>\r\nCommandez par téléphone ou bien sur le site à l\'aide du bon de commande et nous assurons la livraison à domicile ou <b>la préparation de paniers à emporter</b>\r\n','/livreur - Copy 1-18.png',1),(19,'2015-03-19 00:00:00','Allée du Bio sur France Bleu Gironde','','<embed flashvars=\"audioUrl=http://www.alleedubio.fr/uploads/alleedubio.mp3\" height=\"27\" quality=\"best\" src=\"http://www.alleedubio.fr/inc/google-audio-player.swf\" type=\"application/x-shockwave-flash\" width=\"400\"></embed> ','/Screen_Shot_2015_03_19_at_18.01.30-.png',0),(25,'2015-05-21 00:00:00','Recette du Raïta de concombre','','Ingrédients : 1 concombre, 1 yaourt, graines de sésame grillées, zeste de citron, sel, menthe fraîche.\r\nPeler le concombre (1 pelure sur 2), le râper et le passer au chinois puis saler. Ajouter le yaourt salé puis les graines de sésame (1 cuillère à café), puis le zeste de citron. bien remuer et ajouter la menthe fraîche. A servir frais en apéritif dans des verrines.','/DSC00993 - Copy 1-25.jpg',0),(26,'2015-05-21 00:00:00','Curry de légumes + riz citronné','','Ingrédients : gingembre et curcuma frais, fenouil, cumin et cardamone graines, cannelle. 2 courgettes, 2 poivrons rouges, 1/4 choux fleur, 2 carottes, lait de coco, riz 1/2 complet basmati, noix de cajou, sel, jus de citron. Dans une cocotte mettre de l\'huile d\'olive, mettre toutes vos épices et laisser revenir à feu doux. Ajouter ensuite vos légumes en lamelles ou petits morceaux. Laisser cuire doucement et terminer par 3 cuillères à soupe de lait de coco qui viendra adoucir les épices. Faites nacrer le riz puis le déglacer avec un jus de citron. Ajouter les noix de cajou puis l\'eau (1 volume de riz pour 1 volume d\'eau) et saler. Laisser cuire doucement. Servez les légumes avec le riz.','/DSC01027-26.jpg',0),(32,'2016-07-15 00:00:00','La sève de bouleau !','','Pour un drainage en profondeur et éliminer tous les déchets.\r\nEn cure de 3 semaines, à boire tous les matins à jeun.\r\nSe présente en bag en box d\'un litre et demi ou 3 bouteilles de 500 ml.','/seve_bouleau_bio_en_valisette_de-.jpg',1),(34,'2016-08-04 00:00:00','La coupe menstruelle.','','C\'est une alternative écologique et économique aux tampons et aux serviettes hygiéniques.\r\n100% silicone médical, ne contient pas d\'agent blanchissant, ni de parfum et n\'assèche pas le vagin.\r\nExiste en 2 tailles.\r\nTous les conseils en magasin.','/lunacopine-.jpg',1),(35,'2016-08-04 00:00:00','La curcumine.','','Full spectrum curcumine : biodisponibilité 185 x élevée, sans sucre sans sel.\r\nCette curcumine est hautement absorbable et immédiatement disponible pour votre organisme.\r\n1 gélule par jour au moment des repas. (ne pas prendre en cas de grossesse sauf sur avis d\'un thérapeute)\r\nTous les conseils en magasin ou par téléphone 05.56.30.55.08. (les textes en vigueur, via la DGCCRF, m\'interdit les allégations sur ce produit)','/curcumine_1_-35.jpg',1),(36,'2016-08-04 00:00:00','cranberries / canneberge','','Le jus 100% canneberge (sans sucre, sans eau) ou les baies de canneberge.\r\nEfficace et naturel.\r\nTous les conseils en magasin ou par téléphone 05.56.30.55.08 (les textes en vigueur, via la DGCCRF, m\'interdit les allégations sur ce produit)','/canneberge_2_-.jpg',1),(39,'2016-12-15 00:00:00','SAUMON ATLANTIQUE','','Cette année le magasin vous propose pour les fêtes du saumon atlantique. Il est conditionné en Poitou Charentes, fileté à la main, salé à la main au sel sec, fumé à froid au bois de hêtre, paré à la main et tranché finement à la main.\r\nQualité remarquable, venez le découvrir .....','/saumon_bio_prd_13_org-.jpg',0),(40,'2016-12-17 00:00:00','Congés de fin d\'année.','','Le magasin sera fermé le mardi 27 décembre 2016 ainsi que le mardi 3 janvier 2017.\r\n\r\nJe vous souhaite à tous d\'excellentes fêtes de fin d\'année, dans la joie et la bonne humeur.\r\nMes meilleures pensées pour cette année 2017 (année 1)','/Joyeux_noel_2016_2017-.jpg',0),(41,'2017-02-09 00:00:00','Congés d\'hiver 2017','','Le magasin sera fermé du 20 au 26 février 2017.\r\nBonnes vacances également à tous ceux qui auront la chance d\'être en congés.\r\nJe vous retrouve le mardi 28 février à 9h30.\r\nA bientôt','/gondole_venise-41.jpg',1),(42,'2017-07-12 00:00:00','Fermeture exceptionnelle','','Le magasin sera fermé le vendredi 14 juillet ainsi que le samedi 15 juillet 2017.','/97289914abeille_jpg-.jpg',0),(43,'2017-07-25 00:00:00','Vacances estivales !!!','','Le magasin sera fermé du 12 août au 4 septembre 2017 inclus.\r\nReprise de l\'activité le mardi 5 septembre 2017\r\nBonnes vacances à tous et à toutes','/mer-43.jpg',1),(44,'2017-12-19 00:00:00','Les fêtes de fin d\'année','','Le magasin sera fermé les mardi 26 décembre 2017 et 2 janvier 2018.\r\nJe vous souhaite de passer à tous et à toutes, d\'excellentes fêtes de fin d\'année.','/bouquet_mimosa_kumquat-.jpg',1),(46,'2018-04-21 00:00:00','Fermeture','','Le magasin sera fermé les mardi 1er et 8 mai 2018.','/th-46.jpg',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `bas_page` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (12,'2015-01-01 00:00:00','Ceci est la toute nouvelle actu','ljhjkl');
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_detail`
--

DROP TABLE IF EXISTS `newsletter_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_newsletter` int(10) unsigned NOT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `texte` text,
  PRIMARY KEY (`id`,`id_newsletter`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_detail`
--

LOCK TABLES `newsletter_detail` WRITE;
/*!40000 ALTER TABLE `newsletter_detail` DISABLE KEYS */;
INSERT INTO `newsletter_detail` VALUES (323,12,'','/uploads/bsport3.jpg','http://dev.bsport.fr/','');
/*!40000 ALTER TABLE `newsletter_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planning`
--

DROP TABLE IF EXISTS `planning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planning` (
  `id` tinyint(4) NOT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `url` varchar(250) NOT NULL,
  `pdf` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planning`
--

LOCK TABLES `planning` WRITE;
/*!40000 ALTER TABLE `planning` DISABLE KEYS */;
INSERT INTO `planning` VALUES (1,'Période 2014 - 2015','','/Bon_de_commandeV2-20150223.pdf');
/*!40000 ALTER TABLE `planning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(250) DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `libprix` varchar(120) DEFAULT NULL,
  `label` varchar(250) NOT NULL,
  `titreaccroche` varchar(250) DEFAULT NULL,
  `accroche` text,
  `description` text,
  `image1` varchar(250) DEFAULT NULL,
  `image2` varchar(250) DEFAULT NULL,
  `image3` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (29,'2587',28.60,'€','Vitamine C 500mg','Les conseils','Vitamine C dosée à 500 mg par comprimé, acide L ascorbique, 90 comprimés à croquer.','','/DSC00145-29.jpg','',''),(30,'Dermaclay',0.00,'€','Gamme Dermaclay','Dermaclay','Gamme complète : crème de jour, de nuit, pour le corps et les cheveux. Alors qu\' Ecocert n\'oblige qu\'à 10% d\'ingrédients bio dans la cosmétique, Dermaclay propose des produits allant jusqu\'à 86% d\'ingrédients bio.','','/DSC00945 - Copy 1-.jpg','',''),(31,'Les Sens des fleurs',0.00,'€','Gamme Les Sens des fleurs','Les Sens des fleurs','Ligne visage et corps, cosmétique bio qui contient un minimum de 45% d\'ingrédients bio. Elle contient des fleurs de Bach qui font de cette gamme un véritable soin et vous permet de réaliser à quel point vous êtes magnifiques !','','/DSC00937-.jpg','',''),(33,'Calendula',0.00,'€','Gamme Calendula','Calendula','Ligne visage et corps aux extraits de calendula (souci), d\'huile de germe de blé, de jojoba et d\'amande douce. Elle convient à tous les types de peau, agréable et généreuse.','','/DSC00925-.jpg','',''),(34,'Karéthic',0.00,'€','Gamme Karéthic ','Karéthic','Des produits au véritable beurre de karité, garanti non raffiné, 100% beurre de karité.','','/DSC00957-.jpg','',''),(35,'Produits frais disponible en magasin',0.00,'€','Légumes','Légumes','','','/DSC00229_2_-.jpg','/DSC00360-.jpg',''),(36,'Fruits de saison disponible en magasin',0.00,'€','Fruits','Fruits','','','/DSC00355_2_-.jpg','/DSC00228_2_-.jpg',''),(37,'Pains disponibles en magasin',0.00,'€','Pains','Les + produit','Pains au levain, complets. Pain de seigle, kamut, petit épeautre, sésame et/ou avec des graines','','/DSC00226_2_-.jpg','',''),(38,'Pains disponibles en magasin',8.50,'€','Pains Montignac ','Gamme Montignac sur commande','Pain intégral moulé ou miche, en 1kg, dont l\'index glycémique est très bas.\r\nPain sur commande.\r\nPossibilité de le trancher.','','/DSC00453-.jpg','/DSC00449_2_ - Copy 2-.jpg',''),(39,'Biscuits en vrac disponible en magasin',0.00,'€','Biscuits','Biscuits','Croc en figue, granola, citron amandes, nougatine, sablés framboise ....','','/DSC00342_2_-.jpg','',''),(40,'2009',20.20,'€','Vitamine C 500mg','Les conseils','Vitamine C 500 mg , acide L ascorbique, 100 comprimés facilement sécables.','','','',''),(42,'Propolia',0.00,'€','Propolia','Les + produit','','GAMME PROPOLIA à base de propolis et miel','/DSC00158-.jpg','',''),(44,'3826',46.95,'€','ALOE ARBORESCENS','Les conseils','Sur ce produit les conseils sont donnés avec plaisir en magasin ou par téléphone. 05.56.30.55.08\r\n(les textes en vigueur, via la DGCCRF, m\'interdit les allégations concernant ce produit, sur mon site)','','/DSC00146-.jpg','',''),(45,'3922',22.30,'€','Cuivre Or Argent','Les conseils','Eau purifiée et dynamisée, argent colloïdal, cuivre, or colloïdal. Sur ce produit tous les conseils sont donnés avec plaisir en magasin ou par téléphone. 05.56.30.55.08. (les textes en vigueur, via la DGCCRF, m\' interdit les allégations concernant ce produit, sur mon site)','','/DSC00147-.jpg','',''),(47,'3441',39.95,'€','Saccharomyces Boulardii','Les conseils','Levure dosée à 300mg de saccharomyces par gélules. 3 gélules par jour les 5 premiers jours puis 1 gélule par jour pendant 15 jours.\r\nSur ce produit les conseils sont donnés avec plaisir en magasin ou par téléphone. 05.56.30.55.08\r\n(les textes en vigueur, via la DGCCRF, m\' interdit les allégations concernant ce produit, sur mon site)','','/DSC00150-.jpg','',''),(48,'3674',28.10,'€','SILICIUM BIOGENIQUE','Les conseils','Silicium organique sur base de diatomées marines + curcuma + bromélaïne + glucosamine. Améliore la mobilité et flexibilité de vos articulations. En comprimés.\r\n1 comprimé par jour.','','/DSC00157-.jpg','',''),(49,'3281',6.80,'€','GAULTHERIE','Les conseils','Cette huile essentielle est anti-inflammatoire, elle apaise les douleurs et chauffe localement le muscle. Elle s\'utilise en synergie avec l\'huile macérée d\'arnica ou de millepertuis. (en massage local). ','','/DSC00214-.jpg','',''),(50,'3501',8.60,'€','LAVANDE ASPIC','Les conseils','Cette huile essentielle est antivenin et antitoxique, c\'est un excellent fongicide (antichampignon) et un cicatrisant exceptionnel.\r\nA utiliser en cas de morsures, piqûres ou pour soigner la plupart des problèmes dermatologiques : mycoses, crevasses, psoriasis ...','','/DSC00216-.jpg','',''),(51,'3568',6.50,'€','PALMAROSA','Les conseils','Cette huile essentielle est un déodorant formidable. Elle remplace haut la main n\'importe quel déodorant, même les plus puissant, son activité dure largement toute la journée, même en été, une seule goutte à étaler sous chaque aisselle le matin et vous êtes tranquille !! (pensez cependant à vous laver les mains par la suite)','','/DSC00217-.jpg','',''),(52,'3594',31.20,'€','HELICHRYSE ITALIENNE ou immortelle','Les conseils','Cette huile essentielle est antihématome (bleus), le plus puissant actuellement connu. Elle possède une remarquable action antiphlébite, fibrinolytique (elle détruit les caillots sanguins) et est tonique de la circulation artérielle. En massage sur les zones douloureuses ou sur les jambes pour favoriser le retour veineux.','','/DSC00215-.jpg','',''),(53,'4032',4.45,'€','HYSOPE OFFICINALIS','Les conseils','C\'est une plante expectorante, une des plus puissante. Si vous souffrez d\'encombrement elle vous fera le plus grand bien.\r\n3 fois par jour à raison de 20 grammes de plante par litre d\'eau.','','/DSC00219-.jpg','',''),(54,'3425',3.70,'€','ANGELIQUE SEMENCE','Les conseils','La graine (semence) est excellente pour tonifier le système digestif alors que la racine est très puissante pour fortifier le système nerveux. Elle améliore donc la récupération de l\'organisme et les fonctions digestives.','','/DSC00220-.jpg','',''),(55,'1342',4.26,'€','TISANE DRAINANTE DU FOIE','Les conseils','Mélange de pissenlit, romarin, camomille matricaire, chardon marie, chicorée, artichaut, gentiane.\r\nEn infusion ou décoction, un peu amère mais efficace.','','/DSC00221-.jpg','',''),(56,'3798',6.77,'€','DESMODIUM (adscendens)','Les conseils','Cette plante a des propriétés hépato-protectrice. Elle favorise l\'élimination des déchets médicamenteux ou toxiniques issus de la destruction des cellules par une chimiothérapie par exemple, ainsi que les métaux lourds. Elle fortifie en même temps l\'immunité  car diminue l\'inflammation. Il est donc conseillé de la prendre durant un jeûne ou une diète.','','/DSC00222-.jpg','',''),(57,'2297',3.60,'€','MELISSE','Les conseils','Cette plante est tonique du système nerveux et apaise les douleurs spasmodiques. La mélisse décontracte l\'estomac, stimule les sécrétions biliaires et évite les ralentissement de transit dûs au stress. Elle est à la fois tonique tout en étant sédative.','','/DSC00223-.jpg','',''),(58,'1341',4.65,'€','TISANE DIGESTIVE','Les conseils','C\'est un mélange d\'anis vert, verveine, mélisse, badiane et guimauve. A consommer après chaque repas en tisane ou décoction.','','/DSC00224-.jpg','',''),(59,'4118',8.50,'€','ELIXIR DE SECOURS  N°39','Les conseils','Il est constitué de 5 élixirs floraux : Hélianthème, Dame de onze heure, Impatiente, Prunus et Clématite. Il permet de gérer les chocs émotionnels importants (accident, examens, frayeurs ...)\r\n\r\n','','/DSC00249-.jpg','',''),(60,'00000',6.68,'€','Tous les autres élixirs (ou N°) sont disponibles','Les conseils','38 remèdes floraux qui répondent à des états négatifs et qui peuvent jouer un rôle de soutien non négligeable dans le cas de déséquilibres externes et /ou internes pour maintenir la personne dans un état psychique harmonieux.','','/DSC00250-.jpg','',''),(61,'3359',11.25,'€','SIROP A LA PROPOLIS','Les conseils','Le sirop aide à stimuler les défenses naturelles de l\'organisme et contribue ainsi à rester en bonne forme durant la période hivernale. de plus il aide à respirer plus librement et adoucit la gorge. Ainsi, il exerce une action positive sur l\'ensemble du système ORL.\r\n11 extrait de plantes et huiles essentielles + miel\r\n1 cuillère à soupe 3 fois par jour.','','/DSC00255-61.jpg','',''),(63,'3354',21.70,'€','AMPOULE PROPOLIS    IMMUNO +','Les conseils','C\'est une préparation buvable concentrée à base d\'échinacée, d\'extrait de propolis, de gelée royale, d\'acérola et de vitamine C.\r\nCure de 20 ampoules qui favorise le tonus et qui stimule le système immunitaire.\r\n1 ampoule par jour.','','/DSC00257-.jpg','','');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categorie`
--

DROP TABLE IF EXISTS `product_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categorie` (
  `id_product` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categorie`
--

LOCK TABLES `product_categorie` WRITE;
/*!40000 ALTER TABLE `product_categorie` DISABLE KEYS */;
INSERT INTO `product_categorie` VALUES (29,37),(30,39),(31,39),(33,39),(34,39),(35,40),(36,40),(37,13),(38,13),(39,13),(40,37),(42,39),(44,37),(45,37),(47,37),(48,37),(49,1),(50,1),(51,1),(52,1),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,35),(60,35),(61,36),(63,36);
/*!40000 ALTER TABLE `product_categorie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-27 11:50:03
