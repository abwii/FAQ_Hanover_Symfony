-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 08 mai 2023 à 16:31
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
-- Structure de la table `ajout`
--

DROP TABLE IF EXISTS `ajout`;
CREATE TABLE IF NOT EXISTS `ajout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(180) NOT NULL,
  `categorie` text NOT NULL,
  `impact` text NOT NULL,
  `objet` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `version` text NOT NULL,
  `solution` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ajout_users_FK` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ajout`
--

INSERT INTO `ajout` (`id`, `project_name`, `categorie`, `impact`, `objet`, `description`, `version`, `solution`, `created_at`, `id_users`) VALUES
(1, 'Affichage Bus 34S', 'IHM', 'Mineur', 'Affichage terminus pas à jour', 'L\'affichage du terminus n\'est pas à jour car il y a des travaux sur la ligne.', '3.2', 'Mise à  jour automatique de l\'affichage n\'était pas clean. Voir pj', '2023-05-06 21:49:27', NULL),
(6, '0001466: V5.0 Hosteur 16 : Libellule : Villefranche sur Saone : Problème de nettoyage', 'Base de donnees', 'Bloquant', 'Problème de nettoyage', 'La procédude de nétoyyage plante sur Villefranche sur Saone.\r\nAprés analyse de Stéphane, la procédure : p_tool_string_split ne pointe pas sur les bonnes données', '5.0', 'traité sur svn( mysql 5.6, 8) villefranche sur saone, planche 2x, planche 118, tisseo cap, avignon', '2023-05-08 14:26:51', NULL),
(7, '0001406: DRI_FULLNAME', 'Base de donnees', 'Mineur', '[V5] dri_fullname dans les vues IHM', 'Salut Alex,\r\n\r\nJ’aurai besoin s’il te plait que le champ dri_fullname des vues IHM soit simplement le champ dri_fullname de la table driver.\r\nNous n’avons pas du tout besoin du champ dri_fullname_short, présente dans certaines vues IHM.\r\n\r\nEventuellement, sous réserve de la réponse de Bruno sur ce sujet, et en avance de phase de la réponse du client sur Villefranche concernant la RGPD (besoin dans les deux cas de la documentation envoyée au client), serait-il possible d’avoir le champ dri_code de la table driver dans les vue suivantes :\r\nv_ui_localisation\r\nv_ui_vacation\r\nv_ui_stop_schedule\r\nv_ui_run\r\nv_ui_replay_vehicle (staging)\r\n\r\nMerci beaucoup,', '5.0', 'fait sur la base de reference', '2023-05-08 14:30:02', NULL),
(8, '0001343: Tests : V5.0 : 10.43.0.46 - [Alarmes] Alarme de \"retard au départ en course\" en double', 'Serveur', 'Mineur', 'Alarme de \"retard au départ en course\" en double', 'Lorsque l\'alarme suscitée est déclanchée, elle est mise en double dans la base de données.', '5.0', 'modification V5.0 à tester', '2023-05-08 14:33:06', NULL),
(9, '0001053: Serveur WESTCAT tests : V5.0 : 10.43.0.101 - Hawk manager - geographie Stops', 'Livraison et Mise à jour', 'Mineur', 'Hawk manager - geographie Stops', 'Dans la version Française de Hawk manager, les distance sont en pied idem à la version US', '5.0', 'lmahoudeau\r\n\r\n 2021-11-16 17:48     privé\r\n\r\nadministrateur    ~0001780\r\n\r\nC’est parce que c’est un paramètre à changer dans les param !!\r\n\r\n bfontugne\r\n\r\n 2021-11-16 18:00     privé\r\n\r\nadministrateur    ~0001784\r\n\r\nlequel stp pour le mettre dans le Mantis et pour la migration STP\r\n lmahoudeau\r\n\r\n 2021-11-16 18:05     privé\r\n\r\nadministrateur    ~0001785\r\n\r\nAvl_staging parameters isUsingMetricSystem', '2023-05-08 14:34:43', NULL),
(10, '0000982: Serveur WESTCAT tests : V5.0 : 10.43.0.101 - Manque Fonction en base de données :f_tool_seq_shb_id', 'Base de donnees', 'Majeur', 'Manque Fonction en base de données', 'Manque sur avl_wdb_vmcv_v5,\r\nFonctions :\r\nf_tool_seq_shb_id', '5.0', 'Ajouté en BDD ref (wdb et real time) ainsi que sur VMCV_V5 et WESTCAT v5', '2023-05-08 14:35:18', NULL),
(11, '0001291: Tests : V5.0 : 10.43.0.46 - [QR Codes] Champs manquants vue v_ui_stop_line_com_list', 'Base de donnees', 'Bloquant', '[QR Codes] Champs manquants vue v_ui_stop_line_com_list', 'Salut,\r\n\r\nIl manque plusieurs champs dans la vue \"v_ui_stop_line_com_list\" pour les QR Codes.\r\n- sto_iv_number_ext\r\n- lin_display\r\n- lin_display_background_color\r\n- lin_display_text_color\r\n- lin_display_outline_color\r\n\r\nmerci\r\n\r\nSELECT STO_ID,\r\n       STO_Graph_Key,\r\n       STO_Name_Wks,\r\n       sto_iv_number_ext,\r\n       lin_id,\r\n       lin_number,\r\n       LIN_Color_R,\r\n       LIN_Color_G,\r\n       LIN_Color_B,\r\n       lin_display,\r\n       lin_display_background_color,\r\n       lin_display_text_color,\r\n       lin_display_outline_color\r\nFROM v_ui_stop_line_com_list\r\nORDER BY STO_Name_Wks,\r\n         STO_Graph_Key,\r\n         CAST(lin_number AS unsigned),\r\n         lin_number;', '5.0', 'les champs ont été ajoutés sur v_ui_stop_line_com_list & v_ui_stop_line_com_list_theo.\r\n\r\n>> ref v5 et westcat v5\r\n\r\nAttention dans la requete order by indiqué dans ce mantis il y a un cast unsigned sur un champ text.', '2023-05-08 14:37:17', NULL),
(12, '0001191: Tests v5.0 : 10.43.0.46 - [champ rou_destination_name] Parfois null - remplacer par dernier arret trajet', 'Base de donnees', 'Fonctionnalité', '[champ rou_destination_name] Parfois null - remplacer par dernier arret trajet', 'Dans toutes les vues et IHM, il arrive que le nom de destination rou_destination_name soit vide (NULL en base).\r\n\r\nJe comprends le fait que le nom de la destination n\'est pas été renseigné dans la librairie des destinations.\r\nCependant, d\'un point de vue information voyageur, il faudrait que ce champ soit malgre tout jamais vide.\r\n\r\nPourrait on avoir pour ce champ un cas ou si il est vide (NULL en base) pour un trajet, qu\'il soit remplacer par le nom du dernier arret de ce dernier ?\r\nSi ce n\'est pas fait, cela entrainera une regression au niveau du site public, horaires IV apres scan de qr codes et TFT IV (agences commerciales) oú nous faisions ce test et ce remplacement.\r\n\r\nMerci.', '5.0', 'c\'est fait sur les elements suivants\r\n\r\nv5_0 v_rcs_route view\r\nv_rcs_vehicule view\r\nv_srv_route view\r\nv_ui_localisation view\r\nv_ui_run view\r\nv_ui_run_schedule view\r\nv_ui_run_schedule_monitoring view\r\nv_ui_run_schedule_theo view\r\nv_ui_run_tr1 view\r\nv_ui_stop_schedule view\r\nv_ui_stop_schedule_tr1 view', '2023-05-08 14:38:30', NULL),
(13, '0001194: Serveur WESTCAT tests : V5.0 : 10.43.0.46 - Gestion des correspondances', 'Serveur', 'Critique', 'Gestion des correspondances', 'Envoi des correspondances d\'un véhicule sur lui même.\r\ngros impact suite à modification base de données', '5.0', 'reprendre tout le fonctionnel pas de raison d\'envoyer une mise à jour d\'un véhicule pour lui même !!', '2023-05-08 14:39:44', NULL),
(14, '0001432: V5.0.3 : Hosteur 15 Planche 118 : Hawk manager : Pb copie des données d\'imports', 'IHM', 'Bloquant', 'Hawk manager : Pb copie des données d\'imports', 'Les données d\'imports ne sont pas copiées sur le serveur alors que tout semble bon, les popups de copie fonctionnent, mais à la fin pas de \"Nike green\"', '5.0', 'sur le hosteur (pas en usine) ?\r\nfonctionne pour moi, ça le fait tjs ?', '2023-05-08 14:40:45', NULL),
(15, '0001344: Serveur WESTCAT tests : V5.0 : 10.43.0.46 : Hawk : pb de prise de service', 'Embarque', 'Majeur', 'pb de prise de service', '-Sur une prise de service doublée\r\n- réception de la prise de service\r\n- validée par le serveur\r\n-réception véhicule sans service dans la même seconde\r\n- réception prise de service doublée.\r\ncela n\'est pas normal.\r\n\r\n\r\nDBG 16:50:31 (033) (10247) (000) |---- TRTT PDS --------------------------------------------- (/home/westcat/srv/trunk/srce/TRTR/LOCA/utilitaire_traitement_loc.c - 380)\r\nDBG 16:50:31 (033) (10247) (000) | VEHI [0002] TRTT PDS DBL : ALR [016] LAT [136845808] LONG [-440156576] RG CRSE [002] SA [016] AG [032] (/home/westcat/srv/trunk/srce/TRTR/LOCA/utilitaire_traitement_pds.c - 418)\r\n----------------------------------\r\nDBG 16:50:31 (033) (10247) (000) ---------------------------------------------------------------------------------------------------------------------------------- (/home/westcat/srv/trunk/srce/TRTR/LOCA/utilitaire_traitement_etat.c - 4167)\r\nDBG 16:50:31 (033) (10247) (000) VEHI [0002] RETOUR ALR MAJ [016] TABLES [0] LAT [136845808] LONG [-440156576] ETAT SRV [000] PRES SRV [00] VAL [00] REFUS [00] CAUSE [00] ETAT VEH [00] (/\r\n\r\nDBG 16:51:53 (033) (10247) (000) | VEHI [0002] TRTT PDS DBL : ALR [016] LAT [136841392] LONG [-440138432] RG CRSE [002] SA [016] AG [032] (/home/westcat/srv/trunk/srce/TRTR/LOCA/utilitaire_traitement_pds.c - 418)', '5.0', 'Salut,\r\nCorrection faite sur la dernière version.\r\nNous referons le test ensemble à ton retour', '2023-05-08 14:41:35', NULL),
(16, '0001446: Serveur WESTCAT hosteur Westcat : V5.0 : IHM WEB :pb gestion message temps réel', 'IHM', 'Critique', 'pb gestion message temps réel', 'La gestion des horaires n\'est pas bonnes, impossibilité de saisir un message sur plusieurs jours sans passer en continu.', '5.0', 'corrigé', '2023-05-08 14:42:50', NULL),
(17, '0001108: Serveur WESTCAT tests : V5.0 : 10.43.0.46 : PB sur les triggers', 'Non determine', 'Mineur', 'PB sur les triggers', 'EN regardant es triggers, surtout vidéo, j\'ai des triggers mais vides.\r\nJe n\'ai fait en l\'état que de la consuktation', '5.0', 'bfontugne\r\n\r\n 2021-12-10 13:44\r\n\r\nadministrateur  \r\n\r\n trigger TFT vide.jpg (242,369 octets)  \r\n lmahoudeau\r\n\r\n 2021-12-10 14:51     privé\r\n\r\nadministrateur    ~0001907\r\n\r\nEffacer tous les triggers et refaire les tests depuis le debut.\r\nCeci est surement du a la bascule entre serveur 10.43.0.101 et 10.43.0.46...\r\n\r\nSi aucune manipulation a ete faite de ta part, moi non plus sur le nouveau serveur.\r\n bfontugne\r\n\r\n 2021-12-10 15:46     privé\r\n\r\nadministrateur    ~0001908\r\n\r\nFaire la manipulation et la mise en production\r\n lmahoudeau\r\n\r\n 2021-12-10 16:12     privé\r\n\r\nadministrateur    ~0001909\r\n\r\nManipulation:\r\n-Suppression de tous les triggers pouris pour TFT du a la bascule (peut etre un bug Triggers TFT de la bascule, attention)\r\n-Ajout d\'images, playlists et autre pour TFT\r\n-Mise en application des triggers.\r\n-Ajout de Jingle pour l\'audio\r\n-Re-mise en application\r\n\r\nRAS au niveau de l\'IHM\r\n bfontugne\r\n\r\n 2021-12-10 16:51\r\n\r\nadministrateur    ~0001910\r\n\r\nTRaitement à faire\r\n bfontugne\r\n\r\n 2021-12-13 18:10     privé\r\n\r\nadministrateur    ~0001919\r\n\r\n1 Import Triggers OK\r\n2 Modification OK\r\n3 Export OK\r\n4 mise en application OK', '2023-05-08 14:49:16', NULL),
(18, '000517 - Affichage bug sur le header', 'Application mobile', 'Simple', 'Affichage bug sur le header', 'Le header de l\'appli des chauffeurs empiète sur le reste de l\'affichage', '5.0', 'Corrigé.', '2023-05-08 16:20:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `idMail` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`idMail`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idMail`, `firstname`, `lastname`, `email`, `subject`, `message`, `created_at`, `user_id`) VALUES
(1, 'Nathan', 'LABARCHE', 'nathan95130.nl@gmail.com', 'test', 'aza', '2023-05-08 15:47:06', 1),
(2, 'Nathan', 'LABARCHE', 'nathan95130.nl@gmail.com', 'test', 'aza', '2023-05-08 15:47:24', 1),
(5, 'Nathan', 'LABARCHE', 'nathan95130.nl@gmail.com', 'papapapap', 'nzrazbazub', '2023-05-08 15:50:10', 1),
(6, 'Nathan', 'LABARCHE', 'nathan95130.nl@gmail.com', 'rzra', 'azerzaerza', '2023-05-08 16:03:20', 1);

