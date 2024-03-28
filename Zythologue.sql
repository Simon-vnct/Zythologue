-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
-- Hôte : mysql:3306
-- Généré le : jeu. 28 mars 2024 à 08:43
-- Version du serveur : 8.0.36
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Zythologue`
--



-- --------------------------------------------------------

--
-- Structure de la table `assign`
--

CREATE TABLE `assign` (
  `ID_Beer` int NOT NULL,
  `ID_Beer_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `assign`
--

INSERT INTO `assign` (`ID_Beer`, `ID_Beer_type`) VALUES
(1, 3),
(4, 3),
(12, 4),
(9, 5),
(8, 6),
(13, 6),
(5, 8),
(6, 8),
(7, 8),
(10, 9);

-- --------------------------------------------------------

--
-- Structure de la table `Beer`
--

CREATE TABLE `Beer` (
  `ID_Beer` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `Description` text,
  `ADV` decimal(20,0) DEFAULT NULL,
  `creation` date DEFAULT NULL,
  `modification` date DEFAULT NULL,
  `ID_Brewerie` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Beer`
--

INSERT INTO `Beer` (`ID_Beer`, `name`, `Description`, `ADV`, `creation`, `modification`, `ID_Brewerie`) VALUES
(1, 'Paix Dieu', 'Triple pleine de caractère\r\n\r\nA l\'œil\r\nTrouble, la Paix Dieu se distingue par sa robe dorée, sous une mousse crémeuse, généreuse et consistante\r\n\r\nAu nez\r\nCette triple pleine de caractère révèle des arômes délicats fruités et épicés.\r\n\r\nEn bouche\r\nEn bouche, elle libère toutes ses saveurs et son caractère en développant une longue et fine amertume, soutenue par une pointe de houblon.', '10', '2024-03-26', NULL, 1),
(4, 'Bon secours', 'La Bon Secours Prestige est une véritable Triple. L’utilisation de 3 céréales (l’orge, le froment et l’avoine) lui confère des saveurs diverses et complexes. Avec de belles notes d’épices, vous apprécierez ses arômes d’agrume en fin de bouche ainsi que son amertume légèrement prononcée.', '9', '2024-03-26', NULL, 1),
(5, 'STUUT #10 UPSIDE DOWN IPA', 'Bière double IPA\r\nBrassin éphémère.', '8', '2024-03-26', NULL, 1),
(6, 'STUUT ALOHA IPA', 'Bière houblonnée et rafraichissante avec une belle amertume \r\nBrassin éphémère.', '6', '2024-03-26', NULL, 1),
(7, 'La Bon Secours 4 Houblons', 'La Bon Secours 4 Houblons est une IPA légère et de caractère. Les houblons Nugget, Centennial, Cascade et Belma lui apportent une belle richesse gustative ainsi qu’une amertume prononcée', '6', '2024-03-26', NULL, 1),
(8, 'Bon Secours Héritage', 'Cette Bon Secours Héritage ambrée offre une élégante couleur cuivrée grâce à un subtil dosage de malts pâles et de Cassonade. Sur le palais, elle est sèche et développe une longue et fine amertume avec de belles notes de caramel.', '8', '2024-03-26', NULL, 1),
(9, 'Bon Secours Emérite', 'La Bon Secours Emérite est une bière brune. En bouche, elle se révèle peu sucrée, puissante et élégante, tandis que le côté fruité fait rapidement place à de chaleureux arômes de malts torréfiés.', '8', '2024-03-26', NULL, 1),
(10, 'Bon Secours Myrtille', 'Peu sucrée, vous apprécierez particulièrement l’équilibre entre la fraîcheur des fruits et une belle amertume grâce à la technique du houblonnage à froid.', '6', '2024-03-26', NULL, 1),
(11, 'La biere', 'elle est fraiche et douce', '6', '2024-03-27', NULL, 1),
(12, 'L\'hommelpap', 'C’est à partir de la Lupuline contenu dans la fleur, qui va ensuite être séchée, que la bière tire son bouquet et son amertume si particulier. Trois autres composantes vont également entrer en jeu. Il s’agit de l’orge, de l\'eau et des levures qui déterminent la couleur de la bière.', '9', '2024-03-27', NULL, 2),
(13, 'L\'alezanne', 'D’un roux clair, couronnée d’une mousse dense, la bière est un peu trouble. En bouche, l’amertume du houblon se conjugue avec une pointe de sucre.', '6', '2024-03-27', NULL, 2);


-- --------------------------------------------------------

--
-- Structure de la table `Brewerie`
--

CREATE TABLE `Brewerie` (
  `ID_Brewerie` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `creation` date DEFAULT NULL,
  `modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Brewerie`
--

INSERT INTO `Brewerie` (`ID_Brewerie`, `Name`, `Country`, `Address`, `creation`, `modification`) VALUES
(1, 'Brasserie CAULIER', 'BELGIQUE', '134 Rue de Sondeville\r\nBe-7600 Péruwelz', '2024-03-26', NULL),
(2, 'Brasserie Beck', 'FRANCE', 'FERME BRASSERIE BECK - Eeckelstraete 59270 BAILLEUL', '2024-03-27', NULL),
(3, 'TEST', 'ALLEMAGNE', ' quelque part dans le pays', '2024-03-27', '2024-03-27');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `ID_Beer_type` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `creation` date DEFAULT NULL,
  `modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`ID_Beer_type`, `Name`, `creation`, `modification`) VALUES
