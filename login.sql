-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2024 at 08:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_19_132220_create_stores_table', 1),
(5, '2024_05_21_065957_add_status_to_stores_table', 1),
(6, '2024_05_21_072050_create_roles_table', 1),
(7, '2024_05_24_100635_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `store_id`, `name`, `slug`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Officiis Eius Voluptates Saepe Ex Magni Rerum.', 'officiis-eius-voluptates-saepe-ex-magni-rerum', 501641, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(2, 1, 'Nam Fugiat Id Aut Et Consectetur Maxime Aliquid.', 'nam-fugiat-id-aut-et-consectetur-maxime-aliquid', 164664, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(3, 1, 'Quo Corporis Vero Doloribus Aut Voluptatem Odit.', 'quo-corporis-vero-doloribus-aut-voluptatem-odit', 600049, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(4, 1, 'Illum Qui Est Et Ea Qui Non Et Ipsam.', 'illum-qui-est-et-ea-qui-non-et-ipsam', 662345, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(5, 1, 'Iure Eius Commodi Voluptatem Aliquid Culpa.', 'iure-eius-commodi-voluptatem-aliquid-culpa', 815460, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(6, 1, 'Facere Enim Expedita Saepe Et Explicabo Placeat.', 'facere-enim-expedita-saepe-et-explicabo-placeat', 440055, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(7, 1, 'Est Exercitationem In Consequatur Esse.', 'est-exercitationem-in-consequatur-esse', 891400, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(8, 1, 'Occaecati Possimus Facilis Eum Quia Cupiditate Corrupti Ut.', 'occaecati-possimus-facilis-eum-quia-cupiditate-corrupti-ut', 749592, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(9, 1, 'Esse Quo Officia Sunt Voluptatibus.', 'esse-quo-officia-sunt-voluptatibus', 304152, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(10, 1, 'Ea Accusamus Eos Architecto Velit Quas Ab Ex.', 'ea-accusamus-eos-architecto-velit-quas-ab-ex', 168097, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(11, 1, 'Sit Qui Quod Non Accusantium.', 'sit-qui-quod-non-accusantium', 966062, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(12, 1, 'Quisquam Consequatur Qui Enim Fugit A Voluptatem Tenetur.', 'quisquam-consequatur-qui-enim-fugit-a-voluptatem-tenetur', 392179, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(13, 1, 'Fuga Et Doloribus Amet Delectus Vero Consequuntur.', 'fuga-et-doloribus-amet-delectus-vero-consequuntur', 546334, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(14, 1, 'Ex Eius Sunt Quos Possimus Nam.', 'ex-eius-sunt-quos-possimus-nam', 201442, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(15, 1, 'Delectus Sed Qui Velit Rem Reiciendis Rerum Corrupti Voluptate.', 'delectus-sed-qui-velit-rem-reiciendis-rerum-corrupti-voluptate', 899590, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(16, 1, 'Pariatur Sint Fugit Voluptas Ducimus Eaque.', 'pariatur-sint-fugit-voluptas-ducimus-eaque', 402502, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(17, 1, 'Dignissimos Asperiores Unde Quidem Beatae Et Consequatur Sed.', 'dignissimos-asperiores-unde-quidem-beatae-et-consequatur-sed', 559311, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(18, 1, 'Sunt Soluta Suscipit Eaque Omnis Natus Aliquam.', 'sunt-soluta-suscipit-eaque-omnis-natus-aliquam', 150693, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(19, 1, 'Incidunt Voluptas Dolores Eius Qui Eius Rerum.', 'incidunt-voluptas-dolores-eius-qui-eius-rerum', 546985, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(20, 1, 'Et Provident Est Inventore Nihil.', 'et-provident-est-inventore-nihil', 652193, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(21, 2, 'Et Commodi Reiciendis Et Voluptatem Eius.', 'et-commodi-reiciendis-et-voluptatem-eius', 704034, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(22, 2, 'Voluptas Autem Similique Porro.', 'voluptas-autem-similique-porro', 644862, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(23, 2, 'Eum Debitis Asperiores Cumque Sapiente Tempora Non Vel.', 'eum-debitis-asperiores-cumque-sapiente-tempora-non-vel', 236917, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(24, 2, 'Laborum Alias Non Aliquid A.', 'laborum-alias-non-aliquid-a', 756124, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(25, 2, 'Commodi Minima Est Ipsam Iusto Est Quam Quis.', 'commodi-minima-est-ipsam-iusto-est-quam-quis', 962947, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(26, 2, 'Voluptatibus Harum Blanditiis Eum Ea Voluptas Est.', 'voluptatibus-harum-blanditiis-eum-ea-voluptas-est', 328234, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(27, 2, 'Quia Repellat Et Et Optio Sed.', 'quia-repellat-et-et-optio-sed', 816372, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(28, 2, 'Similique Itaque Enim Totam Itaque Aut Aut.', 'similique-itaque-enim-totam-itaque-aut-aut', 837932, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(29, 2, 'Ut Sunt Quia Id Ut.', 'ut-sunt-quia-id-ut', 495940, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(30, 2, 'Aliquam Et Dolores Nulla Amet Ullam Ut Velit Vel.', 'aliquam-et-dolores-nulla-amet-ullam-ut-velit-vel', 685612, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(31, 2, 'Facere Dolorem Veniam Et Cupiditate.', 'facere-dolorem-veniam-et-cupiditate', 117271, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(32, 2, 'Aut Porro Eaque Magni Ex Accusamus Eius Maxime.', 'aut-porro-eaque-magni-ex-accusamus-eius-maxime', 563896, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(33, 2, 'Deserunt Corporis Delectus Consequuntur Expedita Eos Ea Eum Facilis.', 'deserunt-corporis-delectus-consequuntur-expedita-eos-ea-eum-facilis', 562882, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(34, 2, 'Ipsa Quia Quia Deleniti Omnis Non Quo Dolorem.', 'ipsa-quia-quia-deleniti-omnis-non-quo-dolorem', 919015, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(35, 2, 'Rerum Sint Voluptatibus Accusantium Ipsam.', 'rerum-sint-voluptatibus-accusantium-ipsam', 416955, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(36, 2, 'Fuga Occaecati Est Suscipit Et Qui Magni Qui.', 'fuga-occaecati-est-suscipit-et-qui-magni-qui', 536392, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(37, 2, 'Iusto Accusantium Non Impedit Earum Est Rerum Praesentium.', 'iusto-accusantium-non-impedit-earum-est-rerum-praesentium', 457103, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(38, 2, 'Id Aut Occaecati Sit.', 'id-aut-occaecati-sit', 631959, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(39, 2, 'Rerum Ipsam Asperiores Ut Quasi Impedit.', 'rerum-ipsam-asperiores-ut-quasi-impedit', 704255, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(40, 2, 'Cumque Nemo Rerum Omnis Ut Quisquam Qui Neque Et.', 'cumque-nemo-rerum-omnis-ut-quisquam-qui-neque-et', 429416, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(41, 3, 'Repellat Officiis Necessitatibus Modi Cupiditate.', 'repellat-officiis-necessitatibus-modi-cupiditate', 748949, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(42, 3, 'Consectetur Omnis Dicta Similique Sit Amet Totam Eaque.', 'consectetur-omnis-dicta-similique-sit-amet-totam-eaque', 316900, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(43, 3, 'Distinctio Repudiandae Doloremque Et Nobis Non.', 'distinctio-repudiandae-doloremque-et-nobis-non', 956796, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(44, 3, 'Maiores Explicabo Eos Deleniti Officiis Vitae Voluptatem Asperiores.', 'maiores-explicabo-eos-deleniti-officiis-vitae-voluptatem-asperiores', 375900, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(45, 3, 'Necessitatibus Reiciendis Fuga Ullam Necessitatibus.', 'necessitatibus-reiciendis-fuga-ullam-necessitatibus', 171088, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(46, 3, 'Perferendis Quia Quasi Et Temporibus Alias Rerum.', 'perferendis-quia-quasi-et-temporibus-alias-rerum', 747164, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(47, 3, 'Eius Quos Laboriosam Qui Ut Et Est Nihil Vel.', 'eius-quos-laboriosam-qui-ut-et-est-nihil-vel', 412609, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(48, 3, 'Nobis Recusandae Recusandae Ex Reprehenderit Aut Non.', 'nobis-recusandae-recusandae-ex-reprehenderit-aut-non', 514224, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(49, 3, 'Iste Facere Sit Officiis Sit Voluptatem.', 'iste-facere-sit-officiis-sit-voluptatem', 588841, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(50, 3, 'Placeat Debitis Neque Maxime Delectus Sed Autem.', 'placeat-debitis-neque-maxime-delectus-sed-autem', 238779, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(51, 3, 'Optio Fugiat Exercitationem Sapiente Consequatur.', 'optio-fugiat-exercitationem-sapiente-consequatur', 648087, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(52, 3, 'Asperiores Quam Animi Ratione.', 'asperiores-quam-animi-ratione', 264541, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(53, 3, 'Velit Quaerat Ducimus Accusamus Ipsam Officia Sit Placeat.', 'velit-quaerat-ducimus-accusamus-ipsam-officia-sit-placeat', 818619, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(54, 3, 'Et Nobis At Quisquam Ex Eum Ut.', 'et-nobis-at-quisquam-ex-eum-ut', 390480, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(55, 3, 'Sunt Fuga Quia Enim Unde Eum Incidunt Eveniet.', 'sunt-fuga-quia-enim-unde-eum-incidunt-eveniet', 943254, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(56, 3, 'Iste Aut Odit Quam Quibusdam Reprehenderit Veniam Nobis.', 'iste-aut-odit-quam-quibusdam-reprehenderit-veniam-nobis', 344189, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(57, 3, 'Praesentium Consequatur Expedita Ducimus Sed.', 'praesentium-consequatur-expedita-ducimus-sed', 547785, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(58, 3, 'Molestiae Labore Earum Ipsa Dolore Quia.', 'molestiae-labore-earum-ipsa-dolore-quia', 673558, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(59, 3, 'Est Voluptas Voluptatum Est Quaerat.', 'est-voluptas-voluptatum-est-quaerat', 661048, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(60, 3, 'Possimus Autem Doloribus Est.', 'possimus-autem-doloribus-est', 531395, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(61, 4, 'Cupiditate Rem Et Perspiciatis Non Rerum.', 'cupiditate-rem-et-perspiciatis-non-rerum', 184719, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(62, 4, 'Voluptas Cum Molestiae Est Minima A.', 'voluptas-cum-molestiae-est-minima-a', 440292, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(63, 4, 'Sed Veniam Consectetur Quia Ea Quis Dignissimos Optio.', 'sed-veniam-consectetur-quia-ea-quis-dignissimos-optio', 815125, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(64, 4, 'Hic Ab Iusto Et Deleniti.', 'hic-ab-iusto-et-deleniti', 427134, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(65, 4, 'Aut Repellat Consectetur Incidunt.', 'aut-repellat-consectetur-incidunt', 820811, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(66, 4, 'Ipsa Corporis Quia Veniam Earum.', 'ipsa-corporis-quia-veniam-earum', 412571, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(67, 4, 'Qui Temporibus Tempora Dolore Veritatis Quod.', 'qui-temporibus-tempora-dolore-veritatis-quod', 919400, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(68, 4, 'Dolores Delectus Et Temporibus Eaque Nobis Est.', 'dolores-delectus-et-temporibus-eaque-nobis-est', 945594, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(69, 4, 'Voluptatem Suscipit Aliquam Est Et.', 'voluptatem-suscipit-aliquam-est-et', 922583, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(70, 4, 'Sit Nihil Est Explicabo Perferendis Eos Non Eos.', 'sit-nihil-est-explicabo-perferendis-eos-non-eos', 150692, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(71, 4, 'Pariatur Tempore In Aut.', 'pariatur-tempore-in-aut', 239585, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(72, 4, 'Nulla Consequatur Sed Nisi Inventore Cum.', 'nulla-consequatur-sed-nisi-inventore-cum', 527915, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(73, 4, 'Nihil Sit Numquam Facilis Voluptas Aut Et.', 'nihil-sit-numquam-facilis-voluptas-aut-et', 952796, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(74, 4, 'Quia Qui Ullam In.', 'quia-qui-ullam-in', 972389, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(75, 4, 'Ad Natus Vitae Dolore Accusamus.', 'ad-natus-vitae-dolore-accusamus', 214372, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(76, 4, 'Reprehenderit Reiciendis Accusamus Exercitationem Eum Voluptas Nihil Soluta.', 'reprehenderit-reiciendis-accusamus-exercitationem-eum-voluptas-nihil-soluta', 230256, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(77, 4, 'Aliquid Necessitatibus Magnam Ab Vel Vero Odio Alias.', 'aliquid-necessitatibus-magnam-ab-vel-vero-odio-alias', 536429, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(78, 4, 'Eaque Quibusdam In Officiis Odit Iusto Voluptatem.', 'eaque-quibusdam-in-officiis-odit-iusto-voluptatem', 410119, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(79, 4, 'Fugiat Delectus Incidunt Tempora Molestiae Voluptatibus Et.', 'fugiat-delectus-incidunt-tempora-molestiae-voluptatibus-et', 700516, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(80, 4, 'Illum Vero Quis Sint Ducimus.', 'illum-vero-quis-sint-ducimus', 846999, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(81, 5, 'Et Consequatur Culpa Sapiente Beatae Distinctio Quibusdam.', 'et-consequatur-culpa-sapiente-beatae-distinctio-quibusdam', 465446, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(82, 5, 'Dolores Sit Impedit Soluta Qui Error.', 'dolores-sit-impedit-soluta-qui-error', 979017, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(83, 5, 'Eos Minima Voluptas Eveniet Eum Quam.', 'eos-minima-voluptas-eveniet-eum-quam', 585120, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(84, 5, 'Asperiores Pariatur Excepturi Sequi.', 'asperiores-pariatur-excepturi-sequi', 221344, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(85, 5, 'Occaecati Iure Adipisci Magni Ea Ut Qui.', 'occaecati-iure-adipisci-magni-ea-ut-qui', 577819, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(86, 5, 'Eum Amet Est Nesciunt Tempora Beatae Dolores Quo.', 'eum-amet-est-nesciunt-tempora-beatae-dolores-quo', 895369, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(87, 5, 'Molestiae Nihil Ut Neque Consequatur Consectetur Quis Corrupti.', 'molestiae-nihil-ut-neque-consequatur-consectetur-quis-corrupti', 473892, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(88, 5, 'Qui Dignissimos Est Veritatis Sequi.', 'qui-dignissimos-est-veritatis-sequi', 934948, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(89, 5, 'Quidem Quae Ut Qui Iste Libero.', 'quidem-quae-ut-qui-iste-libero', 932233, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(90, 5, 'Et Quo Molestias Et.', 'et-quo-molestias-et', 583258, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(91, 5, 'Qui Et Voluptas Possimus Autem Ducimus.', 'qui-et-voluptas-possimus-autem-ducimus', 551129, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(92, 5, 'Esse Nemo Sit Maiores Neque Ea Corrupti.', 'esse-nemo-sit-maiores-neque-ea-corrupti', 878580, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(93, 5, 'Id Accusamus Molestiae Aut Ea.', 'id-accusamus-molestiae-aut-ea', 158616, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(94, 5, 'Praesentium Sunt Vitae Ut Dignissimos Occaecati.', 'praesentium-sunt-vitae-ut-dignissimos-occaecati', 180497, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(95, 5, 'Perspiciatis Accusantium Neque Vel Est Sunt Aut Et.', 'perspiciatis-accusantium-neque-vel-est-sunt-aut-et', 884870, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(96, 5, 'Non Blanditiis Quia Laudantium Minus.', 'non-blanditiis-quia-laudantium-minus', 323664, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(97, 5, 'Minima Velit Voluptate Soluta Ducimus Laudantium Porro Autem.', 'minima-velit-voluptate-soluta-ducimus-laudantium-porro-autem', 413431, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(98, 5, 'Fugit Est Enim Laboriosam Illo Quia Deleniti Amet.', 'fugit-est-enim-laboriosam-illo-quia-deleniti-amet', 755875, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(99, 5, 'Et Ad Aperiam Quo Dolor Tenetur.', 'et-ad-aperiam-quo-dolor-tenetur', 542538, '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(100, 5, 'Natus Omnis Maiores Sunt Delectus Soluta Aut Dignissimos.', 'natus-omnis-maiores-sunt-delectus-soluta-aut-dignissimos', 404111, '2024-05-28 00:51:15', '2024-05-28 00:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(2, 'partner', '2024-05-28 00:51:15', '2024-05-28 00:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Z7LbQK7OWxKZA0KARjHYNIm7KwsagwJxfrCJf3hB', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVXlpRzVVUVJaZ2VwZjg5bFB2aElnRXNReFBsZXdvT2JJTk9oUDBmbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2dpbi50ZXN0L3N0b3Jlcy9wcmFlc2VudGl1bSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1716882737);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `logo`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, NULL, 'Quo', 'quo', 'Et omnis laborum voluptas autem et illo. Ipsam earum doloremque consequatur est et. Atque et est non blanditiis est. Quia eaque sequi molestias sunt ut expedita soluta.\n\nAtque quo est laborum. Accusamus enim quos aspernatur corporis eligendi. Laboriosam nihil animi non est et eos.', 'active', '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(2, 10, NULL, 'Quo', 'quo', 'Voluptas assumenda voluptatem harum. Ad ex earum repellat aut sequi nam magnam hic. Hic non veritatis amet sed. Reiciendis voluptas ipsum id explicabo.\n\nVelit odit est error reprehenderit sed. Sit et accusantium sint sit unde magni. Omnis est earum rem aut. Consectetur doloribus at voluptatem deleniti.', 'active', '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(3, 4, NULL, 'Praesentium', 'praesentium', 'Nemo sed quia recusandae est. Illum iusto facilis est aliquid architecto delectus. Itaque rerum mollitia atque dolore praesentium amet. Voluptatibus est iure ut nulla consequatur odio.\n\nNumquam sapiente consectetur libero eum porro vitae sit. Sequi ad exercitationem aut quia ratione libero ab. Quo voluptatem ducimus ducimus sit quos illum. Est et ut accusantium et vitae iste. Non repellendus ducimus corrupti impedit adipisci.', 'active', '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(4, 7, NULL, 'Aut', 'aut', 'Laborum aliquam quaerat ratione veritatis. Sed amet et velit occaecati. Voluptates culpa occaecati at perspiciatis soluta. Sequi consequuntur consectetur praesentium quam.\n\nTenetur et hic vero quam corrupti vero. Fugit nesciunt pariatur et quos. Culpa commodi odio aut labore deserunt quasi fugit.', 'active', '2024-05-28 00:51:15', '2024-05-28 00:51:15'),
(5, 5, NULL, 'Sed', 'sed', 'Aut qui consequatur magni. Quo laborum hic enim recusandae tenetur ea ullam. Explicabo qui quas et et reprehenderit quae laboriosam.\n\nAut natus ea eum nihil provident odit illum non. Ea repudiandae qui eius incidunt. Corrupti delectus ut ut cupiditate. Architecto odio molestiae nostrum unde maiores.', 'active', '2024-05-28 00:51:15', '2024-05-28 00:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Reza Yuansyah Putra', 'rezawijaya9624@gmail.com', '2024-05-28 00:51:14', '$2y$12$hEEykoRm5vlzPZBE6cBUbuDEsAj5X7AO.t.Dmp9bVAfXtSFXx7czu', NULL, '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(2, 'Arturo Stoltenberg', 'samantha.brown@example.com', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'RZpas4RO1F', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(3, 'Prof. Tremayne Howe', 'okon.delphine@example.org', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'Klko3cROVG', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(4, 'Alia Rempel', 'freeman54@example.com', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'glWEvxRwa0', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(5, 'Mr. Josue Hegmann Jr.', 'fredy88@example.com', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'Gw89AUoxai', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(6, 'Flo Bergstrom', 'darrick.okuneva@example.org', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'oB9a5Jrg16', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(7, 'Collin Hudson', 'ygrimes@example.net', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'RAEGbbFTzP', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(8, 'Trisha Spinka MD', 'waltenwerth@example.net', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'H0MUZ34l4P', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(9, 'Dr. Maria Sawayn', 'udach@example.net', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', 'TrfZtG17zF', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(10, 'Ruthie Mosciski', 'alegros@example.net', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', '8ac3GIKCeg', '2024-05-28 00:51:14', '2024-05-28 00:51:14'),
(11, 'Dr. Vincenzo Reichert IV', 'roger.wisozk@example.com', '2024-05-28 00:51:14', '$2y$12$loPnkXB68rp0k31C4xaAJOZrdFYUx/vdq37kOSVfAFkrny40TM3G2', '4CqCmz73Gv', '2024-05-28 00:51:14', '2024-05-28 00:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_store_id_foreign` (`store_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
