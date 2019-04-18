/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 10.1.34-MariaDB : Database - bd_systeme_scolaire
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bd_systeme_scolaire` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bd_systeme_scolaire`;

/*Table structure for table `eleve` */

DROP TABLE IF EXISTS `eleve`;

CREATE TABLE `eleve` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) NOT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `date_nais` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `addresse` varchar(255) DEFAULT NULL,
  `age` int(25) DEFAULT NULL,
  `niveau` varchar(255) DEFAULT NULL,
  `filiere` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `eleve` */

insert  into `eleve`(`id`,`matricule`,`nom`,`prenom`,`sexe`,`date_nais`,`nationalite`,`addresse`,`age`,`niveau`,`filiere`) values (1,'15T2778','KUETE ','Brandol','Masculin','0000-00-00','Camerounais','Obili,Yaound',20,'Niveau 3','Informatique'),(2,'15V1247','TABOUA','Francklin','Masculin','0000-00-00','Camerounais','Olembe,Yaounde',24,'Niveau 4','Genie civil'),(3,'02uds12','LACTIO','Kevin','Masculin','0000-00-00','Camerounais','Obili,Yaounde',25,'Niveau 3','Analyse-Conception'),(4,'12T4571','ONAMBA','Deborah','Feminin','0000-00-00','Nigerienne','Oke,Lagos',27,'Niveau 5','Sciences economique'),(5,'18V2598','MELONG MELI','Junior','Masculin','0000-00-00','CAmerounais','Etoudi/Yaoundé',20,'','Mathématiques'),(6,'18Z4578','Tamo','Morel','Masculin','0000-00-00','Camerounais','Buéa',22,'','Mathématiques'),(7,'14X2778','Kuete','Brice','Masculin','0000-00-00','Camerounais','Bonaberi/Douala',20,'','Informatique'),(8,'1255554AAA','Atangana','Jean de Dieu','Masculin','0000-00-00','Camerounais','Bastos/Yaoundé',21,'L3','Philosophie'),(9,'002019A','Messina','Bienvenue','Masculin','0000-00-00','Camerounais','Bafoussam',23,'L2','Anglais'),(10,'kiyur4556','kuete','brandol',NULL,NULL,'Camerounais','Yaounde',28,'3','Informatique'),(11,'15Y1487','Sogbou','Keliane','Féminin','2000/01/18','Camerounaise','Bafoussam',19,'niveau 1','Physiques'),(12,'0014g2','Kenfack','jeanne','Féminin','1998/01/01','Camerounaise','Douala',21,'niveau 1','Chimie'),(13,'10114587','Abdel-Aziz','Ali','Masculin','2000/01/14','Camerounais','Edéa',19,'niveau 1','Français'),(14,'00015H5','Titi','Tati','on',NULL,'Camerounaise','Bafoussam',35,'Niveau 3','Chimie'),(15,'0001H87','Titi','Tati','on',NULL,'Camerounaise','Bafoussam',25,'Niv 2','Chimie'),(16,'14pk98','Aminatou','Saiira','on',NULL,'Camerounaise','Maroua',30,'Niveau 1','Mathématiques');

/*Table structure for table `enseignant` */

DROP TABLE IF EXISTS `enseignant`;

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `date_nais` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `addresse` varchar(255) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `situationMat` varchar(255) DEFAULT NULL,
  `specialite` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `salaire` float DEFAULT NULL,
  PRIMARY KEY (`id`,`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `enseignant` */

insert  into `enseignant`(`id`,`matricule`,`nom`,`prenom`,`sexe`,`date_nais`,`nationalite`,`addresse`,`age`,`situationMat`,`specialite`,`grade`,`email`,`telephone`,`salaire`) values (1,'01EN10','KOUOKAM','Andre','Masculin','12-04-1955','Camerounais','Maetur/Bafoussam',63,'','Francais','Professeur','kouokam@yahoo.fr','655874521',80000),(2,'02EN20','Kankeu Fowe','Marcel','Masculin','25-04-1982','Camerounais','Toket/Bafoussam',36,'','Physique','Charge de cours','marcelfowe@yahoo.fr','697458541',100000),(3,'05EN58','ONANA','Veronique','Feminin','14-02-1981','Camerounaise','Bastos/Yaounde',37,'','Mathematique','Pleg','veroniqonana@gmail.com','658745123',102000),(10,'1502778','Kuete','Brandol','Masculin','1998/01/06','Camerounais','Yaounde',21,'Célibataire','Mathématiques','Docteur','brandolkuete@yahoo.fr','675707475',300000),(11,'0012458','Fouomene','Daniel','Masculin','2019/01/25','Camerounais','Yaoundé',35,'Marié','Informatique','Docteur','fouomenedaniel@gmail.coml','652147895',350000);

/*Table structure for table `enseignement` */

DROP TABLE IF EXISTS `enseignement`;

CREATE TABLE `enseignement` (
  `id_enseignant` int(11) DEFAULT NULL,
  `id_matiere` int(11) DEFAULT NULL,
  KEY `id_enseignant` (`id_enseignant`),
  KEY `id_matiere` (`id_matiere`),
  CONSTRAINT `enseignement_ibfk_3` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enseignement_ibfk_4` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `enseignement` */

insert  into `enseignement`(`id_enseignant`,`id_matiere`) values (3,2);

/*Table structure for table `matiere` */

DROP TABLE IF EXISTS `matiere`;

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(8) DEFAULT NULL,
  `intitulé` varchar(30) DEFAULT NULL,
  `coef` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `matiere` */

insert  into `matiere`(`id`,`code`,`intitulé`,`coef`) values (1,'Math','Mathematiques',4),(2,'Ang','Angalais',3);

/*Table structure for table `note` */

DROP TABLE IF EXISTS `note`;

CREATE TABLE `note` (
  `id_eleve` int(10) DEFAULT NULL,
  `id_matiere` int(10) DEFAULT NULL,
  `valeur` float DEFAULT NULL,
  `appreciation` varchar(15) DEFAULT NULL,
  KEY `note_ibfk_1` (`id_eleve`),
  KEY `note_ibfk_2` (`id_matiere`),
  CONSTRAINT `note_ibfk_1` FOREIGN KEY (`id_eleve`) REFERENCES `eleve` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `note_ibfk_2` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `note` */

insert  into `note`(`id_eleve`,`id_matiere`,`valeur`,`appreciation`) values (1,1,10,'Passable'),(1,2,15,'Bien');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
