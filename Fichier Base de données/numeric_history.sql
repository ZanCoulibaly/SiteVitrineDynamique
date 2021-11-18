-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 13:54
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `personnagesId` int(11) NOT NULL,
  `nom_complet` varchar(35) NOT NULL,
  `nom_image` varchar(150) NOT NULL,
  `historique` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`personnagesId`, `nom_complet`, `nom_image`, `historique`) VALUES
(
  1, 
 'Bill Gates', 
 'assets\\images\\BillGates.jpg', 
 'William Henry Gates III, dit Bill Gates [bɪl ɡeɪts]1, né le 28 octobre 1955 à Seattle (État de Washington), est un informaticien, entrepreneur et milliardaire américain.'
),
(
  2, 
  'Steve Jobs', 
  'assets/images/steve-jobs.png',
  'Steve Jobs, né le 24 février 1955 à San Francisco (Californie) et mort le 5 octobre 2011 à Palo Alto (dans le même État), est un entrepreneur et inventeur américain.'
),
(
  3, 
  'Tim Berners Lee',
  'assets/images/Tim.jpeg',
  'Timothy John Berners-Lee, né le 8 juin 1955 à Londres, est un informaticien britannique, principal inventeur du World Wide Web (WWW) au tournant des années 1990 lors de ses travaux au CERN. '
),
(
  4,
  'Mark Zuckerberg',
  'assets/images/facebooCEO.jpg', 
  'Mark Elliot Zuckerberg [mɑɹk ˈeliət ˈzʌkərbɜːrɡ]1, né le 14 mai 1984 à White Plains dans l\'État de New York, est un informaticien, chef d\'entreprise et milliardaire américain. Il est le cofondateur du site et réseau social Facebook en 2004, dont il est l\'actionnaire majoritaire et également le président-directeur général.\r\n\r\nLe magazine Forbes le classe 8e fortune mondiale en 2019, estimée à 74,1 milliards de dollars.\r\nFils de Karen (née Kempner), psychiatre, et d\'Edward Zuckerberg (en), dentiste, Mark Zuckerberg naît en 1984 à White Plains, New York, dans une famille juive américaine. Avec ses trois sœurs, Randi, Donna, et Arielle, il est élevé à Dobbs Ferry, New York. Il commence à écrire des programmes informatiques au collège.\r\n\r\nCréation de Facebook\r\n\r\nMark Zuckerberg et Robert Scoble en 2008.\r\nLa première version de Facebook est lancée le 4 février 2004 avec l\'aide de Dustin Moskovitz, Eduardo Saverin et Chris Hughes2. Mark Zuckerberg est daltonien, mais la couleur bleue est celle qu\'il voit le mieux. C\'est donc celle qu\'il a choisie pour représenter son site3. Le succès est immédiat auprès des autres élèves de l\'université. L’accès est graduellement autorisé à d\'autres universités (principalement de l\'Ivy League), puis aux écoles du secondaire, et enfin au grand public. Le succès est partout au rendez-vous.\r\n\r\nCependant, des étudiants de Harvard (les frères Cameron et Tyler Winklevoss, ainsi que Divya Narendra (en)) attaquent Facebook en justice, un mois après son lancement. Ils avaient, en effet, commencé depuis plusieurs mois à développer un autre site de réseau social : le Harvardconnection. En octobre 2003, ils avaient associé Mark Zuckerberg à leur projet, avec pour mission de finir les codes sources du site et de le rendre fonctionnel. Zuckerberg, lié par un « accord verbal » et dès lors considéré comme associé du site, en avait profité pour développer de son côté en quelques semaines le site The Facebook, sans travailler sur le projet commun comme prévu, mentionnant un problème : « Je me demande si le site offre assez de fonctionnalités pour vraiment attirer l\'attention et obtenir l\'influence nécessaire pour qu\'un tel site puisse rouler ». Un procès lui est intenté dès mars 2004, annulé pour raisons techniques en mars 2007. Une nouvelle plainte est déposée et la procédure fait l\'objet d\'un accord à l\'amiable entre les différentes parties : le 25 juin 2008, Facebook a payé plus de 65 millions de dollars aux ex-compagnons de classe de Mark Zuckerberg4. Selon Alexa Internet, Facebook est le deuxième site le plus visité au monde. Mark Zuckerberg possède 24 % des parts de sa société.\r\n\r\nCEO de Facebook\r\nSelon le Wall Street Journal, en mai 2009, un investisseur russe aurait proposé 200 millions de dollars afin de porter le capital de l\'entreprise à 10 milliards de dollars à condition de disposer d\'un siège au conseil d\'administration. Mark Zuckerberg aurait refusé, car il déclare n\'être ouvert qu\'à des propositions offrant davantage de latitude à son réseau social.'
),
(
  6, 
  'Ada Lovelace', 
  'assets/images/figaro.jpeg', 
  'Ada Lovelace, de son nom complet Augusta Ada King, comtesse de Lovelace, née Ada Byron le 10 décembre 1815 à Londres et morte le 27 novembre 1852 à Marylebone dans la même ville, est une pionnière de la science informatique.\r\n\r\nElle est principalement connue pour avoir réalisé le premier véritable programme informatique, lors de son travail sur un ancêtre de l\'ordinateur : la machine analytique de Charles Babbage. Dans ses notes, on trouve en effet le premier programme publiéWoolley 1, destiné à être exécuté par une machine, ce qui fait considérer Ada Lovelace comme « le premier programmeur du monde1 ». Elle a également entrevu et décrit certaines possibilités offertes par les calculateurs universels, allant bien au-delà du calcul numérique et de ce qu\'imaginaient Babbage et ses contemporainsWoolley 2,Swade 1.\r\n\r\nElle est assez connue dans les pays anglo-saxons et en Allemagne, notamment dans les milieux féministes ; elle est moins connue en France, mais de nombreux développeurs connaissent le langage Ada, nommé en son honneur.\r\nAda était la seule fille légitime du poète George Gordon Byron et de son épouse Annabella Milbanke, une femme intelligente et cultivée, cousine de Caroline Lamb, dont la liaison avec Byron fut à l\'origine d\'un scandale. Le premier prénom d\'Ada, Augusta, aurait été choisi en hommage à Augusta Leigh, la demi-sœur de Byron, avec qui ce dernier aurait eu des relations incestueusesSwade 2. Le prénom Ada aurait été choisi par Byron lui-mêmeStein 1, car il était « court, ancien et vocalique »Wolfram 1. C\'est Augusta qui encouragea Byron à se marier pour éviter un scandale, et il épousa Annabella à contrecœur[réf. souhaitée], en janvier 1815. Ada naît en décembre de cette même année. À la suite de quatre tentatives de viol en état d\'ivresse de la part de ByronSwade 2, Annabella quitte Byron le 16 janvier 1816, gardant Ada avec elle. Le 21 avril, Byron signe l\'acte de séparation, puis quitte le Royaume-Uni pour toujours. Il ne les revit jamais.\r\n\r\nAnnabella adorait les mathématiques. Byron l’appelait même parfois « la princesse des parallélogrammesSwade 2 ». Annabella fit en sorte que les tuteurs d\'Ada lui donnent une éducation approfondie en mathématiques et en sciences, ce qui était tout à fait inhabituel à l\'époque dans l\'éducation d\'une jeune fille de la noblesse. En 1832, Ada rencontre Mary Somerville, éminente chercheuse et auteur scientifique du xixe siècle, qui l\'encourage et l\'aide à progresser en mathématiques. Le 5 juin 1833, Mary lui présente Charles Babbage, et Ada — alors âgée de 17 ans — est immédiatement fascinée par ses machines à calcul.'
),
(
  7,
  'Rasmus Lerdorf', 
  'assets\\images\\rasmus.jpg', 
  'Rasmus Lerdorf, né le 22 novembre 1968 à Qeqertarsuaq au Groenland, est un programmeur groenlandais et canadien principalement connu pour être l\'auteur de la première version du langage de programmation PHP.\r\n\r\nEntre 1985 et 1994, Lerdorf a travaillé sur divers projets Unix.\r\n\r\nPar la suite, Rasmus a également participé au développement ultérieur de PHP dont la direction était alors assumée par Andi Gutmans et Zeev Suraski, qui fondèrent plus tard Zend Technologies.\r\n\r\nEn 1993, il a décroché une maîtrise en ingénierie des systèmes à l\'université de Waterloo (Canada).\r\n\r\nDe 2002 à 2009, Lerdorf a été employé comme ingénieur chez Yahoo! et depuis 2012 travaille chez Etsy.'
);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`personnagesId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `personnagesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
