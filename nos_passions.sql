-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 22 oct. 2020 à 11:45
-- Version du serveur :  5.7.26
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nos_passions`
--

-- --------------------------------------------------------

--
-- Structure de la table `aime`
--

CREATE TABLE `aime` (
  `num_personne` int(11) NOT NULL,
  `num_passion` int(11) NOT NULL,
  `intensite` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `aime`
--

INSERT INTO `aime` (`num_personne`, `num_passion`, `intensite`) VALUES
(1, 1, ''),
(1, 2, 'beaucoup'),
(1, 16, ''),
(2, 2, ''),
(3, 12, ''),
(4, 3, ''),
(5, 14, ''),
(7, 16, ''),
(8, 10, ''),
(8, 11, ''),
(9, 1, ''),
(9, 4, ''),
(10, 7, ''),
(11, 8, ''),
(11, 16, ''),
(13, 15, ''),
(14, 9, '');

-- --------------------------------------------------------

--
-- Structure de la table `passions`
--

CREATE TABLE `passions` (
  `numero` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `categorie` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `passions`
--

INSERT INTO `passions` (`numero`, `nom`, `categorie`) VALUES
(1, 'Basket', 'Sport'),
(2, 'Foot', 'Sport'),
(3, 'Course à pied', 'Sport'),
(4, 'Rugby', 'Sport'),
(5, 'Natation', 'Sport'),
(6, 'Musculation', 'Sport'),
(7, 'Roller', 'Sport'),
(8, 'Randonée', 'Sport'),
(9, 'Moto', 'Sport automobile'),
(10, 'Lecture', 'Culture'),
(11, 'Jeux videos', 'Loisirs'),
(12, 'Sorties dans des bars', 'Loisir'),
(13, 'Séries Télé', 'Loisir'),
(14, 'Soirée', 'Loisir'),
(15, 'Travail du bois', 'Art'),
(16, 'Chant', 'Art'),
(17, 'Musique', 'Art'),
(18, 'Cuisine', 'Art'),
(19, 'Piano', 'Art'),
(20, 'Cyclisme', 'Sport');

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `num` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`num`, `nom`) VALUES
(1, 'Ahmed'),
(2, 'Thibault'),
(3, 'Rémi'),
(4, 'Emmanuelle'),
(5, 'Yann'),
(6, 'Stéphane'),
(7, 'Laurélenne'),
(8, 'Axel'),
(9, 'Gérard'),
(10, 'Michel'),
(11, 'Saliha'),
(12, 'Jason'),
(13, 'Erik'),
(14, 'Jessy');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aime`
--
ALTER TABLE `aime`
  ADD PRIMARY KEY (`num_personne`,`num_passion`),
  ADD KEY `num_passion` (`num_passion`);

--
-- Index pour la table `passions`
--
ALTER TABLE `passions`
  ADD PRIMARY KEY (`numero`);

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `passions`
--
ALTER TABLE `passions`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aime`
--
ALTER TABLE `aime`
  ADD CONSTRAINT `aime_ibfk_1` FOREIGN KEY (`num_passion`) REFERENCES `passions` (`numero`),
  ADD CONSTRAINT `aime_ibfk_2` FOREIGN KEY (`num_personne`) REFERENCES `personnes` (`num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;