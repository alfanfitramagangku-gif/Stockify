-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2026 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockify`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `description`, `subject_type`, `subject_id`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(2, 1, 'created', 'Mencatat stok masuk: Payung Lipat sebanyak 10 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 02:18:02', '2026-09-28 02:18:02'),
(3, 1, 'created', 'Mencatat stok keluar: Pensil 2B sebanyak 30 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 02:29:02', '2026-09-28 02:29:02'),
(4, 3, 'updated', 'Mengonfirmasi stok masuk: Payung Lipat sebanyak 10 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 02:49:59', '2026-09-28 02:49:59'),
(5, 3, 'updated', 'Mengonfirmasi stok masuk: Payung Lipat sebanyak 10 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 02:50:02', '2026-09-28 02:50:02'),
(6, 3, 'updated', 'Mengonfirmasi stok masuk: Payung Lipat sebanyak 10 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 02:50:06', '2026-09-28 02:50:06'),
(7, 3, 'updated', 'Mengonfirmasi stok keluar: Pensil 2B sebanyak 30 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 02:50:15', '2026-09-28 02:50:15'),
(8, 2, 'created', 'Mencatat stok masuk: Headset Bluetooth sebanyak 10 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 05:26:36', '2026-09-28 05:26:36'),
(9, 1, 'updated', 'Mengubah data produk: Mouse Wireless Logitech (SKU: SKU002)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 06:12:17', '2026-09-28 06:12:17'),
(10, 1, 'updated', 'Mengubah data produk: Mouse Wireless Logitech (SKU: SKU002)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 06:13:41', '2026-09-28 06:13:41'),
(11, 1, 'updated', 'Mengubah data produk: Keyboard Mechanical (SKU: SKU003)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 06:19:04', '2026-09-28 06:19:04'),
(12, 1, 'updated', 'Mengubah data produk: Monitor LED Samsung (SKU: SKU004)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-28 06:20:04', '2026-09-28 06:20:04'),
(13, 3, 'created', 'Membuat Stock Opname untuk produk Stapler. Stok sistem: 20, stok fisik: 20, selisih: 0.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:41:48', '2026-09-29 05:41:48'),
(14, 3, 'updated', 'Mengonfirmasi Stock Opname untuk produk Stapler. Stok disesuaikan menjadi 20 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:41:59', '2026-09-29 05:41:59'),
(15, 3, 'updated', 'Mengonfirmasi stok masuk: Headset Bluetooth sebanyak 10 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:42:18', '2026-09-29 05:42:18'),
(16, 2, 'created', 'Mencatat stok keluar: Laptop ASUS VivoBook sebanyak 25 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:49:11', '2026-09-29 05:49:11'),
(17, 3, 'updated', 'Mengonfirmasi stok keluar: Laptop ASUS VivoBook sebanyak 25 unit.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:49:44', '2026-09-29 05:49:44'),
(18, 1, 'updated', 'Mengubah data produk: Laptop ASUS VivoBook (SKU: SKU001)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:51:50', '2026-09-29 05:51:50'),
(19, 1, 'updated', 'Mengubah data produk: Power Bank (SKU: SKU018)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:53:27', '2026-09-29 05:53:27'),
(20, 1, 'updated', 'Mengubah data produk: TWS Bluetooth Earphone (SKU: SKU017)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:56:08', '2026-09-29 05:56:08'),
(21, 1, 'updated', 'Mengubah data produk: Kalkulator (SKU: SKU016)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 05:57:23', '2026-09-29 05:57:23'),
(22, 1, 'created', 'Import produk selesai. 25 produk berhasil ditambahkan.', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(23, 1, 'deleted', 'Menghapus produk: Botol Minum (SKU: PLK-001)', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', '2026-09-29 06:42:54', '2026-09-29 06:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Elektronik', NULL, '2026-09-16 10:53:36', '2026-09-19 05:32:22'),
(3, 'Aksesoris', NULL, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(4, 'Alat Tulis', NULL, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(5, 'Perabotan', NULL, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(6, 'Perlengkapan', NULL, '2026-09-18 01:18:55', '2026-09-18 01:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2026_09_16_164911_create_categories_table', 2),
(6, '2026_09_16_174045_create_products_table', 3),
(7, '2026_09_16_175542_add_product_fields_to_products_table', 3),
(8, '2026_09_16_181355_create_suppliers_table', 4),
(9, '2026_09_16_182203_create_stock_ins_table', 5),
(10, '2026_09_16_183308_create_stock_outs_table', 6),
(11, '2026_09_16_184619_create_stock_opnames_table', 7),
(12, '2026_09_16_185858_add_minimum_stock_to_products_table', 8),
(13, '2026_09_17_073405_add_role_to_users_table', 9),
(14, '2026_09_18_125057_create_activity_logs_table', 10),
(15, '2026_09_18_074107_add_size_and_color_to_products_table', 11),
(16, '2026_09_18_081225_add_product_details_to_products_table', 11),
(17, '2026_09_21_021907_create_settings_table', 12),
(18, '2026_09_26_064028_add_confirmation_fields_to_stock_ins_and_stock_outs_tables', 13),
(19, '2026_09_26_070209_add_confirmation_to_stock_opnames_table', 14),
(20, '2026_09_28_083237_add_user_agent_to_activity_logs_table', 15),
(21, '2026_09_28_130101_add_image_to_products_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sku` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `purchase_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `minimum_stock` int(11) NOT NULL DEFAULT 5,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `size`, `color`, `image`, `sku`, `description`, `purchase_price`, `selling_price`, `stock`, `minimum_stock`, `created_at`, `updated_at`) VALUES
(3, 2, 'Laptop ASUS VivoBook', '14 inch', 'Silver', 'products/OFeMmrGIWeYP7cPZ9tBqx7VSJZvjh8pQ5GJcX9NP.jpg', 'SKU001', 'Laptop untuk kebutuhan kerja dan kuliah', 7500000.00, 8999000.00, 38, 5, '2026-09-18 01:18:54', '2026-09-29 05:51:50'),
(4, 2, 'Mouse Wireless Logitech', 'Standard', 'Hitam', 'products/Yo2qCmoucxc0liiby50QP8h8HAwe0dknvLoNoFoC.jpg', 'SKU002', 'Mouse tanpa kabel', 150000.00, 225000.00, 15, 5, '2026-09-18 01:18:55', '2026-09-28 06:12:17'),
(5, 2, 'Keyboard Mechanical', 'Full Size', 'Putih', 'products/l5RnS5czDNAzq59Rv4sRbMKkaoPtLPPT10RzCkQy.jpg', 'SKU003', 'Keyboard mechanical untuk komputer', 450000.00, 650000.00, 2, 5, '2026-09-18 01:18:55', '2026-09-28 06:19:04'),
(6, 2, 'Monitor LED Samsung', '24 inch', 'Hitam', 'products/OgXsjGB5fdlMibMPls6ypLRhxN8s4ifV3q1DSHTr.jpg', 'SKU004', 'Monitor LED Full HD', 1800000.00, 2250000.00, 4, 5, '2026-09-18 01:18:55', '2026-09-28 06:20:04'),
(7, 3, 'Flashdisk Sandisk', '64 GB', 'Hitam', NULL, 'SKU005', 'Flashdisk USB 3.0', 65000.00, 95000.00, 30, 10, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(8, 3, 'Tas Laptop', '15 inch', 'Abu-abu', NULL, 'SKU006', 'Tas laptop berbahan berkualitas', 180000.00, 275000.00, 22, 5, '2026-09-18 01:18:55', '2026-09-26 00:31:54'),
(9, 3, 'Kabel HDMI', '2 meter', 'Hitam', NULL, 'SKU007', 'Kabel HDMI berkualitas tinggi', 45000.00, 75000.00, 40, 10, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(10, 4, 'Buku Tulis', '58 lembar', 'Biru', NULL, 'SKU008', 'Buku tulis untuk keperluan kantor', 5000.00, 8500.00, 75, 20, '2026-09-18 01:18:55', '2026-09-18 23:41:23'),
(11, 4, 'Pulpen Gel', '0.5 mm', 'Hitam', NULL, 'SKU009', 'Pulpen gel tinta hitam', 3000.00, 5500.00, 60, 30, '2026-09-18 01:18:55', '2026-09-25 23:56:33'),
(12, 4, 'Pensil 2B', '2B', 'Hitam', NULL, 'SKU010', 'Pensil untuk menulis dan menggambar', 2000.00, 3500.00, 83, 25, '2026-09-18 01:18:55', '2026-09-28 02:50:15'),
(13, 4, 'Kertas A4', 'A4', 'Putih', NULL, 'SKU011', 'Kertas HVS ukuran A4', 45000.00, 60000.00, 50, 10, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(14, 4, 'Stapler', 'Medium', 'Biru', NULL, 'SKU012', 'Stapler untuk kebutuhan kantor', 25000.00, 40000.00, 20, 5, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(15, 5, 'Kursi Kantor', 'Standard', 'Hitam', NULL, 'SKU013', 'Kursi kantor ergonomis', 850000.00, 1250000.00, 6, 2, '2026-09-18 01:18:55', '2026-09-18 01:18:55'),
(17, 5, 'Rak Dokumen', '3 Susun', 'Putih', NULL, 'SKU015', 'Rak untuk menyimpan dokumen', 250000.00, 375000.00, 11, 3, '2026-09-18 01:18:55', '2026-09-19 01:43:27'),
(18, 2, 'Kalkulator', '12 Digit', 'Hitam', 'products/zeFhK620TIL6idFKFxxM1op3WAWluKzfAH7WA9mH.jpg', 'SKU016', 'Kalkulator untuk perhitungan kantor', 45000.00, 70000.00, 10, 5, '2026-09-18 01:18:55', '2026-09-29 05:57:23'),
(19, 2, 'TWS Bluetooth Earphone', 'Wireless', 'Hitam', 'products/r9hnbg1vyQyN5Katf9s7o3lj8J2CTsbwcxp2VrXW.jpg', 'SKU017', 'Black Open Ear True Wireless Earbuds TWS Bluetooth Earphone for Sport Running', 250000.00, 375000.00, 14, 5, '2026-09-18 01:18:55', '2026-09-29 05:56:08'),
(20, 2, 'Power Bank', '10000 mAh', 'Putih', 'products/5zaUEOf2ioiHUuUmljbFbvH8dLgIyXu4lZI1YYMo.jpg', 'SKU018', 'Power bank kapasitas 10000 mAh', 180000.00, 275000.00, 10, 3, '2026-09-18 01:18:55', '2026-09-29 05:53:27'),
(21, 6, 'Botol Minum', '750 ml', 'Biru', NULL, 'SKU019', 'Botol minum untuk aktivitas sehari-hari', 55000.00, 85000.00, 10, 5, '2026-09-18 01:18:55', '2026-09-22 23:22:44'),
(22, 6, 'Payung Lipat', 'Standard', 'Merah', NULL, 'SKU020', 'Payung lipat praktis', 65000.00, 100000.00, 33, 5, '2026-09-18 01:18:55', '2026-09-28 02:50:06'),
(23, 3, 'Gelang Stainless', 'All Size', 'Silver', NULL, 'AKS-001', 'Gelang stainless steel model minimalis', 25000.00, 45000.00, 30, 5, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(24, 3, 'Kalung Rantai', 'All Size', 'Gold', NULL, 'AKS-002', 'Kalung rantai fashion dengan desain elegan', 30000.00, 55000.00, 25, 5, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(25, 3, 'Topi Baseball', 'All Size', 'Hitam', NULL, 'AKS-003', 'Topi baseball casual bahan katun', 35000.00, 60000.00, 20, 5, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(26, 3, 'Dompet Kartu', 'All Size', 'Cokelat', NULL, 'AKS-004', 'Dompet kartu compact berbahan kulit sintetis', 30000.00, 55000.00, 18, 4, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(27, 3, 'Ikat Pinggang', 'L', 'Hitam', NULL, 'AKS-005', 'Ikat pinggang casual dengan gesper metal', 40000.00, 75000.00, 15, 3, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(28, 4, 'Pulpen Gel', '0.5 mm', 'Hitam', NULL, 'AT-001', 'Pulpen gel tinta hitam untuk menulis', 3000.00, 6000.00, 100, 20, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(29, 4, 'Pensil 2B', '2B', 'Hitam', NULL, 'AT-002', 'Pensil 2B untuk kebutuhan menulis dan ujian', 2000.00, 4000.00, 100, 20, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(30, 4, 'Buku Tulis', 'A5', 'Biru', NULL, 'AT-003', 'Buku tulis 50 lembar dengan sampul tebal', 7000.00, 12000.00, 60, 10, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(31, 4, 'Penghapus', 'Standard', 'Putih', NULL, 'AT-004', 'Penghapus putih untuk pensil', 1500.00, 3000.00, 80, 15, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(32, 4, 'Spidol Permanent', 'Standard', 'Hitam', NULL, 'AT-005', 'Spidol permanen tinta hitam', 5000.00, 9000.00, 50, 10, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(33, 2, 'Kabel Data USB Type-C', '1 Meter', 'Putih', NULL, 'ELK-001', 'Kabel data dan pengisian USB Type-C', 25000.00, 45000.00, 30, 5, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(34, 2, 'Charger USB 20W', '20W', 'Putih', NULL, 'ELK-002', 'Adaptor charger cepat USB 20W', 60000.00, 95000.00, 20, 4, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(35, 2, 'Mouse Wireless', 'Standard', 'Hitam', NULL, 'ELK-003', 'Mouse wireless untuk laptop dan komputer', 50000.00, 85000.00, 15, 3, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(36, 2, 'Headset Bluetooth', 'Standard', 'Hitam', NULL, 'ELK-004', 'Headset Bluetooth untuk musik dan panggilan', 90000.00, 140000.00, 12, 3, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(37, 2, 'Power Bank 10000mAh', '10000mAh', 'Hitam', NULL, 'ELK-005', 'Power bank kapasitas 10000mAh', 100000.00, 150000.00, 10, 2, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(38, 5, 'Lampu Meja', 'Standard', 'Putih', NULL, 'PRB-001', 'Lampu meja minimalis untuk belajar dan bekerja', 70000.00, 110000.00, 15, 3, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(39, 5, 'Rak Buku Mini', '3 Tingkat', 'Cokelat', NULL, 'PRB-002', 'Rak buku mini untuk menyimpan buku dan barang', 120000.00, 180000.00, 8, 2, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(40, 5, 'Tempat Sampah', '10 Liter', 'Abu-abu', NULL, 'PRB-003', 'Tempat sampah plastik kapasitas 10 liter', 35000.00, 60000.00, 20, 4, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(41, 5, 'Gantungan Baju', 'Standard', 'Putih', NULL, 'PRB-004', 'Gantungan baju plastik untuk pakaian', 5000.00, 10000.00, 50, 10, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(42, 5, 'Kotak Penyimpanan', '20 Liter', 'Transparan', NULL, 'PRB-005', 'Kotak penyimpanan serbaguna dengan tutup', 45000.00, 75000.00, 18, 4, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(44, 6, 'Payung Lipat', 'Standard', 'Hitam', NULL, 'PLK-002', 'Payung lipat praktis untuk aktivitas sehari-hari', 35000.00, 60000.00, 20, 4, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(45, 6, 'Tas Belanja Lipat', 'Standard', 'Hijau', NULL, 'PLK-003', 'Tas belanja reusable yang dapat dilipat', 15000.00, 30000.00, 40, 8, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(46, 6, 'Handuk Kecil', '30x50 cm', 'Putih', NULL, 'PLK-004', 'Handuk kecil lembut untuk kebutuhan sehari-hari', 20000.00, 35000.00, 25, 5, '2026-09-29 06:40:14', '2026-09-29 06:40:14'),
(47, 6, 'Sarung Tangan Kerja', 'L', 'Abu-abu', NULL, 'PLK-005', 'Sarung tangan kerja berbahan kain tebal', 15000.00, 30000.00, 20, 4, '2026-09-29 06:40:14', '2026-09-29 06:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Stockify', '2026-09-20 19:41:32', '2026-09-20 22:57:17'),
(2, 'app_logo', 'settings/lDfgmSnNbhA9p7afWZnGfeqrODLikHWaGDziV8p4.png', '2026-09-20 19:41:32', '2026-09-22 22:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `stock_ins`
--

CREATE TABLE `stock_ins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'confirmed',
  `confirmed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_ins`