(3, 'Triple', '2024-03-26', NULL),
(4, 'Blonde', '2024-03-26', NULL),
(5, 'Brune', '2024-03-26', NULL),
(6, 'Ambré', '2024-03-26', NULL),
(7, 'Blanche', '2024-03-26', NULL),
(8, 'IPA', '2024-03-26', NULL),
(9, 'Bière aux fruits', '2024-03-26', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contain`
--

CREATE TABLE `contain` (
  `ID_ingredient` int NOT NULL,
  `ID_Beer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contain`
--

INSERT INTO `contain` (`ID_ingredient`, `ID_Beer`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(1, 5),
(3, 5),
(1, 6),
(3, 6),
(4, 6),
(5, 6),
(1, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(5, 8),
(8, 8),
(1, 9),
(2, 9),
(4, 9),
(5, 9),
(1, 10),
(2, 10),
(5, 10),
(7, 10),
(9, 10),
(1, 12),
(3, 12),
(4, 12),
(5, 12),
(7, 12),
(1, 13),
(2, 13),
(4, 13),
(7, 13),
(8, 13);

-- --------------------------------------------------------

--
-- Structure de la table `favorite`
--

CREATE TABLE `favorite` (
  `ID_user` int NOT NULL,
  `ID_Beer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `favorite`
--

INSERT INTO `favorite` (`ID_user`, `ID_Beer`) VALUES
(1, 1),
(2, 1),
(1, 4),
(3, 7),
(3, 12);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `ID_ingredient` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `creation` date DEFAULT NULL,
  `modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`ID_ingredient`, `Name`, `Type`, `creation`, `modification`) VALUES
(1, 'eau', 'liquide', '2024-03-26', NULL),
(2, 'malt d\'orge', 'solide', '2024-03-26', NULL),
(3, 'sucre', 'solide', '2024-03-26', NULL),
(4, 'houblon', 'solide', '2024-03-26', NULL),
(5, 'levure', 'vivant', '2024-03-26', NULL),
(6, 'froment', 'solide', '2024-03-26', NULL),
(7, 'avoine', 'solide', '2024-03-26', NULL),
(8, 'cassonade', 'solide', '2024-03-26', NULL),
(9, 'fruits', 'fruits', '2024-03-26', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Photo`
--

CREATE TABLE `Photo` (
  `ID_Photo` int NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `creation` date DEFAULT NULL,
  `modification` date DEFAULT NULL,
  `ID_Beer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Photo`
--

INSERT INTO `Photo` (`ID_Photo`, `URL`, `creation`, `modification`, `ID_Beer`) VALUES
(1, 'https://bc-experience.odoo.com/web/image/product.product/981/image_1024/%E2%80%8B%E2%80%8B%E2%80%8B%E2%80%8B%E2%80%8B%E2%80%8BPack%20Paix%20Dieu%20du%20mois%20%28Janvier%29?unique=60c16ab', '2024-03-26', NULL, 1),
(2, 'https://bc-experience.odoo.com/web/image/product.product/121/image_1024/%5B61600332517%5D%20Pack%20Prestige?unique=e182478', '2024-03-26', NULL, 4),
(3, 'https://bc-experience.odoo.com/web/image/product.product/878/image_1024/Stuut%20%2310%20Upside%20Down%20IPA%2044cl?unique=e182478', '2024-03-26', NULL, 5),
(4, 'https://bc-experience.odoo.com/web/image/product.product/682/image_1024/Stuut%20Aloha%20IPA%2044cl?unique=e182478', '2024-03-26', NULL, 6),
(5, 'https://bc-experience.odoo.com/web/image/product.product/116/image_1024/%5B61900332817%5D%20Pack%204%20Houblons?unique=e182478', '2024-03-26', NULL, 7),
(6, 'https://bc-experience.odoo.com/web/image/product.product/238/image_1024/%5B61300333017%5D%20Pack%20H%C3%A9ritage?unique=e182478', '2024-03-26', NULL, 8),
(7, 'https://bc-experience.odoo.com/web/image/product.product/239/image_1024/%5B61200332917%5D%20Pack%20Em%C3%A9rite?unique=e182478', '2024-03-26', NULL, 9),
(8, 'https://bc-experience.odoo.com/web/image/product.product/118/image_1024/%5B61400332617%5D%20Pack%20Myrtille?unique=e182478', '2024-03-26', NULL, 10),
(9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi6mRIJC0D0THT8s8rBYhgdlAWYpsBO0PdFA&usqp=CAU', '2024-03-27', NULL, 12),
(11, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM191zx-k3VKkE18Z9Ewl60gsnU_5-5ClcVg&usqp=CAU', '2024-03-27', '2024-03-27', 13);

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `ID_review` int NOT NULL,
  `ID_Beer` int DEFAULT NULL,
  `ID_user` int DEFAULT NULL,
  `rating_review` decimal(5,0) DEFAULT NULL,
  `comment_review` text,
  `creation` date DEFAULT NULL,
  `modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`ID_review`, `ID_Beer`, `ID_user`, `rating_review`, `comment_review`, `creation`, `modification`) VALUES
(1, 1, 1, '5', 'tape au cerveau', '2024-03-26', NULL),
(2, 1, 2, '4', 'il faut trouver modération pour m\'accompagner', '2024-03-26', NULL),
(3, 7, 3, '3', 'légère et agréable ', '2024-03-26', NULL),
(4, 5, 2, '2', NULL, '2024-03-26', NULL),
(5, 8, 1, '4', NULL, '2024-03-26', NULL),
(6, 4, 2, '3', NULL, '2024-03-26', NULL),
(7, 1, 3, '5', NULL, '2024-03-27', '2024-03-27'),
(8, 4, 1, '3', NULL, '2024-03-27', '2024-03-27'),
(9, 5, 1, '2', NULL, '2024-03-27', NULL),
(10, 5, 3, '1', NULL, '2024-03-27', NULL),
(11, 7, 1, '3', NULL, '2024-03-27', NULL),
(12, 8, 3, '4', NULL, '2024-03-27', NULL),
(13, 12, 1, '4', NULL, '2024-03-27', NULL),
(14, 12, 3, '3', NULL, '2024-03-27', NULL),
(15, 12, 2, '4', NULL, '2024-03-27', NULL),
(16, 13, 2, '3', NULL, '2024-03-27', NULL),
(17, 13, 2, '5', NULL, '2024-03-27', NULL),
(18, 13, 3, '4', NULL, '2024-03-27', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `ID_user` int NOT NULL,
  `Name_user` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password_user` varchar(200) DEFAULT NULL,
  `creation` date DEFAULT NULL,
  `modification` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID_user`, `Name_user`, `Email`, `Password_user`, `creation`, `modification`) VALUES
(1, 'Paul paslaref', 'paulpaslaref@noobi.com', 'password_1', '2024-03-26', NULL),
(2, 'Hugh PriseJack', 'hugh.prisejack@vulvurine.com', 'paspassword', '2024-03-26', NULL),
(3, 'Johnny hetero', 'johnny.hetero@jackysparada.com', 'paspassword', '2024-03-26', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`ID_Beer`,`ID_Beer_type`),
  ADD KEY `ID_Beer_type` (`ID_Beer_type`);

--
-- Index pour la table `Beer`
--
ALTER TABLE `Beer`
  ADD PRIMARY KEY (`ID_Beer`),
  ADD KEY `ID_Brewerie` (`ID_Brewerie`);

--
-- Index pour la table `Brewerie`
--
ALTER TABLE `Brewerie`
  ADD PRIMARY KEY (`ID_Brewerie`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID_Beer_type`);

--
-- Index pour la table `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`ID_ingredient`,`ID_Beer`),
  ADD KEY `ID_Beer` (`ID_Beer`);

--
-- Index pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`ID_user`,`ID_Beer`),
  ADD KEY `ID_Beer` (`ID_Beer`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ID_ingredient`);

--
-- Index pour la table `Photo`
--
ALTER TABLE `Photo`
  ADD PRIMARY KEY (`ID_Photo`),
  ADD KEY `ID_Beer` (`ID_Beer`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ID_review`),
  ADD KEY `ID_Beer` (`ID_Beer`),
  ADD KEY `ID_user` (`ID_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Beer`
--
ALTER TABLE `Beer`
  MODIFY `ID_Beer` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `Brewerie`
--
ALTER TABLE `Brewerie`
  MODIFY `ID_Brewerie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `ID_Beer_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ID_ingredient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Photo`
--
ALTER TABLE `Photo`
  MODIFY `ID_Photo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `review`
--
ALTER TABLE `review`
  MODIFY `ID_review` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `ID_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assign`
--
ALTER TABLE `assign`
  ADD CONSTRAINT `assign_ibfk_1` FOREIGN KEY (`ID_Beer`) REFERENCES `Beer` (`ID_Beer`),
  ADD CONSTRAINT `assign_ibfk_2` FOREIGN KEY (`ID_Beer_type`) REFERENCES `category` (`ID_Beer_type`);

--
-- Contraintes pour la table `Beer`
--
ALTER TABLE `Beer`
  ADD CONSTRAINT `beer_ibfk_1` FOREIGN KEY (`ID_Brewerie`) REFERENCES `Brewerie` (`ID_Brewerie`);

--
-- Contraintes pour la table `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `contain_ibfk_1` FOREIGN KEY (`ID_ingredient`) REFERENCES `ingredient` (`ID_ingredient`),
  ADD CONSTRAINT `contain_ibfk_2` FOREIGN KEY (`ID_Beer`) REFERENCES `Beer` (`ID_Beer`);

--
-- Contraintes pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID_user`),
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`ID_Beer`) REFERENCES `Beer` (`ID_Beer`);

--
-- Contraintes pour la table `Photo`
--
ALTER TABLE `Photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`ID_Beer`) REFERENCES `Beer` (`ID_Beer`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`ID_Beer`) REFERENCES `Beer` (`ID_Beer`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- ------------------------------------------------------------------------------

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`user_name`@`%` PROCEDURE `NoterBiere` (IN `p_ID_user` INT, IN `p_ID_Beer` INT, IN `p_rating_review` INT, IN `p_comment_review` TEXT)   BEGIN
    DECLARE existing_review_count INT;
    
    SELECT COUNT(*) INTO existing_review_count
    FROM review
    WHERE ID_user = p_ID_user AND ID_Beer = p_ID_Beer;
    
    IF existing_review_count > 0 THEN
        UPDATE review
        SET rating_review = p_rating_review,
            comment_review = p_comment_review
        WHERE ID_user = p_ID_user AND ID_Beer = p_ID_Beer;
    ELSE
        INSERT INTO review (ID_Beer, ID_user, rating_review, comment_review)
        VALUES (p_ID_Beer, p_ID_user, p_rating_review, p_comment_review);
    END IF;
END$$

DELIMITER ;

-- ---------------------------------------------------------------------------------

DELIMITER $$

CREATE TRIGGER `check_ABV_before_insert` BEFORE INSERT ON `Beer` FOR EACH ROW
BEGIN
    IF NEW.ADV < 0 OR NEW.ADV > 20 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Le taux d''alcool (ABV) doit être compris entre 0 et 20.';
    END IF;
END$$

DELIMITER ;
