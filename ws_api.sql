-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 05:46 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ws_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 'BIG BANG', 'Hublot’s flagship model, the Big Bang has revolutionized the watchmaking universe with its extraordinary design. A contemporary icon, it is constantly reinventing itself.', '2020-05-21 04:57:56', '2020-05-28 10:51:26'),
(6, 'CLASSIC FUSION', 'Unique, strong and essential, the Classic Fusion collection reinterprets classic elegance with Hublot’s incomparable touch.', '2020-05-21 05:02:13', '2020-05-28 10:53:39'),
(7, 'SPIRIT OF BIG BANG', 'Hublot has adapted the spirit of Big Bang in an exclusive “barrel” shaped collection.', '2020-05-21 05:10:03', '2020-05-28 10:54:57'),
(8, 'MP', 'Born with innovation in mind, the models of the MP collection represent the fusion between revolutionary movements and spectacular designs.', '2020-05-21 05:11:23', '2020-05-28 10:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_05_19_063355_create_categories_table', 2),
(11, '2020_05_20_164207_create_products_table', 3),
(12, '2020_06_02_060732_create_orders_table', 4),
(13, '2020_06_03_040252_create_order_details_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `total`, `created_at`, `updated_at`) VALUES
(3, 5, 85, '2020-06-02 22:46:39', '2020-06-11 05:38:06'),
(5, 5, 999, '2020-06-02 22:54:29', '2020-06-11 05:45:16'),
(8, 5, 64800, '2020-06-02 23:06:07', '2020-06-02 23:06:07'),
(10, 5, 64800, '2020-06-02 23:08:51', '2020-06-02 23:08:51'),
(11, 5, 64800, '2020-06-02 23:11:12', '2020-06-02 23:11:12'),
(12, 5, 64800, '2020-06-02 23:18:25', '2020-06-02 23:18:25'),
(14, 5, 19900, '2020-06-02 23:22:45', '2020-06-02 23:22:45'),
(15, 5, 19900, '2020-06-02 23:26:34', '2020-06-02 23:26:34'),
(16, 5, 21900, '2020-06-10 03:22:54', '2020-06-10 03:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` bigint(20) UNSIGNED NOT NULL,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 8, 41, 1, '2020-06-02 23:06:08', '2020-06-02 23:06:08'),
(2, 8, 42, 3, '2020-06-02 23:06:08', '2020-06-03 04:41:42'),
(3, 11, 42, 1, '2020-06-02 23:11:13', '2020-06-02 23:11:13'),
(8, 16, 42, 5, '2020-06-10 03:22:56', '2020-06-11 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categoryId`, `name`, `price`, `description`, `image`, `created_at`, `updated_at`) VALUES
(40, 5, 'INTEGRAL TITANIUM 42MM', 19900, 'This is a genuine Hublot product.', '1590684000.png', '2020-05-28 11:10:00', '2020-05-28 11:10:00'),
(41, 5, 'INTEGRAL KING GOLD 42MM', 42900, 'This is a genuine Hublot product.', '1590684176.png', '2020-05-28 11:12:56', '2020-05-28 11:12:56'),
(42, 5, 'INTEGRAL ALL BLACK 42MM', 21900, 'This is a genuine Hublot product.', '1590684255.png', '2020-05-28 11:14:15', '2020-05-28 11:14:15'),
(43, 5, 'Integral Titanium Pavé 42MM', 65000, 'This is a genuine Hublot product.', '1590684462.png', '2020-05-28 11:17:42', '2020-05-28 11:17:42'),
(44, 5, 'Integral King Gold Pavé 42MM', 95000, 'This is a genuine Hublot product.', '1590684590.png', '2020-05-28 11:19:50', '2020-05-28 11:19:50'),
(45, 5, 'UNICO TITANIUM 45MM', 17900, 'This is a genuine Hublot product.', '1590685060.png', '2020-05-28 11:27:40', '2020-05-28 11:27:40'),
(46, 5, 'UNICO TITANIUM BLUE 45MM', 17900, 'This is a genuine Hublot product.', '1590685127.png', '2020-05-28 11:28:47', '2020-05-28 11:28:47'),
(47, 5, 'UNICO KING GOLD 45MM', 37900, 'This is a genuine Hublot product.', '1590685252.png', '2020-05-28 11:30:52', '2020-05-28 11:30:52'),
(48, 5, 'UNICO MAGIC GOLD 45MM', 22900, 'This is a genuine Hublot product.', '1590685324.png', '2020-05-28 11:32:04', '2020-05-28 11:32:04'),
(49, 5, 'UNICO TITANIUM WHITE 42MM', 16900, 'This is a genuine Hublot product.', '1590685489.png', '2020-05-28 11:34:49', '2020-05-28 11:34:49'),
(50, 5, 'UNICO KING GOLD WHITE 42MM', 34900, 'This is a genuine Hublot product.', '1590685689.png', '2020-05-28 11:38:09', '2020-05-28 11:38:09'),
(51, 5, 'UNICO KING GOLD CERAMIC 42MM', 31900, 'This is a genuine Hublot product.', '1590685891.png', '2020-05-28 11:41:31', '2020-05-28 11:41:31'),
(52, 5, 'UNICO BLACK MAGIC 42MM', 17900, 'This is a genuine Hublot product.', '1590685980.png', '2020-05-28 11:43:00', '2020-05-28 11:43:00'),
(53, 5, 'UNICO GOLF 45MM', 29900, 'This is a genuine Hublot product.', '1590686123.png', '2020-05-28 11:45:23', '2020-05-28 11:45:23'),
(54, 5, 'UNICO GOLF GREEN CARBON 45MM', 30900, 'This is a genuine Hublot product.', '1590686196.png', '2020-05-28 11:46:36', '2020-05-28 11:46:36'),
(55, 5, 'UNICO GMT TITANIUM BLUE CERAMIC 45MM', 19900, 'This is a genuine Hublot product.', '1590686664.png', '2020-05-28 11:54:24', '2020-05-28 11:54:24'),
(56, 5, 'UNICO GMT KING GOLD BLUE CERAMIC 45MM', 35900, 'This is a genuine Hublot product.', '1590686837.png', '2020-05-28 11:57:17', '2020-05-28 11:57:17'),
(57, 5, 'UNICO GMT CARBON BLUE CERAMIC 45MM', 22900, 'This is a genuine Hublot product.', '1590686931.png', '2020-05-28 11:58:51', '2020-05-28 11:58:51'),
(58, 8, 'MP-09 TOURBILLON BI-AXIS 3D CARBON 49MM', 180000, 'This is a genuine Hublot product.', '1590687844.png', '2020-05-28 12:14:04', '2020-05-28 12:14:04'),
(59, 8, 'TECHFRAME FERRARI TOURBILLON CHRONOGRAPH SAPPHIRE WHITE GOLD 45MM', 170000, 'This is a genuine Hublot product.', '1590688260.png', '2020-05-28 12:21:00', '2020-05-28 12:21:00'),
(60, 8, 'TECHFRAME FERRARI TOURBILLON CHRONOGRAPH CARBON YELLOW 45MM', 130000, 'This is a genuine Hublot product.', '1590688353.png', '2020-05-28 12:22:33', '2020-05-28 12:22:33'),
(82, 6, 'TITANIUM 42MM', 6800, 'This is a genuine Hublot product.', '1592024366.png', '2020-06-12 05:52:28', '2020-06-12 23:29:26'),
(83, 6, 'TITANIUM BLUE 42MM', 6800, 'This is a genuine Hublot product.', '1592024698.png', '2020-06-12 23:34:58', '2020-06-12 23:34:58'),
(88, 6, 'TITANIUM GREEN 42MM', 6800, 'This is a genuine Hublot product.', '1592030974.png', '2020-06-13 01:19:34', '2020-06-13 01:19:34'),
(89, 6, 'KING GOLD 42MM', 18300, 'This is a genuine Hublot product.', '1592031177.png', '2020-06-13 01:22:57', '2020-06-13 01:22:57'),
(90, 7, 'BLACK MAGIC 42MM', 23900, 'This is a genuine Hublot product.', '1592031934.png', '2020-06-13 01:35:34', '2020-06-13 01:35:34'),
(91, 7, 'SAPPHIRE 42MM', 75000, 'This is a genuine Hublot product.', '1592032073.png', '2020-06-13 01:37:53', '2020-06-13 01:37:53'),
(92, 7, 'YELLOW SAPPHIRE 45MM', 115000, 'This is a genuine Hublot product.', '1592032128.png', '2020-06-13 01:38:48', '2020-06-13 01:38:48'),
(93, 7, 'BLUE SAPPHIRE 42MM', 100000, 'This is a genuine Hublot product.', '1592032164.png', '2020-06-13 01:39:24', '2020-06-13 01:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `userType`, `contact`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '1@admin.com', '147258', 'admin', NULL, NULL, '2020-05-17 07:26:45', '2020-06-11 11:10:47'),
(2, 'tyler', 'tyler@ape.com', '147258', 'user', '987-654-3210', 'Asutin, Texas, USA', '2020-05-17 07:28:30', '2020-05-17 07:28:30'),
(3, 'leo', 'leo@messi.com', '369258', 'user', '987-654-3210', 'san rozario, argentina', '2020-05-17 07:29:15', '2020-06-01 11:33:50'),
(4, 'theo', 'theo@von.com', '123456', 'user', '987-654-3210', 'new orleans, loisianna', '2020-06-01 09:39:33', '2020-06-01 09:39:33'),
(5, 'yo', 'yo@yo.com', '147258', 'user', '987-654-3210', 'wuhan, china', '2020-06-01 09:49:23', '2020-06-11 14:12:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_userid_foreign` (`userId`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_orderid_foreign` (`orderId`),
  ADD KEY `order_details_productid_foreign` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categoryid_foreign` (`categoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_orderid_foreign` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
