-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 16, 2023 at 07:09 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricity2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `email`, `mobile`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Karlee', 'Park Street', 'karlee@gmail.com', '9999888776', 'Toronto', '2023-06-11 08:07:23', '2023-06-12 02:15:03'),
(6, 'Alice', 'New Town', 'alice@gmail.com', '2222333890', 'Brampton', '2023-06-11 09:51:53', '2023-06-12 02:13:57'),
(7, 'John', 'LA', 'john@gmail.com', '1234567890', 'LA', '2023-06-11 10:14:11', '2023-06-12 02:13:27'),
(9, 'Hrithik Bansal', 'E8', 'hrithiik@gmail.com', '8888999901', 'Gwalior', '2023-06-12 01:09:01', '2023-06-12 02:13:01'),
(11, 'HackerKernel', 'E8', 'hackerkernel@gmail.com', '12345678', 'Bhopal', '2023-06-15 06:58:30', '2023-06-16 01:18:50'),
(12, 'zz', 'zz', 'zz@zz.co', '11', 'zz', '2023-06-16 01:00:55', '2023-06-16 01:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_11_130943_create_customers_table', 1),
(6, '2023_06_11_131135_create_user_bills_table', 2),
(7, '2023_06_11_131751_add_bill_amount_to_user_bills', 3),
(8, '2023_06_11_154146_create_user_bills_table', 4),
(9, '2023_06_16_061200_create_unit_slabs_table', 5);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit_slabs`
--

CREATE TABLE `unit_slabs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_from` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_to` text COLLATE utf8mb4_unicode_ci,
  `price` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_slabs`
--

INSERT INTO `unit_slabs` (`id`, `unit_from`, `unit_to`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '50', '5', NULL, NULL),
(2, '51', '100', '8', NULL, NULL),
(3, '101', '250', '12', NULL, NULL),
(4, '250', NULL, '15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_bills`
--

CREATE TABLE `user_bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `bill_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_bills`
--

INSERT INTO `user_bills` (`id`, `user_id`, `month`, `amount`, `bill_amount`, `created_at`, `updated_at`) VALUES
(1, 1, '2', '4325.00', '0.00', '2023-06-11 10:12:11', '2023-06-11 10:12:11'),
(2, 6, '3', '6215.00', '0.00', '2023-06-11 10:12:48', '2023-06-11 10:12:48'),
(3, 7, '2', '6215.00', '0.00', '2023-06-11 10:14:32', '2023-06-11 10:14:32'),
(4, 9, '2', '15500.00', '0.00', '2023-06-12 01:10:24', '2023-06-12 01:10:24'),
(5, 6, '2', '17015.00', '0.00', '2023-06-12 01:11:18', '2023-06-12 01:11:18'),
(6, 6, '4', '30515.00', '0.00', '2023-06-12 01:11:23', '2023-06-12 01:11:23'),
(7, 6, '12', '17165.00', '0.00', '2023-06-12 01:11:29', '2023-06-12 01:11:29'),
(8, 1, '32', '17165.00', '0.00', '2023-06-12 01:11:34', '2023-06-12 01:11:34'),
(9, 9, '7', '1994.00', '0.00', '2023-06-12 01:11:44', '2023-06-12 01:11:44'),
(10, 1, '6', '30665.00', '0.00', '2023-06-12 01:12:06', '2023-06-12 01:12:06'),
(11, 1, '5', '3695.00', '0.00', '2023-06-12 01:12:13', '2023-06-12 01:12:13'),
(12, 11, '2', '3410.00', '0.00', '2023-06-15 06:58:59', '2023-06-15 06:58:59'),
(13, 1, '2', '-1285.00', '0.00', '2023-06-16 01:00:13', '2023-06-16 01:00:13'),
(14, 12, '12', '-1285.00', '0.00', '2023-06-16 01:01:08', '2023-06-16 01:01:08'),
(15, 1, '2', '-1285.00', '0.00', '2023-06-16 01:02:01', '2023-06-16 01:02:01'),
(16, 12, '2', '4325.00', '0.00', '2023-06-16 01:05:32', '2023-06-16 01:05:32'),
(17, 12, '2', '6215.00', '0.00', '2023-06-16 01:11:57', '2023-06-16 01:11:57'),
(18, 12, '2', '13730.00', '0.00', '2023-06-16 01:14:36', '2023-06-16 01:14:36'),
(19, 12, '21', '4325.00', '0.00', '2023-06-16 01:23:39', '2023-06-16 01:23:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `unit_slabs`
--
ALTER TABLE `unit_slabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_bills`
--
ALTER TABLE `user_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bills_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_slabs`
--
ALTER TABLE `unit_slabs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_bills`
--
ALTER TABLE `user_bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_bills`
--
ALTER TABLE `user_bills`
  ADD CONSTRAINT `user_bills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
