-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Maio-2025 às 22:00
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `module_b`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_number` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `deactiv` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_address`, `company_number`, `company_email`, `deactiv`) VALUES
(1, 'Innovateurs Tech', '123 Boulevard du Silicon 75001 Paris', '+33 1 23 45 67 89', 'info@innovateurstech.fr', 0),
(2, 'Solutions Vertes SAS', '456 Parc Éco 69002 Lyon', '+33 4 56 78 90 12', 'contact@solutionsvertes.fr', 0),
(3, 'Designs Urbains SARL', '789 Avenue Métropolitaine 13001 Marseille', '+33 4 12 34 56 78', 'support@designsurbains.fr', 0),
(4, 'Cuisine Innovante SARL', '22 Rue de la Cuisine 75005 Paris', '+33 1 40 20 30 40', 'info@cuisineinnovante.fr', 0),
(5, 'Énergies Renouvelables SAS', '15 Chemin Vert 31000 Toulouse', '+33 5 61 23 45 67', 'contact@energiesrenouvelables.fr', 0),
(6, 'Technologie Avancée SARL', '9 Rue de la Science 59800 Lille', '+33 3 20 15 25 35', 'support@technologieavancee.fr', 0),
(7, 'Artisanat Moderne SAS', '28 Avenue de l\'Artisanat 67000 Strasbourg', '+33 3 88 10 20 30', 'info@artisanatmoderne.fr', 0),
(8, 'Innovateurs Tech SARLJBJFBSDUJWBE', '123 Boulevard du Silicon 75001 Paris', '+33 1 23 45 67 89', 'info@innovateurstech.frcds', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `contact_number`, `contact_email`, `company_id`) VALUES
(1, 'Bob Martin', '+33 6 98 76 54 32', 'bob.martin@innovateurstech.fr', 1),
(2, 'Tom Dubois', '+33 6 87 65 43 21', 'tom.dubois@solutionsvertes.fr', 2),
(3, 'Emily Moreau', '+33 6 54 32 10 98', 'emily.moreau@designsurbains.fr', 3),
(4, 'Chloe Dubois', '+33 6 55 44 33 22', 'chloe.dubois@cuisineinnovante.fr', 4),
(5, 'Paul Leroy', '+33 6 66 77 88 99', 'paul.leroy@energiesrenouvelables.fr', 5),
(6, 'Isabelle Thomas', '+33 6 44 55 66 77', 'isabelle.thomas@technologieavancee.fr', 6),
(7, 'Julien Rousseau', '+33 6 77 66 55 44', 'julien.rousseau@artisanatmoderne.fr', 7),
(8, 'Chloe Dubois', '+33 6 55 44 33 22', 'bob.martin@innovateurstech.fr', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '2025_05_29_170251_create_companies_table', 1),
(4, '2025_05_29_170302_create_products_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `owner`
--

CREATE TABLE `owner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `owner_number` varchar(255) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `owner`
--

INSERT INTO `owner` (`id`, `owner_name`, `owner_number`, `owner_email`, `company_id`) VALUES
(1, 'Alice Dupont', '+33 6 12 34 56 78', 'alice.dupont@innovateurstech.fr', 1),
(2, 'Sarah Lefevre', '+33 6 23 45 67 89', 'sarah.lefevre@solutionsvertes.fr', 2),
(3, 'Michael Petit', '+33 6 34 56 78 90', 'michael.petit@designsurbains.fr', 3),
(4, 'Jean Martin', '+33 6 11 22 33 44', 'jean.martin@cuisineinnovante.fr', 4),
(5, 'Louise Garnier', '+33 6 77 88 99 00', 'louise.garnier@energiesrenouvelables.fr', 5),
(6, 'Luc Bernard', '+33 6 33 44 55 66', 'luc.bernard@technologieavancee.fr', 6),
(7, 'Emma Morel', '+33 6 22 33 44 55', 'emma.morel@artisanatmoderne.fr', 7),
(8, 'Alice Dupont', '+33 6 12 34 56 78', 'alice.dupont@innovateurstech.fr', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `gtin` varchar(255) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`gtin`, `hidden`, `company_id`) VALUES
('37900123458228', 0, 1),
('37900123458345', 0, 2),
('37900123458462', 0, 3),
('37900123458579', 0, 4),
('37900123458696', 0, 5),
('37900123458713', 0, 6),
('37900123458830', 0, 7),
('37900123458947', 1, 1),
('37900123459064', 0, 2),
('37900123459171', 0, 3),
('37900123459288', 0, 4),
('37900123459395', 0, 5),
('37900123459412', 0, 6),
('37900123459529', 0, 7),
('37900123459646', 1, 1),
('37900123459763', 0, 2),
('37900123459870', 0, 3),
('37900234567890', 0, 4),
('37900234567907', 0, 5),
('37900234568024', 0, 6),
('37900234568141', 0, 7),
('37900234568258', 1, 1),
('37900234568375', 0, 2),
('37900234568492', 0, 3),
('37900234568509', 0, 4),
('37900234568626', 0, 5),
('37900234568733', 0, 6),
('37900234568850', 0, 7),
('37900234568967', 1, 1),
('37900234569084', 0, 2),
('37900234569101', 0, 3),
('37900234569218', 0, 4),
('37900234569335', 0, 5),
('37900234569452', 0, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_detail`
--

CREATE TABLE `product_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `product_gtin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `product_detail`
--

INSERT INTO `product_detail` (`id`, `brand`, `country`, `product_gtin`) VALUES
(1, 'Huiles de France', 'France', '37900123458228'),
(2, 'Pâtisseries Artisanales', 'France', '37900123458345'),
(3, 'Soins Corporels de France', 'France', '37900123458462'),
(4, 'Dessertès de France', 'France', '37900123458579'),
(5, 'Fromages Artisanales', 'France', '37900123458696'),
(6, 'Jams de France', 'France', '37900123458713'),
(7, 'Fromages Artisanales', 'France', '37900123458830'),
(8, 'Charcuterie de France', 'France', '37900123458947'),
(9, 'Pâtisseries Artisanales', 'France', '37900123459064'),
(10, 'Fromages Artisanales', 'France', '37900123459171'),
(11, 'Jams de France', 'France', '37900123459288'),
(12, 'Fromages Artisanales', 'France', '37900123459395'),
(13, 'Bieres de France', 'France', '37900123459412'),
(14, 'Fromages Artisanales', 'France', '37900123459529'),
(15, 'Charcuterie de France', 'France', '37900123459646'),
(16, 'Fromages Artisanales', 'France', '37900123459763'),
(17, 'Dessertès de France', 'France', '37900123459870'),
(18, 'HydroFlow', 'USA', '37900234567890'),
(19, 'Purezza', 'Italy', '37900234567907'),
(20, 'Cierges de France', 'France', '37900234568024'),
(21, 'Teeth & Smile', 'Indonesia', '37900234568141'),
(22, 'JewelBox', 'Mexico', '37900234568258'),
(23, 'Aromaflo', 'Australia', '37900234568375'),
(24, 'GreenEarth', 'UK', '37900234568492'),
(25, 'Purezza', 'Italy', '37900234568509'),
(26, 'Cierges de France', 'France', '37900234568626'),
(27, 'GreenEarth', 'UK', '37900234568733'),
(28, 'PaperCraft', 'USA', '37900234568850'),
(29, 'ArtScene', 'Canada', '37900234568967'),
(30, 'GreenEarth', 'UK', '37900234569084'),
(31, 'PageTurner', 'Mexico', '37900234569101'),
(32, 'Cierges de France', 'France', '37900234569218'),
(33, 'GreenEarth', 'UK', '37900234569335'),
(34, 'WallDecor', 'Italy', '37900234569452');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_image`
--

CREATE TABLE `product_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `product_gtin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `product_image`
--

INSERT INTO `product_image` (`id`, `path`, `product_gtin`) VALUES
(1, 'products/tzkWFjmuuGw0ata9kmae22S01Sjafx84PyE8Pz37.png', '37900123458228'),
(2, 'placeholder.jpg', '37900123458345'),
(3, 'placeholder.jpg', '37900123458462'),
(4, 'placeholder.jpg', '37900123458579'),
(5, 'placeholder.jpg', '37900123458696'),
(6, 'placeholder.jpg', '37900123458713'),
(7, 'placeholder.jpg', '37900123458830'),
(8, 'placeholder.jpg', '37900123458947'),
(9, 'placeholder.jpg', '37900123459064'),
(10, 'placeholder.jpg', '37900123459171'),
(11, 'placeholder.jpg', '37900123459288'),
(12, 'placeholder.jpg', '37900123459395'),
(13, 'placeholder.jpg', '37900123459412'),
(14, 'placeholder.jpg', '37900123459529'),
(15, 'placeholder.jpg', '37900123459646'),
(16, 'placeholder.jpg', '37900123459763'),
(17, 'placeholder.jpg', '37900123459870'),
(18, 'placeholder.jpg', '37900234567890'),
(19, 'placeholder.jpg', '37900234567907'),
(20, 'placeholder.jpg', '37900234568024'),
(21, 'placeholder.jpg', '37900234568141'),
(22, 'placeholder.jpg', '37900234568258'),
(23, 'placeholder.jpg', '37900234568375'),
(24, 'placeholder.jpg', '37900234568492'),
(25, 'placeholder.jpg', '37900234568509'),
(26, 'placeholder.jpg', '37900234568626'),
(27, 'placeholder.jpg', '37900234568733'),
(28, 'placeholder.jpg', '37900234568850'),
(29, 'placeholder.jpg', '37900234568967'),
(30, 'placeholder.jpg', '37900234569084'),
(31, 'placeholder.jpg', '37900234569101'),
(32, 'placeholder.jpg', '37900234569218'),
(33, 'placeholder.jpg', '37900234569335'),
(34, 'placeholder.jpg', '37900234569452');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `product_gtin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `product_translations`
--

INSERT INTO `product_translations` (`id`, `language`, `name`, `description`, `product_gtin`) VALUES
(1, 'en', 'French Herb and Lemon Infused Olive Oil', 'Add a touch of freshness to your dishes with our French herb and lemon infused olive oil, featuring a blend of fragrant herbs and citrus.', '37900123458228'),
(2, 'fr', 'French Herb and Lemon Infused Olive Oil', 'Add a touch of freshness to your dishes with our French herb and lemon infused olive oil, featuring a blend of fragrant herbs and citrus.', '37900123458228'),
(3, 'en', 'Artisanal French Quiche Lorraine Tartlets', 'Indulge in the rich flavors of France with our artisanal quiche Lorraine tartlets, featuring a blend of creamy eggs and cheese.', '37900123458345'),
(4, 'fr', 'Tartelettes de quiche lorraine artisanale française', 'Laissez-vous tenter par les riches saveurs de la France avec nos tartelettes artisanales à la quiche lorraine, composées d\'un mélange d\'œufs crémeux et de fromage.', '37900123458345'),
(5, 'en', 'French Lavender and Honey Body Scrub', 'Exfoliate your skin with our French lavender and honey body scrub, featuring a soothing blend of fragrant herbs and citrus.', '37900123458462'),
(6, 'fr', 'Exfoliant corporel à la lavande et au miel français', 'Exfoliez votre peau avec notre gommage corporel à la lavande française et au miel, composé d\'un mélange apaisant d\'herbes parfumées et d\'agrumes.', '37900123458462'),
(7, 'en', 'French Apple and Cinnamon Crumble Mix', 'Warm up with our French apple and cinnamon crumble mix, featuring a blend of fresh spices perfect for a comforting dessert.', '37900123458579'),
(8, 'fr', 'Mélange de crumble aux pommes et au cannelle français', 'Réchauffez-vous avec notre mélange de crumble aux pommes et à la cannelle française, composé d\'un mélange d\'épices fraîches, parfait pour un dessert réconfortant.', '37900123458579'),
(9, 'en', 'Artisanal French Creamy Garlic Dip', 'Savor the rich flavors of France with our artisanal creamy garlic dip, featuring a blend of fresh herbs and spices.', '37900123458696'),
(10, 'fr', 'Mélange de dip aux aromes et à la crème française', 'Savourez les riches saveurs de la France avec notre trempette crémeuse à l\'ail artisanale, composée d\'un mélange d\'herbes fraîches et d\'épices.', '37900123458696'),
(11, 'en', 'French Berry Jam', 'Enjoy the sweetness of France with our French berry jam, featuring a blend of juicy fruits.', '37900123458713'),
(12, 'fr', 'Confiture de fruits rouges français', 'Appréciez la douceur de la France avec notre confiture de baies françaises, composée d\'un mélange de fruits juteux.', '37900123458713'),
(13, 'en', 'Artisanal French Feta Cheese', 'Savor the rich flavors of Greece in France with our artisanal feta cheese, featuring a blend of creamy milk and herbs.', '37900123458830'),
(14, 'fr', 'Fromage feta artisanale français', 'Savourez les riches saveurs de la Grèce en France avec notre fromage feta artisanal, composé d\'un mélange de lait crémeux et d\'herbes.', '37900123458830'),
(15, 'en', 'French Herb and Garlic Sausages', 'Indulge in the rich flavors of France with our French herb and garlic sausages, featuring a blend of fragrant herbs and spices.', '37900123458947'),
(16, 'fr', 'Saucisses aux herbes et à l\'ail français', 'Laissez-vous tenter par les riches saveurs de la France avec nos saucisses françaises aux herbes et à l\'ail, composées d\'un mélange d\'herbes parfumées et d\'épices.', '37900123458947'),
(17, 'en', 'French Apple Tart', 'Enjoy the sweetness of France with our French apple tart, featuring a blend of juicy fruits and creamy pastry.', '37900123459064'),
(18, 'fr', 'Tarte tatin aux pommes française', 'Savourez la douceur de la France avec notre tarte aux pommes française, composée d\'un mélange de fruits juteux et de pâtisserie crémeuse.', '37900123459064'),
(19, 'en', 'Artisanal French Cream Cheese', 'Savor the rich flavors of France with our artisanal cream cheese, featuring a blend of creamy milk and herbs.', '37900123459171'),
(20, 'fr', 'Fromage à la crème artisanale français', 'Savourez les riches saveurs de la France avec notre fromage à la crème artisanal, composé d\'un mélange de lait crémeux et d\'herbes.', '37900123459171'),
(21, 'en', 'French Herb and Lemon Marmalade', 'Enjoy the sweetness of France with our French herb and lemon marmalade, featuring a blend of fragrant herbs and citrus.', '37900123459288'),
(22, 'fr', 'Marmelade aux herbes et au citron français', 'Savourez la douceur de la France avec notre marmelade d\'herbes et de citron française, composée d\'un mélange d\'herbes parfumées et d\'agrumes.', '37900123459288'),
(23, 'en', 'Artisanal French Goat Cheese', 'Savor the rich flavors of France with our artisanal goat cheese, featuring a blend of creamy milk and herbs.', '37900123459395'),
(24, 'fr', 'Fromage chèvre artisanale français', 'Savourez les riches saveurs de la France avec notre fromage de chèvre artisanal, composé d\'un mélange de lait crémeux et d\'herbes.', '37900123459395'),
(25, 'en', 'French Apple Cider', 'Enjoy the sweetness of France with our French apple cider, featuring a blend of juicy fruits and spices.', '37900123459412'),
(26, 'fr', 'Cidre aux pommes français', 'Savourez la douceur de la France avec notre cidre de pomme français, composé d\'un mélange de fruits juteux et d\'épices.', '37900123459412'),
(27, 'en', 'Artisanal French Creamy Cheese Dip', 'Savor the rich flavors of France with our artisanal creamy cheese dip, featuring a blend of fresh herbs and spices.', '37900123459529'),
(28, 'fr', 'Mélange de dip à la crème française', 'Savourez les riches saveurs de la France avec notre trempette au fromage crémeuse artisanale, composée d\'un mélange d\'herbes fraîches et d\'épices.', '37900123459529'),
(29, 'en', 'French Herb and Garlic Sauce', 'Enjoy the richness of France with our French herb and garlic sauce, featuring a blend of fragrant herbs and spices.', '37900123459646'),
(30, 'fr', 'Sauce aux herbes et à l\'ail française', 'Savourez la richesse de la France avec notre sauce aux herbes et à l\'ail française, composée d\'un mélange d\'herbes parfumées et d\'épices.', '37900123459646'),
(31, 'en', 'Artisanal French Cream Cheese Spread', 'Savor the rich flavors of France with our artisanal cream cheese spread, featuring a blend of creamy milk and herbs.', '37900123459763'),
(32, 'fr', 'Fromage à la crème artisanale française pour tartiner', 'Savourez les riches saveurs de la France avec notre tartinade de fromage à la crème artisanale, composée d\'un mélange de lait crémeux et d\'herbes.', '37900123459763'),
(33, 'en', 'French Apple Compote', 'Enjoy the sweetness of France with our French apple compote, featuring a blend of juicy fruits and spices.', '37900123459870'),
(34, 'fr', 'Compote de pommes française', 'Savourez la douceur de la France avec notre compote de pommes française, composée d\'un mélange de fruits juteux et d\'épices.', '37900123459870'),
(35, 'en', 'Eco-Friendly Reusable Water Bottle', 'Stay hydrated and reduce plastic waste with our eco-friendly reusable water bottle, featuring a BPA-free design.', '37900234567890'),
(36, 'fr', 'Bouteille d\'eau réutilisable et écologique', 'Restez hydraté et réduisez les déchets plastiques avec notre bouteille d\'eau réutilisable respectueuse de l\'environnement, dotée d\'une conception sans BPA.', '37900234567890'),
(37, 'en', 'Artisanal Handmade Soap Set', 'Nourish your skin with our artisanal handmade soap set, featuring a blend of natural ingredients and essential oils.', '37900234567907'),
(38, 'fr', 'Ensemble de savons artisanaux faits à la main', 'Nourrissez votre peau avec notre ensemble de savons artisanaux faits à la main, contenant un mélange d\'ingrédients naturels et d\'huiles essentielles.', '37900234567907'),
(39, 'en', 'French Luxury Candles Set', 'Illuminate your space with our French luxury candles set, featuring a collection of scented candles in elegant packaging.', '37900234568024'),
(40, 'fr', 'Ensemble de bougies de luxe françaises', 'Illuminez votre espace avec notre coffret de bougies de luxe françaises, comprenant une collection de bougies parfumées dans un emballage élégant.', '37900234568024'),
(41, 'en', 'Eco-Friendly Bamboo Toothbrush Set', 'Brush your teeth and reduce waste with our eco-friendly bamboo toothbrush set, featuring a set of biodegradable toothbrushes and replaceable heads.', '37900234568141'),
(42, 'fr', 'Ensemble de brosses à dents en bambou écologiques', 'Brossez-vous les dents et réduisez les déchets avec notre ensemble de brosses à dents en bambou respectueux de l\'environnement, comprenant un ensemble de brosses à dents biodégradables et des têtes remplaçables.', '37900234568141'),
(43, 'en', 'Artisanal Handmade Jewelry Box', 'Store your treasured jewelry in style with our artisanal handmade jewelry box, featuring a beautifully crafted wooden design.', '37900234568258'),
(44, 'fr', 'Coffret à bijoux artisanal fait à la main', 'Rangez vos précieux bijoux avec style grâce à notre boîte à bijoux artisanale faite à la main, dotée d\'un design en bois magnifiquement conçu.', '37900234568258'),
(45, 'en', 'Luxury Essential Oil Diffuser', 'Pamper yourself with the scent of luxury essential oils using our luxury essential oil diffuser, featuring a stylish and modern design.', '37900234568375'),
(46, 'fr', 'Diffuseur d\'huiles essentielles de luxe', 'Faites-vous plaisir avec le parfum des huiles essentielles de luxe en utilisant notre diffuseur d\'huiles essentielles de luxe, doté d\'un design élégant et moderne.', '37900234568375'),
(47, 'en', 'Eco-Friendly Reusable Shopping Bag Set', 'Reduce plastic waste and go green with our eco-friendly reusable shopping bag set, featuring a set of durable cotton bags and recycled material handles.', '37900234568492'),
(48, 'fr', 'Ensemble de sacs de courses réutilisables et écologiques', 'Réduisez les déchets plastiques et passez au vert avec notre ensemble de sacs de courses réutilisables respectueux de l\'environnement, comprenant un ensemble de sacs en coton durables et des poignées en matériaux recyclés.', '37900234568492'),
(49, 'en', 'Artisanal Handmade Home Fragrance Spray', 'Freshen up your home with our artisanal handmade home fragrance spray, featuring a blend of natural ingredients and essential oils.', '37900234568509'),
(50, 'fr', 'Spray de parfum d\'ambiance artisanal fait à la main', 'Rafraîchissez votre maison avec notre spray parfumé d\'intérieur artisanal fait à la main, contenant un mélange d\'ingrédients naturels et d\'huiles essentielles.', '37900234568509'),
(51, 'en', 'French Luxury Aromatherapy Set', 'Pamper yourself with the scent of luxury aromatherapy using our French luxury aromatherapy set, featuring a collection of scented candles and essential oils.', '37900234568626'),
(52, 'fr', 'Ensemble d\'aromathérapie de luxe français', 'Faites-vous plaisir avec le parfum de l\'aromathérapie de luxe grâce à notre coffret d\'aromathérapie de luxe français, comprenant une collection de bougies parfumées et d\'huiles essentielles.', '37900234568626'),
(53, 'en', 'Eco-Friendly Reusable Lunch Box Set', 'Pack your lunch in style and reduce waste with our eco-friendly reusable lunch box set, featuring a set of durable cotton bags and recycled material handles.', '37900234568733'),
(54, 'fr', 'Ensemble de boîtes à lunch réutilisables et écologiques', 'Emballez votre déjeuner avec style et réduisez les déchets grâce à notre coffret à lunch réutilisable respectueux de l\'environnement, comprenant un ensemble de sacs en coton durables et des poignées en matériaux recyclés.', '37900234568733'),
(55, 'en', 'Artisanal Handmade Stationery Set', 'Stay organized and creative with our artisanal handmade stationery set, featuring a collection of handmade notebooks, pens, and pencils.', '37900234568850'),
(56, 'fr', 'Ensemble de papeterie artisanale faite à la main', 'Restez organisé et créatif avec notre ensemble de papeterie artisanale faite à la main, comprenant une collection de cahiers, de stylos et de crayons faits à la main.', '37900234568850'),
(57, 'en', 'Luxury Wall Art Print Set', 'Add some style to your walls with our luxury wall art print set, featuring a collection of high-quality prints from around the world.', '37900234568967'),
(58, 'fr', 'Ensemble d\'impressions murales de luxe', 'Ajoutez du style à vos murs avec notre ensemble d\'impressions murales de luxe, comprenant une collection d\'impressions de haute qualité du monde entier.', '37900234568967'),
(59, 'en', 'Eco-Friendly Reusable Phone Case Set', 'Protect your phone and reduce waste with our eco-friendly reusable phone case set, featuring a set of durable cotton cases and recycled material inserts.', '37900234569084'),
(60, 'fr', 'Ensemble de coques de téléphone réutilisables et écologiques', 'Protégez votre téléphone et réduisez les déchets avec notre ensemble de coques de téléphone réutilisables respectueuses de l\'environnement, comprenant un ensemble de coques en coton durables et d\'inserts en matériaux recyclés.', '37900234569084'),
(61, 'en', 'Artisanal Handmade Bookmarks Set', 'Mark your favorite pages in style with our artisanal handmade bookmarks set, featuring a collection of handmade bookmarks and book lights.', '37900234569101'),
(62, 'fr', 'Ensemble de marque-pages artisanaux faits à la main', 'Marquez vos pages préférées avec style avec notre ensemble de marque-pages artisanaux faits à la main, comprenant une collection de marque-pages et de lampes de lecture faits à la main.', '37900234569101'),
(63, 'en', 'French Luxury Desk Accessory Set', 'Elevate your workspace with our French luxury desk accessory set, featuring a collection of scented candles, essential oils, and handmade stationery.', '37900234569218'),
(64, 'fr', 'Ensemble d\'accessoires de bureau de luxe français', 'Améliorez votre espace de travail avec notre ensemble d\'accessoires de bureau de luxe français, comprenant une collection de bougies parfumées, d\'huiles essentielles et de papeterie faite à la main.', '37900234569218'),
(65, 'en', 'Eco-Friendly Reusable Travel Bag Set', 'Travel in style and reduce waste with our eco-friendly reusable travel bag set, featuring a set of durable cotton bags and recycled material handles.', '37900234569335'),
(66, 'fr', 'Ensemble de sacs de voyage réutilisables et écologiques', 'Voyagez avec style et réduisez les déchets avec notre ensemble de sacs de voyage réutilisables respectueux de l\'environnement, comprenant un ensemble de sacs en coton durables et de poignées en matériaux recyclés.', '37900234569335'),
(67, 'en', 'Artisanal Handmade Wall Hanging Set', 'Add some handmade charm to your walls with our artisanal handmade wall hanging set, featuring a collection of hand-painted ceramics and natural fibers.', '37900234569452'),
(68, 'fr', 'Ensemble de tentures murales artisanales faites à la main', 'Ajoutez un peu de charme artisanal à vos murs avec notre ensemble de tentures murales artisanales faites à la main, comprenant une collection de céramiques peintes à la main et de fibres naturelles.', '37900234569452');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_weight`
--

CREATE TABLE `product_weight` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gross` varchar(255) NOT NULL,
  `net` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `product_gtin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `product_weight`
--

INSERT INTO `product_weight` (`id`, `gross`, `net`, `unit`, `product_gtin`) VALUES
(1, '0.9', '0.4', 'g', '37900123458228'),
(2, '1.2', '0.8', 'g', '37900123458345'),
(3, '0.6', '0.5', 'g', '37900123458462'),
(4, '0.8', '0.6', 'g', '37900123458579'),
(5, '0.6', '0.5', 'g', '37900123458696'),
(6, '0.7', '0.55', 'g', '37900123458713'),
(7, '1', '0.85', 'g', '37900123458830'),
(8, '1.2', '0.9', 'g', '37900123458947'),
(9, '1', '0.85', 'g', '37900123459064'),
(10, '0.6', '0.5', 'g', '37900123459171'),
(11, '0.7', '0.55', 'g', '37900123459288'),
(12, '1', '0.85', 'g', '37900123459395'),
(13, '0.8', '0.6', 'g', '37900123459412'),
(14, '0.6', '0.5', 'g', '37900123459529'),
(15, '1', '0.85', 'g', '37900123459646'),
(16, '0.6', '0.5', 'g', '37900123459763'),
(17, '0.7', '0.55', 'g', '37900123459870'),
(18, '0.3', '0.2', 'g', '37900234567890'),
(19, '0.6', '0.5', 'g', '37900234567907'),
(20, '1', '0.85', 'g', '37900234568024'),
(21, '0.2', '0.1', 'g', '37900234568141'),
(22, '0.5', '0.4', 'g', '37900234568258'),
(23, '1', '0.85', 'g', '37900234568375'),
(24, '0.5', '0.4', 'g', '37900234568492'),
(25, '0.2', '0.1', 'g', '37900234568509'),
(26, '1', '0.85', 'g', '37900234568626'),
(27, '0.5', '0.4', 'g', '37900234568733'),
(28, '0.3', '0.2', 'g', '37900234568850'),
(29, '1', '0.85', 'g', '37900234568967'),
(30, '0.5', '0.4', 'g', '37900234569084'),
(31, '0.2', '0.1', 'g', '37900234569101'),
(32, '1', '0.85', 'g', '37900234569218'),
(33, '0.5', '0.4', 'g', '37900234569335'),
(34, '1', '0.85', 'g', '37900234569452');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cNKGFBk9ZWG0zJk5FJ9VUWte1AAZt8s4npcxj0L6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWndjYzQyMXdpNmRwR1BYNUQ0VTdyUGRxZ2g0QUNWa2VPQm5ZSDRkQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yal9tb2R1bGVfYi9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJhdXRoIjtiOjE7fQ==', 1748548575),
('fprcXa1rwR8K53viJ7syJ1Kg4nclj8bu1ahr5RrA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzNSUU5hVmVSS1V2MnZlY1pxSzB1UWZkV1ZwNUZOcDFKd1hJNlpFUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yal9tb2R1bGVfYi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1748544179);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices para tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices para tabela `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_company_id_foreign` (`company_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_company_id_foreign` (`company_id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`gtin`),
  ADD KEY `products_company_id_foreign` (`company_id`);

--
-- Índices para tabela `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_detail_product_gtin_foreign` (`product_gtin`);

--
-- Índices para tabela `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image_product_gtin_foreign` (`product_gtin`);

--
-- Índices para tabela `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_translations_product_gtin_foreign` (`product_gtin`);

--
-- Índices para tabela `product_weight`
--
ALTER TABLE `product_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_weight_product_gtin_foreign` (`product_gtin`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `owner`
--
ALTER TABLE `owner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `product_weight`
--
ALTER TABLE `product_weight`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_product_gtin_foreign` FOREIGN KEY (`product_gtin`) REFERENCES `products` (`gtin`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_product_gtin_foreign` FOREIGN KEY (`product_gtin`) REFERENCES `products` (`gtin`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_gtin_foreign` FOREIGN KEY (`product_gtin`) REFERENCES `products` (`gtin`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `product_weight`
--
ALTER TABLE `product_weight`
  ADD CONSTRAINT `product_weight_product_gtin_foreign` FOREIGN KEY (`product_gtin`) REFERENCES `products` (`gtin`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
