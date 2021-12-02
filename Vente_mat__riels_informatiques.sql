-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 02 déc. 2021 à 11:16
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Vente matériels_informatiques`
--

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Adresse` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Facture`
--

CREATE TABLE `Facture` (
  `Id` int(11) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Quantité` int(11) NOT NULL,
  `PrixUnitaire` int(20) NOT NULL,
  `PrixTotal` int(20) NOT NULL,
  `Total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseur`
--

CREATE TABLE `Fournisseur` (
  `Id` int(20) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Sexe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Gerant`
--

CREATE TABLE `Gerant` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Sexe` varchar(20) NOT NULL,
  `Adresse` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Materiels`
--

CREATE TABLE `Materiels` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Serie` int(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Marque` varchar(20) NOT NULL,
  `Capacite` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Quantité`
--

CREATE TABLE `Quantité` (
  `Id` int(11) NOT NULL,
  `QuantiteEntree` int(20) NOT NULL,
  `QuantiteSortie` int(20) NOT NULL,
  `DateEntree` date NOT NULL,
  `DateSortie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Stock`
--

CREATE TABLE `Stock` (
  `Id` int(11) NOT NULL,
  `Quantite` int(20) NOT NULL,
  `MaterielStocke` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Facture`
--
ALTER TABLE `Facture`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Fournisseur`
--
ALTER TABLE `Fournisseur`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Gerant`
--
ALTER TABLE `Gerant`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Materiels`
--
ALTER TABLE `Materiels`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Quantité`
--
ALTER TABLE `Quantité`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Stock`
--
ALTER TABLE `Stock`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Facture`
--
ALTER TABLE `Facture`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Fournisseur`
--
ALTER TABLE `Fournisseur`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Gerant`
--
ALTER TABLE `Gerant`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Materiels`
--
ALTER TABLE `Materiels`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Quantité`
--
ALTER TABLE `Quantité`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Stock`
--
ALTER TABLE `Stock`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
