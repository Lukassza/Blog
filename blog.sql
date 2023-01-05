-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 05 jan. 2023 à 11:56
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `categorie` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date`, `categorie`, `image`, `user_id`) VALUES
(2, 'zzzzzz', 'aaaaaaaaaa', '2018-01-01 00:00:00', 'aaaaaaaaaaa', NULL, 18),
(3, 'aaaaaa', 'aaaaaaaaaaaaaa', '2018-01-01 00:00:00', 'dsqdq', NULL, 18),
(4, 'Lutte Anti-Exception', 'Les exceptions me rendent dingo, les amis si je fais ce topic aujourd\'hui c\'est pour passer un énorme coup de gueule. Tout est dans le titre. Je vois flou en voyant clair je dors debout en étant assis, je mange en buvant et je marche en courant. Les exceptions sont partout elles me parlent elles me chantent elles m\'entourloupent. Il faut que ça cesse et cela va cesser. Rejoignez moi tous dans ma lutte.', '2018-01-01 00:00:00', 'AntiException', 'https://www.zupimages.net/up/22/52/taro.png', 20),
(5, 'Array to string', 'L\'exception array to string/20', '2018-01-01 00:00:00', 'Exception', 'https://www.developpez.net/forums/attachments/p499127d1566551392/x/y/z/', 20);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_to_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `auteur` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avis` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221214093916', '2022-12-15 12:08:54', 164),
('DoctrineMigrations\\Version20221214094518', '2022-12-15 12:08:54', 9),
('DoctrineMigrations\\Version20221214094918', '2022-12-15 12:08:54', 9),
('DoctrineMigrations\\Version20221214095333', '2022-12-15 12:08:54', 7),
('DoctrineMigrations\\Version20221222135639', '2022-12-22 14:56:58', 162),
('DoctrineMigrations\\Version20221222135749', '2022-12-22 14:57:55', 57),
('DoctrineMigrations\\Version20221229134431', '2022-12-29 14:45:27', 200);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pseudo` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `photo`, `pseudo`, `is_verified`) VALUES
(11, 'test123@gmail.com', '[]', '$2y$13$.BjfbZdsGlpShtdFQx9A0eyAy1dX0aRDp041ifoEQ4YynL08Haqsa', 'https://img-3.journaldesfemmes.fr/NJcVquOHhJwEFn3oJq8-2deKnRs=/1500x/smart/6ccb0ed3707b456ea4eeb06dbab99d2f/ccmcms-jdf/30803690.jpg', 'test123', 1),
(13, '123456@gmail.com', '[]', '$2y$13$CrYCKtzRX7u8Dm83x.W9iOe6C1TIhVYbQeeUIKVI1blIEi7NucOJW', 'https://resize.programme-television.ladmedia.fr/r/670,670/img/var/premiere/storage/images/tele-7-jours/news-tv/cauchemar-en-justice-pour-philippe-etchebest-m6-condamne-a-8000-euros-d-amende-4689294/99867448-1-fre-FR/Cauchemar-en-justice-pour-Philippe-Etchebest-M6-condamne-a-8000-euros-d-amende.jpg', '123456', 0),
(15, 'abcdef@gmail.com', '[]', '$2y$13$E3eZLBUWDwpaeNTPXTrKSuX57nC0Rvkvyxu4/Vp29Gn8AFHwgiVva', NULL, 'abcdef', 1),
(18, 'Nabilhihi@gmail.com', '[]', '$2y$13$Cec5Z4eu6ldsbUK1WMyoA.qQXohE8kiwqM6zJL.U8ZbJ6aeLi1wTK', NULL, 'Nabilhihi', 1),
(20, 'Etchebest@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$F7C7/Sgfs1FCiXKX.uMZa.s7ac1fqEA9zJ0l.izEYqEKdYv1JE06a', 'https://composer-sa-musique.fr/wp-content/uploads/2021/11/etchebest-enerve.jpg', 'Etchebest', 1),
(21, 'abcabc@gmail.com', '[]', 'abcabc', NULL, 'abcabc', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFDD3168A76ED395` (`user_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD3168A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