--

INSERT INTO `stock_ins` (`id`, `product_id`, `supplier_id`, `quantity`, `date`, `description`, `status`, `confirmed_by`, `confirmed_at`, `created_at`, `updated_at`) VALUES
(4, 6, 1, 13, '2026-09-18', 'barang masuk', 'confirmed', NULL, NULL, '2026-09-18 06:06:44', '2026-09-18 06:06:44'),
(5, 3, 1, 3, '2026-09-19', 'baru', 'confirmed', NULL, NULL, '2026-09-18 23:56:26', '2026-09-18 23:56:26'),
(6, 18, 1, 2, '2026-09-19', 'masuk', 'confirmed', NULL, NULL, '2026-09-19 00:08:56', '2026-09-19 00:08:56'),
(7, 3, 2, 50, '2026-09-23', 'barang Baru', 'confirmed', NULL, NULL, '2026-09-22 23:21:55', '2026-09-22 23:21:55'),
(8, 22, 2, 14, '2026-09-26', 'masuk bos', 'confirmed', 3, '2026-09-25 23:52:59', '2026-09-25 23:52:06', '2026-09-25 23:52:59'),
(9, 8, 2, 22, '2026-09-26', 'cek dulu bos', 'confirmed', 3, '2026-09-26 00:30:48', '2026-09-26 00:29:22', '2026-09-26 00:30:48'),
(10, 20, 1, 10, '2026-09-28', 'Barang masuk, Tolong di periksa', 'confirmed', 3, '2026-09-28 01:08:51', '2026-09-28 01:08:18', '2026-09-28 01:08:51'),
(11, 20, 1, 10, '2026-09-28', 'barang baru', 'confirmed', 3, '2026-09-28 01:12:48', '2026-09-28 01:12:23', '2026-09-28 01:12:48'),
(12, 22, 2, 10, '2026-09-28', 'barang baru', 'confirmed', 3, '2026-09-28 02:50:06', '2026-09-28 01:35:25', '2026-09-28 02:50:06'),
(13, 22, 1, 10, '2026-09-28', 'barang masuk', 'confirmed', 3, '2026-09-28 02:50:02', '2026-09-28 01:37:34', '2026-09-28 02:50:02'),
(14, 22, 1, 10, '2026-09-28', 'Baraung baru', 'confirmed', 3, '2026-09-28 02:49:59', '2026-09-28 02:18:02', '2026-09-28 02:49:59'),
(15, 19, 1, 10, '2026-09-28', 'barang masuk', 'confirmed', 3, '2026-09-29 05:42:18', '2026-09-28 05:26:36', '2026-09-29 05:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `stock_opnames`
--

CREATE TABLE `stock_opnames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `system_stock` int(11) NOT NULL,
  `physical_stock` int(11) NOT NULL,
  `difference` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `confirmed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_opnames`
--

INSERT INTO `stock_opnames` (`id`, `product_id`, `system_stock`, `physical_stock`, `difference`, `date`, `description`, `status`, `confirmed_by`, `confirmed_at`, `created_at`, `updated_at`) VALUES
(3, 6, 4, 4, 0, '2026-09-19', 'bagus', 'confirmed', 3, '2026-09-28 01:06:24', '2026-09-19 01:16:07', '2026-09-28 01:06:24'),
(4, 17, 10, 11, 1, '2026-09-19', 'lebih', 'pending', NULL, NULL, '2026-09-19 01:43:27', '2026-09-19 01:43:27'),
(5, 21, 10, 10, 0, '2026-09-26', 'pas', 'confirmed', 3, '2026-09-26 00:46:42', '2026-09-25 21:22:13', '2026-09-26 00:46:42'),
(7, 21, 10, 10, 0, '2026-09-26', NULL, 'confirmed', 3, '2026-09-26 00:46:36', '2026-09-25 21:23:57', '2026-09-26 00:46:36'),
(8, 22, 15, 5, -10, '2026-09-26', NULL, 'confirmed', 3, '2026-09-26 00:25:41', '2026-09-25 23:53:34', '2026-09-26 00:25:41'),
(9, 12, 120, 113, -7, '2026-09-26', 'done', 'confirmed', 3, '2026-09-26 00:24:45', '2026-09-26 00:23:46', '2026-09-26 00:24:45'),
(10, 13, 50, 50, 0, '2026-09-26', 'bagus', 'confirmed', 3, '2026-09-26 00:24:40', '2026-09-26 00:24:06', '2026-09-26 00:24:40'),
(11, 22, 5, 3, -2, '2026-09-26', 'barang 2 rusak', 'confirmed', 3, '2026-09-26 00:27:01', '2026-09-26 00:26:51', '2026-09-26 00:27:01'),
(12, 8, 23, 22, -1, '2026-09-26', 'ada 1 barang tidak bisa di pakai lagi', 'confirmed', 3, '2026-09-26 00:31:54', '2026-09-26 00:31:40', '2026-09-26 00:31:54'),
(13, 4, 25, 15, -10, '2026-09-26', '2 barang rusak dalam pengecekan', 'confirmed', 3, '2026-09-26 00:45:55', '2026-09-26 00:44:01', '2026-09-26 00:45:55'),
(14, 17, 11, 11, 0, '2026-09-26', 'sesuai', 'confirmed', 3, '2026-09-26 00:46:26', '2026-09-26 00:46:21', '2026-09-26 00:46:26'),
(15, 4, 15, 15, 0, '2026-09-28', 'barang pass, dan bagus', 'confirmed', 3, '2026-09-28 01:06:13', '2026-09-28 01:06:07', '2026-09-28 01:06:13'),
(16, 20, 10, 0, -10, '2026-09-28', '2 barang ada yg tidak berfungsi', 'confirmed', 3, '2026-09-28 01:11:29', '2026-09-28 01:09:35', '2026-09-28 01:11:29'),
(17, 20, 10, 10, 0, '2026-09-28', 'barang sesuai', 'confirmed', 3, '2026-09-28 01:13:43', '2026-09-28 01:13:37', '2026-09-28 01:13:43'),
(18, 14, 20, 20, 0, '2026-09-29', 'siap edar', 'confirmed', 3, '2026-09-29 05:41:59', '2026-09-29 05:41:48', '2026-09-29 05:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `stock_outs`
--

CREATE TABLE `stock_outs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'confirmed',
  `confirmed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_outs`
--

INSERT INTO `stock_outs` (`id`, `product_id`, `quantity`, `date`, `destination`, `description`, `status`, `confirmed_by`, `confirmed_at`, `created_at`, `updated_at`) VALUES
(4, 10, 25, '2026-09-19', 'kantor 1', 'acc', 'confirmed', NULL, NULL, '2026-09-18 23:41:23', '2026-09-18 23:41:23'),
(5, 6, 4, '2026-09-19', 'kantor 1', 'acc', 'confirmed', NULL, NULL, '2026-09-18 23:51:19', '2026-09-18 23:51:19'),
(6, 22, 6, '2026-09-19', 'kantor 1', 'acc', 'confirmed', NULL, NULL, '2026-09-19 00:09:24', '2026-09-19 00:09:24'),
(7, 6, 6, '2026-09-19', 'kantor 1', 'otw', 'confirmed', NULL, NULL, '2026-09-19 01:13:28', '2026-09-19 01:13:28'),
(8, 21, 12, '2026-09-23', 'kantor 1', 'otw', 'confirmed', NULL, NULL, '2026-09-22 23:22:44', '2026-09-22 23:22:44'),
(9, 8, 14, '2026-09-23', 'kantor 2', 'barang otw', 'confirmed', NULL, NULL, '2026-09-23 01:48:15', '2026-09-23 01:48:15'),
(10, 20, 9, '2026-09-23', 'kantor 2', 'otw', 'confirmed', NULL, NULL, '2026-09-23 01:49:04', '2026-09-23 01:49:04'),
(11, 19, 10, '2026-09-23', 'kantor 3', 'brang otw', 'confirmed', NULL, NULL, '2026-09-23 01:49:48', '2026-09-23 01:49:48'),
(12, 5, 10, '2026-09-23', 'kantor 3', 'otw', 'confirmed', NULL, NULL, '2026-09-23 01:54:07', '2026-09-23 01:54:07'),
(13, 22, 9, '2026-09-26', 'kantor 3', 'otw', 'confirmed', NULL, NULL, '2026-09-25 18:16:43', '2026-09-25 18:16:43'),
(14, 11, 90, '2026-09-26', 'kantor 3', 'Siap memdarat di kantor 3', 'confirmed', 3, '2026-09-25 23:56:33', '2026-09-25 23:55:12', '2026-09-25 23:56:33'),
(15, 11, 100, '2026-09-26', 'kantor 3', 'otw', 'pending', NULL, NULL, '2026-09-25 23:55:53', '2026-09-25 23:55:53'),
(16, 12, 30, '2026-09-28', 'kantor 2', 'tolong', 'confirmed', 3, '2026-09-28 02:50:15', '2026-09-28 02:29:02', '2026-09-28 02:50:15'),
(17, 3, 25, '2026-09-29', 'kantor 2', 'otw bos', 'confirmed', 3, '2026-09-29 05:49:44', '2026-09-29 05:49:11', '2026-09-29 05:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, 'P.T MbahnyaBagas', '0888888888', 'Bantul', 'ccc', '2026-09-16 11:19:42', '2026-09-20 18:59:20'),
(2, 'PT. Yitno', '08777777777', 'Sedayu', NULL, '2026-09-19 05:33:02', '2026-09-19 05:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','manager','staff') NOT NULL DEFAULT 'staff',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$bmM7uXP/i4i/AOp2Csr1regkI8a5h9Ru4R1oR/UNL2pukPq1QqRNm', 'admin', NULL, '2026-09-17 00:08:38', '2026-09-18 00:19:12'),
(2, 'Manager Gudang', 'manager@gmail.com', NULL, '$2y$10$iOtYGcY0cUysctUwfpD5sekN2lhPotNItJjaBDlfc6d.pyHJyPOAW', 'manager', NULL, '2026-09-17 00:47:13', '2026-09-19 00:43:34'),
(3, 'Staff Gudang', 'staff@gmail.com', NULL, '$2y$10$LYH6pHZfB2s5to0GT6J3NuXYg8vzitaGvjMaX8YSxq094esrGBYV6', 'staff', NULL, '2026-09-17 00:47:21', '2026-09-19 00:44:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`),
  ADD KEY `activity_logs_subject_type_subject_id_index` (`subject_type`,`subject_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `stock_ins`
--
ALTER TABLE `stock_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_ins_product_id_foreign` (`product_id`),
  ADD KEY `stock_ins_supplier_id_foreign` (`supplier_id`),
  ADD KEY `stock_ins_confirmed_by_foreign` (`confirmed_by`);

--
-- Indexes for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_opnames_product_id_foreign` (`product_id`),
  ADD KEY `stock_opnames_confirmed_by_foreign` (`confirmed_by`);

--
-- Indexes for table `stock_outs`
--
ALTER TABLE `stock_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_outs_product_id_foreign` (`product_id`),
  ADD KEY `stock_outs_confirmed_by_foreign` (`confirmed_by`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_ins`
--
ALTER TABLE `stock_ins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `stock_outs`
--
ALTER TABLE `stock_outs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_ins`
--
ALTER TABLE `stock_ins`
  ADD CONSTRAINT `stock_ins_confirmed_by_foreign` FOREIGN KEY (`confirmed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_ins_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_ins_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_opnames`
--
ALTER TABLE `stock_opnames`
  ADD CONSTRAINT `stock_opnames_confirmed_by_foreign` FOREIGN KEY (`confirmed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_opnames_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_outs`
--
ALTER TABLE `stock_outs`
  ADD CONSTRAINT `stock_outs_confirmed_by_foreign` FOREIGN KEY (`confirmed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stock_outs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
