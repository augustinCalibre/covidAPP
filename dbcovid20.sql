-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 sep. 2021 à 15:23
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
-- Base de données : `dbcovid20`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add city stat', 1, 'add_citystat'),
(2, 'Can change city stat', 1, 'change_citystat'),
(3, 'Can delete city stat', 1, 'delete_citystat'),
(4, 'Can view city stat', 1, 'view_citystat'),
(5, 'Can add suggestion', 2, 'add_suggestion'),
(6, 'Can change suggestion', 2, 'change_suggestion'),
(7, 'Can delete suggestion', 2, 'delete_suggestion'),
(8, 'Can view suggestion', 2, 'view_suggestion'),
(9, 'Can add contact', 3, 'add_contact'),
(10, 'Can change contact', 3, 'change_contact'),
(11, 'Can delete contact', 3, 'delete_contact'),
(12, 'Can view contact', 3, 'view_contact'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$xORCnsNjxigPBJlnxx2hvy$GXJyYxKkDpyBw05w8ujcO2LYiG59KGMbYwfhOan7ZzE=', '2021-09-15 10:22:09.762092', 1, 'admin', '', '', 'grahaugustin@gmail.com', 1, 1, '2021-09-15 10:21:15.530724');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `covid19_citystat`
--

CREATE TABLE `covid19_citystat` (
  `id` bigint(20) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `Ncas` int(11) NOT NULL,
  `Ndeces` int(11) NOT NULL,
  `Ngueris` int(11) NOT NULL,
  `Nvacine` int(11) NOT NULL,
  `cleSvg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `covid19_citystat`
--

INSERT INTO `covid19_citystat` ( `ville`, `Ncas`, `Ndeces`, `Ngueris`, `Nvacine`, `cleSvg`) VALUES
(1, 'Sud-Comoé', 20, 1, 15, 2000, 'CI-SC'),
(2, 'Lacs', 10, 0, 6, 1500, 'CI-LC'),
(3, 'Moyen-Comoe', 30, 0, 20, 2000, 'CI-MC'),
(4, 'Moyen-Cavally', 50, 0, 30, 1000, 'CI-MV'),
(5, 'Lagunes', 23500, 206, 19000, 8000, 'CI-LG'),
(6, 'N\'zi-Comoé', 100, 1, 90, 1500, 'CI-NC'),
(7, 'Agnéby', 200, 2, 150, 3000, 'CI-AG'),
(8, 'Vallée du Bandama', 50, 0, 48, 1000, 'CI-VB'),
(9, 'Zanzan', 1000, 1, 680, 2000, 'CI-ZA'),
(10, 'Bas-Sassandra', 200, 0, 150, 2000, 'CI-BS'),
(11, 'Sud-Bandama', 100, 0, 48, 1000, 'CI-SB'),
(12, 'Haut-Sassandra', 200, 1, 170, 2000, 'CI-HT'),
(13, 'Fromager', 3000, 2, 1500, 5000, 'CI-FR'),
(14, 'Marahoué', 1500, 1, 1400, 2000, 'CI-MR'),
(15, 'Worodougou', 200, 0, 170, 1000, 'CI-WR'),
(16, 'Dix-Huit Montagnes', 300, 0, 250, 1000, 'CI-DH'),
(17, 'Bafing', 100, 0, 90, 1000, 'CI-BF'),
(18, 'Denguélé', 90, 0, 80, 1000, 'CI-DE'),
(19, 'Savanes', 1500, 2, 1400, 3000, 'CI-SV');

-- --------------------------------------------------------

--
-- Structure de la table `covid19_contact`
--

CREATE TABLE `covid19_contact` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `suggest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `covid19_suggestion`
--

CREATE TABLE `covid19_suggestion` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `suggest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-15 10:26:48.941239', '1', 'cityStat object (1)', 1, '[{\"added\": {}}]', 1, 1),
(2, '2021-09-15 10:29:37.926641', '2', 'cityStat object (2)', 1, '[{\"added\": {}}]', 1, 1),
(3, '2021-09-15 10:31:08.030402', '3', 'cityStat object (3)', 1, '[{\"added\": {}}]', 1, 1),
(4, '2021-09-15 10:32:11.096814', '4', 'cityStat object (4)', 1, '[{\"added\": {}}]', 1, 1),
(5, '2021-09-15 10:55:15.321858', '5', 'cityStat object (5)', 1, '[{\"added\": {}}]', 1, 1),
(6, '2021-09-15 10:57:57.601110', '5', 'cityStat object (5)', 2, '[{\"changed\": {\"fields\": [\"Nvacine\"]}}]', 1, 1),
(7, '2021-09-15 11:04:14.608194', '4', 'cityStat object (4)', 2, '[{\"changed\": {\"fields\": [\"Ncas\", \"Ngueris\"]}}]', 1, 1),
(8, '2021-09-15 11:05:14.977108', '6', 'cityStat object (6)', 1, '[{\"added\": {}}]', 1, 1),
(9, '2021-09-15 11:06:31.442751', '7', 'cityStat object (7)', 1, '[{\"added\": {}}]', 1, 1),
(10, '2021-09-15 11:09:40.540449', '8', 'cityStat object (8)', 1, '[{\"added\": {}}]', 1, 1),
(11, '2021-09-15 11:13:35.161105', '9', 'cityStat object (9)', 1, '[{\"added\": {}}]', 1, 1),
(12, '2021-09-15 11:16:27.805426', '10', 'cityStat object (10)', 1, '[{\"added\": {}}]', 1, 1),
(13, '2021-09-15 11:19:31.759865', '11', 'cityStat object (11)', 1, '[{\"added\": {}}]', 1, 1),
(14, '2021-09-15 11:21:25.480231', '12', 'cityStat object (12)', 1, '[{\"added\": {}}]', 1, 1),
(15, '2021-09-15 11:22:53.469723', '13', 'cityStat object (13)', 1, '[{\"added\": {}}]', 1, 1),
(16, '2021-09-15 11:23:41.601411', '14', 'cityStat object (14)', 1, '[{\"added\": {}}]', 1, 1),
(17, '2021-09-15 11:24:45.563412', '15', 'cityStat object (15)', 1, '[{\"added\": {}}]', 1, 1),
(18, '2021-09-15 11:26:05.699739', '16', 'cityStat object (16)', 1, '[{\"added\": {}}]', 1, 1),
(19, '2021-09-15 11:29:08.232225', '17', 'cityStat object (17)', 1, '[{\"added\": {}}]', 1, 1),
(20, '2021-09-15 11:39:13.491438', '18', 'cityStat object (18)', 1, '[{\"added\": {}}]', 1, 1),
(21, '2021-09-15 11:40:05.281409', '19', 'cityStat object (19)', 1, '[{\"added\": {}}]', 1, 1),
(22, '2021-09-15 11:50:58.655749', '9', 'cityStat object (9)', 2, '[{\"changed\": {\"fields\": [\"Ngueris\"]}}]', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(4, 'admin', 'logentry'),
(6, 'auth', 'group'),
(5, 'auth', 'permission'),
(7, 'auth', 'user'),
(8, 'contenttypes', 'contenttype'),
(1, 'covid19', 'citystat'),
(3, 'covid19', 'contact'),
(2, 'covid19', 'suggestion'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-15 10:18:39.053307'),
(2, 'auth', '0001_initial', '2021-09-15 10:18:40.274536'),
(3, 'admin', '0001_initial', '2021-09-15 10:18:40.522585'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-15 10:18:40.536506'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-15 10:18:40.554500'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-15 10:18:40.664970'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-15 10:18:40.771050'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-15 10:18:40.807026'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-15 10:18:40.824018'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-15 10:18:40.913399'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-15 10:18:40.919426'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-15 10:18:40.932418'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-15 10:18:40.957402'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-15 10:18:41.014368'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-15 10:18:41.039423'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-15 10:18:41.057783'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-15 10:18:41.087764'),
(18, 'covid19', '0001_initial', '2021-09-15 10:18:41.142286'),
(19, 'covid19', '0002_suggestion', '2021-09-15 10:18:41.189709'),
(20, 'covid19', '0003_contact', '2021-09-15 10:18:41.248903'),
(21, 'sessions', '0001_initial', '2021-09-15 10:18:41.322744');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('j2qvadj5p7bis8wdzgvzbhqvg0hx3knz', '.eJxVjDsOwjAQRO_iGlle4y8lfc5g7doLDiBHipMKcXcSKQV0o3lv5i0SrktNa-c5jUVcBIjTb0eYn9x2UB7Y7pPMU1vmkeSuyIN2OUyFX9fD_Tuo2Ou2ZmXIBg1BASjvtxTRk2fSFtkG4GK0yT5mLADRUSDIN-c8ODjrbIL4fAG5Njbb:1mQS3N:vcb2zDklaS5USNt1r5fO4Xsbg3fhHc1kCVvT0lP0Fd8', '2021-09-29 10:22:09.767906');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `covid19_citystat`
--
ALTER TABLE `covid19_citystat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `covid19_contact`
--
ALTER TABLE `covid19_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `covid19_suggestion`
--
ALTER TABLE `covid19_suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `covid19_citystat`
--
ALTER TABLE `covid19_citystat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `covid19_contact`
--
ALTER TABLE `covid19_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `covid19_suggestion`
--
ALTER TABLE `covid19_suggestion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
