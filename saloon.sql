-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 07:42 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saloon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email_verified_at` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `role`, `email`, `mobile`, `email_verified_at`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '$2y$10$QrmxxNtcAVBhzVVQLAP/COjcbXBCBKk/G.xGVIkxTCJ34uXeXzjVe', 1, 'admin@gmail.com', '0123456789', '', 1, 'TdW0xwRAdze4l6WPazwN0itmCZuGUhUnx70251uoGOAUJdMmyoloFnXV8Dwl', '2020-07-09 18:30:00', '2020-07-09 18:30:00');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_09_074500_create_categories_table', 1),
(4, '2020_01_09_130030_create_roles_table', 1),
(5, '2020_01_09_130155_create_privileges_table', 1),
(6, '2020_01_21_063725_create_user_details_table', 1),
(7, '2020_01_23_101502_create_business_names_table', 1),
(8, '2020_01_27_040619_create_blogs_table', 2),
(9, '2020_01_27_042013_create_events_table', 3),
(10, '2020_01_27_042021_create_galleries_table', 3),
(11, '2020_01_27_054320_create_contact_us_table', 4),
(12, '2020_02_04_043030_create_news_table', 5),
(13, '2020_02_04_100035_create_pages_table', 6),
(14, '2020_03_11_101021_create_faqs_table', 7),
(15, '2020_03_11_105937_create_jobs_table', 8),
(16, '2020_03_11_105948_create_achievements_table', 8),
(17, '2020_03_13_062423_create_tak_patrikas_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `person_type` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 : Active, 0 : inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `person_type`, `price`, `title`, `slug`, `description`, `images`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 180, 'Women Hair Cut', 'women-hair-cut', 'We have arranged everything you need to get ready for parties, occasions, trips or your personal routines. Get your hairs a new color and show off.', 'img2_1594379970.jpg', 1, '2020-07-10 05:49:30', '2020-07-10 06:03:26'),
(2, 1, 150, 'Facial', 'facial', 'Feeling dull? Or need to glow your face for a special occasion? Just book this service and we will take care of everything you need.', 'img4_1594380020.jpg', 1, '2020-07-10 05:50:20', '2020-07-10 06:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_email` varchar(255) DEFAULT NULL,
  `setting_mobile` varchar(255) NOT NULL,
  `setting_address` text NOT NULL,
  `gen_slot_hour` float(11,2) DEFAULT NULL,
  `pre_slot_hour` float(11,2) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_email`, `setting_mobile`, `setting_address`, `gen_slot_hour`, `pre_slot_hour`, `updated_at`, `created_at`) VALUES
(2, 'abcd@gmail.com', '123456789456', 'jaipur inida', 26.50, 51.10, '2020-07-10 06:21:22', '2020-07-01 04:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'img2_1594370365.jpg', 1, '4vHsFVQK5M3zkWKkHFFLKoWtB7fIr8MqGEQspLOtixiZCzcrfD', '2020-07-10 03:03:58', '2020-07-10 03:09:25'),
(3, '1559673531_1594381925.jpg', 1, 'Pc6Q7FYbCtp7N1hUwiC3CdVv3Fw6sqBgVHhvW8dtVeNIqvQJOV', '2020-07-10 06:22:05', '2020-07-10 06:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL COMMENT '1 = super admin , 2 = Admin,  3 = Headcount user ',
  `abbreviation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Inactive = 0, Active = 1',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `abbreviation`, `name`, `gender`, `email`, `mobile`, `email_verified_at`, `password`, `photo`, `status`, `is_delete`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'Super Admin', NULL, 'prem.h99group@gmail.com', NULL, NULL, '$2y$10$QrmxxNtcAVBhzVVQLAP/COjcbXBCBKk/G.xGVIkxTCJ34uXeXzjVe', NULL, 1, 0, NULL, '2020-01-08 14:31:14', '2020-01-08 14:31:14'),
(2, 2, NULL, 'Admin', NULL, 'admin123@gmail.com', NULL, NULL, '$2y$10$QrmxxNtcAVBhzVVQLAP/COjcbXBCBKk/G.xGVIkxTCJ34uXeXzjVe', NULL, 1, 0, 'Fo6KKx4ZWTQEuNwzTU9F811ECazw8jaO1VEiBKMrvbrLE0mzSaR4avoPhyYs', '2020-01-08 14:31:14', '2020-01-08 14:31:14'),
(9, 2, NULL, 'Abhishek Mittal', NULL, 'mittalh99group@gmail.com', NULL, NULL, '$2y$10$sXILyGkQYlZhz0TUJHB4iO6T0qbTBt1ntOF9wJ05Z5...iVhHdasG', NULL, 0, 0, 'SqiurhiQhwhOCb8fODAcZpZjOYmj4gp1G4nPpwb9Mu7IXQLWB9MogVT2vxLF', '2020-07-09 08:35:13', '2020-07-09 08:35:13'),
(10, 2, NULL, 'tarun', NULL, 'tarun@gmail.com', NULL, NULL, '$2y$10$zwUUdTKE9iJUFjlioS.m4erNDSHLINuIJj6Jl8WPmiCfNT9VqJ762', NULL, 0, 0, '6gW5s36BWuXvV8A55iF1HIiOmDJ76yoFvrY6vNsFWxOLPI2aX2Ia2YtSTJim', '2020-07-09 23:52:10', '2020-07-09 23:52:10'),
(11, 2, NULL, 'Gopal Sharma', NULL, 'gopal@gmail.com', NULL, NULL, '$2y$10$nGnRpeydAV1GmJK9IPKiZ.yfZxjqagDR8HtzeVdmeS327mtQvPkqS', NULL, 0, 0, NULL, '2020-07-10 06:31:35', '2020-07-10 06:31:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