-- --------------------------------------------------------

--
-- Structure de la table `imageprobleme`
--

DROP TABLE IF EXISTS `imageprobleme`;
CREATE TABLE IF NOT EXISTS `imageprobleme` (
  `imgId` int(11) NOT NULL AUTO_INCREMENT,
  `imgNom` varchar(50) NOT NULL,
  `imgTaille` varchar(25) NOT NULL,
  `imgType` varchar(25) NOT NULL,
  `imgDesc` varchar(100) NOT NULL,
  `img_blob` blob NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`imgId`),
  KEY `imageProbleme_ajout_FK` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `password` text NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `roles` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `lastname`, `firstname`, `created_at`, `roles`) VALUES
(1, 'nathan95130.nl@gmail.com', '$2y$13$eR6ps5CsiPp3HHbqRkofRejeBYzJPajC0Ka0Rrg9I6JX3FcWBUwla', 'LABARCHE', 'Nathan', '2023-05-06 21:46:08', '[\"ROLE_ADMIN\"]'),
(3, 'wassim.bacha@gmail.com', '$2y$13$vvaSi6ltYUKkm3Mi9bpLnue8N58YrenWzM56Rni8DIFjfp/EbUdTq', 'BACHA', 'Wassim', '2023-05-08 14:18:46', '[\"ROLE_ADMIN\"]'),
(4, 'Lucy.pereira@gmail.com', '$2y$13$g.f.OhWmvET8EWVwAx44N.Hxb59/TpedbvKCF210yjVEknHnwt87a', 'Pereira', 'Lucy', '2023-05-08 14:19:02', '[\"ROLE_USER\"]'),
(5, 'erol.malonga@gmail.com', '$2y$13$YAy5EclYDgKYxHBXdjdpEuLyqoW.hY749aqS5cjiFtUrOzUJKpCom', 'Malonga', 'Erol', '2023-05-08 14:19:21', '[\"ROLE_USER\"]'),
(6, 'vincent.lambert@gmail.com', '$2y$13$b77RUW8hQug51b4YXfgXTuEoEQ8zE9g4d6hS55.RAlqg81aoG.JIO', 'Lambert', 'Vincent', '2023-05-08 14:19:41', '[\"ROLE_USER\"]'),
(7, 'yanis.andry@gmail.com', '$2y$13$LZZSUBtcUpQLwCv7yGsCOeNXeac6AwMivA33Sj7G1/52.tpEOX3si', 'Andry', 'Yanis', '2023-05-08 14:20:29', '[\"ROLE_USER\"]');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ajout`
--
ALTER TABLE `ajout`
  ADD CONSTRAINT `ajout_users_FK` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `mail_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `imageprobleme`
--
ALTER TABLE `imageprobleme`
  ADD CONSTRAINT `imageProbleme_ajout_FK` FOREIGN KEY (`id`) REFERENCES `ajout` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
