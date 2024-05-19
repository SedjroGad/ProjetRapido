-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 20 mai 2024 à 01:25
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rapido`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenoms` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `sexe` varchar(5) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `nom`, `prenoms`, `email`, `telephone`, `sexe`, `mot_de_passe`, `createdAt`, `updatedAt`) VALUES
(1, 'ABALO', 'Jean-Claude', 'kotchikpa2000@gmail.com', '94739951', 'M', '04ca983d8267b7d7f1762437f7ab4a78', '2024-05-19 15:41:03', '2024-05-19 15:41:03'),
(2, 'ABALO', 'Jean-Claude', 'kotchikpa2000@gmail.com', '94739951', 'M', '04ca983d8267b7d7f1762437f7ab4a78', '2024-05-19 15:57:54', '2024-05-19 15:57:54'),
(3, 'ABALO', 'Jean-Claude', 'kotchikpa2000@gmail.com', '94739951', 'M', '04ca983d8267b7d7f1762437f7ab4a78', '2024-05-19 20:01:07', '2024-05-19 20:01:07'),
(4, 'ABALO', 'Jean-Claude', 'kotchikpa2000@gmail.com', '94739951', 'M', '04ca983d8267b7d7f1762437f7ab4a78', '2024-05-19 20:09:13', '2024-05-19 20:09:13'),
(5, 'ALOHOUTADE', 'Norbert', 'gadnorbibi@gmail.com', '69254094', 'M', '5e6e3ce911add3531eb0a6908a42af9f', '2024-05-19 21:00:50', '2024-05-19 21:00:50'),
(6, 'ALOHOUTADE', 'Norbert', 'gadnorbibi@gmail.com', '69254094', 'M', '5e6e3ce911add3531eb0a6908a42af9f', '2024-05-19 21:48:55', '2024-05-19 21:48:55'),
(7, 'ALOHOUTADE', 'Norbert', 'gadnorbibi@gmail.com', '69254094', 'M', '5e6e3ce911add3531eb0a6908a42af9f', '2024-05-19 22:50:06', '2024-05-19 22:50:06');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeurs`
--

CREATE TABLE `chauffeurs` (
  `chauffeur_id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenoms` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `sexe` varchar(5) NOT NULL,
  `disponible` int(11) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admin_created_id` int(11) DEFAULT NULL,
  `admin_updated_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `chauffeurs`
--

INSERT INTO `chauffeurs` (`chauffeur_id`, `nom`, `prenoms`, `telephone`, `sexe`, `disponible`, `mot_de_passe`, `email`, `admin_created_id`, `admin_updated_id`, `createdAt`, `updatedAt`) VALUES
(1, 'Roberto', 'Carlos', '56321478', 'M', 1, '6fb5de882ac14b120c18761e50bc42d7', 'rob@gmail.com', 5, NULL, '2024-05-19 22:12:05', '2024-05-19 22:17:17'),
(2, 'hurberte', 'puto', '41256589', 'F', 0, 'a250dff060de8c13e6edb6c1467db18f', 'hubto@gmail.com', 5, NULL, '2024-05-19 22:13:17', '2024-05-19 22:13:17'),
(3, 'Franchesca', 'Gracis', '15468796', 'F', 1, '376b3f5cc49067e5bb61f578801158f7', 'franchis@gmail.com', 5, NULL, '2024-05-19 22:14:19', '2024-05-19 22:17:25'),
(4, 'Poutine ', 'Sado', '69857412', 'M', 0, '4dbd635364de3efa3a0df3f8c4b0f27a', 'sadopou@gmail.com', 5, NULL, '2024-05-19 22:15:11', '2024-05-19 22:15:11');

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `point_depart` varchar(255) NOT NULL,
  `point_arrivee` varchar(255) NOT NULL,
  `date_heure` datetime NOT NULL,
  `chauffeur_id` int(11) DEFAULT NULL,
  `operateur_id` int(11) DEFAULT NULL,
  `admin_created_id` int(11) DEFAULT NULL,
  `admin_updated_id` int(11) DEFAULT NULL,
  `statut` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`course_id`, `point_depart`, `point_arrivee`, `date_heure`, `chauffeur_id`, `operateur_id`, `admin_created_id`, `admin_updated_id`, `statut`, `createdAt`, `updatedAt`) VALUES
(1, 'Cotonou', 'porto', '2024-05-15 02:20:00', 3, NULL, 5, NULL, 1, '2024-05-19 22:16:03', '2024-05-19 22:17:25'),
(2, 'Dangbo', 'porto', '2024-05-30 04:22:00', 1, NULL, 5, NULL, 2, '2024-05-19 22:16:50', '2024-05-19 22:23:16'),
(3, 'Cotonou', 'Dangbo', '2024-05-08 01:22:00', NULL, NULL, 5, NULL, 0, '2024-05-19 22:18:10', '2024-05-19 22:18:10'),
(4, 'Natitingou', 'Dangbo', '2024-05-01 12:18:00', NULL, NULL, 5, NULL, 0, '2024-05-19 22:18:56', '2024-05-19 22:18:56');

-- --------------------------------------------------------

--
-- Structure de la table `operateurs`
--

CREATE TABLE `operateurs` (
  `operateur_id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenoms` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `sexe` varchar(5) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `operateurs`
--

INSERT INTO `operateurs` (`operateur_id`, `nom`, `prenoms`, `telephone`, `sexe`, `mot_de_passe`, `email`, `creator_id`, `createdAt`, `updatedAt`) VALUES
(1, 'Sandro', 'Toni', '94739951', 'M', '3de8b5c49be52ac83fc997fc171aca93', 'sandrotoni@gmail.com', 1, '2024-05-19 20:14:56', '2024-05-19 20:14:56'),
(2, 'Paulin', 'Guidjinotchov', '98784512', 'M', '340a4af6f5488ef511e17e5eefd051ce', 'paulinov@gmail.com', 1, '2024-05-19 20:15:54', '2024-05-19 20:15:54'),
(3, 'Gad', 'Sedjro', '74586321', 'M', 'b1b8d0ba81ab9b01f284dcde8efcf790', 'gadsedjro@gmail.com', 1, '2024-05-19 20:17:02', '2024-05-19 20:17:02');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `chauffeurs`
--
ALTER TABLE `chauffeurs`
  ADD PRIMARY KEY (`chauffeur_id`),
  ADD KEY `admin_created_id` (`admin_created_id`),
  ADD KEY `admin_updated_id` (`admin_updated_id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `chauffeur_id` (`chauffeur_id`),
  ADD KEY `operateur_id` (`operateur_id`),
  ADD KEY `admin_created_id` (`admin_created_id`),
  ADD KEY `admin_updated_id` (`admin_updated_id`);

