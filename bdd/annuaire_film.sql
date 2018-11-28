-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 28 Novembre 2018 à 16:47
-- Version du serveur :  10.3.11-MariaDB-1:10.3.11+maria~bionic-log
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire_film`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int(4) NOT NULL,
  `acteur` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_acteur` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`id`, `acteur`, `image_acteur`) VALUES
(1, 'Michael B. Jordan', '0'),
(2, 'Sylvester Stallone', '0'),
(3, 'Dolph Lundgren', '0'),
(4, 'Floriran Munteanu', '0'),
(5, 'Tessa Thompson', '0'),
(6, 'Wood Harris', '0'),
(7, 'Russell Hornsby', '0'),
(8, 'André Ward', '0'),
(9, 'Christian Clavier', '0'),
(10, 'Guillaume Briat', '0'),
(11, 'Alex Lutz', '0'),
(12, 'Alexandre Astier', '0'),
(13, 'Elie Semoun', '0'),
(14, 'Daniel Mesguich', '0'),
(15, 'Bernard Alane', '0'),
(16, 'Gérard Hernandez', '0'),
(17, 'Jon Foo', '0'),
(18, 'Kelly Overton', '0'),
(19, 'Cary-Hiroyuki Tagawa', '0'),
(20, 'Ian Anthony Dale', '0'),
(21, 'Luke Goss', '0'),
(22, 'Chiaki Kuriyama', '0'),
(23, 'Tamlyn Tomita', '0'),
(24, 'Gary Daniels', '0'),
(25, 'Liam Hemsworth', '0'),
(26, 'Jeff Goldblum', '0'),
(27, 'Bill Pullman', '0'),
(28, 'Jessie Usher', '0'),
(29, 'Maika Monroe', '0'),
(30, 'Vivica A.Fox', '0'),
(31, 'Sela Ward', '0'),
(32, 'William Fichtner', '0'),
(33, 'Amitabh Bachchan', '0'),
(34, 'Aamir Khan', '0'),
(35, 'Katrina Kaif', '0'),
(36, 'Lloyd Owen', '0'),
(37, 'Ronit Roy', '0'),
(38, 'Mohammed Zeeshan Ayyub', '0'),
(39, 'Sharat Saxena', '0'),
(40, 'Joe Azzopardi', '0'),
(41, 'Colin Farrel', '0'),
(42, 'Danny Devito', '0'),
(43, 'Eva Green', '0'),
(44, 'Michael Keaton', '0'),
(45, 'Nico Parker', '0'),
(46, 'Finley Hobbins', '0'),
(47, 'Joseph Gatt', '0'),
(48, 'Alan Arkin', '0'),
(49, 'Marie-France Pisier', '0'),
(50, 'Janusz Olejniczak', '0'),
(51, 'Sophie Marceau', '0'),
(52, 'Féodor Atkine', '0'),
(53, 'Noemi Nadelmann', '0'),
(54, 'Aurélien Recoing', '0'),
(55, 'Pavel Slaby', '0'),
(56, 'Grazyna Dylong', '0'),
(57, 'Akshay Kumar', '0'),
(58, 'Pawan Chopra', '0'),
(59, 'Kaizaad Kotwal', '0'),
(60, 'Narendra Jetley', '0'),
(61, 'Nimrat Kaur', '0'),
(62, 'Sameer Ali Khan', '0'),
(63, 'Stéphane Bak', '0'),
(64, 'Camélia Jordana', '0'),
(65, 'Olivier Giroud', '0'),
(66, 'Presnel Kimpembe', '0'),
(67, 'Shameik Moore', '0'),
(68, 'Jake Johnson', '0'),
(69, 'Hailee Steinfeld', '0'),
(70, 'Liev Schreiber', '0'),
(71, 'Mahershala Ali', '0'),
(72, 'Brian Tyree Henry', '0'),
(73, 'Luna Lauren Velez', '0'),
(74, 'Nicolas Cage', '0');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(4) NOT NULL,
  `titre` char(255) NOT NULL,
  `description` text NOT NULL,
  `annee` year(4) NOT NULL,
  `image_film` char(255) NOT NULL,
  `bande_annonce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `description`, `annee`, `image_film`, `bande_annonce`) VALUES
(1, 'Creed 2', 'La vie est devenue un numéro d\'équilibriste pour Adonis Creed entre ses obligations personnelles et son entraînement pour son prochain grand match. Et l\'enjeu du combat est d\'autant plus élevé que son rival est lié au passé de sa famille. Mais il peut compter sur Rocky Balboa à ses côtés...\n', 2019, 'img/films/creed2.jpg', 'https://www.youtube.com/embed/AdS5ux3G-Gc'),
(2, 'Asterix - le secret de la potion magique', 'À la suite d’une chute lors de la cueillette du gui, le druide Panoramix décide qu’il est temps d’assurer l’avenir du village. Accompagné d’Astérix et Obélix, il entreprend de parcourir le monde gaulois à la recherche d’un jeune druide talentueux à qui transmettre le Secret de la Potion Magique…\n', 2018, 'img/films/asterix.jpg', 'https://www.youtube.com/embed/gXbR3zonMRk'),
(3, 'Tekken', 'Adaptation cinématographique du jeu de combat japonais \"Tekken\" centrée sur l\'histoire de deux amis d\'enfance qui défient les combattants des quatre coins du globe.\n', 2010, 'img/films/tekken.jpg', 'https://www.youtube.com/embed/iPgNtmBukzA'),
(4, 'Independance Day : Resurgence', 'Nous avons toujours su qu\'ils reviendraient. La terre est menacée par une catastrophe d’une ampleur inimaginable. Pour la protéger, toutes les nations ont collaboré autour d’un programme de défense colossal exploitant la technologie extraterrestre récupérée. ', 2016, 'img/films/independance.jpg', 'https://www.youtube.com/embed/b577i7s2CiM'),
(5, 'Spider-Man : new Generation', 'présente Miles Morales, un adolescent vivant à Brooklyn, et révèle les possibilités illimitées du Spider-Verse, un univers où plus d’un peut porter le masque…', 2018, 'img/films/spider.jpg', 'https://www.youtube.com/embed/-AnN_Xg2Nps'),
(6, 'Thugs of Hindostan', 'La guerre pour la liberté sur terre se joue en pleine mer. Au 18ème siècle, la British Navy est confrontée à Khudabaksh, un \"Thug des mers\" qui se bat pour libérer son pays. Les anglais, ne sachant comment l\'affronter, font appelle à un autre Thug, Firangi Mallah.', 2018, 'img/films/thug.jpg', 'https://www.youtube.com/embed/zI-Pux4uaqM'),
(7, 'Dumbo', 'Les enfants de Holt Farrier, ex-artiste de cirque chargé de s’occuper d’un éléphanteau dont les oreilles démesurées sont la risée du public, découvrent que ce dernier sait voler…', 2019, 'img/films/dumbo.jpeg', 'https://www.youtube.com/embed/lhwAcdj3HKg'),
(8, 'La note bleue', 'Nohant 1846. Le dernier jour d\'une liaison qui dura huit ans entre George Sand et Frederic Chopin et qui vit naitre leurs plus belles oeuvres.', 1991, 'img/films/lanoteblue.jpg', 'https://www.youtube.com/embed/68MWEKc3Eo4'),
(9, 'Airlift', '02 août 1990 : les troupes irakiennes envahissent le Koweït. L\'Inde vote à l\'ONU les sanctions contre l\'Irak et, prend en charge l\'évacuation de la centaine de milliers de ses ressortissants expatriés. Ainsi l’Inde aura mis en place le plus grand pont aérien et humanitaire jamais organisé au monde.', 2016, 'img/films/aircraft.jpg', 'https://www.youtube.com/embed/vb5xCMbMfZ0');

-- --------------------------------------------------------

--
-- Structure de la table `film_acteur`
--

CREATE TABLE `film_acteur` (
  `film` int(4) NOT NULL,
  `acteur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_acteur`
--

INSERT INTO `film_acteur` (`film`, `acteur`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(5, 63),
(5, 64),
(5, 65),
(5, 66),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(6, 33),
(6, 34),
(6, 35),
(6, 36),
(6, 37),
(6, 38),
(6, 39),
(6, 40),
(7, 41),
(7, 42),
(7, 43),
(7, 44),
(7, 45),
(7, 46),
(7, 47),
(7, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(9, 57),
(9, 58),
(9, 59),
(9, 60),
(9, 61),
(9, 62);

-- --------------------------------------------------------

--
-- Structure de la table `film_genre`
--

CREATE TABLE `film_genre` (
  `film` int(4) NOT NULL,
  `genre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_genre`
--

INSERT INTO `film_genre` (`film`, `genre`) VALUES
(1, 1),
(1, 7),
(2, 2),
(2, 9),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(4, 10),
(5, 1),
(5, 2),
(6, 1),
(6, 6),
(7, 4),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(9, 6),
(9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `film_realisateur`
--

CREATE TABLE `film_realisateur` (
  `film` int(4) NOT NULL,
  `realisateur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_realisateur`
--

INSERT INTO `film_realisateur` (`film`, `realisateur`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(5, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 11),
(9, 12);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(4) NOT NULL,
  `type` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `type`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Arts Martiaux'),
(4, 'Aventure'),
(5, 'Biopic'),
(6, 'Bollywood'),
(7, 'Drame'),
(8, 'Romance'),
(9, 'Famille'),
(10, 'Science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(4) NOT NULL,
  `realisateur` char(255) NOT NULL,
  `image_realisateur` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `realisateur`, `image_realisateur`) VALUES
(1, 'Steven Caple Jr', 'img/films/steven.jpg'),
(2, 'Louis Clichy', 'img/films/louis.jpg'),
(3, 'Alexandre', 'img/films/alexandre.jpg'),
(4, 'Dwight H. Little', 'img/films/dwight.jpg'),
(5, 'Roland Emmerich', 'img/films/roland.jpg'),
(6, 'Bob Persichetti', 'img/films/bob.jpg'),
(7, 'Petter Ramsey', 'img/films/petter.jpg'),
(8, 'Rodney Rothman', 'img/films/rodney.jpg'),
(9, 'Vijay Krishna Acharya', 'img/films/vijay.jpg'),
(10, 'Tim Burton', 'img/films/tim.jpg'),
(11, 'Andrzej Zulawski', 'img/films/andrzej.jpg'),
(12, 'Raja Menon', 'img/films/raja.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
