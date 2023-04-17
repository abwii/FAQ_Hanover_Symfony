-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 17 avr. 2023 à 08:58
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hanoverfaq`
--

-- --------------------------------------------------------

--
-- Structure de la table `hanoverfaq`
--

DROP TABLE IF EXISTS `hanoverfaq`;
CREATE TABLE IF NOT EXISTS `hanoverfaq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `summary` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `hanoverfaq`
--

INSERT INTO `hanoverfaq` (`id`, `category`, `summary`, `description`, `version`) VALUES
(1, 10, 'Lorem ipsum', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.', '1.0'),
(2, 11, 'Muspi merol', 'Counter-Strike 2 is the largest technical leap forward in Counter-Strike\'s history, ensuring new features and updates for years to come.', '2.0');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `lastname`, `firstname`, `created_at`, `roles`) VALUES
(1, 'wbacha95@gmail.com', '$2y$13$Ko.yrDY9qxv/hK3txul3YunS5.GQB1c0fS7owMEIzTHyBcCeFzRgG', 'wa', 'ad', '2023-04-06 11:42:59', '[]'),
(2, 'aze@aze.com', '$2y$13$v9X0e/Tkp7fTso4Kl6bRM.eqPiiBaMX5Drm1DgDD920eD5GMytQPO', 'b', 'a', '2023-04-06 11:50:29', '[]'),
(4, 'az@az.com', '$2y$13$Vg//LCZzdXnfSBfGjEv/Ee3qxIRilAVQC7dZhMQjFhmhYSe9ZgReK', 'aze', 'aze', '2023-04-06 12:04:08', '[]'),
(5, 'aa@aa.fr', '$2y$13$dzCdesBBfu76FjrKqas8auBVXYD55bT/IFrExp20bL9tbSZnKhge2', 'qsd', 'aze', '2023-04-06 12:18:52', '[]'),
(6, 'bb@bb.com', '$2y$13$6fMPkhmfdDQkJfQBTPz0tOCB26dNDOwxqIxEAZGc/s3xGr3OhAVPe', 'QSDF', 'AZE', '2023-04-06 12:19:12', '[]'),
(8, 'test@test.test', '$2y$13$qzCgzJNydNCOr3NyOZXxQurTmLkMUjEKdD6oH39ESO3ug/xyMOWi2', 'test', 'test', '2023-04-07 11:30:14', '[]'),
(9, 'azer@azer.fr', '$2y$13$mk7XK8NG0juyOly.ZTjSYe0bkJgfXo27RU6YxrBD0eEDzcfZwyudW', 'er', 'az', '2023-04-11 11:13:37', '[]'),
(10, 'xd@xd.xd', '$2y$13$oeUObEDWBgVx3Q4RJ9YhwuHs/.XpEW9JngAhGLqeHE94Qun5IJrbi', 'xd', 'xd', '2023-04-11 11:32:32', '[]'),
(11, 'admin@admin.admin', '$2y$13$Al4pZ6sW3AVfL70z6wkSd.9bpOWyInX2TyuZeDYsUfnGe16Nptluy', 'admin', 'lord', '2023-04-13 09:21:12', '[1]');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
