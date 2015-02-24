-- MySQL dump 10.13  Distrib 5.6.20, for osx10.6 (x86_64)
--
-- Host: localhost    Database: alleedubio
-- ------------------------------------------------------
-- Server version	5.6.20

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
INSERT INTO `admin` VALUES (1,'alleedubio','alleedubio33','administrateur'),(2,'admin','admin33','ico');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catproduct`
--

LOCK TABLES `catproduct` WRITE;
/*!40000 ALTER TABLE `catproduct` DISABLE KEYS */;
INSERT INTO `catproduct` VALUES (1,'Les Huiles Essentielles, Huiles Végétales, Eaux Florales ','<p>Notre large gamme est issue de plantes cultiv&eacute;es et r&eacute;colt&eacute;es en Dr&ocirc;me et en Ard&egrave;che.<br />(60% de plantes fran&ccedil;aises et 50% cultiv&eacute;es dans la Dr&ocirc;me et l\'Ard&egrave;che.)<br />Nos huiles essentielles et eaux florales sont 100% pures et bio et sont distill&eacute;e en France.</p>',0,'/IMG_0998-1.jpg',0),(4,'Les plantes médicinales','<p>Un v&eacute;ritable comptoir d\'herboristerie, au mille fleurs et couleurs.<br />Nos tisanes sont toutes labellis&eacute;es &laquo;&nbsp;Nature et Progr&egrave;s&nbsp;&raquo;<br />Vous trouverez les plantes en racines, fleurs, feuilles, graines ou &eacute;corce et vous pourrez<br />les d&eacute;guster en m&eacute;langes ou seules apr&egrave;s le repas ou au petit d&eacute;jeuner.<br />Elles sont le fruit de Dame Nature et nous apportent soins, bien-&ecirc;tre et r&eacute;confort.</p>',0,'/IMG_1003-4.jpg',0),(13,'Les Pains','<p>Nos pains sont faits au levain, ils sont complets ou demi-complet, avec des graines de tournesol, de lins, de courge &hellip;<br />Vous trouverez aussi nos sp&eacute;cialit&eacute;s : pain au kamut, petit &eacute;peautre, seigle, brioches au beurre, aux fruits secs &hellip;<br />Vous d&eacute;gusterez notre gamme de biscuits en vrac : citron, amandes, noisettes, nougatine, &eacute;peautre &hellip; <br /><br />Le magasin propose &eacute;galement le pain Montignac, con&ccedil;u avec de la farine int&eacute;grale, et dont l\'index glyc&eacute;mique est tr&egrave;s bas.<br />Il est disponible en 1kg, miche ou moul&eacute;, tranch&eacute; ou non, Sur Commande.</p>',0,'/a08a8401-13.jpg',0),(35,'Les Elixirs Floraux','<p>Toute la gamme est pr&eacute;sente dans le magasin.<br />Nos fleurs sont recueillis dans les Pyr&eacute;n&eacute;es Orientales, sur les flancs du Mont Canigou o&ugrave; se trouve un site<br />tr&egrave;s riche d\'une nature encore sauvage.<br />Les Elixirs r&eacute;tablissent un &eacute;quilibre psychologique en profitant au maximum de l\'&eacute;nergie des fleurs.<br />C\'est un soutien non n&eacute;gligeable dans les cas de d&eacute;s&eacute;quilibres externes ou internes</p>',0,'/astro_elixirs_floraux-35.jpg',0),(36,'Les produits à base de Propolis','<p>Toutes les formes de Propolis sont pr&eacute;sentent dans le magasin : extrait, sirop, spray .....<br />La Propolis provient d\'une substance r&eacute;sineuse collect&eacute;e par les abeilles sur les bourgeons de<br />certains arbres. Les abeilles m&eacute;langes ensuite cette substance &agrave; leurs propres s&eacute;cr&eacute;tions salivaires, <br />&agrave; la cire et aux pollens pour donner naissance &agrave; la Propolis.<br />La Propolis prot&egrave;ge des germes, des bact&eacute;ries et autres envahisseurs. Elle prot&egrave;ge ainsi les voies ORL.</p>',0,'/Les_bienfaits_des_produits_de_la-36.jpg',0),(37,'Les Compléments Alimentaires','<p>Je suis &agrave; votre disposition pour vous conseiller sur les compl&eacute;ments alimentaires n&eacute;cessaires &agrave; votre bonne sant&eacute;.<br />Pr&eacute;servez-vous de l\'hiver avec l\'extrait de p&eacute;pins de pamplemousse (antibiotique naturel) ou avec la vitamine C <br />naturelle (cynorrhodon) barri&egrave;re contre les virus et bact&eacute;ries. <br />Vous d&eacute;couvrirez les vertus de l\'aloe vera (d&eacute;purative, anti-inflammatoire et cicatrisante) et de l\'aloe arborescens.<br />Faites appel au Quinton pour relancer votre organisme en cas d\'&eacute;puisement.<br />Nettoyer votre foie avec le Desmodium , votre organisme avec la s&egrave;ve de bouleau.<br />Assouplissez vos articulations avec le silicium organique .<br />Je peux aussi vous parlez de l\'argent collo&iuml;dal ........<br /><br />Bienvenue chez moi ! Dans le monde de la sant&eacute; au naturel, dans la caverne de M&egrave;re Nature.</p>',0,'/complement_alimentaire-37.jpg',0),(38,'Epicerie','<p>De nombreux produits &agrave; disposition : produits sans gluten, huiles, chocolats, p&acirc;tes, riz, vins, jus fruits, bi&egrave;res .....</p>',0,'/IMG_0996-38.jpg',0),(39,'Cosmétique','<p>Alors qu\' Ecocert n\'oblige qu\'&agrave; 10% d\'ingr&eacute;dients biologiques dans les cosm&eacute;tiques, nous avons choisi des gammes <br />qui contiennent entre 35 et 87% d\'ingr&eacute;dients biologiques, dans un souci d\'efficacit&eacute; et de respect de la peau.</p>',0,'/homepage_logo-39.jpg',0),(40,'Fruits et Légumes','<p>Les fruits et l&eacute;gumes sont frais et de saison.</p>',0,'/legumes_fruits-40.jpg',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25450 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3344,'','Gonzalez','xavier@gonzalez.pm',NULL,NULL,1,1,0),(25438,'Jav','gonz','jav_gonz@yahoo.fr',NULL,NULL,1,0,0),(25439,'xav','gonza','xavier.gonzalez@free.fr',NULL,NULL,1,0,0),(25441,'xavi','gonz','xavier@gonzalez.pm',NULL,NULL,1,0,0),(25442,'xavier','gonzalez','fjavi.gonzalez@gmail.com',NULL,NULL,1,0,0),(25445,'Fred ','Lesca','fredericlesca@iconeo.fr',NULL,NULL,1,0,0),(25446,'','Gonzalez','xavier@gonzalez.pm',NULL,NULL,1,1,0),(25447,'','Gonzalez','xavier@gonzalez.pm',NULL,NULL,1,0,1),(25448,'jhonny','guitar','jav_gonz@yahoo.com',NULL,NULL,1,0,1),(25449,'robert','Redford','rob.red@free.fr',NULL,'POuet l\'es copain école',1,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (2,'2014-12-10 00:00:00','Xavier Gonzalez (Latresne)','xavier@gonzalez.pm','Produits de grande qualité, j\'ai retrouvé le gout des fruits et des légumes.\r\nL\'accueil et les conseils sont vraiment pertinents.\r\n\r\nEt la livraison à domicile c\'est juste parfait !',1),(4,'2015-02-23 00:00:00','Fred Lesca','fredericlesca@iconeo.fr','Un accueil super, des conseils et des produits d\'une qualité top. \r\nJe recommande fortement !!',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (10,'2015-01-01 00:00:00','Nouveau ! Les lotions ','/produit-detail.php?categorie=39','<p>100 % cultiv&eacute;es et distill&eacute;es dans <strong>la Dr&ocirc;me</strong> Achill&eacute;e millefeuille antibact&eacute;rien et &eacute;quilibrant Carotte sauvage apaise irritations et rougeurs revigore les peaux ternes Camomille romaine purifie et redonne du tonus Rose astringeant, tonifie la peau.&nbsp;</p>','/lotion_espiegle-10.jpg',0),(17,'2015-02-27 00:00:00','Ouverture du site Internet','','<p>Vous pouvez d&eacute;sormais visiter notre boutique en ligne, Faire des commandes gr&acirc;ce au bon de commande que vous pouvez t&eacute;l&eacute;charger et imprimer.</p>\r\n<p>Voir les nouveaux arrivages et les nouveaut&eacute;s, voir les &eacute;venements de la boutique.</p>','/IMG_1013-.jpg',1),(18,'2015-02-19 00:00:00','Livraison à domicile','','<p>All&eacute;e du Bio vous propose la livraison de vos commandes <strong>&agrave; domicile.</strong></p>\r\n<p>Commandez par t&eacute;l&eacute;phone ou bien sur le site &agrave; l\'aide du bon de commande et nous assurons la livraison des produits.</p>','/Screen_Shot_2015_02_20_at_09.55.23-18.png',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,'23ZE',12.00,'€ ','huile d\'arachide','Les + produit','<p>L\'huile d\'arachide industrielle &eacute;tant hautement raffin&eacute;e, elle ne contient plus de prot&eacute;ine allerg&eacute;nique et n\'est g&eacute;n&eacute;ralement pas d&eacute;conseill&eacute;e aux personnes allergiques aux cacahu&egrave;tes<sup id=\"cite_ref-2\" class=\"reference\"><a href=\"http://fr.wikipedia.org/wiki/Huile_d%27arachide#cite_note-2\">2</a></sup>.</p>','<p>L\'<strong>huile d\'arachide</strong> est une <a title=\"Huile alimentaire\" href=\"http://fr.wikipedia.org/wiki/Huile_alimentaire\">huile v&eacute;g&eacute;tale</a> pr&eacute;par&eacute;e et extraite &agrave; partir d\'arachide (<a title=\"Arachide\" href=\"http://fr.wikipedia.org/wiki/Arachide\">arachides</a>, <em>arachis hypogaea</em>) au moyen d\'une <a title=\"Presse hydraulique\" href=\"http://fr.wikipedia.org/wiki/Presse_hydraulique\">presse hydraulique</a>. Il s\'agit d\'une <a title=\"Huile alimentaire\" href=\"http://fr.wikipedia.org/wiki/Huile_alimentaire\">huile alimentaire</a> d\'apparence tr&egrave;s limpide et id&eacute;ale pour les cuissons &agrave; haute temp&eacute;rature. Particuli&egrave;rement appropri&eacute;e pour faire frire les aliments, elle peut aussi &ecirc;tre employ&eacute;e pour la pr&eacute;paration de <a title=\"Mayonnaise\" href=\"http://fr.wikipedia.org/wiki/Mayonnaise\">mayonnaises</a> ou encore de <a title=\"Vinaigrette (sauce)\" href=\"http://fr.wikipedia.org/wiki/Vinaigrette_%28sauce%29\">vinaigrettes</a> pour assaisonnement.&nbsp;</p>','/IMG_1005-4.jpg','/IMG_0998-4.jpg',''),(23,'Uniquement en magasin',12.45,'€','Extrait de violette','Promo : 1+1 = 3','<p>Se Conserve &agrave; l\'abri de la lumi&egrave;re et de la chaleur. Se consomme dilu&eacute;.</p>','<h4>Description ar&ocirc;me alimentaire naturel violette</h4>\r\n<div class=\"text1\">L\'ar&ocirc;me alimentaire naturel violette donnera &agrave; tous vos desserts une saveur originale. Utilis&eacute; par les chefs, l\'ar&ocirc;me alimentaire naturel permet une grande possibilit&eacute; de cr&eacute;ation, un gain de temps et une garantie de r&eacute;sultat.<br />L\'ar&ocirc;me alimentaire naturel violette a un fort pouvoir aromatisant, quelques gouttes suffisent.</div>\r\n<div class=\"clear\">&nbsp;L\'ar&ocirc;me alimentaire naturel violette donnera &agrave; tous vos desserts une saveur originale. Utilis&eacute; par les chefs, l\'ar&ocirc;me alimentaire naturel permet une grande..</div>\r\n<h4>Caract&eacute;ristiques ar&ocirc;me alimentaire naturel violette</h4>\r\n<div class=\"text1\">Contenance 50 ml. Ingr&eacute;dients : Sirop de sucre inverti, farine de graine de guar, gomme de xanthane, ar&ocirc;me naturel violette.<br />Pour aromatiser vos g&acirc;teaux, cr&egrave;mes, entremets, macarons, chocolats ou glaces.<br />Se Conserve &agrave; l\'abri de la lumi&egrave;re et de la chaleur. Se consomme dilu&eacute;.</div>','/none_4384_350x350-.jpg','',''),(24,'C37782',11.10,'€ les 2 flacons','Crême de nuit ','Les + produit','<p>Sans paraben sans oxydants</p>','<p>Super produit</p>','/IMG_0994-24.jpg','/IMG_0995-24.jpg',''),(25,'Dispo en magasin seulement',23.56,'€','Lotion bio ','Promo : 1+1 = 3','<p>Pour 2 produits acht&eacute;s un deuxi&egrave;me est offert .</p>','<p>q sdqsdqsd qsdqsdq sdqsdq sd</p>','/HF_sieste_e1385893223675-.jpg','',''),(26,'PA2345',12.00,'€ au lieu de 24€','Pain aux noix','PROMO','<div class=\"copy-paste-block\">Pour 2 achet&eacute;s le 2&egrave;me offert !</div>','<div class=\"copy-paste-block\">Un pain tr&egrave;s gourmand pour accompagner toutes vos envies.</div>','/IMG_1014-.jpg','','/a08a8401-26.jpg'),(27,'Dispo en magasin seulement',2.50,'€ / Kg','Bananes','Les + produit','<p>Tr&egrave;s belle vari&eacute;t&eacute;</p>','<p>Bananes bio cultiv&eacute;es dasn les r&egrave;gles de l\'agriculture raisonn&eacute;e.</p>','/Screen_Shot_2015_02_21_at_17.35.39-.png','','');
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
INSERT INTO `product_categorie` VALUES (4,1),(23,1),(24,1),(25,39),(26,13),(27,40);
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

-- Dump completed on 2015-02-24 17:03:58