--
-- Index pour la table `operateurs`
--
ALTER TABLE `operateurs`
  ADD PRIMARY KEY (`operateur_id`),
  ADD KEY `creator_id` (`creator_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `chauffeurs`
--
ALTER TABLE `chauffeurs`
  MODIFY `chauffeur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `operateurs`
--
ALTER TABLE `operateurs`
  MODIFY `operateur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chauffeurs`
--
ALTER TABLE `chauffeurs`
  ADD CONSTRAINT `chauffeurs_ibfk_1` FOREIGN KEY (`admin_created_id`) REFERENCES `admin_table` (`admin_id`),
  ADD CONSTRAINT `chauffeurs_ibfk_2` FOREIGN KEY (`admin_updated_id`) REFERENCES `admin_table` (`admin_id`);

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`chauffeur_id`) REFERENCES `chauffeurs` (`chauffeur_id`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`operateur_id`) REFERENCES `operateurs` (`operateur_id`),
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`admin_created_id`) REFERENCES `admin_table` (`admin_id`),
  ADD CONSTRAINT `courses_ibfk_4` FOREIGN KEY (`admin_updated_id`) REFERENCES `admin_table` (`admin_id`);

--
-- Contraintes pour la table `operateurs`
--
ALTER TABLE `operateurs`
  ADD CONSTRAINT `operateurs_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `admin_table` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
