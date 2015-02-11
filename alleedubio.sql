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
  `newsletter` tinyint(4) NOT NULL DEFAULT '0',
  `fromgoldbook` tinyint(4) NOT NULL DEFAULT '0',
  `fromcontact` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24400 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3344,'','Gonzalez','xavier@gonzalez.pm',NULL,1,1,0),(23838,'adelie','BALLANDE','a.ballande@gmail.com',NULL,1,0,0),(23839,'A.','CREBESSA','a.crebessa@gmail.com',NULL,1,0,0),(23840,'arnaud','DREVET','adrevet@gmx.com',NULL,1,0,0),(23841,'ANNE','TAUPIAC','ael@noswebs.com',NULL,1,0,0),(23842,'audrey','FILEAUX','afileaux@gmail.com',NULL,1,0,0),(23843,'AGATHE','POUGET','agatheink@hotmail.com',NULL,1,0,0),(23844,'ALBERT','AGNES','agnes.albert1@gmail.com',NULL,1,0,0),(23845,'AGNES','TERNET','agnes.ternet@outlook.com',NULL,1,0,0),(23846,'GENEVIEVE','HORTHOLARY','ahortholary@yahoo.fr',NULL,1,0,0),(23847,'ALAIN','BESSE','alain.besse.expert@free.fr',NULL,1,0,0),(23848,'ALEXANDRA','GIBAUDAN','alexandra.gibaudan@gmail.com',NULL,1,0,0),(23849,'alexandra','baillet','alexandrabaillet@hotmail.com',NULL,1,0,0),(23850,'TELLIER','Alexandre','Alexandre.TELLIER@saftbatteries.com',NULL,1,0,0),(23851,'ALEXANDRE','DUPART','alexandredupart@gmail.com',NULL,1,0,0),(23852,'ALICIA','MARCHENAY','aliciiaa33@orange.fr',NULL,1,0,0),(23853,'ALIX','AHOLU','alix_aholu@hotmail.fr',NULL,1,0,0),(23854,'AMANDINE','PASSICOT','amandine-passicot@orange.fr',NULL,1,0,0),(23855,'AMANDINE','BEGOT','amandine.begot@laposte.net',NULL,1,0,0),(23856,'AMELIE','FRIAS','amelier31@hotmail.com',NULL,1,0,0),(23857,'ANDREA','VAILLANT','ancelis@yahoo.com',NULL,1,0,0),(23858,'ANDRE','ALMEIDA','andre-lamego1985@hotmail.com',NULL,1,0,0),(23859,'ANDREE','MOYER','andreechazalmoyer@hotmail.com',NULL,1,0,0),(23860,'ANGELIQUE','JOLY','ange.joly@free.fr',NULL,1,0,0),(23861,'ANNE','ALFONSO','anne-lys.alfonso@wanadoo.fr',NULL,1,0,0),(23862,'ANNE','BARDET','anne.bardet@educagri.fr',NULL,1,0,0),(23863,'ANNE','CASTETS','anne.castets@outlook.com',NULL,1,0,0),(23864,'ANNE','ESPIGA','anneep@hotmail.com',NULL,1,0,0),(23865,'ANNE','ARNE','annefrance.budzinski@gmail.com',NULL,1,0,0),(23866,'ANNE','DIAZ','annemariediaz@neuf.fr',NULL,1,0,0),(23867,'anthony','CHEVREUX','anthoch17@hotmail.fr',NULL,1,0,0),(23868,'ARNAUD','DROULERS','arnaud.droulers@yahoo.fr',NULL,1,0,0),(23869,'ARNAUD','GEFFROY','arnaud.jeffroy@gmail.com',NULL,1,0,0),(23870,'','THOMASSET','as.thomasset@orange.fr',NULL,1,0,0),(23871,'ANNE','CALLENS','asa_callens@gmail.com',NULL,1,0,0),(23872,'AUDREY','ELIES','audrey.elies@gmail.com',NULL,1,0,0),(23873,'thoreau','audrey','audrey.thoreau.ide@gmail.com',NULL,1,0,0),(23874,'','CAYRON','audrey8cayron@aon.fr',NULL,1,0,0),(23875,'audrey','bernstein','audreyjereme@hotmail.com',NULL,1,0,0),(23876,'GERALDINE','DESCOMS','b-liss@hotmail.fr',NULL,1,0,0),(23877,'basile','TESSERON','b.tesseron@lafon-rochet.com',NULL,1,0,0),(23878,'MARIE','CHAPOLARD','badfille@hotmail.fr',NULL,1,0,0),(23879,'ANNE','BARIANT','bariant1970@yahoo.fr',NULL,1,0,0),(23880,'NICOLE','BARRAULT','barraultnicole64@gmail.com',NULL,1,0,0),(23881,'BEATRICE','BAUP','bb-patrick@hotmail.fr',NULL,1,0,0),(23882,'','BERTHEREAU','bber@netcourrier.co',NULL,1,0,0),(23883,'','THEODORIDES','bebetho@hotmail.com',NULL,1,0,0),(23884,'BENEDICTE','DESPLATS','benedictedesplats@gmail.com',NULL,1,0,0),(23885,'BENEDICTE','MENDIBOURE','benemendiboure@gmail.com',NULL,1,0,0),(23886,'BENJAMIN','PERRIEZ','benjaminperriez@orange.fr',NULL,1,0,0),(23887,'BENJAMIN','MARCERON','benjimarceron@yahoo.fr',NULL,1,0,0),(23888,'BENOIT','PERRET','benoitperret17@gmail.com',NULL,1,0,0),(23889,'WAHID','BENYELLOUL','benyelloulwahid@yahoo.fr',NULL,1,0,0),(23890,'FLORA','BERLAND','berland.flora@yahoo.fr',NULL,1,0,0),(23891,'CHRISTIANE','CASES','bernardcases@wanadoo.fr',NULL,1,0,0),(23892,'BERNARD','SOTO','bernardsoto@hotmail.fr',NULL,1,0,0),(23893,'BERTRAND','GENEVAY','bertrandgenevay@yahoo.fr',NULL,1,0,0),(23894,'BERNADETTE','NITSCHKE','bhnitschke@stephane76.de',NULL,1,0,0),(23895,'BRUNO','MARCHESSON','bmh33@wanadoo.fr',NULL,1,0,0),(23896,'CATHERINE','BONDIL','bondil.architecte@gmail.com',NULL,1,0,0),(23897,'Olivia','Boulard','boulardolivia@gmail.com',NULL,1,0,0),(23898,'GUILLAUME','BRAULT','braultguillaume@ymail.com',NULL,1,0,0),(23899,'BRIGITTE','ROBILLARD','brigitterobillard@neuf.fr',NULL,1,0,0),(23900,'PIERRE','BROUSSIN','broussinpierre@yahoo.fr',NULL,1,0,0),(23901,'LOUISE','BRUN','brun-louise@hotmail.fr',NULL,1,0,0),(23902,'BTISSAM','JEAU','btissamjeau@hotmail.fr',NULL,1,0,0),(23903,'BRIGITTE','VALETTE','bvalette@dalkia.com',NULL,1,0,0),(23904,'CECILE','ESPENAN','c_espenan@hotmail.com',NULL,1,0,0),(23905,'CLAUDIE','LAMART','c.lamart@afept.fr',NULL,1,0,0),(23906,'CAMILLE','BLANCHET','cam4448@hotmail.com',NULL,1,0,0),(23907,'CAMILLE','NIERFEIX','camille-nfx@hotmail.fr',NULL,1,0,0),(23908,'Camille','HOARAU','camille.hoarau974@gmail.com',NULL,1,0,0),(23909,'CAMILLE','COCHEZ','camillecochez@gmail.com',NULL,1,0,0),(23910,'GAUDIN','CARINE','carine_g69@hotmail.com',NULL,1,0,0),(23911,'CAROLINE','GUENON','caro3339@gmail.comp',NULL,1,0,0),(23912,'AUGEY','CAROLE','carole.augey@wanadoo.fr',NULL,1,0,0),(23913,'','VERGNENAIGRE','caroline.vergnenaigre@cira.gouv.fr',NULL,1,0,0),(23914,'CAROLINE','BREUILLET','carolinebreuillet@hotmail.com',NULL,1,0,0),(23915,'CATHERINE','ARRIVET','carrivet17@gmail.com',NULL,1,0,0),(23916,'CATHERINE','MIALON','catherine.mialon@wanadoo.fr',NULL,1,0,0),(23917,'CATHERINE','LAMBERT','catherine.tastetlambert@gmail.com',NULL,1,0,0),(23918,'','VILLEMONTEIX','cathyvillemont@hotmail.fr',NULL,1,0,0),(23919,'CATHERINE','LEONARD','catyleo@orange.fr',NULL,1,0,0),(23920,'SANDRINE','CAVILLON','cavillon-sandrine@bbox.fr',NULL,1,0,0),(23921,'Cedric','DUBOS','ccdubos@hotmail.fr',NULL,1,0,0),(23922,'CECILE','CHAPPAZ','cecile.chappaz@wanadoo.fr',NULL,1,0,0),(23923,'CECILE','GEORGIN','cecile.georgin@laposte.net',NULL,1,0,0),(23924,'CECILE','ROUBEIX','cecile.roubeix@gmail.com',NULL,1,0,0),(23925,'CELINE','MONGES','celine.pitchoune@yahoo.fr',NULL,1,0,0),(23926,'Celine','RAINAUT','celine.rainaut@hotmail.fr',NULL,1,0,0),(23927,'CELINE','VALLADON','celine30011980@hotmail.fr',NULL,1,0,0),(23928,'CELINE','BUCHMANN','celinebuchmann@gmail.com',NULL,1,0,0),(23929,'CELINE','CHARVIN','celinecharvin@hotmail.fr',NULL,1,0,0),(23930,'celine','MARTIN','celou.ma@yahoo.fr',NULL,1,0,0),(23931,'PASCALE','CERCLE','cerclepascale@yahoo.fr',NULL,1,0,0),(23932,'charlotte','VAURE','cha-ifi@hotmail.com',NULL,1,0,0),(23933,'cecile','FERNANDEZ','chachanou1977@yahoo.fr',NULL,1,0,0),(23934,'CHARLOTTE','ALVES','charlotte.alves@live.fr',NULL,1,0,0),(23935,'charlotte','LACROUZADE','charlotte.lacrouzade@wanadoo.fr',NULL,1,0,0),(23936,'TESSERON','BERANGERE','chateau.larrivaux@gmail.com',NULL,1,0,0),(23937,'CHEPEAU','MARIE','chepeau.marie@neuf.fr',NULL,1,0,0),(23938,'CHLOE','CHAUNARD','chloe.chaunard@hotmail.fr',NULL,1,0,0),(23939,'CHRISTELLE','GAILLARDIN','christelle_gaillardin@hotmail.com',NULL,1,0,0),(23940,'CHRISTELLE','BOURSEAU','christelle.bourseau@orange.fr',NULL,1,0,0),(23941,'CHRISTELLE','DUBORD','christelle.dubord24@gmail.com',NULL,1,0,0),(23942,'christine','DECONINCK','christine_deco@hotmail.com',NULL,1,0,0),(23943,'christine','DINOUART','christinebx@yahoo.fr',NULL,1,0,0),(23944,'CHRISTOPHE','KERSANTE','christophe.kersante@sfr.fr',NULL,1,0,0),(23945,'Chrystelle','FAUX-LARCHE','chrystelle@mauriac-voyages.com',NULL,1,0,0),(23946,'CINDY','PICOT','cindy.picot@yahoo.fr',NULL,1,0,0),(23947,'CHRISTIAN','TAPIE','cjt@cts.com',NULL,1,0,0),(23948,'','LAFAGE','CLAIRE.LAFAGE@saftbatteries.com',NULL,1,0,0),(23949,'Claire','BASTIER','clairegilles@yahoo.fr',NULL,1,0,0),(23950,'claire','LIBOUTET','claireliboutet@gmail.com',NULL,1,0,0),(23951,'CLARA','DELEUZE','clara.deleuze@gmail.com',NULL,1,0,0),(23952,'CLARA','GUETTE','clariguette@gmail.com',NULL,1,0,0),(23953,'MELANIE','FAUCONNIER','clavemelanie@gmail.com',NULL,1,0,0),(23954,'CLEMENTINE','RAPHANEL','clemraphanel@gmail.com',NULL,1,0,0),(23955,'CORINNE','LAVIGNE','cocolavigne@free.fr',NULL,1,0,0),(23956,'FAHED','AOUIFA','condat@live.fr',NULL,1,0,0),(23957,'Constance','CHEVRIER','constance.chevrier@gmail.com',NULL,1,0,0),(23958,'CORALIE','CARNOY','coralie.carnoy@gmail.com',NULL,1,0,0),(23959,'CORINNE','KATZ','corinne.katz@free.fr',NULL,1,0,0),(23960,'corinne','ODDOUX','Corinneoddoux@aol.com',NULL,1,0,0),(23961,'NATHALIE','CORVEZ','corvezn@gmail.com',NULL,1,0,0),(23962,'Anthony','COTTA','cotta.anthony@gmail.com',NULL,1,0,0),(23963,'STEPHANIE','MAUBARET','coukor1@yahoo.fr',NULL,1,0,0),(23964,'PATRICE','CROUAIL','crouail@orange.fr',NULL,1,0,0),(23965,'cCHRISTINE','TRIDOU','ctridou@sfr.fr',NULL,1,0,0),(23966,'CYNTHIA','PERAUD','cynthia.peraud@gmail.com',NULL,1,0,0),(23967,'DALILA','MAGASSA','dalila.magassa@live.fr',NULL,1,0,0),(23968,'DANIELLE','LASSALE','danlassalle@yahoo.fr',NULL,1,0,0),(23969,'DAVID','ARZENTON','darzanton@gmail.com',NULL,1,0,0),(23970,'DOMINIQUE','DEGUINE','ddeguine@atypiqueprod.com',NULL,1,0,0),(23971,'VEAUVY','DELPHINE','dedelveauvy@hotmail.fr',NULL,1,0,0),(23972,'','LECAILLON','delphine.lecaillon@hotmail.fr',NULL,1,0,0),(23973,'DENIS','PICOLET','denis.picolet613@orange.fr',NULL,1,0,0),(23974,'BRIGITTE','MOULADE','denismoulade@free.fr',NULL,1,0,0),(23975,'DIANE','NEAU','diane.neau@hotmail.fr',NULL,1,0,0),(23976,'','VAN DER PEIJL','dick.van-de-peijl@wanadoo.fr',NULL,1,0,0),(23977,'DAVID','GENTES','didougentes@gmail.com',NULL,1,0,0),(23978,'ODILE','DELPON','dileola@aliceadsl.fr',NULL,1,0,0),(23979,'DIMITRI','BASSET','dimitribasset@gmail.com',NULL,1,0,0),(23980,'MARIE','BOUCHER','domijaniak@aol.com',NULL,1,0,0),(23981,'DOMINIQUE','NEMOND','dominiquenemond@wanadoo.fr',NULL,1,0,0),(23982,'DOUDOU','DIOUF','doudou.diouf@gmail.com',NULL,1,0,0),(23983,'DOUGLAS','DEMICHEL','douglas.demichel@bordelaise-grandsvins.com',NULL,1,0,0),(23984,'STEPHANIE','DOUTHE','douthe.stephanie@yahoo.com',NULL,1,0,0),(23985,'Driss','SBAI','driss_sb@yahoo.fr',NULL,1,0,0),(23986,'GREGORY','DUPORT','duport.gregory@gmail.com',NULL,1,0,0),(23987,'EMILIE','LAFITTE','e_lafitte@hotmail.com',NULL,1,0,0),(23988,'elisabeth','BARDET','elisa.bardet@hotmail.fr',NULL,1,0,0),(23989,'ELODIE','BOURSEAU','elodie.bourseau@gmail.com',NULL,1,0,0),(23990,'ELODIE','MESNARD','elodie.mesnard33@gmail.com',NULL,1,0,0),(23991,'ELODIE','FAUGERE','elodief06@hotmail.fr',NULL,1,0,0),(23992,'ELOISE','LAPLACE','eloise.laplace@gmail.com',NULL,1,0,0),(23993,'Emilie','BORDAS','emilie_140@hotmail.com',NULL,1,0,0),(23994,'EMILIE','CREACH','emilie.creach@hotmail.fr',NULL,1,0,0),(23995,'EMILIE','NICOLAS','emilie.nicolas25@gmail.com',NULL,1,0,0),(23996,'EMILIE','ALIAS','emiliealias@gmail.com',NULL,1,0,0),(23997,'EMILIE','LABAN','emiliell@hotmail.com',NULL,1,0,0),(23998,'emmanuelle','LAFFRAT','emma-lof@hotmail.com',NULL,1,0,0),(23999,'Emmanuel','PENCHAUD','emmanuel.penchaud@wanadoo.fr',NULL,1,0,0),(24000,'EMMANUELLE','ANTIGUA','emmanuelle.antiga@hotmail.fr',NULL,1,0,0),(24001,'emmanuelle','NICAISE','emmanuelle.nicaise@wanadoo.fr',NULL,1,0,0),(24002,'EMMANUELLE','TARDAT','emmanuelletardat@gmail.com',NULL,1,0,0),(24003,'ERIC','TASTE','eric.taste@orange.fr',NULL,1,0,0),(24004,'LAMOTHE','MARTINE','espidoud@yahoo.fr',NULL,1,0,0),(24005,'Estelle','KELLER','estelle.keller@wanadoo.fr',NULL,1,0,0),(24006,'EVA','BOUYRE','eva.bouyre@hotmail.fr',NULL,1,0,0),(24007,'EVELYNE','BODA','evelyne.boda@gmail.com',NULL,1,0,0),(24008,'AICOBERRY','STEPHEN','everlasting-snows@hotmail.fr',NULL,1,0,0),(24009,'FLORENCE','HALLOU','f.hallou@sciencespobordeaux.fr',NULL,1,0,0),(24010,'FLORIE','GONZALEZ','fabflo33@hotmail.fr',NULL,1,0,0),(24011,'FABIEN','PITON','fabien.piton@gmail.com',NULL,1,0,0),(24012,'MARIE','FAGES','fagesmarie@yahoo.fr',NULL,1,0,0),(24013,'EMILE','FAGET','faget.emilie0@gmail.com',NULL,1,0,0),(24014,'FRANCOISE','DUBOIS','fanfandubois33320@gmail.com',NULL,1,0,0),(24015,'FANNY','MUNSCH','fanny.munsch@orange.fr',NULL,1,0,0),(24016,'FANNY','PELLERIN','fannypellerin@gmail.com',NULL,1,0,0),(24017,'FRANCOISE','BACCAUD','fbaccaud@hotmail.com',NULL,1,0,0),(24018,'FRANCOISE','BATBY','fer.eme@wanadoo.fr',NULL,1,0,0),(24019,'EMMANUELLE','WATELLE','fidecoconseil@gmail.com',NULL,1,0,0),(24020,'fiona','LECOURT','fiona.lecourt@gmail.com',NULL,1,0,0),(24021,'Flavie','Chantemerle','flavie.chantemerle@gmail.com',NULL,1,0,0),(24022,'AXEL','GRELIER','flo.sissi@hotmail.fr',NULL,1,0,0),(24023,'','COUPRY','flocoupry@hotmail.fr',NULL,1,0,0),(24024,'FLORIAN','BOURGON','florian745@msn.com',NULL,1,0,0),(24025,'EMELINE','FOUCHE','fouchemeline@hotmail.com',NULL,1,0,0),(24026,'CHRISTINE','FOURMONT','fourmont.herve@neuf.fr',NULL,1,0,0),(24027,'FRANCOISE','TERRADE','fr.terrade@gmail.com',NULL,1,0,0),(24028,'Nathalie','FRANCHET','franchet@orange.fr',NULL,1,0,0),(24029,'Francis','ECHEKDJIAN','francis.echekdjian@free.fr',NULL,1,0,0),(24030,'nathalie','CORDIER','francois.dutertre@yahoo.fr',NULL,1,0,0),(24031,'francoise','BERGEY','francoise_bergey@yahoo.fr',NULL,1,0,0),(24032,'FRANCOISE','AUTIER','francoise.autier@gmail.com',NULL,1,0,0),(24033,'Fred','GOUPILLEAU','fred.mono@hotmail.fr',NULL,1,0,0),(24034,'QUENTIN','AZZOPARD','frederic.azzopard@wanadoo.fr',NULL,1,0,0),(24035,'ANNE','BELLOSSI','frederic.bellossi@free.fr',NULL,1,0,0),(24036,'LHOUMEAU','','frederic.lhoumeau@neuf.fr',NULL,1,0,0),(24037,'FREDERIC','URBAIN','frederic.urbain@yahoo.fr',NULL,1,0,0),(24038,'','SAINTES','frederica-7@orange.fr',NULL,1,0,0),(24039,'POLI','','gabriel.poli@sogreah.fr',NULL,1,0,0),(24040,'Gabrielle','Neau','gabrielleneau@gmail.com',NULL,1,0,0),(24041,'Gaetan','ALBERT','gaetan983@gmail.com',NULL,1,0,0),(24042,'galina','ZAYNOULINE','galidmc07@gmail.com',NULL,1,0,0),(24043,'GUILLAUME','GARDINAL','gardinalg@hotmail.com',NULL,1,0,0),(24044,'GAUTIER','RICARD','gautier.ricard@yahoo.com',NULL,1,0,0),(24045,'GENEVIEVE','GUNSETT','genevievedagnas@hotmail.fr',NULL,1,0,0),(24046,'DIAZ','GEORGES','georgesdiaz@free.fr',NULL,1,0,0),(24047,'GERALDINE','COURGET','geraldinejankowiak@yahoo.fr',NULL,1,0,0),(24048,'GERARD','GASSET','gerard.gasset@numericable.fr',NULL,1,0,0),(24049,'ANTHONY','GISSAUD','gissaud.anthont@gmail.fr',NULL,1,0,0),(24050,'CATHY','LAGARRIGUE','glagarrigue@free.fr',NULL,1,0,0),(24051,'LAHORIA','URBAIN','glahoria@yahoo.fr',NULL,1,0,0),(24052,'Pascal','GORROCHATEGUI','gorrochategui@wanadoo.fr',NULL,1,0,0),(24053,'GREGORY','PICCA','gregpicca@hotmail.com',NULL,1,0,0),(24054,'JOEL','GUERIN','guerin.jg@orange.fr',NULL,1,0,0),(24055,'MARIANNE','GUERN','guern.marianne@wanadoo.fr',NULL,1,0,0),(24056,'GUILLAUME','ROBERT','guillaume.pm.robert@gmail.com',NULL,1,0,0),(24057,'','BRU','guy.bru@numericable.fr',NULL,1,0,0),(24058,'BRUNO','HAZAN','hazan.bruno@gmail.com',NULL,1,0,0),(24059,'HEDWIGE','MURE','hedwigemure@aol.com',NULL,1,0,0),(24060,'HELENE','WEHRLEN','helene.wehrlen@free.fr',NULL,1,0,0),(24061,'HELENE','BUHLER','helenebuhler@hotmail.fr',NULL,1,0,0),(24062,'yordanov','H̩l̬ne','heleneyordanov@gmail.com',NULL,1,0,0),(24063,'ISABELLE','HERAUD','heraudisabelle@orange.fr',NULL,1,0,0),(24064,'margaux','HERISSON','herisson.mx@gmail.com',NULL,1,0,0),(24065,'MARIE','HERRERA','herreramarie7@gmail.com',NULL,1,0,0),(24066,'ANNE','MAGES','herve.mages@neuf.fr',NULL,1,0,0),(24067,'Claire','HEUZE','heuze_claire@yahoo.fr',NULL,1,0,0),(24068,'ALINE','HIRSCH','hirsch.aline@gmail.com',NULL,1,0,0),(24069,'NELLY','PEARCE','holly-pearce@wanadoo.fr',NULL,1,0,0),(24070,'Bernard','HUSSON','husson.ber@gmail.com',NULL,1,0,0),(24071,'HERVE','VADELORGE','hvadelorge@laposte.net',NULL,1,0,0),(24072,'STEPHANE','PUJOL','info@imprimerie-pujol.com',NULL,1,0,0),(24073,'ANGELICA','TERREN','iresa@hotmail.fr',NULL,1,0,0),(24074,'ISABELLE','BOYER','isabelle.boyer@orange.com',NULL,1,0,0),(24075,'ISABELLE','DARNAUZAN','isabelle.darnauzan@gmail.com',NULL,1,0,0),(24076,'ISABELLE','GERBAULT','isabelle.gerbault@voila.fr',NULL,1,0,0),(24077,'ISABELLE','JURET','isabelle.juret@gmail.com',NULL,1,0,0),(24078,'ISABELLE','BUSSON','isabelle.lissard@gmail.com',NULL,1,0,0),(24079,'ISABELLE','ROGER','isabelle.roger08@orange.fr',NULL,1,0,0),(24080,'ISABELLE','ROUSSEAU','isabelle.rousseau72@free.fr',NULL,1,0,0),(24081,'ISABELLE','CLERMONT','isabelleclermont@neuf.fr',NULL,1,0,0),(24082,'ISABELLE','LAMOUILLERE','isabellelamouillere@gmail.com',NULL,1,0,0),(24083,'isabelle','CARRERE','islc5@hotmail.com',NULL,1,0,0),(24084,'JACKIE','GERARDIN','jackie.gerardin33@orange.fr',NULL,1,0,0),(24085,'JALLILA','KHALFAOUI','jallila.k@gmail.com',NULL,1,0,0),(24086,'s.','barriere','jardin-creation-services@wanadoo.fr',NULL,1,0,0),(24087,'jaurel','ALVAREZ','jaurelalvarez@gmail.com',NULL,1,0,0),(24088,'SERVENTIE','CLAUDE','jean-claude.serventie@wanadoo.fr',NULL,1,0,0),(24089,'BEAUCHEMIN','CLAUDE','jeanclaude.beauchemin@wanadoo.fr',NULL,1,0,0),(24090,'JEAN','COMBES','jeancombes@yahoo.fr',NULL,1,0,0),(24091,'JEFF','FITOUSSI','jeff.fitoussi@hotmail.fr',NULL,1,0,0),(24092,'JENNIFER','FAYOLLE','jennifer.fayolle@hotmail.fr',NULL,1,0,0),(24093,'JENNIFER','DUVIGNAC','jennyduvignac@hotmail.fr',NULL,1,0,0),(24094,'JEAN','DE CONINCK','jeodc33@yahoo.fr',NULL,1,0,0),(24095,'JEREMY','BOMMARD','jerebomm@hotmail.fr',NULL,1,0,0),(24096,'JEREMI','RUBIGNY','jeremi.rubigny@hotmail.fr',NULL,1,0,0),(24097,'NATHALIE','LEVET','jerome.levet@bbox.fr',NULL,1,0,0),(24098,'REGINE','CRICQ','jerome.saintcricq@neuf.fr',NULL,1,0,0),(24099,'JESSICA','BILLET','jessica.billet@gmail.com',NULL,1,0,0),(24100,'JESSICA','GABRIEL','jessicagabriel23@gmail.com',NULL,1,0,0),(24101,'JESSIE','ALAIN','jessie.alain@hotmail.fr',NULL,1,0,0),(24102,'keslick','francois','jfkeslick@yahoo.fr',NULL,1,0,0),(24103,'JEAN','KESLICK','jfkeslick@yahoo.fr',NULL,1,0,0),(24104,'JOELLE','LABOMME','jlabomme@orange.fr',NULL,1,0,0),(24105,'Anne','ALCANTARINI','jlalcant@libertysurf.fr',NULL,1,0,0),(24106,'JOHANNA','DONIS','johanna.donis@gmail.com',NULL,1,0,0),(24107,'FRANCK','ONFROY','jojoderozel@yahoo.fr',NULL,1,0,0),(24108,'JOLIEN','GUNST','joliengunst@msn.com',NULL,1,0,0),(24109,'JOSEPHINE','GANTER','josephine.ganter@hotmail.fr',NULL,1,0,0),(24110,'josiane','ALBERT','josiane.albert@bbox.fr',NULL,1,0,0),(24111,'JOSIANE','SEVILLA','josiane.sev@voila.fr',NULL,1,0,0),(24112,'ANNIE','JOURDAN','jourdan.annie1@club-internet.fr',NULL,1,0,0),(24113,'LARDIT','ANITA','joyaesty@aol.com',NULL,1,0,0),(24114,'JEAN','KLOTZ','jpklotz@gmail.com',NULL,1,0,0),(24115,'ROBINAULT','','jrobinault@yahoo.fr',NULL,1,0,0),(24116,'JULIA','MONET','julia_baptiste@hotmail.com',NULL,1,0,0),(24117,'JULIA','ESTOUP','julia.estoup@hotmail.fr',NULL,1,0,0),(24118,'JULIA','RIBEIRO','julia.ribeiro33@yahoo.fr',NULL,1,0,0),(24119,'JULIA','PELLETANT','julia.riffault@gmail.com',NULL,1,0,0),(24120,'JULIE','AUDOIRE','julie.audoire@wanadoo.fr',NULL,1,0,0),(24121,'JULIEN','LIOT','julien.liot@hotmail.fr',NULL,1,0,0),(24122,'JULIEN','MILLER','julien.miller@hotmail.com',NULL,1,0,0),(24123,'JEAN','CUILLIERIER','jycui@free.fr',NULL,1,0,0),(24124,'KEVIN','DELABARRE','k.delabarre.dias@gmail.com',NULL,1,0,0),(24125,'ALEXIA','LESCA','kalissia1@aol.com',NULL,1,0,0),(24126,'karina','ESTANOL','karinaa.estanol@gmail.com',NULL,1,0,0),(24127,'catherine','BALADE','katy33520@hotmail.com',NULL,1,0,0),(24128,'KIM','CHARRIER','kimcharrier@hotmail.com',NULL,1,0,0),(24129,'Caroline','MERLET','kiriline@hotmaol.com',NULL,1,0,0),(24130,'DAMIEN','LANUQUE','kittyguylaine@yahoo.fr',NULL,1,0,0),(24131,'ANNACHIARA','SIGISMONDI','kuri.kruk@hotmail.fr',NULL,1,0,0),(24132,'laurent','BUSSON','l.busson@gmail.com',NULL,1,0,0),(24133,'KARINE','LABADIE','labadie.karine@gmail.com',NULL,1,0,0),(24134,'nicolas','LABORIE','laborieni@wanadoo.fr',NULL,1,0,0),(24135,'CLAUDIE','PUYO','lalieblanche@yahoo.fr',NULL,1,0,0),(24136,'VIRGINIE','LANTEZ','lantez.virginie@orange.fr',NULL,1,0,0),(24137,'PIERRE','LASSEGUES','lassegues.pierre@wanadoo.fr',NULL,1,0,0),(24138,'JULIE','BOUVIER','lauralyna64@gmail.com',NULL,1,0,0),(24139,'LAURE','ROCHON','laure.rochon@gmail.com',NULL,1,0,0),(24140,'laure','CETOIS','laurecetois@hotmail.com',NULL,1,0,0),(24141,'LAURENCE','PALMIER','laurence.palmier@free.fr',NULL,1,0,0),(24142,'LAURENCE','FERRER','laurenceferrer@hotmail.com',NULL,1,0,0),(24143,'LAURENCE','ORBAN','laurenceorban@hotmail.com',NULL,1,0,0),(24144,'MARJORIE','RENARD','laurent.marjorierenard@gmail.com',NULL,1,0,0),(24145,'laurie','LARTIGUE','laurielartigue@outlook.fr',NULL,1,0,0),(24146,'LIONEL','BARRERE','lbarrere@live.fr',NULL,1,0,0),(24147,'LEA','SANZ','lea.sanz@numericable.fr',NULL,1,0,0),(24148,'LEILA','BENAC','leila.benac@aliceadsl.fr',NULL,1,0,0),(24149,'LEO','JACOLIN','leojacolin@hotmail.fr',NULL,1,0,0),(24150,'GERALDINE','MANEN','lesecus@hotmail.fr',NULL,1,0,0),(24151,'SOPHIE','LEVEQUE','levequesophie@sfr.fr',NULL,1,0,0),(24152,'liliane','botella','liliane.botella@me.com',NULL,1,0,0),(24153,'LIONEL','BORRAS','lionel.borras@gmail.com',NULL,1,0,0),(24154,'LISA','DELAS','lisa.delas@gmail.com',NULL,1,0,0),(24155,'LISA','SIMON','lisalice@gmail.com',NULL,1,0,0),(24156,'LISE','AJJAID','lisebedlow@hotmail.com',NULL,1,0,0),(24157,'L','JACQUIN','ljacquin@gmail.com',NULL,1,0,0),(24158,'LAURENCE','MASSELOT','lo.masselot@gmail.com',NULL,1,0,0),(24159,'LOETITIA','JAUJARD','loetitia.jaujard@lyonnaise-des-eaux.fr',NULL,1,0,0),(24160,'josiane','LE GUIFFANT','loguif@gmail.com',NULL,1,0,0),(24161,'laurence','POTHET','lolopotpot@hotmail.fr',NULL,1,0,0),(24162,'CAMILLE','LONGUEVILLE','longuevillecamille@gmail.com',NULL,1,0,0),(24163,'ALASSANE','CISSE','louloucisse@hotmail.fr',NULL,1,0,0),(24164,'LUCAS','CHEVALIER','loutcho.lc@gmail.com',NULL,1,0,0),(24165,'LUCIE','BRUYER','lucie.bruyer@hotmail.fr',NULL,1,0,0),(24166,'LUCIE','LONNE','lucie.lonne@gmail.com',NULL,1,0,0),(24167,'lucile','DAULION','lucile.daulion@gmail.com',NULL,1,0,0),(24168,'MARJORIE','HESSE','m_hesse@voila.fr',NULL,1,0,0),(24169,'MELISSA','BOURBON','m0aeuh-mel@hotmail.fr',NULL,1,0,0),(24170,'Magali','FLAUTO','magali.flauto@yahoo.fr',NULL,1,0,0),(24171,'EMILIE','MALOCHON','magalie.malochon@gmail.com',NULL,1,0,0),(24172,'MAINA','CIGANA','maina.cigana@gmail.com',NULL,1,0,0),(24173,'PAULINE','MALLET','mallet-p@orange.fr',NULL,1,0,0),(24174,'MANON','MORTAGNE','manon.mortagne@gmail.com',NULL,1,0,0),(24175,'MARIE','PETGES','mapdiagnostic@orange.fr',NULL,1,0,0),(24176,'CECILE','MARCHAL','marchalcecile@orange.fr',NULL,1,0,0),(24177,'','SABOYA','marcsaboya@hotmail.com',NULL,1,0,0),(24178,'MARGAUX','STEFANAGGI','margaux.stefanaggi@hotmail.fr',NULL,1,0,0),(24179,'','COMMUNAL','marie-alice.communal@wanadoo.fr',NULL,1,0,0),(24180,'','MASSON','marie-francoise.masson@live.fr',NULL,1,0,0),(24181,'MARIE','DEBESSON','marie-helene.ricard-debesson@wanadoo.fr',NULL,1,0,0),(24182,'marie','PINILLA','marie-jose.pinilla@laposte.net',NULL,1,0,0),(24183,'MARIE','BLONDY','marie-josee.blondy@hotmail.fr',NULL,1,0,0),(24184,'MARIE','TESTUT','marie.gdl@hotmail.fr',NULL,1,0,0),(24185,'MARIE','PUYJALON','marie7614@hotmail.fr',NULL,1,0,0),(24186,'MARIE','BONIFAZI','mariebonifazi@hotmail.fr',NULL,1,0,0),(24187,'MARIE','DUMOULIN','mariedumoulin29@gmail.com',NULL,1,0,0),(24188,'MARIE','PECHENARD','mariepechenard@gmail.com',NULL,1,0,0),(24189,'RENAUD','MARIE','mariere@neuf.fr',NULL,1,0,0),(24190,'MARIE','RENOULT','marierenoult@hotmail.com',NULL,1,0,0),(24191,'MARIE','ZAPATER','mariezapater@yahoo.fr',NULL,1,0,0),(24192,'MARINE','CHATAIGNER','marine3_3@hotmail.com',NULL,1,0,0),(24193,'martine','MONTIGNAC','marines67@voila.fr',NULL,1,0,0),(24194,'MARINE','VERRE','marineverre@hotmail.fr',NULL,1,0,0),(24195,'MARION','FRESNAIS','marion.fresnais@hotmail.com',NULL,1,0,0),(24196,'MARTINE','GOUZIK','martine.gouzik@gouzik.com',NULL,1,0,0),(24197,'MARYSE','LITIZZETTO','maryselarrat33@gmail.com',NULL,1,0,0),(24198,'MATEUS','DOS SANTOS','mateus2008@live.fr',NULL,1,0,0),(24199,'Mathilde','BISSIERES','mathilde.bissieres@laposte.net',NULL,1,0,0),(24200,'MAUD','TROULAY','maudtroulay@gmail.com',NULL,1,0,0),(24201,'MAUREEN','DREVES','maureen.dreves@gmail.com',NULL,1,0,0),(24202,'Marine','BARRIER','mbarrier13@gmail.com',NULL,1,0,0),(24203,'MARIE','HUTIER','mchutier@gmail.com',NULL,1,0,0),(24204,'MARIE','DE GALZAIN','mdegalzain@orange.fr',NULL,1,0,0),(24205,'MELANIE','BASQUE','melaniebasque33@hotmail.fr',NULL,1,0,0),(24206,'BRIGITTE','FOURTINON','mfourtinon@free.fr',NULL,1,0,0),(24207,'MARIE','BROUSCAILLOU','mh.p@neuf.fr',NULL,1,0,0),(24208,'RODRIGUES','HELENE','mhrod@live.fr',NULL,1,0,0),(24209,'MARIE','RODRIGUES','mhrod@live.fr',NULL,1,0,0),(24210,'Irina','MALYGINA','mi0104@mail.ru',NULL,1,0,0),(24211,'FLORENT','DRUCBERT','miaouaf@hotmail.com',NULL,1,0,0),(24212,'THEREZE','MICHEL','michel.thereze@hotmail.fr',NULL,1,0,0),(24213,'MICHEL','FIGEAC','michelfigeac@yahoo.fr',NULL,1,0,0),(24214,'MICHELINE','ADENET','michelineadenet@bbox.fr',NULL,1,0,0),(24215,'MICHELE','BAILLY','michellebailly33@gmail.com',NULL,1,0,0),(24216,'MICKAEL','TARRIEU','mika.tarrieu@gmail.com',NULL,1,0,0),(24217,'AURELIE','MONZAT','minelune@hotmail.fr',NULL,1,0,0),(24218,'micci','beatrice','mizzibeatrice@hotmail.fr',NULL,1,0,0),(24219,'MARIE','HARTMANN','ml.b.hartmann@gmail.com',NULL,1,0,0),(24220,'CATHERINE','BORDENAVE','moca332@orange.fr',NULL,1,0,0),(24221,'MONIQUE','LAVILLIONNERE','mon.lavil@orange.fr',NULL,1,0,0),(24222,'HELENE','MOUNIOS','mounhel@hotmail.com',NULL,1,0,0),(24223,'MARIE','DAURAT','mp.maryon33@gmail.com',NULL,1,0,0),(24224,'MURIEL','CUILHE','muriel.cuilhe@club.fr',NULL,1,0,0),(24225,'MURIEL','ISNARD','muriel.isnard@wanadoo.fr',NULL,1,0,0),(24226,'','SORHOUETGARAY','muriel.sorhouetgaray@club-internet.fr',NULL,1,0,0),(24227,'victoria','HERRERRO','mvherrero@aol.com',NULL,1,0,0),(24228,'MAUD','RAEVEN','myource@hotmail.com',NULL,1,0,0),(24229,'NICOLAS','CHAPPAZ','n.chappaz@gmail.com',NULL,1,0,0),(24230,'ninon','CHALON','n.lecru-chalon@hotmail.fr',NULL,1,0,0),(24231,'NADEGE','MASSIAS','nadegebx@yahoo.fr',NULL,1,0,0),(24232,'NADINE','FORCE','nadine.force@free.fr',NULL,1,0,0),(24233,'NADINE','FAVREAU','nadinefavreau@free.fr',NULL,1,0,0),(24234,'NATHAN','DASSIEU','nat-dass@hotmail.fr',NULL,1,0,0),(24235,'NATACHA','GONTIER','natacha.gontier@orange.fr',NULL,1,0,0),(24236,'NATHALIE','LABAT','nathalie.labat@ims-bordeaux.fr',NULL,1,0,0),(24237,'nathalie','ALONSO','nathalonso33@gmail.com',NULL,1,0,0),(24238,'NATHAN','TURPIN','nathan.turpin@orange.fr',NULL,1,0,0),(24239,'NATTAYA','BASCANS','nattaya1973@gmail.com',NULL,1,0,0),(24240,'morgane','CLEMENCEAU','ncnono13@hotmail.com',NULL,1,0,0),(24241,'ELIANE','NIWINSKI','neliane@orange.fr',NULL,1,0,0),(24242,'NELLY','BOUMARD','nellyboumard@yahoo.fr',NULL,1,0,0),(24243,'ANNIE','CAMUS','nina.kams@sfr.fr',NULL,1,0,0),(24244,'NINA','LAGARRIGUE','ninacarmen91@gmail.com',NULL,1,0,0),(24245,'DENIS','MARTINEAU','nini33370@wanadoo.fr',NULL,1,0,0),(24246,'Aude','Noblet','noblet.aude@googlemail.com',NULL,1,0,0),(24247,'NOEMIE','AULONG','nomie33@hotmail.fr',NULL,1,0,0),(24248,'OLIVIA','LANSON','o.lanson@voila.fr',NULL,1,0,0),(24249,'','WEBER','olga.weber@wanadoo.fr',NULL,1,0,0),(24250,'OLIVIA','DEMICHEL','olivia.demichel@cap-grh.com',NULL,1,0,0),(24251,'SANDRINE','FLAMANT','olivier.flamant@free.fr',NULL,1,0,0),(24252,'','BELMONTE','onze.heure.trente@hotmail.fr',NULL,1,0,0),(24253,'Aurelie','DEDIEU','orelai@hotmail.fr',NULL,1,0,0),(24254,'Aurelie','COUPE','orelou33@gmail.com',NULL,1,0,0),(24255,'AURELIE','PERON','orelyloulou@yahoo.fr',NULL,1,0,0),(24256,'CATHERINE','MAILLET','palluet.catherine@wanadoo.fr',NULL,1,0,0),(24257,'ROLAND','PANNETIER','pannetier.roland@hotmail.fr',NULL,1,0,0),(24258,'CAROLINE','GAUDRIE','parvatikahar@yahoo.fr',NULL,1,0,0),(24259,'PASCALE','DARQUEY','pascale.darquey@neuf.fr',NULL,1,0,0),(24260,'MITRESSE','PASCALE','pascale.mitresse@sfr.fr',NULL,1,0,0),(24261,'PASCALE','BERNARD','pascalebernard@sfr.fr',NULL,1,0,0),(24262,'PASCALE','CAZEAUX','pascalecazeaux@cegetel.net',NULL,1,0,0),(24263,'CAROLE','PASSAGER','passager.carole@neuf.fr',NULL,1,0,0),(24264,'PATRICE','GUY','patriceguy74@yahoo.fr',NULL,1,0,0),(24265,'PATRICK','CADE','patrick.cade@wanadoo.fr',NULL,1,0,0),(24266,'PAULINE','SUZINEAU','pauline_suzineau@hotmail.fr',NULL,1,0,0),(24267,'Pauline','HERISSON','pauline-keneddy@hotmail.fr',NULL,1,0,0),(24268,'PAULINE','NOEL','pauline-noel@hotmail.fr',NULL,1,0,0),(24269,'PAULINE','CASTAING','pauline.castaing@voila.fr',NULL,1,0,0),(24270,'PAULINE','CHAUNARD','pauline.chaunard@gmail.com',NULL,1,0,0),(24271,'PAULINE','ROY','pauline.e.roy@gmail.com',NULL,1,0,0),(24272,'Pauuline','ABBACI','paulineabbaci@aol.com',NULL,1,0,0),(24273,'Philippe','BOUQUET','pbouquet@systra.com',NULL,1,0,0),(24274,'FRATANI','Pauline','peauchinette@hotmail.com',NULL,1,0,0),(24275,'FRANCIS','PENARD','penard33@free.fr',NULL,1,0,0),(24276,'julie','HUARTE','pequenica@hotmail.fr',NULL,1,0,0),(24277,'melanie','PEREIRA','pereira-melanie@laposte.net',NULL,1,0,0),(24278,'perrine','PETIT','perrinelepetit@hotmail.fr',NULL,1,0,0),(24279,'CORINNE','LEPETIT','perrinelepetit@hotmail.fr',NULL,1,0,0),(24280,'lucie','PERROTIN','perrotin.lucie@gmail.com',NULL,1,0,0),(24281,'DANIEL','TIBI','petitpoucet.bx@gmail.com',NULL,1,0,0),(24282,'MARIE','ALLIGANT','phil-telle@orange.fr',NULL,1,0,0),(24283,'PHILIPPE','AURIOL','philippe.auriol@wanadoo.fr',NULL,1,0,0),(24284,'PIERRE','ABGUILLERM','pierre.abg@hotmail.fr',NULL,1,0,0),(24285,'PIERRICK','LETALET','pierrick3309@hotmail.fr',NULL,1,0,0),(24286,'PASCALE','RUMEAU','prumeau@orange.fr',NULL,1,0,0),(24287,'claude','BOURNAC','pruneverte@hotmail.fr',NULL,1,0,0),(24288,'PELAGIE','GONZALEZ','ptourneur@yahoo.fr',NULL,1,0,0),(24289,'PIERRE','REBECQ','pybri33@free.fr',NULL,1,0,0),(24290,'','DE MONTAIGUT QUITTERIE','qdemontaigut@orange.fr',NULL,1,0,0),(24291,'','FOURNIER','quai.west@hotmail.fr',NULL,1,0,0),(24292,'QUENTIN','FEYRY','quentin_feyry@orange.fr',NULL,1,0,0),(24293,'QUENTIN','BUIL','quentin.buil@netcourrier.com',NULL,1,0,0),(24294,'MEGUERDITCHIAN','CHRISTINE','queylam@orange.fr',NULL,1,0,0),(24295,'RACHID','EZZAOUI','rachid.ezzaoui@gmail.com',NULL,1,0,0),(24296,'RANIA','DUFOUR','raniaga@hotmail.com',NULL,1,0,0),(24297,'RAPHAELLE','DECLAYE','raphaelle.declaye@hotmail.fr',NULL,1,0,0),(24298,'REINE','DUBEDOUT','rdubedout@free.fr',NULL,1,0,0),(24299,'REGIS','VITRY','regis.vitry@orange.fr',NULL,1,0,0),(24300,'','BATTUT','relais.du.grand.parc@cegetel.net',NULL,1,0,0),(24301,'JOHANA','RODRIGUES','rodrigues.johana@gmail.com',NULL,1,0,0),(24302,'Romain','LABADIE','romainlabadie@outlook.fr',NULL,1,0,0),(24303,'ROSA','ROULLEAU','rosa.roulleau@laposte.net',NULL,1,0,0),(24304,'CAQUINEAU','DOMINIQUE','rosedessables911@hotmail.fr',NULL,1,0,0),(24305,'GREGOIRE','DE PIANELLI','roy2p@sfr.fr',NULL,1,0,0),(24306,'sylvie','GERCHENZON','s_gerchenzon@hotmail.fr',NULL,1,0,0),(24307,'','GLANES','s.glanes@eccta.fr',NULL,1,0,0),(24308,'simon','LECOEUR','s.lecoeur111@gmail.com',NULL,1,0,0),(24309,'','MAINGUY','s.mainguy@orange.fr',NULL,1,0,0),(24310,'SALACROUP','CHARLES','salacroup.charles@orange.fr',NULL,1,0,0),(24311,'CHARLES','SALACROUP','salacroup.charles@orange.fr',NULL,1,0,0),(24312,'SALOME','FAYE','salomefaye@gmail.com',NULL,1,0,0),(24313,'samiha','MAZE','samihamaze@yahoo.fr',NULL,1,0,0),(24314,'SAMIRA','ABIB','samira.92100@hotmail.fret',NULL,1,0,0),(24315,'SAMIR','YOUYOU','samiryouyou@yahoo.fr',NULL,1,0,0),(24316,'IKRAM','SAMOUDI','samoudiikram@yahoo.fr',NULL,1,0,0),(24317,'GABRIEL','MELON','samugab33@live.fr',NULL,1,0,0),(24318,'SANDRINE','AUCHER','sandrine.aucher@laposte.net',NULL,1,0,0),(24319,'SANDRINE','COUDERC','sandrine.blaize@orange.fr',NULL,1,0,0),(24320,'SANDRINE','URUTY','sandrine.uruty@caissedesdepots.fr',NULL,1,0,0),(24321,'celia','SANZ','sanz.celia33@gmail.com',NULL,1,0,0),(24322,'SYLVIE','DOISY','sdoisy@wanadoo.fr',NULL,1,0,0),(24323,'ARMELLE','SAUNIER','seramar33@orange.fr',NULL,1,0,0),(24324,'Serena','CONTI','serenaconti2@hotmail.com',NULL,1,0,0),(24325,'SEVERINE','NAIRAC','sevdebayser@yahoo.fr',NULL,1,0,0),(24326,'SEVERINE','NOLIBOIS','severine.nolibois@hotmail.fr',NULL,1,0,0),(24327,'VILLATE','SEVERINE','severine.villate@gmail.com',NULL,1,0,0),(24328,'STEPHANIE','GIREME','sgireme@voila.fr',NULL,1,0,0),(24329,'SIMON','TOULET','simontoulet@gmail.com',NULL,1,0,0),(24330,'','AMEUR','simoxam@yahoo.fr',NULL,1,0,0),(24331,'SIMON','PASCALE','simpascale@hotmail.fr',NULL,1,0,0),(24332,'NAZHA','SIVRI','sivri@live.fr',NULL,1,0,0),(24333,'KIRA','SEMENOFF','slkira@yahoo.fr',NULL,1,0,0),(24334,'SOPHIE','CHAUVIER','sophie.chauvier@sfr.fr',NULL,1,0,0),(24335,'','DAIGNAN','sophie.daignan@laposte.net',NULL,1,0,0),(24336,'SOPHIE','DALGE','sophiedalge@hotmail.com',NULL,1,0,0),(24337,'SOPHIE','GIRAULT','sophilz@live.fr',NULL,1,0,0),(24338,'SARAH','DOS SANTOS','soumdossantos@hotmail.com',NULL,1,0,0),(24339,'KEVIN','SOUPRAYEN','srkevin@me.com',NULL,1,0,0),(24340,'STEPHANIE','LEGRAND','stef_legrand@hotmail.com',NULL,1,0,0),(24341,'STEFFI','LASSEGUES','steffi.lassegues@hotmail.fr',NULL,1,0,0),(24342,'STEPHANIE','SIMONET','stephanie.simonet@gmail.com',NULL,1,0,0),(24343,'STEPHANIE','DELORT','stephaniedelort@yahoo.fr',NULL,1,0,0),(24344,'GILLES','LAURENT','svt.laurent@orange.fr',NULL,1,0,0),(24345,'SYLVAIN','MEREAU','sylvain.mereau@live.fr',NULL,1,0,0),(24346,'SYLVIE','ROUSSEAU','sylvie-r.rousseau@edf.fr',NULL,1,0,0),(24347,'SYLVIE','LEGRAND','sylvie.legrand.sl@wanadoo.fr',NULL,1,0,0),(24348,'SYLVIE','LUZEUX','sylvie.luzeux@wanadoo.fr',NULL,1,0,0),(24349,'sylvie','LEVRAUD','sylvie.ratineau-levraud@orange.fr',NULL,1,0,0),(24350,'SYLVIE','ROULET','sylvie.roulet@gmail.com',NULL,1,0,0),(24351,'TALAHYSS','CHEN','t.chen@hotmail.fr',NULL,1,0,0),(24352,'tassin','thomas','t.tassin@free.fr',NULL,1,0,0),(24353,'ASHLEY','TAUPIN','taupin.ashley@gmail.com',NULL,1,0,0),(24354,'JULIE','TAURELLE','taurellejuly@hotmail.fr',NULL,1,0,0),(24355,'TEGAWENDE','OUEDRAOGO','tegafox@hotmail.com',NULL,1,0,0),(24356,'MONIQUE','TAUZIN','thara.sa@free.fr',NULL,1,0,0),(24357,'SOULYVANE','THONGSAMOUTH','thelaogurl@hotmail.com',NULL,1,0,0),(24358,'THIBAULT','FRUH','thibault.fruh@ece-france.com',NULL,1,0,0),(24359,'THIBAUT','BOURRICAUD','thibaut.bourricaud@hotmail.fr',NULL,1,0,0),(24360,'THIERRY','LACOSTE','thierry.lacoste@yahoo.fr',NULL,1,0,0),(24361,'THOMAS','GUILLAUME','thomas_gk@hotmail.com',NULL,1,0,0),(24362,'laetitia','NAPOLITANO','tizia1310@hotmail.fr',NULL,1,0,0),(24363,'LAURENCE','LOUBES','tonybillard@orange.fr',NULL,1,0,0),(24364,'Octave','BIDOU','tooptit@gmail.com',NULL,1,0,0),(24365,'MARILYN','DE SANTI','topolino641@gmail.com',NULL,1,0,0),(24366,'Mikael','TRAORE','traore.mikael@gmail.com',NULL,1,0,0),(24367,'Tristan','Ligou','tristan.ligou@gmail.com',NULL,1,0,0),(24368,'SPAMPINATO','','umberto.spampinato@sfr.fr',NULL,1,0,0),(24369,'valerie','POTHET','v.pothet@gmail.com',NULL,1,0,0),(24370,'VALERIE','CHAUMONT','valerie-chaumont@orange.fr',NULL,1,0,0),(24371,'VALERIE','DE BUHAN','valeriealias@sfr.fr',NULL,1,0,0),(24372,'VALENTINE','BARTOLA','valou_33.bartola@me.com',NULL,1,0,0),(24373,'REYNAERT','VANESSA','vanessa-reynaert@wanadoo.fr',NULL,1,0,0),(24374,'VANESSA','BODSON','vanessa.bodson.dasilva@gmail.com',NULL,1,0,0),(24375,'VANESSA','DUREISSEIX','vanessa04@gmail.com',NULL,1,0,0),(24376,'VERONIQUE','DESHAIES','vd_haies@hotmail.com',NULL,1,0,0),(24377,'VERONIQUE','ALVES','vero.barros.alves@gmail.com',NULL,1,0,0),(24378,'VERONIQUE','PELTIER','vero.peltier@yahoo.fr',NULL,1,0,0),(24379,'VERONIQUE','DE BALANDA','veronique.balanda@wanadoo.fr',NULL,1,0,0),(24380,'VERONIQUE','PELUCHON','veronique.peluchon@free.fr',NULL,1,0,0),(24381,'victorien','ADINGRA','victorien.adingra@orange-ftgroup.com',NULL,1,0,0),(24382,'MARIE','BADIE','vigean-metaux-comptoir-du-grand-parc@orange.fr',NULL,1,0,0),(24383,'Philippe','Larche','vintexphil@hotmail.fr',NULL,1,0,0),(24384,'VIOLAINE','PINAUD','violaine.pinaud@laposte.net',NULL,1,0,0),(24385,'VIOLETTE','LADOIRE','violetteladoire@orange.fr',NULL,1,0,0),(24386,'virginie','BESSE','virginie.besse@gmail.com',NULL,1,0,0),(24387,'VIVANDE','FAGNONI','vivande.f@hotmail.fr',NULL,1,0,0),(24388,'VIRGINIE','LINXE','vlinxe@yahoo.fr',NULL,1,0,0),(24389,'Viane','ROUSSILLON','vrouss5018@aol.com',NULL,1,0,0),(24390,'HASSANE','WANDIANGA','wandianga@msn.com',NULL,1,0,0),(24391,'XAVIER','AMBRY','xavier.ambry@orange.fr',NULL,1,0,0),(24392,'YANIS','DALI','yanis.dali.gh@gmail.com',NULL,1,0,0),(24393,'','LECOMMANDOUX','yann.lecommandoux@gmail.com',NULL,1,0,0),(24394,'YANN','PUKICA','yann.pukica@free.fr',NULL,1,0,0),(24395,'YANN','CHAIGNE','yannchaigne@gmail.com',NULL,1,0,0),(24396,'JULIE','DENCAUSSE','youli@live.fr',NULL,1,0,0),(24397,'YOUNES','KERROUM','younkerr@gmail.com',NULL,1,0,0),(24398,'ZANETA','SERGOT','zanett.sergot@gmail.com',NULL,1,0,0),(24399,'OLIVIA','ETCHECHOURY','zitounia64@hotmail.fr',NULL,1,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (1,'2014-12-10 00:00:00','Xavier Gonzalez','xavier@gonzalez.pm','Un accueil génial, des cours au top, très belle salle et prof très pro et sympa',1),(2,'2014-12-10 00:00:00','Frederic Lesca','fredericlesca@iconeo.fr','Un accueil et un suivi hors paire, très beau lieu, très convivial',0),(8,'2015-01-08 00:00:00','2014 - factures','dcd','dcddc',0);
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
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (10,'2015-01-01 00:00:00','Trés bonne année à tous !','Cette année Votre club modifie complètement son image avec une communication à l\'image du club moderne et dynamique. Suivez notre actualité et les évenements du club. ','<p><strong>Nouveau site</strong></p>\r\n<p>Votre club modifie compl&egrave;tement son image avec une communication &agrave; l\'image du club moderne et dynamique. Suivez notre actualit&eacute; et les &eacute;venements du club.</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p>&nbsp;<img src=\"/uploads/DSC01984.jpg\" alt=\"\" width=\"413\" height=\"309\" /></p>'),(15,'2015-01-16 00:00:00','Très bonne année à tous l','ddd','<p><img src=\"/uploads/logo.png\" alt=\"\" width=\"463\" height=\"80\" />ddddd</p>');
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
INSERT INTO `planning` VALUES (1,'Période 2014 - 2015','/uploads/planning/planningbig.jpg','/uploads/planning/programme_bsport.pdf');
/*!40000 ALTER TABLE `planning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-11 11:15:54
