-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2025 at 02:06 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
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
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 11, 'Heller, Strosin and Bogisich', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(2, 12, 'Hickle-Kihn', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(3, 13, 'Weimann-Klein', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(4, 14, 'Rippin LLC', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(5, 15, 'Dietrich Ltd', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(6, 16, 'Wehner Group', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(7, 17, 'Murazik, Koepp and Berge', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(8, 18, 'Jacobson-Bergnaum', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(9, 19, 'Torp-Bergstrom', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(10, 20, 'Zieme, Grant and Dooley', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(11, 21, 'Durgan and Sons', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(12, 22, 'Schmidt-Gulgowski', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(13, 23, 'Shields, Schneider and Jacobi', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(14, 24, 'Friesen, Grimes and Paucek', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(15, 25, 'Rodriguez LLC', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(16, 26, 'Nicolas, Jakubowski and Marvin', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(17, 27, 'Powlowski-Oberbrunner', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(18, 28, 'Lemke, Strosin and Klocko', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(19, 29, 'Lebsack, Littel and Schimmel', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(20, 30, 'Hagenes, Kemmer and Huels', '2025-11-27 10:36:05', '2025-11-27 10:36:05');

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
-- Table structure for table `job_listings`
--

CREATE TABLE `job_listings` (
  `id` bigint UNSIGNED NOT NULL,
  `employer_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_listings`
--

INSERT INTO `job_listings` (`id`, `employer_id`, `title`, `salary`, `created_at`, `updated_at`) VALUES
(1, 1, 'Radio and Television Announcer', '$50,000 USD', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(2, 2, 'Military Officer', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(3, 3, 'Animal Trainer', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(4, 4, 'Veterinary Technician', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(5, 5, 'Packer and Packager', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(6, 6, 'Aircraft Engine Specialist', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(7, 7, 'Construction Laborer', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(8, 8, 'Dancer', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(9, 9, 'Grinder OR Polisher', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(10, 10, 'Travel Clerk', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(11, 11, 'Food Batchmaker', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(12, 12, 'Chemical Engineer', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(13, 13, 'Forest and Conservation Technician', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(14, 14, 'RN', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(15, 15, 'Clinical Psychologist', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(16, 16, 'Photographic Process Worker', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(17, 17, 'Cook', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(18, 18, 'Physical Therapist Assistant', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(19, 19, 'Audio and Video Equipment Technician', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(20, 20, 'Occupational Therapist Aide', '$50,000 USD', '2025-11-27 10:36:06', '2025-11-27 10:36:06'),
(21, 1, 'Laracast Video Producer', '$90,000 USD per year', '2025-11-28 13:00:37', '2025-11-28 13:00:37'),
(22, 1, 'Laracast Video Producer', '$90,000 USD per year', '2025-11-28 13:03:23', '2025-11-28 13:03:23'),
(23, 1, 'Laracast Instructor', '$40,000 $ per year', '2025-12-01 08:01:09', '2025-12-01 08:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `job_tag`
--

CREATE TABLE `job_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `job_listing_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2025_11_24_142550_create_job_listings_table', 1),
(5, '2025_11_24_164525_create_employers_table', 1),
(6, '2025_11_25_142233_create_tags_table', 1);

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
('zZPHyLmLenc3pt1yfd7qdvDMzhCmrNnq1wYuW5fv', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNXlQOEZnbnRtMlFOVVpvNkU2VTVhQlpaVDdCZDVENDBhS2dNNHU3VyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1764591017);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jamison', 'Romaguera', 'wvolkman@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'qQlCdTPzU25xmPxc2AHTjMzHJ1218e09JMmTR4syNmaTS9jOZCyHZo3pCqDz', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(2, 'Dandre', 'Bartoletti', 'montana.koch@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '79GX1hNDNq', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(3, 'Charlie', 'Bruen', 'zgrimes@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'XNdZfzK0oI', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(4, 'Jerod', 'Price', 'keven.stoltenberg@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'yUPji3ufNh', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(5, 'Theodora', 'Mills', 'bahringer.skye@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'Ei1jRMkMn2', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(6, 'Jaquelin', 'Quitzon', 'ggerlach@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '2INxmKeOB6', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(7, 'Hester', 'Auer', 'jwilliamson@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'R9iVCmmaDu', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(8, 'Jarod', 'Lakin', 'rowan97@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'NcOzW9DSDb', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(9, 'Nick', 'Hudson', 'hprohaska@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'Y8fVKm7b7B', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(10, 'Roosevelt', 'Marvin', 'keanu.flatley@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'MU3Yoo49RU', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(11, 'Herman', 'Bradtke', 'tgoldner@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'EUPTYQMNNk', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(12, 'Dedrick', 'Wilkinson', 'wendell65@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '8T3bPk4zP6', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(13, 'Erling', 'Kris', 'abbott.kenny@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'ZNySZZXBqT', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(14, 'Leonel', 'Koepp', 'schuppe.natalia@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'pt0HuOJC0C', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(15, 'Sallie', 'Kemmer', 'crona.pamela@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '4uUVCCSw6Z', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(16, 'Kristina', 'Trantow', 'christy98@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '5vRKzNKoML', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(17, 'Breanne', 'Crist', 'floyd84@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'GFKxUFlWFr', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(18, 'Emmet', 'Dare', 'elvera87@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'qeULIrZNKa', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(19, 'Raheem', 'Gibson', 'uhudson@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'szKXRXCEf1', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(20, 'Aniyah', 'Kling', 'bill58@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '7pQ7eoW9q8', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(21, 'Waylon', 'Hessel', 'kcrona@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'ugUdz7tBU8', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(22, 'Ethelyn', 'Upton', 'priscilla89@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'syPJUTlc23', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(23, 'Vita', 'Ortiz', 'alden.stracke@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'vWnxrvvhkk', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(24, 'Riley', 'Turcotte', 'kuhic.fern@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'myzQ77eJHu', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(25, 'Leone', 'Schmidt', 'cummerata.reece@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'Hyocrk9NX9', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(26, 'Jessy', 'Shanahan', 'ikeebler@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '7MFJsJWP4w', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(27, 'Wiley', 'Klein', 'katrina97@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'FOcRvCSUox', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(28, 'Tyra', 'Nitzsche', 'awalter@example.org', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', '69utKBxV2F', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(29, 'Fleta', 'Hudson', 'nolan.alice@example.net', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'Uju1c48j48', '2025-11-27 10:36:05', '2025-11-27 10:36:05'),
(30, 'Armand', 'Lind', 'wolson@example.com', '2025-11-27 10:36:05', '$2y$12$yO89z4OUIP4DdHYY7gYw0ulOCp6AZlScge3ovLP4/wf8IAnS/DF2S', 'oPPmCjcd1Q4m3cLLhvFPVOlvZdtd0q4h2dyBEgU3LRAn3BWMlWh4CY5eUvPu', '2025-11-27 10:36:05', '2025-11-27 10:36:05');

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
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `job_listings`
--
ALTER TABLE `job_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_tag`
--
ALTER TABLE `job_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_tag_job_listing_id_foreign` (`job_listing_id`),
  ADD KEY `job_tag_tag_id_foreign` (`tag_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_listings`
--
ALTER TABLE `job_listings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `job_tag`
--
ALTER TABLE `job_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_tag`
--
ALTER TABLE `job_tag`
  ADD CONSTRAINT `job_tag_job_listing_id_foreign` FOREIGN KEY (`job_listing_id`) REFERENCES `job_listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
