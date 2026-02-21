-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2025 at 06:11 PM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creativedesignbd_ecommerce1`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(31, 5, 'public/uploads/banner/1765339425ani.webp', '#', 1, '2025-01-10 06:20:54', '2025-12-10 04:03:45'),
(33, 7, 'public/uploads/banner/1765339420ani.webp', '#', 1, '2025-01-10 06:38:05', '2025-12-10 04:03:40'),
(37, 5, 'public/uploads/banner/1765339410ani.webp', '#', 1, '2025-02-23 09:07:12', '2025-12-10 04:03:30'),
(40, 9, 'public/uploads/banner/1765339401ani.webp', '#', 1, '2025-02-23 09:35:34', '2025-12-10 04:03:21'),
(41, 10, 'public/uploads/banner/1765339391ani.webp', '#', 1, '2025-02-23 09:49:34', '2025-12-10 04:03:11'),
(42, 11, 'public/uploads/banner/1765339380ani.webp', '#', 1, '2025-02-23 09:54:24', '2025-12-10 04:03:00'),
(50, 8, 'public/uploads/banner/17627569661760726244173643113867575302_2472100143020289_2326622559207948288_n.jpg', '#', 1, '2025-11-10 06:42:46', '2025-11-10 06:42:46'),
(52, 1, 'public/uploads/banner/17653395575.webp', '#', 1, '2025-12-03 16:46:17', '2025-12-10 04:05:57'),
(53, 1, 'public/uploads/banner/17653395524.webp', '#', 1, '2025-12-03 16:46:49', '2025-12-10 04:05:52'),
(54, 1, 'public/uploads/banner/17653395463.webp', '#', 1, '2025-12-03 16:47:04', '2025-12-10 04:05:46'),
(55, 1, 'public/uploads/banner/17653395402.webp', '#', 1, '2025-12-03 16:47:20', '2025-12-10 04:05:40'),
(56, 1, 'public/uploads/banner/17653395351.webp', '#', 1, '2025-12-03 16:47:34', '2025-12-10 04:05:35'),
(57, 6, 'public/uploads/banner/1765339311ani.webp', '#', 1, '2025-12-03 17:01:15', '2025-12-10 04:01:51'),
(58, 6, 'public/uploads/banner/1765339293ani.webp', '#', 1, '2025-12-03 17:01:37', '2025-12-10 04:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2023-10-01 04:15:55'),
(5, 'Slider Bottom Ads (425X212px)', 1, '2023-11-19 04:36:08', '2023-11-19 05:25:34'),
(6, 'Footer Top Ads', 1, '2023-11-19 05:25:46', '2023-11-19 05:25:46'),
(7, 'Campaign', 1, '2024-07-06 15:42:31', '2024-08-17 05:24:42'),
(8, 'Customer Review', 1, '2024-11-07 10:19:17', '2024-11-07 10:24:47'),
(9, 'Hotdeals Baner', 1, '2025-02-23 09:34:40', '2025-02-23 09:34:40'),
(10, 'Home Ads', 1, '2025-02-23 09:47:22', '2025-02-23 09:47:22'),
(11, 'Home Ads 2', 1, '2025-02-23 09:51:07', '2025-05-07 09:56:35'),
(12, 'home', 1, '2025-11-27 14:03:05', '2025-12-11 03:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(18, 'RFL', 'rfl', 'public/uploads/brand/1763623615-rfl-logo-png_seeklogo-250040.webp', 1, '2025-11-20 07:26:55', '2025-11-20 07:26:55'),
(19, 'Lotus Herbal', 'lotus-herbal', NULL, 1, '2025-12-11 11:29:24', '2025-12-11 11:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `billing_details` varchar(255) DEFAULT 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন',
  `badge_text` varchar(255) DEFAULT NULL,
  `hero_heading` varchar(255) DEFAULT NULL,
  `hero_subtitle` text DEFAULT NULL,
  `hero_list_1` varchar(255) DEFAULT NULL,
  `hero_list_2` varchar(255) DEFAULT NULL,
  `hero_list_3` varchar(255) DEFAULT NULL,
  `hero_list_4` varchar(255) DEFAULT NULL,
  `hero_list_5` varchar(255) DEFAULT NULL,
  `hero_list_6` varchar(255) DEFAULT NULL,
  `rating_text` varchar(255) DEFAULT NULL,
  `review1_name` varchar(255) DEFAULT NULL,
  `review1_location` varchar(255) DEFAULT NULL,
  `review1_rating` tinyint(1) DEFAULT 5,
  `review1_text` text DEFAULT NULL,
  `review2_name` varchar(255) DEFAULT NULL,
  `review2_location` varchar(255) DEFAULT NULL,
  `review2_rating` tinyint(1) DEFAULT 5,
  `review2_text` text DEFAULT NULL,
  `review3_name` varchar(255) DEFAULT NULL,
  `review3_location` varchar(255) DEFAULT NULL,
  `review3_rating` tinyint(1) DEFAULT 5,
  `faq_q1` varchar(255) DEFAULT NULL,
  `faq_a1` text DEFAULT NULL,
  `faq_q2` varchar(255) DEFAULT NULL,
  `faq_a2` text DEFAULT NULL,
  `faq_q3` varchar(255) DEFAULT NULL,
  `faq_a3` text DEFAULT NULL,
  `faq_q4` varchar(255) DEFAULT NULL,
  `faq_a4` text DEFAULT NULL,
  `review3_text` text DEFAULT NULL,
  `feature1_title` varchar(255) DEFAULT NULL,
  `feature1_text` text DEFAULT NULL,
  `feature1_image` varchar(255) DEFAULT NULL,
  `feature2_title` varchar(255) DEFAULT NULL,
  `feature2_text` text DEFAULT NULL,
  `feature2_image` varchar(255) DEFAULT NULL,
  `why1_icon` varchar(50) DEFAULT NULL,
  `why1_title` varchar(255) DEFAULT NULL,
  `why1_text` text DEFAULT NULL,
  `why2_icon` varchar(50) DEFAULT NULL,
  `why2_title` varchar(255) DEFAULT NULL,
  `why2_text` text DEFAULT NULL,
  `why3_icon` varchar(50) DEFAULT NULL,
  `why3_title` varchar(255) DEFAULT NULL,
  `why3_text` text DEFAULT NULL,
  `why4_icon` varchar(50) DEFAULT NULL,
  `why4_title` varchar(255) DEFAULT NULL,
  `why4_text` text DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_subtitle` text DEFAULT NULL,
  `banner_image1` varchar(255) DEFAULT NULL,
  `banner_image2` varchar(255) DEFAULT NULL,
  `gallery_image1` varchar(255) DEFAULT NULL,
  `gallery_image2` varchar(255) DEFAULT NULL,
  `gallery_image3` varchar(255) DEFAULT NULL,
  `gallery_image4` varchar(255) DEFAULT NULL,
  `gallery_image5` varchar(255) DEFAULT NULL,
  `gallery_image6` varchar(255) DEFAULT NULL,
  `gallery_image7` varchar(255) DEFAULT NULL,
  `gallery_image8` varchar(255) DEFAULT NULL,
  `help_messenger_link` varchar(255) DEFAULT NULL,
  `help_whatsapp_link` varchar(255) DEFAULT NULL,
  `help_call_number` varchar(50) DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hero_badge_text` varchar(255) DEFAULT NULL,
  `hero_rating_text` varchar(255) DEFAULT NULL,
  `hero_title` varchar(255) DEFAULT NULL,
  `primary_btn_text` varchar(255) DEFAULT NULL,
  `secondary_btn_text` varchar(255) DEFAULT NULL,
  `banner_quote` varchar(255) DEFAULT NULL,
  `banner_subtext` varchar(255) DEFAULT NULL,
  `review_section_title` varchar(255) DEFAULT NULL,
  `review1_city` varchar(255) DEFAULT NULL,
  `review1_stars` varchar(255) DEFAULT NULL,
  `review2_city` varchar(255) DEFAULT NULL,
  `review2_stars` varchar(255) DEFAULT NULL,
  `review3_city` varchar(255) DEFAULT NULL,
  `review3_stars` varchar(255) DEFAULT NULL,
  `show_product` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `slug`, `product_id`, `status`, `created_at`, `updated_at`, `billing_details`, `badge_text`, `hero_heading`, `hero_subtitle`, `hero_list_1`, `hero_list_2`, `hero_list_3`, `hero_list_4`, `hero_list_5`, `hero_list_6`, `rating_text`, `review1_name`, `review1_location`, `review1_rating`, `review1_text`, `review2_name`, `review2_location`, `review2_rating`, `review2_text`, `review3_name`, `review3_location`, `review3_rating`, `faq_q1`, `faq_a1`, `faq_q2`, `faq_a2`, `faq_q3`, `faq_a3`, `faq_q4`, `faq_a4`, `review3_text`, `feature1_title`, `feature1_text`, `feature1_image`, `feature2_title`, `feature2_text`, `feature2_image`, `why1_icon`, `why1_title`, `why1_text`, `why2_icon`, `why2_title`, `why2_text`, `why3_icon`, `why3_title`, `why3_text`, `why4_icon`, `why4_title`, `why4_text`, `banner_title`, `banner_subtitle`, `banner_image1`, `banner_image2`, `gallery_image1`, `gallery_image2`, `gallery_image3`, `gallery_image4`, `gallery_image5`, `gallery_image6`, `gallery_image7`, `gallery_image8`, `help_messenger_link`, `help_whatsapp_link`, `help_call_number`, `video`, `short_description`, `description`, `hero_badge_text`, `hero_rating_text`, `hero_title`, `primary_btn_text`, `secondary_btn_text`, `banner_quote`, `banner_subtext`, `review_section_title`, `review1_city`, `review1_stars`, `review2_city`, `review2_stars`, `review3_city`, `review3_stars`, `show_product`) VALUES
(13, 'খুলনার বিখ্যাত চুইঝাল!', 'khulnar-bikhzat-cuijhal', 181, '0', '2024-11-21 15:57:07', '2025-12-09 06:57:36', 'আমাদের সকল প্যাকেজ সমূহ', NULL, NULL, 'নিজ হাতে প্রস্তুত ঘানি ভাঙ্গা সরিষার তেল আর বিশেষ মশলার মিশেলে তৈরি আমাদের চুইঝাল। গরু, খাসি, হাঁস কিংবা মাছ – যেকোনো মাংসের সাথে রান্না করে পেয়ে যান খুলনার আসল স্বাদ।', 'হোমমেড – কোন প্রিজারভেটিভ নেই', 'ঘানি ভাঙ্গা সরিষার তেল', 'খাঁটি চুই গাছ থেকে তৈরি', 'দেশব্যাপী কুরিয়ার ডেলিভারি', 'ফুড গ্রেড প্যাকেট', 'ক্যাশ অন ডেলিভারি', NULL, 'মোঃ নাইম হোসেন', NULL, 5, 'গরুর মাংসে চুইঝাল দিয়ে রান্না করেছিলাম – অসাধারণ স্বাদ! খুলনায় যে স্বাদ পেয়েছিলাম, একদম সেইরকম লেগেছে।', 'মোঃ হাসিনা রহমান', NULL, 5, 'গরুর মাংসে চুইঝাল দিয়ে রান্না করেছিলাম – অসাধারণ স্বাদ! খুলনায় যে স্বাদ পেয়েছিলাম, একদম সেইরকম লেগেছে।', 'মোঃ নজরুল ইসলাম', NULL, 5, 'চুইঝাল কতদিন ভালো থাকে?', 'ভ্যাকুয়াম প্যাক অবস্থায় স্বাভাবিক রুম টেম্পারেচারে কমপক্ষে ৬–৮ মাস ভালো থাকে। ফ্রিজে রাখলে আরও বেশি সময় ভালো থাকে।', 'ডেলিভারি চার্জ কত?', 'ঢাকার ভেতরে হোম ডেলিভারি ৮০–১০০ টাকা, ঢাকার বাইরে কুরিয়ার অফিস ডেলিভারি সাধারণত ১৩০–১৫০ টাকা (কুরিয়ার ভেদে ভিন্ন হতে পারে)।', 'কিভাবে অর্ডার কনফার্ম হবে?', 'ওয়েবসাইটে অর্ডার করার পর আমাদের কল সেন্টার থেকে আপনাকে ফোন করা হবে। ঠিকানা কনফার্ম করার পরই অর্ডার প্রসেস করা হয়।', 'পেমেন্ট কি আগেই করতে হবে?', 'না, বেশিরভাগ ক্ষেত্রে ক্যাশ অন ডেলিভারি। তবে চাইলে বিকাশ/রকেটে প্রিপেমেন্টও করতে পারবেন।', 'গরুর মাংসে চুইঝাল দিয়ে রান্না করেছিলাম – অসাধারণ স্বাদ! খুলনায় যে স্বাদ পেয়েছিলাম, একদম সেইরকম লেগেছে।', 'কাঁচা চুইঝালের আসল ঝাঁজ', 'খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...', 'public/uploads/campaign/1765032810-feature1_image-2.webp', 'দীর্ঘদিন ভালো থাকে', 'খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...খুলনা অঞ্চলের নির্বাচিত চুই গাছের নরম অংশ সংগ্রহ করে...', 'public/uploads/campaign/1765032811-feature2_image-3-1.webp', '🏠', 'হোমমেড', 'আমাদের নিজস্ব কিচেনে স্বাস্থ্যসম্মত উপায়ে তৈরি করা হয়।', '🌿', 'অরিজিনাল মান', 'খুলনার আসল চুই গাছ ছাড়া অন্য কিছু মেশানো হয় না।', '🚚', 'দেশব্যাপী ডেলিভারি', 'বাংলাদেশের যেকোনো জেলায় কুরিয়ারে পৌঁছে দিই।', '💬', 'সাপোর্ট', 'অর্ডার, কুকিং টিপস – সব কিছুতেই ইনবক্সে সাপোর্ট।', NULL, NULL, 'public/uploads/campaign/1765032850-banner_image1-6.webp', 'public/uploads/campaign/1765032851-banner_image2-8.webp', 'public/uploads/campaign/1765033033-gallery_image1-2.webp', 'public/uploads/campaign/1765033034-gallery_image2-3-1.webp', 'public/uploads/campaign/1765033034-gallery_image3-3.webp', 'public/uploads/campaign/1765033035-gallery_image4-4.webp', 'public/uploads/campaign/1765033035-gallery_image5-5.webp', 'public/uploads/campaign/1765033035-gallery_image6-6.webp', 'public/uploads/campaign/1765033036-gallery_image7-7.webp', 'public/uploads/campaign/1765033036-gallery_image8-8.webp', NULL, NULL, NULL, 'nXzdkJSGEsU', NULL, NULL, '✅ খুলনার অরিজিনাল চুইঝাল', '৪.৯/৫ (৪৮৯+ কাস্টমার)', 'খুলনার বিখ্যাত চুইঝাল!', 'এখনই অর্ডার করুন', 'লাইভ রান্না ভিডিও', '“এমন ঝাঁজে নেই তো তুলনা!”', 'খুলনার অরিজিনাল চুইঝাল – একবার খেলেই বুঝবেন পার্থক্য', 'কাস্টমার রিভিউ', 'রংপুর', '★★★★★', 'খুলনা', '★★★★★', 'ঢাকা', '★★★★★', 1),
(21, 'fgfgh', 'fgfgh', 185, '0', '2025-12-11 08:39:26', '2025-12-11 08:39:26', NULL, NULL, NULL, 'fgh', 'fdgh', 'fgh', 'fgh', 'fdgh', NULL, 'fdgh', NULL, NULL, NULL, 5, NULL, NULL, NULL, 5, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgh', 'fgh', NULL, 'fgh', 'fgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fghf', 'fdh', 'fdgh', 'fh', 'dfgh', NULL, NULL, 'কাস্টমার রিভিউ', NULL, '★★★★★', NULL, '★★★★★', NULL, '★★★★☆', 1);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_product`
--

CREATE TABLE `campaign_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_product`
--

INSERT INTO `campaign_product` (`id`, `campaign_id`, `product_id`, `created_at`, `updated_at`) VALUES
(18, 13, 184, NULL, NULL),
(19, 13, 185, NULL, NULL),
(20, 13, 186, NULL, NULL),
(21, 13, 183, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_reviews`
--

INSERT INTO `campaign_reviews` (`id`, `image`, `campaign_id`, `created_at`, `updated_at`) VALUES
(23, 'public/uploads/campaign/1736442274-2024-07-16-6696757bd2081.jpg', 13, '2025-01-10 07:04:34', '2025-01-10 07:04:34'),
(24, 'public/uploads/campaign/1745390545-ghee2.jpg', 16, '2025-04-23 06:42:25', '2025-04-23 06:42:25'),
(25, 'public/uploads/campaign/1761911162-492402168_1227969512667315_4207845130642128120_n.jpg', 17, '2025-10-31 11:46:02', '2025-10-31 11:46:02'),
(26, 'public/uploads/campaign/1763476953-2.jpg', 18, '2025-11-18 14:42:33', '2025-11-18 14:42:33'),
(27, 'public/uploads/campaign/1764604947-fa9b72660bb97b6fcf19d87b3976f862.jpg', 19, '2025-12-01 16:02:27', '2025-12-01 16:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `icon` varchar(255) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `icon`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`, `meta_keyword`) VALUES
(19, 0, 'Electronics', 'electronics', 'public/uploads/category/1764783860-tv.webp', 'public/uploads/category/1764785710-icon-2502208.webp', NULL, NULL, 1, 1, '2025-10-03 13:35:21', '2025-12-03 18:15:10', NULL),
(20, 0, 'Fashion', 'fashion', 'public/uploads/category/1764783596-th.webp', 'public/uploads/category/1764785972-icon-392043.webp', NULL, NULL, 1, 1, '2025-10-03 13:35:50', '2025-12-03 18:19:32', NULL),
(21, 0, 'Beauty', 'beauty', 'public/uploads/category/1764783394-health.webp', 'public/uploads/category/1764786268-icon-130298.webp', 'Beauty', NULL, 1, 1, '2025-10-03 13:39:36', '2025-12-03 18:24:28', NULL),
(22, 0, 'Appliances', 'appliances', 'public/uploads/category/1764783272-applince.webp', 'public/uploads/category/1764786394-icon-1233183.webp', NULL, NULL, 0, 1, '2025-10-03 13:40:26', '2025-12-03 18:26:34', NULL),
(23, 0, 'Groceries', 'groceries', 'public/uploads/category/1764783064-gro.webp', 'public/uploads/category/1764786425-icon-1411253.webp', NULL, NULL, 1, 1, '2025-10-03 13:40:53', '2025-12-03 18:27:05', NULL),
(24, 0, 'Kids', 'kids', 'public/uploads/category/1764782777-kids.webp', 'public/uploads/category/1764786588-icon-images.webp', NULL, NULL, 0, 1, '2025-10-03 13:41:37', '2025-12-03 18:29:48', NULL),
(25, 0, 'Books', 'books', 'public/uploads/category/1764782610-books.webp', 'public/uploads/category/1764786646-icon-2232573.webp', NULL, NULL, 0, 1, '2025-10-03 13:42:28', '2025-12-03 18:30:46', NULL),
(26, 0, 'Trendy', 'trendy', 'public/uploads/category/1764782518-trendy.webp', 'public/uploads/category/1764786736-icon-trendy.webp', NULL, NULL, 0, 1, '2025-10-03 13:42:58', '2025-12-03 18:32:16', NULL),
(27, 0, 'Smart Watch', 'smart-watch', 'public/uploads/category/1764782268-watch.webp', 'public/uploads/category/1764786836-icon-617654.webp', NULL, NULL, 0, 1, '2025-10-03 13:43:19', '2025-12-03 18:33:56', NULL),
(36, 0, 'Digital Items', 'digital-items', 'public/uploads/category/1764782095-software.webp', 'public/uploads/category/1764786888-icon-945479.webp', NULL, NULL, 1, 1, '2025-12-03 17:14:55', '2025-12-03 18:34:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `childcategoryName`, `slug`, `subcategory_id`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(153, 'TV Adaptor', 'tv-adaptor', 61, NULL, NULL, 1, '2025-11-18 17:34:05', '2025-11-18 17:34:05'),
(154, 'Shirt', 'shirt', 61, NULL, NULL, 1, '2025-11-20 07:32:02', '2025-11-24 15:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2025-10-06 08:09:37'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#ffffff', '1', '2023-11-03 06:18:44', '2023-11-03 06:18:52'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2023-11-03 09:10:20'),
(74, 'Off White', '#f5f5f5', '1', '2024-11-10 04:46:40', '2024-11-10 04:46:40'),
(75, 'Golden Black', '#d9811c', '1', '2025-11-20 07:27:26', '2025-11-28 04:39:40'),
(76, 'Black Golden', '#a20707', '1', '2025-11-28 04:40:00', '2025-11-28 04:40:00'),
(77, 'Nayeem Golden', '#dfb234', '1', '2025-11-28 04:40:31', '2025-11-28 04:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `whatsapp` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `whatsapp`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '+8801849832178', 'info@creativedesign.com.bd', '+8801849832178', '0122222222222', 'info@creativedesign.com.bd', 'House: Munshi Bari,Beside Nayar Hat High School,Borobari,Lalmonir Hat', '#', 1, '2023-01-22 10:35:29', '2025-10-12 14:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('flat','percent') NOT NULL DEFAULT 'flat',
  `value` decimal(10,2) NOT NULL,
  `min_purchase` decimal(10,2) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `min_purchase`, `valid_from`, `valid_to`, `status`, `created_at`, `updated_at`) VALUES
(2, '9652333', 'flat', 50.00, 30.00, '2025-11-10', '2025-11-20', 1, '2025-11-09 18:09:31', '2025-11-11 12:52:57'),
(3, 'codedell', 'flat', 1000.00, 1.00, '2025-11-11', '2025-11-22', 1, '2025-11-16 16:39:14', '2025-11-16 16:40:16'),
(4, '0010', 'percent', 6.00, NULL, NULL, NULL, 1, '2025-11-18 12:51:24', '2025-11-18 12:51:24'),
(5, '৫০%Off', 'percent', 100.00, 200.00, '2025-11-19', '2025-11-19', 1, '2025-11-19 03:50:32', '2025-11-19 03:50:32'),
(6, '545454', 'percent', 5.00, 50.00, '2025-11-19', '2025-12-25', 1, '2025-11-20 07:35:04', '2025-12-09 07:42:52'),
(7, 'OKGOOD', 'flat', 50.00, NULL, '2025-12-11', '2025-12-12', 1, '2025-12-11 03:08:25', '2025-12-11 03:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `url`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', 'cpor5ksqgrjf5za3om45owrvftups7rm', 'jpr6blnyfysxjdsjzzoizpf2', 'https://portal.packzy.com/api/v1/create_order', 'asdfdsfdsafdsf', '1', '2024-02-06 11:29:46', '2025-10-04 14:54:55'),
(2, 'pathao', '', '', 'https://api-hermes.pathao.com/aladdin', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjYxNzVkOWQyODAwNjk2YzU4Y2E1MmZkMGQ5Y2RiZWRkYTBhN2I5YjU0YTIwNTQxNzVhZTVlZjYwNzg2ZTU1MzU1NzYxM2JhZGZhNjcwMzdmIn0.eyJhdWQiOiI0MTkyIiwianRpIjoiNjE3NWQ5ZDI4MDA2OTZjNThjYTUyZmQwZDljZGJlZGRhMGE3YjliNTRhMjA1NDE3NWFlNWVmNjA3ODZlNTUzNTU3NjEzYmFkZmE2NzAzN2YiLCJpYXQiOjE3MDM0MzY4NDQsIm5iZiI6MTcwMzQzNjg0NCwiZXhwIjoxNzExMjEyODQzLCJzdWIiOiIxNzM5MTIiLCJzY29wZXMiOltdfQ.VARDX-r01cIf0uPE_CFItJ44BfyB8-tD0rmXAt9r-DT545rIDKW97VsMWd2jfghQjbnLY8C-nL5yMOCz759IGT-2ApSOCtND1b1Dp_AahtGVDrqKnYn_ZZrWWfdHQ-OYsxGVpH3Cat3kgVafIDcpJJdTTYmtmESrr3dulGCBS4WuyGpNnBnz5TjGk6d3UD83-RG9Ud37x5hSZBJwXM85xrX3AotCo9MhQti7hmsve8Mf4Z2qJSjJBCDPTrjoKDYNsSWqgVtKCYLv3H2mnXu5Ecsp0bxRdTYLzzVZaqF-B8sYYTOeseASgKuE5XQl1NOOCXBr9gBdEC1FD--lpElgG_FeQwvelhpeQ2yyze806ipkY8wNNqEvm9pC9uJ0n7ZmbSezJUYghC7vfi1iEmDOcB9JQxX9WOFi1VKSSOG-u__SQcYRmtAJ8LrTwL8zDMruL4uYFNGe17F-PuRH8ncp_FZK6Q_xuJY7CcDPwCw3E0_SMnmMU7ND25hoUpNly41j9y2G9UaGovfwD-QosPozAqACdRdyqP6cn3icNPY2kp7sSdKLsUIUOZox5ugfjbYC9wC6fzdYED0U85QDA4nPj0NGDVutTcFdED-Yzmmd-VNJVNI9cALfVDfKrpHlWpQMSeeZ7dc16NA0SrayF5DgQbpYg6CbGskmWTCsgmuWFvw', '0', '2024-02-06 11:29:46', '2024-11-13 11:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Order procedure', 'order-procedure', 'Order procedure', 'Elite Design', 1, '2023-10-04 07:02:30', '2025-01-10 02:57:35'),
(3, 'Delivery Rules', 'delivery-rules', 'Delivery Rules', '<p>Elite Design</p>', 1, '2023-10-04 07:03:00', '2025-01-10 02:57:30'),
(5, 'Return Policy', 'return-policy', 'Return Policy', 'Elite Design', 1, '2023-10-04 07:03:42', '2025-01-10 02:57:26'),
(6, 'Terms & Conditions', 'terms-&-conditions', 'Terms & Conditions', '<p>Elite Design</p>', 1, '2023-10-04 07:04:05', '2025-01-10 02:57:22'),
(7, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 'Elite Design', 1, '2023-10-04 07:04:19', '2025-01-10 02:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(286, 'Jononi Madical Hall', 'jononi-madical-hall-1', '01775457008', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$xOr8.LH3fUG3CXobVUmwger7xbj2KsHh2LXsX6HO4Awwrnp7eSyT.', NULL, 'active', '2025-11-28 18:31:21', '2025-11-28 18:31:21'),
(287, 'Demo', 'Demo', '01716535565', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$N5HJYVpdamz9x4BPgVMCXecthtrUsvN8SW11m9bngzb2v.fqvHCai', NULL, 'active', '2025-11-29 06:09:56', '2025-11-29 06:09:56'),
(288, 'MONIRA AKTER', 'monira-akter', '01837363637', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9yqPJVTXXwqncMYoSZxOP.pLKChMwnaJkKn8tGylaTbDN17JoMsFW', NULL, 'active', '2025-11-29 14:36:07', '2025-11-29 14:36:07'),
(289, 'MONIRA AKTER', 'monira-akter', '01826536372', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5V4R1yXwFlhRKBvADTMpeOT9k/69VFFz1H.FPCqQMIOueXYNOcuja', NULL, 'active', '2025-11-29 14:37:06', '2025-11-29 14:37:06'),
(290, 'MONIRA AKTER', 'monira-akter-1602', '01', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HLUoUs8Uq1jn6IZUAXlk5eLkPpQkKn5kIoSHRWS5XamvMLoER1eIy', NULL, 'active', '2025-11-29 14:40:23', '2025-11-29 14:40:23'),
(291, 'Rifat Islam', 'rifat-islam', '01608572489', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pkE2O3djxFS2cHGFfklFRerUvpKzg9hlIC622nAXL6VOUpljOwmXu', NULL, 'active', '2025-11-29 16:55:05', '2025-11-29 16:55:05'),
(292, 'International Academy For Talents School', 'international-academy-for-talents-school', '01896314508', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Yl1DFUo2vflA2s.HzQ5LfeoiZE2rZ2Lv.6x.l0MBoDaexYWfW5nbC', NULL, 'active', '2025-11-29 19:11:56', '2025-11-29 19:11:56'),
(293, 'Md Fazle Rabbi', 'Md Fazle Rabbi', '01332373527', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$z8jh5lN1YFzyhsUNe0Zr8O4Hy2rW23DO2qVa4IBYSOzOtMwE2NDMa', NULL, 'active', '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(294, 'Test', 'test', '01711223344', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2k85HnwudOj0ANR6AsU9zeV5oXumT759/iOoXHnDZo/BgMiPl0AXO', NULL, 'active', '2025-11-30 11:54:03', '2025-11-30 11:54:03'),
(296, 'Rihan Mahamud', 'rihan-mahamud', '01922737378', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bBTrPGXE5Nx9Zzd8PxPKUe/xfs1UJsKTaR4TZaRhGE/ezco5jWo7G', NULL, 'active', '2025-11-30 17:51:40', '2025-11-30 17:51:40'),
(297, 'HriDoY MahaDi', 'HriDoY MahaDi', '01857568287', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vA9uoFoL.YxKwSriYQ587.UiSHmjdwZaJj10hX8Te.ZgCA.XZeBla', NULL, 'active', '2025-11-30 19:13:45', '2025-11-30 19:13:45'),
(298, 'Trial', 'trial', '01712345678', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nWx1MqSP4Pps5HSIJa1CNuvnZNk1MP6nsTVe1DUFfvQ4bZWmr2KKe', NULL, 'active', '2025-12-01 04:03:56', '2025-12-01 04:03:56'),
(299, 'MD NAyeem', 'md-nayeem', '01907797147', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$n/NJW/U1E./sZytGVqRpIezWcdVxp5hnDnWrxw4CvXXV..c1A5x5q', NULL, 'active', '2025-12-01 06:44:24', '2025-12-01 06:44:24'),
(300, 'Trial', 'trial-7144', '017123', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XIC7XNhtZ4QFSBhfGmSz1O164mifEs7aEheQbJ4cVehBfAB9v7JnS', NULL, 'active', '2025-12-01 06:46:54', '2025-12-01 06:46:54'),
(301, 'Alex Johnson', 'alex-johnson', '06051946238', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uWXsZdGfZ2VEyjB/CzrDXODAdCitUxUvoXwn.YghJnFVMLpn71LZW', NULL, 'active', '2025-12-01 11:24:15', '2025-12-01 11:24:15'),
(302, 'Jahangir Alam', 'jahangir-alam', '01674082566', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B.AKFlgGM9rSNWDxIYqHZ.57FraDHHvQEYwigl5E898hfMNqz.y46', NULL, 'active', '2025-12-01 14:51:51', '2025-12-01 14:51:51'),
(303, 'Ummah Islamic Institute', 'ummah-islamic-institute', '01782295954', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$VqZwQzt5/6nN3zWVJa.tzecr7vkQkOP/zUaB/d97gCb/oMsaG7MKG', NULL, 'active', '2025-12-03 10:53:06', '2025-12-03 10:53:06'),
(304, 'Md Abu kalam', 'md-abu-kalam', '01977667849', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4OBBj/Yv3Jb8Af/J8mMWEuyVVS9l5DHXG4rB9GeeuLtgeUvU3y.E.', NULL, 'active', '2025-12-04 12:30:32', '2025-12-04 12:30:32'),
(305, 'sixdeveloper', 'sixdeveloper', '01780418641', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Dol.lLbltO09KYOO2TkT9OZO5MFJ5bYVO2nVAeiv6j3ocr0AHg0rC', NULL, 'active', '2025-12-04 16:40:12', '2025-12-04 16:40:12'),
(306, 'Redwan Ahmed', 'redwan-ahmed', '01327949940', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sF.61D/QiovZAvnMbL.TjOMwtNXW37YY8m0ayrj1K9pf.rVmUPdxa', NULL, 'active', '2025-12-04 23:37:10', '2025-12-04 23:37:10'),
(307, 'Engineering Lab', 'engineering-lab', '01796825863', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3ggtbJlB.Yfi7zlnB0s.SeMzgUsWCEmKh7naYq1m1mxjgKcqtNRKi', NULL, 'active', '2025-12-04 23:37:39', '2025-12-04 23:37:39'),
(308, 'Jakir Hosain', 'jakir-hosain', '01403130512', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9Xzxg9R2w.8QqhW6qW7jsOmSnOuE6RjShTwwuiTEUJ.kpY80tD7Km', NULL, 'active', '2025-12-04 23:38:42', '2025-12-04 23:38:42'),
(309, 'Jononi Madical Hall', 'jononi-madical-hall-1283', '01915711407', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4qIeoQjn7J1mnO09jHPIB.Y92FPU/c7ya3v3Q.0lFeEtZ69049GVi', NULL, 'active', '2025-12-05 05:49:03', '2025-12-05 05:49:03'),
(310, 'kjhh', 'kjhh', '01264555858', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H/wMwyE5Fxmo5VoqAqwtVua6tWZ0XStBgeoJ1C1M4U9fh/91FpIxW', NULL, 'active', '2025-12-05 12:51:10', '2025-12-05 12:51:10'),
(311, 'hafizur', 'hafizur', '01689102055', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yRyE1jfLGsdcImFOv8XyAukE1WkYw63rNNmDYay3dgk45CIpjH2.K', NULL, 'active', '2025-12-05 14:36:05', '2025-12-05 14:36:05'),
(312, 'md shohidul islam', 'md-shohidul-islam', '01938282000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$i2EL1gNBRbRaoMlmGbcPj.JM2OkTNz4OGmZsV011od8kcSwFkJIfO', NULL, 'active', '2025-12-05 15:29:51', '2025-12-05 15:29:51'),
(313, 'Manik Mahmud', 'manik-mahmud', '01407679839', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$v24KvIp8JwJrnrJ7LIPzFe6J/megBWm4UJ5TP8a0Inscdv40j4FYi', NULL, 'active', '2025-12-05 17:05:40', '2025-12-05 17:05:40'),
(314, 'Karul', 'Karul', '01975198438', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hC91fRSVm2tt/KQJu9UV3eW3qBVI5oIkyr59xJQy8lRIXbkGOQ0Aq', NULL, 'active', '2025-12-05 17:37:46', '2025-12-05 17:37:46'),
(315, 'Md Mirajul Islam', 'md-mirajul-islam-6538', '01996811842', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FlPI1MrY/PCnlufNcz7E5.d9lgKOsn2hBWi9ScoIzFlPO2zZjYusO', NULL, 'active', '2025-12-05 20:28:07', '2025-12-05 20:28:07'),
(316, 'MD ALIASGUR', 'md-aliasgur', '01830107179', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zriHXNxRzL7L..yIubm.Q.tU0/shIcDQYxpwiZDyZpNBHIUjJ0eu2', NULL, 'active', '2025-12-06 07:09:42', '2025-12-06 07:09:42'),
(317, 'Elite Design', 'elite-design', '01614628005', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$amaWjU3oIEQqT/A9lMBIa.ehAOCuAXI/0d7tMPXtk9i64bNwJQkb.', NULL, 'active', '2025-12-06 07:29:04', '2025-12-06 07:29:04'),
(318, 'Hrittik', 'hrittik', '01816547642', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8UnbT9i/qiOwzRSLqCNZnu1o3Lj6NebYvtr1/TTOkIxtuMSZv5BGG', NULL, 'active', '2025-12-06 09:37:35', '2025-12-06 09:37:35'),
(319, 'MD RUBEL MIA', 'MD RUBEL MIA', '01728666634', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NK8ncqUPSbidXNAxCfodXuN2YPZt8NXJOK82LsIfcoXRuhxjN4ZvW', NULL, 'active', '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(320, 'MD SABBIR AHAMMED SHAON', 'MD SABBIR AHAMMED SHAON', '01400881103', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$o6s5DItkmtS.R4iFL/3Yf.6N7TsfoEfGjy/SyQmifACZadT/ylk8.', NULL, 'active', '2025-12-06 12:32:52', '2025-12-06 12:32:52'),
(321, 'Asif', 'asif', '01325896025', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mx5mTo0t1QOsAKGWTbkuR.X71FoD3VnuR8U0a1ChZygyB7QC4.EH2', NULL, 'active', '2025-12-07 09:20:17', '2025-12-07 09:20:17'),
(322, 'Roni patwary', 'roni-patwary', '01854958294', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qyyecORi3Zf/U0cRUUaZIuSOTm1pzMsYOx7f3WBZCnYQtAG.Xt1sW', NULL, 'active', '2025-12-07 15:12:32', '2025-12-07 15:12:32'),
(323, 'Salman', 'salman', '01754203991', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rkOHQjCG7BAZNPFgcJRA.uVHu8YCC8ubqdHC9MRmiBO4Dnb6nERF6', NULL, 'active', '2025-12-07 18:10:58', '2025-12-07 18:10:58'),
(324, 'Salman', 'salman-324', '01847412117', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ce.jcdbcWuBaKmkzQn/ZEeXrA6h6bV.JwQRkV.U1a7e4/W7hEl2lW', NULL, 'active', '2025-12-07 18:21:26', '2025-12-07 18:21:26'),
(325, 'Salman', 'Salman', '01754203921', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ROw0lJ4vjS4LqnFgnmWJq.OtdKFVIZuOmdX3hAim15HPs/bT7UIEy', NULL, 'active', '2025-12-08 18:38:23', '2025-12-08 18:38:23'),
(326, 'SALMAN AHMED', 'SALMAN AHMED', '01741247114', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WUC1.gJT6M3MmAr1yhHioO4NlHrN6cJ9T73Hn25XEikZLyiZFEl1u', NULL, 'active', '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(327, 'Seykot Mia', 'seykot-mia', '01729151544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$W7JSoWNwb4DAYB3ywOae3eO093coP4L3qeBhDiTAR6LidRwuBzTl6', NULL, 'active', '2025-12-09 15:16:52', '2025-12-09 15:16:52'),
(328, 'st tv', 'st-tv', '01935090672', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fBzP.iXut5N6y32tD.5ueuvWrzh3TLElb8G4Swc2ej/YHOb3BeV9S', NULL, 'active', '2025-12-09 17:29:01', '2025-12-09 17:29:01'),
(329, 'Fake', 'fake', '01911111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FwkoV4Q2Vw4FYj4utMYaP.IKHKknM3Hjpoen5TSjhLPssZSKBszhm', NULL, 'active', '2025-12-10 07:24:31', '2025-12-10 07:24:31'),
(330, 'sohag minarul', 'sohag-minarul', '01733199222', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7iyk6mPQrvYQy7CF298x0ukjKysVxBtaq6gP.10P7Xgl/hjXxPJvS', NULL, 'active', '2025-12-10 07:25:06', '2025-12-10 07:25:06'),
(331, 'Shshshhd', 'shshshhd', '01843367191', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$D6KZgxe80tKG.fFMq4B65OzLiGmqH/MJpWMqGO66.aAdW.iJWsCYq', NULL, 'active', '2025-12-10 07:25:38', '2025-12-10 07:25:38'),
(332, 'Abir Group', 'abir-group', '01506760729', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uFHkujlZOIyvvU.334g5NO2ocsyEBEyE049KSPWIgs/9MNL6ED.4C', NULL, 'active', '2025-12-10 08:08:46', '2025-12-10 08:08:46'),
(333, 'farabi', 'farabi-333', '01923323339', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Heb65HMXN1oTPbOD8XoJFO5P2z00BOpPqh1r2KVGaeSRUj486zlsu', NULL, 'active', '2025-12-10 08:11:47', '2025-12-10 08:11:47'),
(334, 'Abdulahad1', 'abdulahad1', '01883709761', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$m7IIBTpCsLd4MzJQb191du/4dij2Z9pkWyfG1XR5rIN9Twdlc2.2m', NULL, 'active', '2025-12-10 08:45:35', '2025-12-10 08:45:35'),
(335, 'MD Saiful Islam', 'md-saiful-islam', '01611369868', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$RBoTHrIIOMyteUO7yZoAG.pkOcYvqEWAdsDodJEUn0JWQtHisZKKW', NULL, 'active', '2025-12-10 10:06:47', '2025-12-10 10:06:47'),
(336, 'Hasan', 'hasan', '01700000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I2qSFObPd1aR4LjSsvK8ye.o.JZobixtIDaRD5G4D6Hppx0ypRJxK', NULL, 'active', '2025-12-10 10:28:14', '2025-12-10 10:28:14'),
(337, 'Tff', 'tff', '01666666666', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5jOmpxN2ch9jk0cT/2v30.Mg1Y2LiG93PLzpyrVHoJ/pD4uVKxBcG', NULL, 'active', '2025-12-10 10:42:37', '2025-12-10 10:42:37'),
(338, 'Shuvo Pal', 'shuvo-pal', '01636235525', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NURDBzaydzYAiUDFD.J0P.4jbMqQKcj17Vp0aYx7DsBI1QraO1SN6', NULL, 'active', '2025-12-10 11:51:43', '2025-12-10 11:51:43'),
(339, 'Fff', 'fff', '01312031302', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tPukPQ8DGiZvh6u8hTlqEecQ6esBBVLwnkafMwxXGTpTwnMsfZXie', NULL, 'active', '2025-12-10 12:11:20', '2025-12-10 12:11:20'),
(340, 'gdfhf', 'gdfhf', '01765489632', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cC4MnyIpG087ij2fd9iCXOMYm7Vxg3gX9OKaFjZj7CldJtscZYune', NULL, 'active', '2025-12-10 13:27:23', '2025-12-10 13:27:23'),
(341, 'জয়নাল দিনাজপুর', 'jznal-dinajpur', '01745598060', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Rw31k7mFUCoUkeRL9jNEFeu1t5dDyBdjrsjI/qEpoc/kQZMkBse2u', NULL, 'active', '2025-12-10 13:28:43', '2025-12-10 13:28:43'),
(342, 'athj h.', 'athj-h', '01731535353', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$r9RYdtSUsA3lMWstmk61g.iZ//sDO5q1bkUoWYTIi6BgCKDMYR4F2', NULL, 'active', '2025-12-10 13:51:53', '2025-12-10 13:51:53'),
(343, 'Mahedi', 'mahedi', '01827744456', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qax9O59nCr.rG6ztiQy4hOX/mDFhA.UZrX/n9TCs8jjQgW8/FtHDG', NULL, 'active', '2025-12-10 14:35:38', '2025-12-10 14:35:38'),
(344, 'Jjj', 'jjj', '01776689893', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$SJ2Xk.hEOr2PKX2EDEv3zuJOvhqdIP.e.wRDUGg0zsO8kQz84o/v6', NULL, 'active', '2025-12-10 17:33:36', '2025-12-10 17:33:36'),
(345, 'Test', 'test-345', '01682862358', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$79XGpsMq7WWQfjPCz9N8lOwowHtp68OwnBkYrbyVLkgbdQ4.0PSnm', NULL, 'active', '2025-12-10 17:41:34', '2025-12-10 17:41:34'),
(346, 'Raju', 'raju', '01797328888', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vyrzjuDspjkW.un0HniVtudK9Xc0UL8AccygPR93LaIbdmwvBnrF2', NULL, 'active', '2025-12-10 17:46:27', '2025-12-10 17:46:27'),
(347, 'Md. Yasin', 'Md. Yasin', '01683189893', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/yfAd3SaWmxr.1r2ppfSruGbFXbkvnXZZST8X1Jgo8sHbnCicz4N6', NULL, 'active', '2025-12-10 19:35:51', '2025-12-10 19:35:51'),
(348, 'Md', 'md', '01707796801', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3lDquYfuvv7S3rhpPrUheuSPQEygkDUreYE5I1Hu3kBSLZMivNPoW', NULL, 'active', '2025-12-10 23:29:31', '2025-12-10 23:29:31'),
(351, 'Sabbir Hasan', 'sabbir-hasan', '01777362239', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B202XgDVSG3g0va2Cb2umOjFH6lsO8ECXbC8.xsCt5YWu/UKNAsS6', NULL, 'active', '2025-12-11 03:09:18', '2025-12-11 03:09:18'),
(352, 'Sabbir Hasan', 'sabbir-hasan-352', '01410362239', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oXCsXGXNUCpmk9w..XrYSO9c7J2xz3Bp7vrr.gES6XV/hk2XZzgB.', NULL, 'active', '2025-12-11 03:50:13', '2025-12-11 03:50:13'),
(353, 'ABU RAIHAN', 'ABU RAIHAN', '01856272010', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GR9nx28Lbrwpn6s1sINgo.QhjKxKyHkbbUJ2zUjZPuLGz9D5aUYwG', NULL, 'active', '2025-12-11 04:15:08', '2025-12-11 04:15:08'),
(354, 'ABU RAIHAN', 'ABU RAIHAN', '01726848661', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.bH.QU7G98P7KAK3vzMGZuNt2XeI6qk0HOUTrG4Oxz4gtkCF2mXp.', NULL, 'active', '2025-12-11 04:15:54', '2025-12-11 04:15:54'),
(355, 'md hafiz', 'md hafiz', '017111555444', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jPzLAYKmRJyDMCpCpANtCefjs0hnXU9UuYoKMmZHNEs4NkTO89TnK', NULL, 'active', '2025-12-11 07:55:48', '2025-12-11 07:55:48'),
(356, 'SH Masum', 'sh-masum', '01407892308', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Y5PgsU.i54pec26vMaYGbOTEhHN90zR8zy9XSEOjV89GUHqG.3oyq', NULL, 'active', '2025-12-11 11:48:19', '2025-12-11 11:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `digital_downloads`
--

CREATE TABLE `digital_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(100) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `remaining_downloads` int(11) DEFAULT 0,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `digital_downloads`
--

INSERT INTO `digital_downloads` (`id`, `order_id`, `product_id`, `customer_id`, `token`, `file_path`, `remaining_downloads`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 644, 205, 303, '6bcf4ffd-22c8-41b9-a395-dbfbe6b99e2c', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 5, '2025-12-10 16:53:09', '2025-12-03 10:53:09', '2025-12-03 10:53:09'),
(2, 645, 205, 303, 'a55f77c2-e8e6-478d-94d7-94d2afe0812c', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 2, '2025-12-10 17:52:54', '2025-12-03 11:52:54', '2025-12-03 12:21:02'),
(3, 646, 205, 286, '312969b6-0493-4fce-b3de-f6a1b0824140', 'digital-products/87oJu2Ff8ojMifXlK9TnQ9st93ZmAbYdUX4tFRqz.zip', 2, '2025-12-10 18:23:28', '2025-12-03 12:23:28', '2025-12-03 12:37:21'),
(4, 691, 209, 286, '941dcef8-b969-4ac0-a322-d5951448e525', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 4, '2025-12-17 10:17:33', '2025-12-10 04:17:33', '2025-12-10 04:17:35'),
(5, 702, 208, 337, '548a96cd-e548-470d-b5fa-562dd2e3c4e3', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 3, '2025-12-17 16:43:28', '2025-12-10 10:43:28', '2025-12-10 10:43:46'),
(6, 710, 208, 345, 'd13797b6-d560-48e1-aa00-fa27cd9cdb17', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 4, '2025-12-17 23:42:50', '2025-12-10 17:42:50', '2025-12-10 17:43:01'),
(7, 710, 209, 345, '14437734-2be7-4ca2-b955-42fd0b274c59', 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 5, '2025-12-17 23:42:50', '2025-12-10 17:42:50', '2025-12-10 17:42:50'),
(8, 711, 208, 294, 'e4075b08-255d-40a9-b82a-f9ff71e97240', 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 5, '2025-12-17 23:45:14', '2025-12-10 17:45:14', '2025-12-10 17:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_pixels`
--

INSERT INTO `ecom_pixels` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3, '1332468', 1, '2024-11-19 19:00:59', '2025-12-05 16:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `expense_date` date NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `title`, `amount`, `expense_date`, `category`, `note`, `fund_transaction_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'চা খরচ', 100.00, '2025-11-26', 'অফিস খরচ', 'চা খেয়েছি', 8, 1, 1, '2025-11-25 18:52:54', '2025-11-25 19:48:48'),
(2, 'ভাত খেয়েছি', 300.00, '2025-11-26', 'অফিস খরচ', 'ভাত খেয়েছি', 15, 1, 1, '2025-11-25 22:45:59', '2025-12-11 05:49:31');

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
-- Table structure for table `fund_transactions`
--

CREATE TABLE `fund_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `direction` enum('in','out') NOT NULL,
  `source` varchar(50) NOT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `note` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund_transactions`
--

INSERT INTO `fund_transactions` (`id`, `direction`, `source`, `source_id`, `amount`, `note`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'in', 'sale', 531, 190.00, 'Order complete (#48079) via process page', 1, '2025-11-25 16:37:07', '2025-11-25 16:37:07'),
(2, 'in', 'manual_add', NULL, 1000.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, '2025-11-25 17:25:40', '2025-11-25 17:25:40'),
(3, 'out', 'withdraw', NULL, 200.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, '2025-11-25 17:25:53', '2025-11-25 17:25:53'),
(4, 'in', 'sale', 535, 190.00, 'Order complete (#79768) via process page', 1, '2025-11-25 17:26:24', '2025-11-25 17:26:24'),
(5, 'out', 'withdraw', NULL, 400.00, 'বাংলাদেশ', 1, '2025-11-25 18:23:23', '2025-11-25 18:23:23'),
(6, 'in', 'manual_add', NULL, 800.00, 'বাংলাদেশ', 1, '2025-11-25 18:23:33', '2025-11-25 18:23:33'),
(7, 'in', 'sale', 534, 190.00, 'Order complete (#92038) via process page', 1, '2025-11-25 18:32:19', '2025-11-25 18:32:19'),
(8, 'out', 'expense', 1, 100.00, 'Expense: চা খরচ - চা খেয়েছি', 1, '2025-11-25 18:52:54', '2025-11-25 19:48:48'),
(9, 'out', 'supplier_payment', 1, 200.00, 'Purchase payment: PUR-1764103831', 1, '2025-11-25 20:51:00', '2025-11-25 20:51:00'),
(10, 'out', 'supplier_payment', 2, 100.00, 'Due payment for purchase: PUR-1764103831', 1, '2025-11-25 20:51:49', '2025-11-25 20:51:49'),
(11, 'out', 'supplier_payment', 3, 200.00, 'Due payment for purchase: PUR-1764103831', 1, '2025-11-25 20:53:07', '2025-11-25 20:53:07'),
(12, 'in', 'sale', 532, 310.00, 'Order complete (#67341) via process page', 1, '2025-11-25 21:46:45', '2025-11-25 21:46:45'),
(13, 'in', 'sale', 536, 184.00, 'Order complete (#30891) via process page', 1, '2025-11-25 21:50:45', '2025-11-25 21:50:45'),
(14, 'in', 'sale', 537, 234.00, 'Order complete (#23292) via process page', 1, '2025-11-25 21:54:30', '2025-11-25 21:54:30'),
(15, 'out', 'expense', 2, 300.00, 'Expense: ভাত খেয়েছি - ভাত খেয়েছি', 1, '2025-11-25 22:45:59', '2025-11-25 22:45:59'),
(16, 'in', 'sale', 562, 2670.00, 'Order complete (#42872) via process page', 1, '2025-11-26 07:48:52', '2025-11-26 07:48:52'),
(17, 'in', 'sale', 562, 2600.00, 'Order complete (#42872) via process page', 1, '2025-11-26 07:53:38', '2025-11-26 07:53:38'),
(18, 'in', 'sale', 563, 240.00, 'Order complete (#33453) via process page', 1, '2025-11-26 09:26:03', '2025-11-26 09:26:03'),
(19, 'out', 'withdraw', NULL, 100.00, 'Rate', 1, '2025-11-26 17:25:59', '2025-11-26 17:25:59'),
(20, 'in', 'manual_add', NULL, 120.00, 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।', 1, '2025-11-26 17:26:20', '2025-11-26 17:26:20'),
(21, 'in', 'sale', 587, 190.00, 'Order complete (#52269) via process page', 1, '2025-11-27 18:58:44', '2025-11-27 18:58:44'),
(22, 'in', 'sale', 597, 1200.00, 'Order complete (#37424) via process page', 1, '2025-11-28 05:03:52', '2025-11-28 05:03:52'),
(23, 'in', 'sale', 598, 120.00, 'Order complete (#78217) via process page', 1, '2025-11-28 05:41:30', '2025-11-28 05:41:30'),
(24, 'in', 'sale', 599, 1270.00, 'Order complete (#87237) via process page', 1, '2025-11-28 05:42:30', '2025-11-28 05:42:30'),
(25, 'in', 'sale', 607, 3900.00, 'Order complete (#55183) via process page', 1, '2025-11-28 09:28:56', '2025-11-28 09:28:56'),
(26, 'in', 'sale', 609, 1270.00, 'Order complete (#76609) via process page', 1, '2025-11-28 10:17:16', '2025-11-28 10:17:16'),
(27, 'in', 'sale', 612, 1270.00, 'Order complete (#56605) via process page', 1, '2025-11-28 10:22:07', '2025-11-28 10:22:07'),
(28, 'in', 'sale', 612, 1200.00, 'Order complete (#56605) via process page', 1, '2025-11-28 10:22:35', '2025-11-28 10:22:35'),
(29, 'in', 'sale', 634, 6520.00, 'Order complete (#98366) via process page', 1, '2025-11-30 02:28:43', '2025-11-30 02:28:43'),
(30, 'in', 'sale', 643, 2670.00, 'Order complete (#44844) via process page', 1, '2025-12-01 19:13:03', '2025-12-01 19:13:03'),
(31, 'in', 'manual_add', NULL, 1000.00, NULL, 1, '2025-12-05 13:21:57', '2025-12-05 13:21:57'),
(32, 'in', 'manual_add', NULL, 500.00, NULL, 1, '2025-12-05 13:22:03', '2025-12-05 13:22:03'),
(33, 'out', 'withdraw', NULL, 1000.00, NULL, 1, '2025-12-05 13:22:12', '2025-12-05 13:22:12'),
(34, 'in', 'sale', 675, 1970.00, 'Order complete (#14082) via process page', 1, '2025-12-06 13:57:14', '2025-12-06 13:57:14'),
(35, 'in', 'sale', 714, 12070.00, 'Order complete (#67191)', 1, '2025-12-11 02:55:01', '2025-12-11 02:55:01'),
(36, 'out', 'supplier_payment', 4, 1000.00, 'Purchase payment: PUR-1765430839', 1, '2025-12-11 05:28:10', '2025-12-11 05:28:10'),
(37, 'in', 'manual_add', NULL, 5323.00, '4222', 1, '2025-12-11 05:46:35', '2025-12-11 05:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hot_deal_end_date` date DEFAULT NULL,
  `flash_sale_end_date` date DEFAULT NULL,
  `top_headline` text DEFAULT NULL,
  `checkout_note` text DEFAULT NULL,
  `order_policy` text DEFAULT NULL,
  `show_all_products` int(11) NOT NULL DEFAULT 1,
  `show_category_wise_products` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `og_baner` varchar(255) DEFAULT NULL,
  `fraud_api_key` longtext DEFAULT NULL,
  `fraud_secret_key` longtext DEFAULT NULL,
  `facebook_page_username` text DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `secodery_color` varchar(255) DEFAULT NULL,
  `footer_color` varchar(255) DEFAULT NULL,
  `copyright_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `hot_deal_end_date`, `flash_sale_end_date`, `top_headline`, `checkout_note`, `order_policy`, `show_all_products`, `show_category_wise_products`, `status`, `created_at`, `updated_at`, `og_baner`, `fraud_api_key`, `fraud_secret_key`, `facebook_page_username`, `primary_color`, `secodery_color`, `footer_color`, `copyright_color`) VALUES
(2, 'Gadget BD', 'public/uploads/settings/1762886188-footer.webp', 'public/uploads/settings/1764781663-logo.webp', 'public/uploads/settings/1759498730-fav.webp', NULL, '<b>sadf</b>', '2025-11-10', '2026-11-09', 'Gadget BD অনলাইন শপে আপনাকে স্বাগতম ||\r\nঅনলাইনে আস্থা ও বিশ্বস্ততার সাথে  সারা বাংলাদেশে হোম ডেলিভারী দিয়ে থাকি\r\nঅর্ডার করতে অগ্রিম টাকা দিতে হবে না\r\nএ্যাডভান্স বিকাশ পেমেন্টে ৫% ডিসকাউন্ট\r\n৩-৫ দিনে সারাদেশে হোম ডেলিভারী দেওয়া হয়\r\nক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে\r\nধন্যবাদ', '<p class=\"text-danger\">                                বিঃদ্রঃ-  দয়া করে ১০০% নিশ্চিত হয়ে অর্ডার করবেন। ছবি এবং বর্ণনার সাথে পণ্যের মিল থাকা সত্যেও আপনি পণ্য গ্রহন করতে না চাইলে, কুরিয়ার চার্জ ১২০ টাকা কুরিয়ার ডেলিভারি ম্যানকে প্রদান করে পণ্য সাথে সাথে রিটার্ন করবেন। অযথা অর্ডার করা থেকে বিরত থাকুন, কারন আপনার মোবাইল নাম্বার, এড্রেস এবং ডিভাইস আইপি নাম্বার দেখা যায় ।\r\n</p><p class=\"text-danger\"><b>একই ডেলিভারি চার্জে আরো প্রোডাক্ট নিতে <a href=\"/shop\" style=\"color: blue\">ক্লিক করুন</a>\r\n                            </b></p>', '<div><b style=\"background-color: rgb(255, 255, 0);\">বিক্রিত পণ্য ফেরত নেয়া হয় না তবে নিন্ম লিখিত ক্ষেত্রে পণ্য সার্ভিসিং পন্য পরিবর্তন বা মুল্য ফেরত প্রযোজ্য।</b></div><ul><li>আপনার যত প্রশ্ন আছে তা বর্ননার সাথে মিলিয়ে অথবা আমাদের কাছ থেকে জেনে পন্য অর্ডার করুন।</li><li>ছবি এবং বর্ণনার সাথে পন্যের মিল থাকলে পণ্য ফেরত নেয়া হবে না ।</li><li>তবে আপনি চাইলে আপনার গ্রহন করা পন্যের সম মুল্যের বা বেশি মুল্যের পণ্য নিতে পারবেন (যে টাকা বেশি হবে তা প্রদান করতে হবে ) । কম মুল্যের পণ্য নেয়া যাবে না ।</li><li>পণ্য আনা নেয়ার খরচ আপনাকে দিতে হবে।</li><li>যে সকল পন্যে ওয়ারেন্টি আছে তার ওয়ারেন্টি সার্ভিস আমরা প্রদান করবো। তবে কিছু কিছু ক্ষেত্রে পন্যের ব্রান্ড আপনাকে সার্ভিস প্রদান করবে তবে সে ক্ষেত্রে আপনার নিকটস্থ সার্ভিস পয়েন্ট থেকে সার্ভিস নিতে পারবেন।</li><li>পণ্য সার্ভিস করতে যাওয়া আসা বা পাঠানো এবং রিটার্ন করার খরজ আপনাকে বহন করতে হবে।</li><li>১০০% নিশ্চিত হয়ে অর্ডার করুন, কোন কিছু জানার থাকলে কল করুন। Hotline :&nbsp; +8801849832178</li></ul>', 1, 1, 1, '2023-01-21 12:01:07', '2025-12-04 21:51:16', 'public/uploads/settings/1764396841-1762803885-1759498350-logo.webp', '8464526b9267051d182b64ac47806d9f', '0ace999f426237ba12aafd6f10f5c5f9c2e994ff01b018fd', 'official.creativedesign', '#7b12af', '#d5154f', '#131a22', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3, 'NQ2K5CSW', 1, '2024-11-09 09:19:36', '2025-12-11 12:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `incomplete_orders`
--

CREATE TABLE `incomplete_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`items`)),
  `product_image` varchar(255) DEFAULT NULL,
  `product_link` varchar(255) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomplete_orders`
--

INSERT INTO `incomplete_orders` (`id`, `name`, `phone`, `address`, `items`, `product_image`, `product_link`, `total_amount`, `created_at`, `updated_at`) VALUES
(267, 'Ripon Mahamud', '01920908164', 'Namapara, Zirabo, Ashulia, Savar, Dhaka', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/www.ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://www.ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 1370.00, '2025-11-30 17:50:39', '2025-11-30 17:50:39'),
(268, 'Rihan Mahamud', '01920908164', 'Namapara, Zirabo, Ashulia, Savar, Dhaka', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/www.ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://www.ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 1370.00, '2025-11-30 17:50:50', '2025-11-30 17:50:50'),
(269, 'Rihan Mahamud', '0192273737', 'Namapara, Zirabo, Ashulia, Savar, Dhaka', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/www.ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://www.ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 1370.00, '2025-11-30 17:50:57', '2025-11-30 17:50:57'),
(274, 'Trial', NULL, NULL, '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 200.00, '2025-12-01 04:03:08', '2025-12-01 04:03:08'),
(275, 'Trial', '017', NULL, '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 200.00, '2025-12-01 04:03:20', '2025-12-01 04:03:20'),
(285, 'Alex Johnson', '3605194623', 'Los Angeles', '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":1,\"price\":120,\"image\":\"https:\\/\\/www.ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://www.ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 190.00, '2025-12-01 11:24:04', '2025-12-01 11:24:04'),
(286, 'Alex Johnson', '36051946238', 'Los Angeles', '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":1,\"price\":120,\"image\":\"https:\\/\\/www.ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://www.ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 190.00, '2025-12-01 11:24:11', '2025-12-01 11:24:11'),
(294, 'International Academy For Talents School', '01', 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', '[{\"id\":205,\"name\":\"Banladesh\",\"qty\":1,\"price\":1200,\"image\":\"http:\\/\\/localhost\\/public\\/uploads\\/product\\/1764306069-589211685_849235617694610_2829143546630379657_n.jpg\",\"link\":\"#\"}]', 'http://localhost/public/uploads/product/1764306069-589211685_849235617694610_2829143546630379657_n.jpg', '#', 1270.00, '2025-12-03 12:22:22', '2025-12-03 12:22:22'),
(299, 'Md Abu kalam', NULL, 'Dhaka', '[{\"id\":200,\"name\":\"Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants\",\"qty\":1,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868343-6b3a9e8c518630293a361e7da1762b48.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868343-6b3a9e8c518630293a361e7da1762b48.jpg', '#', 190.00, '2025-12-04 12:30:19', '2025-12-04 12:30:19'),
(301, 'Md Abu kalam', NULL, 'Dhaka', '[{\"id\":180,\"name\":\"Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1759501857-1740310249-80910-ugreen-ge.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1759501857-1740310249-80910-ugreen-ge.webp', '#', 1370.00, '2025-12-04 12:31:27', '2025-12-04 12:31:27'),
(311, '016', NULL, NULL, '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 200.00, '2025-12-05 14:35:43', '2025-12-05 14:35:43'),
(312, 'hafizur', '01689', NULL, '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 200.00, '2025-12-05 14:35:55', '2025-12-05 14:35:55'),
(319, 'md shohidul islam', '01938282000', 'Krishno Nagar,Zero point', '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":1,\"price\":2600,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 2670.00, '2025-12-05 15:32:37', '2025-12-05 15:32:37'),
(320, 'Baby Care', NULL, NULL, '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 200.00, '2025-12-05 16:30:11', '2025-12-05 16:30:11'),
(324, 'Md Mirajul Islam', NULL, 'CHAR RAGHUNATH PUR ROHMOTPUR DHAKA KERANIGANJ ZINZIRA', '[{\"id\":198,\"name\":\"Premium Cotton Full Sleeve Casual Shirt For Men\",\"qty\":1,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867779-4e3bc358294ed154f3763ae25e84d91c.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762867779-4e3bc358294ed154f3763ae25e84d91c.jpg', '#', 190.00, '2025-12-05 20:27:16', '2025-12-05 20:27:16'),
(327, 'Elite Design', '01614628005', 'Mudhur More, RK Road, Kurigram', '[{\"id\":210,\"name\":\"Samsung A07\",\"qty\":1,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 12070.00, '2025-12-06 07:39:32', '2025-12-06 07:39:32'),
(329, 'H', NULL, NULL, '[{\"id\":210,\"name\":\"Samsung A07\",\"qty\":2,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 24070.00, '2025-12-06 09:36:29', '2025-12-06 09:36:29'),
(330, 'Hri', NULL, NULL, '[{\"id\":210,\"name\":\"Samsung A07\",\"qty\":2,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 24070.00, '2025-12-06 09:36:36', '2025-12-06 09:36:36'),
(331, 'Hrit', NULL, NULL, '[{\"id\":210,\"name\":\"Samsung A07\",\"qty\":2,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 24070.00, '2025-12-06 09:36:39', '2025-12-06 09:36:39'),
(332, 'Hrittik', '0181', NULL, '[{\"id\":210,\"name\":\"Samsung A07\",\"qty\":2,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 24070.00, '2025-12-06 09:36:50', '2025-12-06 09:36:50'),
(333, 'Hrittik', '0181654', NULL, '[{\"id\":210,\"name\":\"Samsung A07\",\"qty\":2,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 24070.00, '2025-12-06 09:36:53', '2025-12-06 09:36:53'),
(334, 'Hrittik', '0181654764', NULL, '[{\"id\":210,\"name\":\"Samsung A07\",\"qty\":2,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 24070.00, '2025-12-06 09:36:56', '2025-12-06 09:36:56'),
(342, 'Asif', NULL, NULL, '[{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', '#', 1270.00, '2025-12-07 09:20:10', '2025-12-07 09:20:10'),
(346, 'vcvcv', '01340809230', NULL, '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":2,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 310.00, '2025-12-08 09:22:42', '2025-12-08 09:22:42'),
(347, 'vcvcv', '0134089230', NULL, '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":2,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 310.00, '2025-12-08 09:22:46', '2025-12-08 09:22:46'),
(348, 'vcvcv', '0134089230', NULL, '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":2,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 310.00, '2025-12-08 09:22:50', '2025-12-08 09:22:50'),
(349, 'vcvcv', '0134089230', '242/1 North Kazipara ,Mirpur ,Dhaka', '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":2,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 310.00, '2025-12-08 09:22:54', '2025-12-08 09:22:54'),
(350, 'vcvcv', '0134089230', 'Kazipara ,Mirpur ,Dhaka', '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":2,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 310.00, '2025-12-08 09:23:00', '2025-12-08 09:23:00'),
(351, 'vcvcv', '0134089230', 'Kazipara ,Mirpur ,Dhaka', '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":2,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 310.00, '2025-12-08 09:23:16', '2025-12-08 09:23:16'),
(352, 'vcvcv', '0134089230', 'Kazipara ,Mirpur ,Dhaka', '[{\"id\":199,\"name\":\"New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)\",\"qty\":2,\"price\":120,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868036-images.jfif\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868036-images.jfif', '#', 310.00, '2025-12-08 09:23:32', '2025-12-08 09:23:32'),
(357, 'Kutta Rahman', '01', NULL, '[{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', '#', 1270.00, '2025-12-10 04:14:42', '2025-12-10 04:14:42'),
(358, 'Kutta Rahman', '01554458888', NULL, '[{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', '#', 1270.00, '2025-12-10 04:14:47', '2025-12-10 04:14:47'),
(359, 'Kutta Rahman', '01554458888', '35/2-b,section 13', '[{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', '#', 1270.00, '2025-12-10 04:15:03', '2025-12-10 04:15:03'),
(362, 'Fake', '0191111111', 'Fghh', '[{\"id\":208,\"name\":\"CanvaProOwner (500 Member Add)\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764788259-canva_31d.jpg2_.jpg\",\"link\":\"#\"},{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764788259-canva_31d.jpg2_.jpg', '#', 2570.00, '2025-12-10 07:24:17', '2025-12-10 07:24:17'),
(363, 'Fake', '0191111111', 'Fghh', '[{\"id\":208,\"name\":\"CanvaProOwner (500 Member Add)\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764788259-canva_31d.jpg2_.jpg\",\"link\":\"#\"},{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764788259-canva_31d.jpg2_.jpg', '#', 2570.00, '2025-12-10 07:24:20', '2025-12-10 07:24:20'),
(364, 'Fake', '01911111111', 'Fghh', '[{\"id\":208,\"name\":\"CanvaProOwner (500 Member Add)\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764788259-canva_31d.jpg2_.jpg\",\"link\":\"#\"},{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764788259-canva_31d.jpg2_.jpg', '#', 2570.00, '2025-12-10 07:24:49', '2025-12-10 07:24:49'),
(365, '01911111111', NULL, NULL, '[{\"id\":197,\"name\":\"Herbal Green Tea Face Wash\",\"qty\":1,\"price\":1200,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762867269-1759503635-1757779000-71snyaacrzl.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', '#', 1270.00, '2025-12-10 07:25:26', '2025-12-10 07:25:26'),
(367, NULL, '33506760', 'Hhs', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 08:08:05', '2025-12-10 08:08:05'),
(368, 'Abir Group', '33506760', 'Hhs', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 08:08:08', '2025-12-10 08:08:08'),
(369, 'Abir Group', '33506760', 'Hhs', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 08:08:13', '2025-12-10 08:08:13'),
(370, 'Abir Group', '33506760', 'Hhs', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 08:08:16', '2025-12-10 08:08:16'),
(371, 'Abir Group', '33506760729', 'Hhs', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 08:08:21', '2025-12-10 08:08:21'),
(372, 'Abir Group', '33506760729', 'Hhs', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 08:08:24', '2025-12-10 08:08:24'),
(379, 'Tff', NULL, NULL, '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"},{\"id\":208,\"name\":\"CanvaProOwner (500 Member Add)\",\"qty\":2,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764788259-canva_31d.jpg2_.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 12670.00, '2025-12-10 10:42:25', '2025-12-10 10:42:25'),
(381, 'Shuvo Pal', NULL, NULL, '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 1370.00, '2025-12-10 11:50:14', '2025-12-10 11:50:14'),
(382, 'Shuvo Pal', '01', NULL, '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 1370.00, '2025-12-10 11:50:48', '2025-12-10 11:50:48'),
(383, 'Shuvo Pal', NULL, NULL, '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 1370.00, '2025-12-10 11:51:26', '2025-12-10 11:51:26'),
(384, 'Shuvo Pal', '016', NULL, '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 1370.00, '2025-12-10 11:51:31', '2025-12-10 11:51:31'),
(386, 'Fff', NULL, NULL, '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 12:10:47', '2025-12-10 12:10:47'),
(387, 'Fff', '01312-031302', 'Xxx', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 12:10:54', '2025-12-10 12:10:54'),
(388, 'Fff', '01312-031302', 'Xxx', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 12:11:02', '2025-12-10 12:11:02'),
(389, 'Fff', '01312-031302', 'Xxx', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 12:11:11', '2025-12-10 12:11:11'),
(391, 'Md Nahidur Rahman', '01305069550', 'কচুয়া বাজার মেইন রোড, বাগেরহাট।', '[{\"id\":201,\"name\":\"Cotton Narrow Fit Pajama for Men White Color\",\"qty\":1,\"price\":130,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', '#', 200.00, '2025-12-10 12:44:30', '2025-12-10 12:44:30'),
(392, 'gdfhf', '75869535216', 'fhghfghg', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 13:27:12', '2025-12-10 13:27:12'),
(393, 'gdfhf', '75869535216', 'fhghfghg', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 13:27:14', '2025-12-10 13:27:14'),
(394, 'gdfhf', '01727489632', 'fhghfghg', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 13:27:20', '2025-12-10 13:27:20'),
(395, 'Video Editing Mobile Flash', NULL, NULL, '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 13:28:22', '2025-12-10 13:28:22'),
(402, 'Mahedi', '01825428578', NULL, '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"},{\"id\":208,\"name\":\"CanvaProOwner (500 Member Add)\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764788259-canva_31d.jpg2_.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 13370.00, '2025-12-10 14:35:22', '2025-12-10 14:35:22'),
(404, 'Jjj', 'Yhh', 'Yyh', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 17:33:21', '2025-12-10 17:33:21'),
(405, 'Jjj', 'Yhh', 'Yyh', '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":10000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 10070.00, '2025-12-10 17:33:24', '2025-12-10 17:33:24'),
(408, 'Test', NULL, NULL, '[{\"id\":208,\"name\":\"CanvaProOwner (500 Member Add)\",\"qty\":1,\"price\":1300,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764788259-canva_31d.jpg2_.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764788259-canva_31d.jpg2_.jpg', '#', 1370.00, '2025-12-10 17:44:51', '2025-12-10 17:44:51'),
(414, 'Siyam Hasan', NULL, NULL, '[{\"id\":210,\"name\":\"Samsung A072\",\"qty\":1,\"price\":12000,\"image\":\"https:\\/\\/ecommerce1.creativedesign.com.bd\\/public\\/uploads\\/product\\/1764937354-a07-black.jpg\",\"link\":\"#\"}]', 'https://ecommerce1.creativedesign.com.bd/public/uploads/product/1764937354-a07-black.jpg', '#', 12070.00, '2025-12-10 23:29:15', '2025-12-10 23:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(28, '2023_01_11_114621_create_products_table', 10),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29),
(80, '2025_10_02_000001_add_fraud_and_courier_rates_to_orders_table', 30),
(81, '2025_10_02_191959_add_courier_and_fraud_rates_to_orders_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `consignment_id` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `fraud_success` int(11) NOT NULL DEFAULT 0,
  `fraud_cancel` int(11) NOT NULL DEFAULT 0,
  `fraud_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `pathao_success` int(11) NOT NULL DEFAULT 0,
  `pathao_cancel` int(11) NOT NULL DEFAULT 0,
  `pathao_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `redx_success` int(11) NOT NULL DEFAULT 0,
  `redx_cancel` int(11) NOT NULL DEFAULT 0,
  `redx_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `steadfast_success` int(11) NOT NULL DEFAULT 0,
  `steadfast_cancel` int(11) NOT NULL DEFAULT 0,
  `steadfast_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT 'unpaid',
  `payment_gateway` varchar(100) DEFAULT NULL,
  `advance_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `order_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `consignment_id`, `amount`, `discount`, `coupon_code`, `shipping_charge`, `customer_id`, `admin_note`, `order_status`, `fraud_success`, `fraud_cancel`, `fraud_rate`, `pathao_success`, `pathao_cancel`, `pathao_rate`, `redx_success`, `redx_cancel`, `redx_rate`, `steadfast_success`, `steadfast_cancel`, `steadfast_rate`, `user_id`, `note`, `created_at`, `updated_at`, `payment_status`, `payment_gateway`, `advance_amount`, `order_note`) VALUES
(628, '27243', NULL, 190, 0, NULL, 70, 288, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-11-29 14:36:07', '2025-11-29 14:36:07', 'pending', NULL, 0.00, 'The only reason'),
(629, '42953', NULL, 2670, 0, NULL, 70, 289, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-11-29 14:37:06', '2025-11-29 14:38:07', 'pending', NULL, 0.00, NULL),
(630, '56306', NULL, 2670, 0, NULL, 0, 290, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-11-29 14:40:23', '2025-11-29 14:40:23', 'unpaid', NULL, 0.00, NULL),
(631, '98161', NULL, 1270, 0, NULL, 70, 291, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-11-29 16:55:05', '2025-11-29 19:07:04', 'pending', NULL, 0.00, 'njklnnk'),
(632, '24345', NULL, 190, 0, NULL, 70, 292, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-11-29 19:11:56', '2025-12-01 17:32:35', 'paid', 'uddoktapay', 0.00, NULL),
(633, '43696', NULL, 5770, 0, NULL, 70, 293, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-11-30 02:23:58', '2025-12-01 17:32:41', 'unpaid', NULL, 0.00, NULL),
(634, '98366', NULL, 6400, 0, NULL, 0, 293, NULL, 6, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 9, NULL, '2025-11-30 02:25:03', '2025-11-30 02:28:43', 'unpaid', NULL, 0.00, NULL),
(637, '81389', NULL, 1370, 0, NULL, 70, 296, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-11-30 17:51:40', '2025-12-01 15:49:13', 'pending', NULL, 0.00, NULL),
(638, '80137', NULL, 200, 0, NULL, 70, 298, NULL, 1, 0, 0, 0.00, 1, 10, 9.00, 1, 6, 14.00, 1, 13, 7.00, NULL, NULL, '2025-12-01 04:03:56', '2025-12-01 17:33:45', 'pending', NULL, 0.00, 'Demo'),
(639, '20761', NULL, 240, 0, NULL, 120, 299, 'ratre delivery nibe', 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-01 06:44:24', '2025-12-01 17:33:25', 'paid', 'uddoktapay', 0.00, 'heee'),
(640, '38870', NULL, 200, 0, NULL, 0, 300, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-01 06:46:54', '2025-12-01 06:46:54', 'unpaid', NULL, 0.00, NULL),
(641, '85219', NULL, 1370, 0, NULL, 70, 299, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-01 06:48:41', '2025-12-01 06:48:41', 'unpaid', NULL, 0.00, NULL),
(643, '44844', NULL, 2600, 0, NULL, 0, 302, NULL, 6, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-01 14:51:51', '2025-12-01 19:13:03', 'pending', NULL, 0.00, NULL),
(644, '67461', NULL, 1270, 0, NULL, 70, 303, NULL, 1, 0, 0, 0.00, 3, 0, 100.00, 0, 0, 0.00, 6, 0, 100.00, NULL, NULL, '2025-12-03 10:53:06', '2025-12-04 16:36:54', 'pending', NULL, 0.00, 'hhhj'),
(645, '53611', NULL, 1270, 0, NULL, 70, 303, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-03 11:52:37', '2025-12-03 11:52:54', 'paid', 'uddoktapay', 0.00, NULL),
(646, '18498', NULL, 1270, 0, NULL, 70, 286, NULL, 1, 0, 0, 0.00, 0, 1, 0.00, 0, 1, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-03 12:23:03', '2025-12-06 07:08:51', 'paid', 'uddoktapay', 0.00, 'rtyytyty'),
(647, '50100', NULL, 1270, 0, NULL, 70, 292, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-03 12:29:56', '2025-12-03 12:29:59', 'pending', 'uddoktapay', 0.00, 'ukjukjku'),
(650, '87397', NULL, 190, 0, NULL, 70, 304, NULL, 1, 0, 0, 0.00, 6, 0, 100.00, 0, 0, 0.00, 12, 0, 100.00, NULL, NULL, '2025-12-04 12:30:32', '2025-12-10 16:27:40', 'pending', NULL, 0.00, NULL),
(651, '95447', NULL, 1300, 0, NULL, 0, 304, 'Fake', 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-04 12:31:33', '2025-12-04 12:32:24', 'pending', NULL, 0.00, 'Fake'),
(652, '21279', NULL, 2670, 0, NULL, 70, 305, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-04 16:40:12', '2025-12-04 16:40:12', 'pending', NULL, 0.00, NULL),
(653, '88003', NULL, 190, 0, NULL, 70, 286, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-04 23:34:45', '2025-12-04 23:34:46', 'pending', 'uddoktapay', 0.00, NULL),
(654, '43744', NULL, 190, 0, NULL, 70, 306, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-04 23:37:10', '2025-12-04 23:37:10', 'pending', NULL, 0.00, NULL),
(655, '73996', NULL, 200, 0, NULL, 70, 307, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-04 23:37:39', '2025-12-04 23:37:39', 'pending', NULL, 0.00, 'vcvc'),
(656, '95358', NULL, 2570, 0, NULL, 70, 308, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-04 23:38:42', '2025-12-06 12:46:41', 'paid', 'uddoktapay', 0.00, 'hhjjg'),
(658, '19475', NULL, 190, 0, NULL, 70, 310, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-05 12:51:10', '2025-12-05 12:51:10', 'pending', NULL, 0.00, NULL),
(659, '97543', NULL, 1370, 0, NULL, 70, 294, NULL, 1, 0, 0, 0.00, 0, 1, 0.00, 0, 1, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-05 13:19:15', '2025-12-11 08:41:40', 'paid', NULL, 0.00, NULL),
(663, '62501', NULL, 200, 0, NULL, 70, 313, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-05 17:05:40', '2025-12-05 17:11:17', 'paid', NULL, 0.00, NULL),
(664, '79220', NULL, 1370, 0, NULL, 70, 314, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-05 17:37:46', '2025-12-05 17:37:46', 'unpaid', NULL, 0.00, NULL),
(665, '99757', NULL, 3970, 0, NULL, 70, 286, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-05 17:47:28', '2025-12-05 17:47:29', 'pending', 'uddoktapay', 0.00, 'yyiiy'),
(669, '38136', NULL, 1270, 0, NULL, 70, 307, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-06 07:28:25', '2025-12-06 07:28:25', 'pending', NULL, 0.00, NULL),
(670, '96272', NULL, 1420, 0, NULL, 120, 317, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-06 07:29:04', '2025-12-06 07:29:04', 'pending', NULL, 0.00, NULL),
(671, '71236', NULL, 190, 0, NULL, 70, 308, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-06 07:39:46', '2025-12-06 08:58:01', 'unpaid', NULL, 0.00, NULL),
(672, '76559', NULL, 24070, 0, NULL, 70, 318, NULL, 1, 0, 0, 0.00, 0, 1, 0.00, 0, 0, 0.00, 0, 1, 0.00, NULL, NULL, '2025-12-06 09:37:35', '2025-12-06 12:46:47', 'pending', NULL, 0.00, NULL),
(673, '59528', NULL, 1610, 0, NULL, 70, 288, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-06 09:40:14', '2025-12-06 09:40:14', 'pending', NULL, 0.00, NULL),
(674, '54789', NULL, 3870, 0, NULL, 70, 319, NULL, 1, 0, 0, 0.00, 2, 0, 100.00, 0, 0, 0.00, 3, 0, 100.00, NULL, NULL, '2025-12-06 12:22:56', '2025-12-06 12:46:24', 'paid', NULL, 0.00, NULL),
(675, '14082', NULL, 2020, 0, NULL, 120, 320, NULL, 6, 0, 0, 0.00, 1, 0, 100.00, 0, 0, 0.00, 1, 0, 100.00, NULL, NULL, '2025-12-06 12:32:52', '2025-12-06 13:57:14', 'paid', NULL, 0.00, NULL),
(676, '30160', NULL, 1370, 0, NULL, 70, 309, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, 'fgggffggd', '2025-12-06 15:30:21', '2025-12-06 15:30:21', 'pending', NULL, 0.00, NULL),
(677, '61740', NULL, 1270, 0, NULL, 70, 321, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-07 09:20:17', '2025-12-07 09:20:17', 'pending', NULL, 0.00, NULL),
(678, '95586', '196902382', 10070, 0, NULL, 70, 322, NULL, 5, 0, 0, 0.00, 10, 0, 100.00, 5, 0, 100.00, 14, 0, 100.00, NULL, NULL, '2025-12-07 15:12:32', '2025-12-08 15:24:15', 'pending', NULL, 0.00, NULL),
(679, '33834', '196902341', 2270, 0, NULL, 70, 323, NULL, 5, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-07 18:10:58', '2025-12-08 18:36:40', 'pending', NULL, 0.00, NULL),
(680, '69861', NULL, 12370, 0, NULL, 70, 323, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-08 18:35:03', '2025-12-08 18:35:03', 'unpaid', NULL, 0.00, NULL),
(681, '63856', NULL, 8520, 0, NULL, 120, 323, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-08 18:35:59', '2025-12-08 18:35:59', 'unpaid', NULL, 0.00, NULL),
(682, '41946', NULL, 14170, 0, NULL, 70, 325, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-08 18:39:05', '2025-12-08 18:39:05', 'unpaid', NULL, 0.00, NULL),
(683, '94655', NULL, 28720, 0, NULL, 120, 326, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-08 18:45:15', '2025-12-08 18:45:15', 'unpaid', NULL, 0.00, NULL),
(684, '63553', '197123839', 28020, 0, NULL, 120, 323, NULL, 5, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-08 19:14:18', '2025-12-09 04:27:18', 'unpaid', NULL, 0.00, NULL),
(685, '52365', NULL, 1420, 0, NULL, 120, 286, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, 'vhgfghg', '2025-12-09 06:26:57', '2025-12-09 06:26:57', 'pending', NULL, 0.00, NULL),
(686, '62810', NULL, 10070, 0, NULL, 70, 321, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-09 09:19:29', '2025-12-09 09:19:29', 'pending', NULL, 0.00, NULL),
(687, '32678', NULL, 1270, 0, NULL, 70, 327, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-09 15:16:52', '2025-12-09 15:16:52', 'pending', NULL, 0.00, NULL),
(688, '53750', NULL, 920, 0, NULL, 120, 328, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-09 17:29:01', '2025-12-09 17:29:01', 'pending', NULL, 0.00, NULL),
(689, '31497', NULL, 1270, 0, NULL, 70, 286, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 04:15:24', '2025-12-10 04:15:24', 'pending', NULL, 0.00, NULL),
(690, '20879', NULL, 10070, 0, NULL, 70, 286, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 04:16:37', '2025-12-10 04:16:51', 'paid', 'uddoktapay', 0.00, 'nnn'),
(691, '28117', NULL, 670, 0, NULL, 70, 286, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 04:17:17', '2025-12-10 04:17:33', 'paid', 'uddoktapay', 0.00, 'nnnnnnnnnn'),
(692, '26988', NULL, 2670, 0, NULL, 70, 308, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 06:51:22', '2025-12-10 06:51:22', 'unpaid', NULL, 0.00, NULL),
(693, '72027', NULL, 2570, 0, NULL, 70, 329, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 07:24:31', '2025-12-10 07:24:31', 'pending', NULL, 0.00, NULL),
(694, '24403', NULL, 1370, 0, NULL, 70, 330, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 07:25:06', '2025-12-10 07:25:07', 'pending', 'uddoktapay', 0.00, NULL),
(695, '71260', NULL, 1270, 0, NULL, 70, 331, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 07:25:38', '2025-12-10 07:25:38', 'pending', 'uddoktapay', 0.00, NULL),
(696, '37571', NULL, 10070, 0, NULL, 70, 332, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 08:08:46', '2025-12-10 08:08:48', 'pending', 'uddoktapay', 0.00, 'Hw'),
(697, '60950', NULL, 10070, 0, NULL, 70, 333, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 08:13:04', '2025-12-10 08:13:05', 'pending', 'uddoktapay', 0.00, NULL),
(698, '73245', NULL, 1370, 0, NULL, 70, 333, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 08:13:44', '2025-12-10 08:13:44', 'pending', NULL, 0.00, NULL),
(699, '75554', NULL, 1370, 0, NULL, 70, 334, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 08:45:35', '2025-12-10 08:57:15', 'pending', NULL, 0.00, NULL),
(700, '67898', NULL, 10120, 0, NULL, 120, 335, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 10:06:47', '2025-12-10 10:06:48', 'pending', 'uddoktapay', 0.00, 'Hshshshsvs'),
(701, '36638', NULL, 10070, 0, NULL, 70, 336, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 10:28:14', '2025-12-10 10:29:02', 'paid', 'uddoktapay', 0.00, NULL),
(702, '36526', NULL, 12670, 0, NULL, 70, 337, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 10:42:37', '2025-12-10 10:43:28', 'paid', 'uddoktapay', 0.00, 'Hshdhb'),
(703, '16869', NULL, 1370, 0, NULL, 70, 338, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 11:51:43', '2025-12-10 12:03:54', 'pending', NULL, 0.00, NULL),
(704, '24587', NULL, 10120, 0, NULL, 120, 339, NULL, 1, 0, 0, 0.00, 1, 2, 33.00, 1, 3, 25.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 12:11:20', '2025-12-11 07:56:27', 'pending', NULL, 0.00, NULL),
(705, '36400', NULL, 10070, 0, NULL, 70, 340, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 13:27:23', '2025-12-10 13:27:24', 'pending', 'uddoktapay', 0.00, NULL),
(706, '73723', NULL, 10070, 0, NULL, 70, 341, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 13:28:43', '2025-12-11 07:56:23', 'pending', NULL, 0.00, NULL),
(707, '85341', NULL, 10070, 0, NULL, 70, 342, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 13:51:53', '2025-12-10 13:51:53', 'pending', NULL, 0.00, 'Op'),
(708, '75905', NULL, 1370, 0, NULL, 70, 343, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 14:35:38', '2025-12-10 15:42:59', 'pending', NULL, 0.00, NULL),
(709, '33803', NULL, 10070, 0, NULL, 70, 344, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 17:33:36', '2025-12-10 17:33:36', 'pending', NULL, 0.00, NULL),
(710, '90654', NULL, 1970, 0, NULL, 70, 345, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 17:42:34', '2025-12-11 07:56:17', 'paid', 'uddoktapay', 0.00, NULL),
(711, '24595', NULL, 1370, 0, NULL, 70, 294, NULL, 2, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 17:44:58', '2025-12-11 08:41:59', 'paid', 'uddoktapay', 0.00, NULL),
(712, '86759', '197776633', 10070, 0, NULL, 70, 346, NULL, 5, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 17:46:27', '2025-12-10 18:51:49', 'pending', 'uddoktapay', 0.00, NULL),
(713, '23339', '197849702', 1171, 99, NULL, 70, 347, NULL, 5, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 19:35:51', '2025-12-11 08:41:38', 'unpaid', NULL, 0.00, NULL),
(714, '67191', '197786809', 12070, 0, NULL, 70, 348, NULL, 6, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-10 23:29:31', '2025-12-11 02:55:01', 'pending', NULL, 0.00, NULL),
(717, '37384', '197787234', 150, 50, 'OKGOOD', 70, 351, NULL, 5, 0, 0, 0.00, 2, 0, 100.00, 0, 0, 0.00, 3, 0, 100.00, NULL, NULL, '2025-12-11 03:09:18', '2025-12-11 04:46:48', 'pending', NULL, 0.00, NULL),
(719, '40942', '197841859', 1270, 0, NULL, 70, 355, NULL, 5, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-11 07:55:59', '2025-12-11 08:11:18', 'unpaid', NULL, 0.00, NULL),
(720, '86220', NULL, 14570, 0, NULL, 70, 356, NULL, 1, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, 0, 0, 0.00, NULL, NULL, '2025-12-11 11:48:19', '2025-12-11 11:48:19', 'pending', NULL, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `variant_price_id` int(11) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `purchase_price`, `sale_price`, `product_discount`, `product_size`, `variant_price_id`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(744, 628, 200, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 120, 0, NULL, 125, NULL, 1, '2025-11-29 14:36:07', '2025-11-29 14:36:07'),
(745, 629, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-11-29 14:37:06', '2025-11-29 14:37:06'),
(746, 630, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-11-29 14:40:23', '2025-11-29 14:40:23'),
(747, 631, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-11-29 16:55:05', '2025-11-29 16:55:05'),
(748, 632, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 120, 0, '7', 147, '35', 1, '2025-11-29 19:11:56', '2025-11-29 19:11:56'),
(749, 633, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(750, 633, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(751, 633, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(752, 633, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(753, 634, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-11-30 02:25:03', '2025-11-30 02:25:03'),
(754, 634, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-11-30 02:25:03', '2025-11-30 02:25:03'),
(755, 634, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-11-30 02:25:03', '2025-11-30 02:25:03'),
(756, 634, 185, 'Fresh Green Vegetables Basket', 100, 800, 0, NULL, NULL, NULL, 1, '2025-11-30 02:25:03', '2025-11-30 02:25:03'),
(757, 634, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-11-30 02:25:03', '2025-11-30 02:25:03'),
(759, 637, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 1300, 0, '6', NULL, '39', 1, '2025-11-30 17:51:40', '2025-11-30 17:51:40'),
(760, 638, 199, 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 100, 130, 0, '7', 157, '35', 1, '2025-12-01 04:03:56', '2025-12-01 04:03:56'),
(761, 639, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 120, 0, '7', 147, '35', 1, '2025-12-01 06:44:24', '2025-12-01 06:44:24'),
(762, 640, 199, 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 100, 130, 0, NULL, NULL, NULL, 1, '2025-12-01 06:46:54', '2025-12-01 06:46:54'),
(763, 641, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-01 06:48:41', '2025-12-01 06:48:41'),
(765, 643, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-01 14:51:51', '2025-12-01 14:51:51'),
(766, 644, 205, 'Banladesh', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-03 10:53:06', '2025-12-03 10:53:06'),
(767, 645, 205, 'Banladesh', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-03 11:52:37', '2025-12-03 11:52:37'),
(768, 646, 205, 'Banladesh', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-03 12:23:03', '2025-12-03 12:23:03'),
(769, 647, 205, 'Banladesh', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-03 12:29:56', '2025-12-03 12:29:56'),
(772, 650, 200, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 120, 0, NULL, 125, NULL, 1, '2025-12-04 12:30:32', '2025-12-04 12:30:32'),
(773, 651, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-04 12:31:33', '2025-12-04 12:31:33'),
(774, 652, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 2, '2025-12-04 16:40:12', '2025-12-04 16:40:12'),
(775, 653, 198, 'Premium Cotton Full Sleeve Casual Shirt For Men', 100, 120, 0, NULL, 131, NULL, 1, '2025-12-04 23:34:45', '2025-12-04 23:34:45'),
(776, 654, 200, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 120, 0, NULL, 125, NULL, 1, '2025-12-04 23:37:10', '2025-12-04 23:37:10'),
(777, 655, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 130, 0, NULL, 159, NULL, 1, '2025-12-04 23:37:39', '2025-12-04 23:37:39'),
(783, 656, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-05 08:58:24', '2025-12-05 08:58:24'),
(784, 656, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-05 08:58:24', '2025-12-05 08:58:24'),
(785, 658, 200, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 120, 0, NULL, 125, NULL, 1, '2025-12-05 12:51:10', '2025-12-05 12:51:10'),
(786, 659, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-05 13:19:15', '2025-12-05 13:19:15'),
(790, 663, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 130, 0, NULL, 159, NULL, 1, '2025-12-05 17:05:40', '2025-12-05 17:05:40'),
(791, 664, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-05 17:37:46', '2025-12-05 17:37:46'),
(792, 665, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-05 17:47:28', '2025-12-05 17:47:28'),
(793, 665, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-05 17:47:28', '2025-12-05 17:47:28'),
(797, 669, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-06 07:28:25', '2025-12-06 07:28:25'),
(798, 670, 196, 'Radiance Glow Face Serum', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-06 07:29:04', '2025-12-06 07:29:04'),
(799, 671, 199, 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 100, 120, 0, NULL, 173, NULL, 1, '2025-12-06 07:39:46', '2025-12-06 07:39:46'),
(800, 672, 210, 'Samsung A07', 11000, 12000, 0, NULL, 172, NULL, 2, '2025-12-06 09:37:35', '2025-12-06 09:37:35'),
(801, 673, 196, 'Radiance Glow Face Serum', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-06 09:40:14', '2025-12-06 09:40:14'),
(802, 673, 198, 'Premium Cotton Full Sleeve Casual Shirt For Men', 100, 120, 0, NULL, 131, NULL, 1, '2025-12-06 09:40:14', '2025-12-06 09:40:14'),
(803, 673, 200, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 120, 0, NULL, 125, NULL, 1, '2025-12-06 09:40:14', '2025-12-06 09:40:14'),
(804, 674, 185, 'Fresh Green Vegetables Basket', 100, 800, 0, NULL, NULL, NULL, 1, '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(805, 674, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(806, 674, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(807, 674, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(808, 675, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-06 12:32:52', '2025-12-06 12:32:52'),
(809, 675, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-06 12:32:52', '2025-12-06 12:32:52'),
(810, 676, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-06 15:30:21', '2025-12-06 15:30:21'),
(811, 677, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-07 09:20:17', '2025-12-07 09:20:17'),
(812, 678, 210, 'Samsung A07', 5000, 10000, 0, NULL, 223, NULL, 1, '2025-12-07 15:12:32', '2025-12-07 15:12:32'),
(813, 679, 183, 'Premium Chiffon Hijab', 100, 2200, 0, NULL, 57, NULL, 1, '2025-12-07 18:10:58', '2025-12-07 18:10:58'),
(814, 680, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(815, 680, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(816, 680, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(817, 680, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 3, '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(818, 680, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 2, '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(819, 680, 185, 'Fresh Green Vegetables Basket', 100, 800, 0, NULL, NULL, NULL, 2, '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(820, 681, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:35:59', '2025-12-08 18:35:59'),
(821, 681, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:35:59', '2025-12-08 18:35:59'),
(822, 681, 198, 'Premium Cotton Full Sleeve Casual Shirt For Men', 100, 1300, 0, NULL, NULL, NULL, 3, '2025-12-08 18:35:59', '2025-12-08 18:35:59'),
(823, 681, 209, 'Premium Membership (Digital Product & Agency Business)', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:35:59', '2025-12-08 18:35:59'),
(824, 682, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(825, 682, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(826, 682, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(827, 682, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(828, 682, 185, 'Fresh Green Vegetables Basket', 100, 800, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(829, 682, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(830, 682, 196, 'Radiance Glow Face Serum', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(831, 682, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(832, 682, 199, 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(833, 682, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(834, 683, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(835, 683, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(836, 683, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(837, 683, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(838, 683, 185, 'Fresh Green Vegetables Basket', 100, 800, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(839, 683, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(840, 683, 196, 'Radiance Glow Face Serum', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(841, 683, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(842, 683, 198, 'Premium Cotton Full Sleeve Casual Shirt For Men', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(843, 683, 199, 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(844, 683, 200, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(845, 683, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(846, 683, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(847, 683, 209, 'Premium Membership (Digital Product & Agency Business)', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(848, 683, 210, 'Samsung A072', 5000, 10000, 0, NULL, NULL, NULL, 1, '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(863, 684, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(864, 684, 181, 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(865, 684, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(866, 684, 184, 'Jersey Stretch Hijab', 100, 600, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(867, 684, 185, 'Fresh Green Vegetables Basket', 100, 800, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(868, 684, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(869, 684, 196, 'Radiance Glow Face Serum', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(870, 684, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(871, 684, 198, 'Premium Cotton Full Sleeve Casual Shirt For Men', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(872, 684, 199, 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 100, 2600, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(873, 684, 200, 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(874, 684, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(875, 684, 209, 'Premium Membership (Digital Product & Agency Business)', 100, 600, 0, NULL, NULL, NULL, 2, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(876, 684, 210, 'Samsung A072', 5000, 10000, 0, NULL, NULL, NULL, 1, '2025-12-09 04:26:59', '2025-12-09 04:26:59'),
(877, 685, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-09 06:26:57', '2025-12-09 06:26:57'),
(878, 686, 210, 'Samsung A072', 5000, 10000, 0, '24', NULL, '41', 1, '2025-12-09 09:19:29', '2025-12-09 09:19:29'),
(881, 687, 186, 'Pure Mustard Oil (1L)', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-09 17:47:55', '2025-12-09 17:47:55'),
(882, 688, 185, 'Fresh Green Vegetables Basket', 100, 800, 0, NULL, NULL, NULL, 1, '2025-12-09 17:48:11', '2025-12-09 17:48:11'),
(883, 689, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-10 04:15:24', '2025-12-10 04:15:24'),
(884, 690, 210, 'Samsung A072', 5000, 10000, 0, NULL, 258, NULL, 1, '2025-12-10 04:16:37', '2025-12-10 04:16:37'),
(885, 691, 209, 'Premium Membership (Digital Product & Agency Business)', 100, 600, 0, NULL, 169, NULL, 1, '2025-12-10 04:17:17', '2025-12-10 04:17:17'),
(886, 692, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 2, '2025-12-10 06:51:22', '2025-12-10 06:51:22'),
(887, 693, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-10 07:24:31', '2025-12-10 07:24:31'),
(888, 693, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-10 07:24:31', '2025-12-10 07:24:31'),
(889, 694, 180, 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-10 07:25:06', '2025-12-10 07:25:06'),
(890, 695, 197, 'Herbal Green Tea Face Wash', 999, 1200, 0, NULL, NULL, NULL, 1, '2025-12-10 07:25:38', '2025-12-10 07:25:38'),
(891, 696, 210, 'Samsung A072', 5000, 10000, 0, '23', 260, '41', 1, '2025-12-10 08:08:46', '2025-12-10 08:08:46'),
(892, 697, 210, 'Samsung A072', 5000, 10000, 0, NULL, 258, NULL, 1, '2025-12-10 08:13:04', '2025-12-10 08:13:04'),
(893, 698, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 1300, 0, '7', NULL, '48', 1, '2025-12-10 08:13:44', '2025-12-10 08:13:44'),
(894, 699, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-10 08:45:35', '2025-12-10 08:45:35'),
(895, 700, 210, 'Samsung A072', 5000, 10000, 0, '23', 260, '41', 1, '2025-12-10 10:06:47', '2025-12-10 10:06:47'),
(896, 701, 210, 'Samsung A072', 5000, 10000, 0, '23', 258, '35', 1, '2025-12-10 10:28:14', '2025-12-10 10:28:14'),
(897, 702, 210, 'Samsung A072', 5000, 10000, 0, '23', 258, '35', 1, '2025-12-10 10:42:37', '2025-12-10 10:42:37'),
(898, 702, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 2, '2025-12-10 10:42:37', '2025-12-10 10:42:37'),
(899, 703, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 1300, 0, '9', NULL, '35', 1, '2025-12-10 11:51:43', '2025-12-10 11:51:43'),
(900, 704, 210, 'Samsung A072', 5000, 10000, 0, '23', 258, '35', 1, '2025-12-10 12:11:20', '2025-12-10 12:11:20'),
(901, 705, 210, 'Samsung A072', 5000, 10000, 0, '24', NULL, '41', 1, '2025-12-10 13:27:23', '2025-12-10 13:27:23'),
(902, 706, 210, 'Samsung A072', 5000, 10000, 0, '24', NULL, '41', 1, '2025-12-10 13:28:43', '2025-12-10 13:28:43'),
(903, 707, 210, 'Samsung A072', 5000, 10000, 0, '24', NULL, '41', 1, '2025-12-10 13:51:53', '2025-12-10 13:51:53'),
(904, 708, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-10 14:35:38', '2025-12-10 14:35:38'),
(905, 709, 210, 'Samsung A072', 5000, 10000, 0, NULL, 258, NULL, 1, '2025-12-10 17:33:36', '2025-12-10 17:33:36'),
(906, 710, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-10 17:42:34', '2025-12-10 17:42:34'),
(907, 710, 209, 'Premium Membership (Digital Product & Agency Business)', 100, 600, 0, NULL, 169, NULL, 1, '2025-12-10 17:42:34', '2025-12-10 17:42:34'),
(908, 711, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-10 17:44:58', '2025-12-10 17:44:58'),
(909, 712, 210, 'Samsung A072', 5000, 10000, 0, '23', 258, '35', 1, '2025-12-10 17:46:27', '2025-12-10 17:46:27'),
(912, 714, 210, 'Samsung A072', 5000, 12000, 0, '24', 261, '36', 1, '2025-12-10 23:29:31', '2025-12-10 23:29:31'),
(913, 717, 201, 'Cotton Narrow Fit Pajama for Men White Color', 100, 130, 0, NULL, 159, NULL, 1, '2025-12-11 03:09:18', '2025-12-11 03:09:18'),
(917, 713, 183, 'Premium Chiffon Hijab', 100, 1200, 99, NULL, NULL, NULL, 1, '2025-12-11 04:17:49', '2025-12-11 04:17:49'),
(918, 719, 183, 'Premium Chiffon Hijab', 100, 1200, 0, NULL, NULL, NULL, 1, '2025-12-11 07:55:59', '2025-12-11 07:55:59'),
(919, 720, 210, 'Samsung A072', 5000, 12000, 0, '24', 262, '40', 1, '2025-12-11 11:48:19', '2025-12-11 11:48:19'),
(920, 720, 208, 'CanvaProOwner (500 Member Add)', 100, 1300, 0, NULL, NULL, NULL, 1, '2025-12-11 11:48:19', '2025-12-11 11:48:19'),
(921, 720, 183, 'Premium Chiffon Hijab', 100, 1200, 0, '8', NULL, '36', 1, '2025-12-11 11:48:19', '2025-12-11 11:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(5, 'In Courier', 'in-courier', '0', '2023-08-15 11:31:56', '2025-11-18 18:05:34'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(8, 'Unpaid', 'unpaid', '1', '2024-07-06 17:47:36', '2024-07-06 17:47:36'),
(11, 'Cancelled', 'cancelled', '0', '2025-11-24 04:42:36', '2025-12-11 04:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('creativedesign.com.bd@gmail.com', '$2y$10$Vf/zd29X37nMtyPpSMqabu2Ww8VRSv90i9MISajzGPXp5OFaR5Mu2', '2025-11-10 07:59:11'),
('info@creativedesign.com.bd', '$2y$10$v9acYqd.9PFjH.OLekRmPu7OSBM7evcsb5kvCrL2mrl8GTP9U36Pq', '2025-12-07 18:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(76, 76, 23, 1070, NULL, NULL, 'Cash On Delivery', 'pending', '2024-11-09 06:15:34', '2024-11-09 06:15:34'),
(625, 628, 288, 100, NULL, NULL, 'bkash', 'pending', '2025-11-29 14:36:07', '2025-11-29 14:36:07'),
(626, 629, 289, 2670, NULL, NULL, 'cod', 'pending', '2025-11-29 14:37:06', '2025-11-29 14:37:06'),
(627, 630, 290, 2670, NULL, NULL, 'Cash On Delivery', 'pending', '2025-11-29 14:40:23', '2025-11-29 14:40:23'),
(628, 631, 291, 20, NULL, NULL, 'shurjopay', 'pending', '2025-11-29 16:55:05', '2025-11-29 16:55:05'),
(629, 632, 292, 30, NULL, NULL, 'uddoktapay', 'pending', '2025-11-29 19:11:56', '2025-11-29 19:11:56'),
(630, 633, 293, 5770, NULL, NULL, 'Cash On Delivery', 'pending', '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(631, 634, 293, 6520, NULL, NULL, 'Cash On Delivery', 'pending', '2025-11-30 02:25:03', '2025-11-30 02:25:03'),
(633, 637, 296, 30, NULL, NULL, 'bkash', 'pending', '2025-11-30 17:51:40', '2025-11-30 17:51:40'),
(634, 638, 298, 200, NULL, NULL, 'cod', 'pending', '2025-12-01 04:03:56', '2025-12-01 04:03:56'),
(635, 639, 299, 30, NULL, NULL, 'uddoktapay', 'pending', '2025-12-01 06:44:24', '2025-12-01 06:44:24'),
(636, 640, 300, 200, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-01 06:46:54', '2025-12-01 06:46:54'),
(637, 641, 299, 1370, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-01 06:48:41', '2025-12-01 06:48:41'),
(639, 643, 302, 2670, NULL, NULL, 'cod', 'pending', '2025-12-01 14:51:51', '2025-12-01 14:51:51'),
(640, 644, 303, 1270, NULL, NULL, 'cod', 'pending', '2025-12-03 10:53:06', '2025-12-03 10:53:06'),
(641, 645, 303, 1270, NULL, NULL, 'uddoktapay', 'pending', '2025-12-03 11:52:37', '2025-12-03 11:52:37'),
(642, 646, 286, 1270, NULL, NULL, 'uddoktapay', 'pending', '2025-12-03 12:23:03', '2025-12-03 12:23:03'),
(643, 647, 292, 1270, NULL, NULL, 'uddoktapay', 'pending', '2025-12-03 12:29:56', '2025-12-03 12:29:56'),
(646, 650, 304, 100, NULL, NULL, 'bkash', 'pending', '2025-12-04 12:30:32', '2025-12-04 12:30:32'),
(647, 651, 304, 1300, NULL, NULL, 'cod', 'pending', '2025-12-04 12:31:33', '2025-12-04 12:31:33'),
(648, 652, 305, 2670, NULL, NULL, 'cod', 'pending', '2025-12-04 16:40:12', '2025-12-04 16:40:12'),
(649, 653, 286, 100, NULL, NULL, 'uddoktapay', 'pending', '2025-12-04 23:34:45', '2025-12-04 23:34:45'),
(650, 654, 306, 100, NULL, NULL, 'bkash', 'pending', '2025-12-04 23:37:10', '2025-12-04 23:37:10'),
(651, 655, 307, 200, NULL, NULL, 'cod', 'pending', '2025-12-04 23:37:39', '2025-12-04 23:37:39'),
(652, 656, 308, 2570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-04 23:38:42', '2025-12-05 08:58:24'),
(654, 658, 310, 100, NULL, NULL, 'bkash', 'pending', '2025-12-05 12:51:10', '2025-12-05 12:51:10'),
(655, 659, 294, 1370, NULL, NULL, 'Cash On Delivery', 'paid', '2025-12-05 13:19:15', '2025-12-05 13:25:49'),
(659, 663, 313, 200, NULL, NULL, 'bkash', 'paid', '2025-12-05 17:05:40', '2025-12-05 17:11:17'),
(660, 664, 314, 1370, NULL, NULL, 'Cash On Delivery', 'unpaid', '2025-12-05 17:37:46', '2025-12-05 17:38:19'),
(661, 665, 286, 3970, NULL, NULL, 'uddoktapay', 'pending', '2025-12-05 17:47:28', '2025-12-05 17:47:28'),
(665, 669, 307, 60, NULL, NULL, NULL, 'pending', '2025-12-06 07:28:25', '2025-12-06 07:28:25'),
(666, 670, 317, 50, NULL, NULL, NULL, 'pending', '2025-12-06 07:29:04', '2025-12-06 07:29:04'),
(667, 671, 308, 190, NULL, NULL, 'cod', 'unpaid', '2025-12-06 07:39:46', '2025-12-06 08:58:01'),
(668, 672, 318, 1000, NULL, NULL, 'shurjopay', 'pending', '2025-12-06 09:37:35', '2025-12-06 09:37:35'),
(669, 673, 288, 250, NULL, NULL, 'bkash', 'pending', '2025-12-06 09:40:14', '2025-12-06 09:40:14'),
(670, 674, 319, 3870, NULL, NULL, 'Cash On Delivery', 'paid', '2025-12-06 12:22:56', '2025-12-06 12:23:53'),
(671, 675, 320, 1970, NULL, NULL, 'Cash On Delivery', 'paid', '2025-12-06 12:32:52', '2025-12-06 13:56:52'),
(672, 676, 309, 1370, NULL, NULL, 'cod', 'pending', '2025-12-06 15:30:21', '2025-12-06 15:30:21'),
(673, 677, 321, 20, NULL, NULL, 'bkash', 'pending', '2025-12-07 09:20:17', '2025-12-07 09:20:17'),
(674, 678, 322, 500, NULL, NULL, 'bkash', 'pending', '2025-12-07 15:12:32', '2025-12-07 15:12:32'),
(675, 679, 323, 2270, NULL, NULL, 'bkash', 'pending', '2025-12-07 18:10:58', '2025-12-07 18:10:58'),
(676, 680, 323, 12370, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(677, 681, 323, 8520, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-08 18:35:59', '2025-12-08 18:35:59'),
(678, 682, 325, 14170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(679, 683, 326, 28720, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(680, 684, 323, 28020, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-08 19:14:18', '2025-12-08 19:14:18'),
(681, 685, 286, 1420, NULL, NULL, 'cod', 'pending', '2025-12-09 06:26:57', '2025-12-09 06:26:57'),
(682, 686, 321, 500, NULL, NULL, 'shurjopay', 'pending', '2025-12-09 09:19:29', '2025-12-09 09:19:29'),
(683, 687, 327, 1270, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-09 15:16:52', '2025-12-09 17:47:55'),
(684, 688, 328, 920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-09 17:29:01', '2025-12-09 17:48:11'),
(685, 689, 286, 1270, NULL, NULL, 'cod', 'pending', '2025-12-10 04:15:24', '2025-12-10 04:15:24'),
(686, 690, 286, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 04:16:37', '2025-12-10 04:16:37'),
(687, 691, 286, 670, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 04:17:17', '2025-12-10 04:17:17'),
(688, 692, 308, 2670, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-10 06:51:22', '2025-12-10 06:51:22'),
(689, 693, 329, 2570, NULL, NULL, 'shurjopay', 'pending', '2025-12-10 07:24:31', '2025-12-10 07:24:31'),
(690, 694, 330, 1370, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 07:25:06', '2025-12-10 07:25:06'),
(691, 695, 331, 1270, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 07:25:38', '2025-12-10 07:25:38'),
(692, 696, 332, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 08:08:46', '2025-12-10 08:08:46'),
(693, 697, 333, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 08:13:04', '2025-12-10 08:13:04'),
(694, 698, 333, 1370, NULL, NULL, 'cod', 'pending', '2025-12-10 08:13:44', '2025-12-10 08:13:44'),
(695, 699, 334, 1370, NULL, NULL, 'bkash', 'pending', '2025-12-10 08:45:35', '2025-12-10 08:45:35'),
(696, 700, 335, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 10:06:47', '2025-12-10 10:06:47'),
(697, 701, 336, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 10:28:14', '2025-12-10 10:28:14'),
(698, 702, 337, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 10:42:37', '2025-12-10 10:42:37'),
(699, 703, 338, 1370, NULL, NULL, 'bkash', 'pending', '2025-12-10 11:51:43', '2025-12-10 11:51:43'),
(700, 704, 339, 500, NULL, NULL, 'bkash', 'pending', '2025-12-10 12:11:20', '2025-12-10 12:11:20'),
(701, 705, 340, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 13:27:23', '2025-12-10 13:27:23'),
(702, 706, 341, 500, NULL, NULL, 'bkash', 'pending', '2025-12-10 13:28:43', '2025-12-10 13:28:43'),
(703, 707, 342, 500, NULL, NULL, 'bkash', 'pending', '2025-12-10 13:51:53', '2025-12-10 13:51:53'),
(704, 708, 343, 1370, NULL, NULL, 'bkash', 'pending', '2025-12-10 14:35:38', '2025-12-10 14:35:38'),
(705, 709, 344, 500, NULL, NULL, 'bkash', 'pending', '2025-12-10 17:33:36', '2025-12-10 17:33:36'),
(706, 710, 345, 1970, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 17:42:34', '2025-12-10 17:42:34'),
(707, 711, 294, 1370, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 17:44:58', '2025-12-10 17:44:58'),
(708, 712, 346, 500, NULL, NULL, 'uddoktapay', 'pending', '2025-12-10 17:46:27', '2025-12-10 17:46:27'),
(709, 713, 347, 1171, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-10 19:35:51', '2025-12-11 04:17:49'),
(710, 714, 348, 500, NULL, NULL, 'bkash', 'pending', '2025-12-10 23:29:31', '2025-12-10 23:29:31'),
(711, 717, 351, 150, NULL, NULL, 'cod', 'pending', '2025-12-11 03:09:18', '2025-12-11 03:09:18'),
(713, 719, 355, 1270, NULL, NULL, 'Cash On Delivery', 'pending', '2025-12-11 07:55:59', '2025-12-11 07:55:59'),
(714, 720, 356, 500, NULL, NULL, 'bkash', 'pending', '2025-12-11 11:48:19', '2025-12-11 11:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', '4f6o0cjiki2rfm34kfdadl1eqq', '2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b', 'sandboxTokenizedUser02', 'sandboxTokenizedUser02@12345', 'https://tokenized.sandbox.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 1, '2024-02-06 11:29:46', '2025-11-06 19:12:59'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://ecom.websolutionit.com/payment-success', 'https://ecom1.joss.com.bd/', 'NOK', 1, '2024-02-06 11:29:46', '2025-11-06 19:12:50'),
(3, 'uddoktapay', '982d381360a69d419689740d9f2e26ce36fb7a50', 'YOUR_UDDOKTAPAY_SECRET', NULL, NULL, 'https://sandbox.uddoktapay.com/api/checkout-v2', NULL, NULL, NULL, 1, '2025-11-06 18:37:36', '2025-11-06 19:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'admin', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'admin', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'admin', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'admin', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'admin', NULL, NULL),
(10, 'permission-create', 'admin', NULL, NULL),
(11, 'setting-delete', 'admin', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'admin', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'admin', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'admin', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'admin', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'admin', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'admin', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'admin', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'admin', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'admin', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'admin', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'admin', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'admin', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'admin', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'admin', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'admin', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'admin', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'admin', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'admin', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'admin', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'admin', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'admin', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'admin', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'admin', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'admin', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'admin', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'admin', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'admin', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'admin', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'admin', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'admin', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'admin', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'admin', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'admin', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'admin', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'admin', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'admin', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'admin', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'admin', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'admin', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'admin', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'admin', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'admin', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'admin', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'admin', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'admin', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'admin', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'admin', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'admin', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'admin', '2024-01-31 10:52:00', '2024-01-31 10:52:00'),
(77, 'order manage', 'admin', '2025-10-07 04:49:28', '2025-10-07 04:49:28');

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
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 117, 32, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(11, 117, 35, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(12, 117, 39, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(13, 1, 36, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(14, 132, 32, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(15, 132, 36, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(16, 133, 36, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(17, 133, 49, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(18, 130, 35, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(19, 130, 36, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(20, 130, 39, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(21, 130, 48, '2024-09-04 13:28:04', '2024-09-04 13:28:04'),
(22, 135, 35, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(23, 135, 36, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(24, 135, 39, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(25, 137, 35, '2024-11-08 14:54:47', '2024-11-08 14:54:47'),
(26, 139, 62, '2024-11-08 15:09:17', '2024-11-08 15:09:17'),
(27, 150, 62, '2024-11-08 16:59:22', '2024-11-08 16:59:22'),
(28, 156, 35, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(29, 156, 39, '2024-11-27 21:33:49', '2024-11-27 21:33:49'),
(30, 155, 35, '2024-12-02 15:11:23', '2024-12-02 15:11:23'),
(31, 157, 40, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(32, 157, 44, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(33, 157, 51, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(34, 157, 62, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(35, 158, 36, '2024-12-05 15:43:20', '2024-12-05 15:43:20'),
(36, 179, 36, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(37, 179, 39, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(38, 179, 40, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(45, 182, 36, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(46, 182, 40, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(47, 182, 41, '2025-10-03 14:36:05', '2025-10-03 14:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(224, 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 159, '2025-01-10 04:06:35', '2025-01-10 04:06:35'),
(225, 'public/uploads/product/1736431699-2024-07-16-6696741839d29.jpg', 160, '2025-01-10 04:08:19', '2025-01-10 04:08:19'),
(226, 'public/uploads/product/1736431804-2024-07-16-66966f64be627.jpg', 161, '2025-01-10 04:10:04', '2025-01-10 04:10:04'),
(227, 'public/uploads/product/1736431896-2024-07-16-66966ee025159.jpg', 162, '2025-01-10 04:11:36', '2025-01-10 04:11:36'),
(228, 'public/uploads/product/1736432082-2024-07-15-6695b4dbdaf63.webp', 163, '2025-01-10 04:14:42', '2025-01-10 04:14:42'),
(229, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 164, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(230, 'public/uploads/product/1736432215-black-seed-honey-500-1.webp', 165, '2025-01-10 04:16:55', '2025-01-10 04:16:55'),
(232, 'public/uploads/product/1736437796-malai-400.webp', 167, '2025-01-10 05:49:56', '2025-01-10 05:49:56'),
(233, 'public/uploads/product/1736438047-ghee-175gm.webp', 168, '2025-01-10 05:54:07', '2025-01-10 05:54:07'),
(234, 'public/uploads/product/1736438310-peanut-butter-1.webp', 169, '2025-01-10 05:58:30', '2025-01-10 05:58:30'),
(235, 'public/uploads/product/1736438385-signatute-ghee.webp', 170, '2025-01-10 05:59:45', '2025-01-10 05:59:45'),
(236, 'public/uploads/product/1736438461-signatute-lacsa-semai.webp', 171, '2025-01-10 06:01:01', '2025-01-10 06:01:01'),
(237, 'public/uploads/product/1736438635-almond.webp', 172, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(238, 'public/uploads/product/1736438635-almond.webp', 173, '2025-01-10 06:03:55', '2025-01-10 06:03:55'),
(239, 'public/uploads/product/1736438717-mariyamdates.webp', 174, '2025-01-10 06:05:17', '2025-01-10 06:05:17'),
(242, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 177, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(243, 'public/uploads/product/1736438895-roasted-cashew-500-h.webp', 178, '2025-01-10 06:08:15', '2025-01-10 06:08:15'),
(244, 'public/uploads/product/1743836769-screenshot_1.png', 176, '2025-04-05 07:06:09', '2025-04-05 07:06:09'),
(247, 'public/uploads/product/1743836818-screenshot_3.png', 166, '2025-04-05 07:06:58', '2025-04-05 07:06:58'),
(248, 'public/uploads/product/1759480696-khaas-food-ajwa-dates-খাস-ফুড-আজওয়া-খেজুর.webp', 175, '2025-10-03 08:38:16', '2025-10-03 08:38:16'),
(249, 'public/uploads/product/1759499529-61nhot+9ffl.jpg', 179, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(250, 'public/uploads/product/1759499529-e32a9939dc1030151c1e0168b9dc1fa5.jpg_720x720q80.jpg', 179, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(251, 'public/uploads/product/1759499529-e32a9939dc1030151c1e0168b9dc1fa5.jpg_720x720q80.jpg', 179, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(252, 'public/uploads/product/1759499529-b5a9b2b56e61cee18211068aeec6e4af.jpg', 179, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(253, 'public/uploads/product/1759501857-1740310249-80910-ugreen-ge.webp', 180, '2025-10-03 14:30:57', '2025-10-03 14:30:57'),
(254, 'public/uploads/product/1759501963-1740309960-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 181, '2025-10-03 14:32:43', '2025-10-03 14:32:43'),
(255, 'public/uploads/product/1759502165-1757776999-81c9ripib0l._uy1000_.webp', 182, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(256, 'public/uploads/product/1759502255-1757777751-thofeb23-03549.webp', 183, '2025-10-03 14:37:35', '2025-10-03 14:37:35'),
(257, 'public/uploads/product/1759502330-1757778001-screenshot-at-sep-13-21-39-24.webp', 184, '2025-10-03 14:38:50', '2025-10-03 14:38:50'),
(258, 'public/uploads/product/1759503396-1757779801-istockphoto-121111860-612x612.webp', 185, '2025-10-03 14:56:36', '2025-10-03 14:56:36'),
(259, 'public/uploads/product/1759503464-1757779231-mustard-oil-100percent-organic-wooden-cold-pressed-and-double-filtered-1000ml-oil-in-reusable-glass-bottle-kachi-ghani-satopradhan-1-32290742599906.webp', 186, '2025-10-03 14:57:44', '2025-10-03 14:57:44'),
(260, 'public/uploads/product/1759503555-1757778250-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-0db57-405414.webp', 187, '2025-10-03 14:59:15', '2025-10-03 14:59:15'),
(261, 'public/uploads/product/1759503635-1757779000-71snyaacrzl.webp', 188, '2025-10-03 15:00:35', '2025-10-03 15:00:35'),
(262, 'public/uploads/product/1759652002-team2-3.jpg', 189, '2025-10-05 08:13:22', '2025-10-05 08:13:22'),
(263, 'public/uploads/product/1760772926-1.1.2_1.1.2.png', 190, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(264, 'public/uploads/product/1760772926-1.8.1_1.8.1.jpg', 190, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(265, 'public/uploads/product/1761559002-combo-offer.jpg', 191, '2025-10-27 09:56:42', '2025-10-27 09:56:42'),
(266, 'public/uploads/product/1762613230-573006044_122174016998393321_2773744375485586145_n.jpg', 193, '2025-11-08 14:47:10', '2025-11-08 14:47:10'),
(267, 'public/uploads/product/1762613341-573006044_122174016998393321_2773744375485586145_n.jpg', 194, '2025-11-08 14:49:01', '2025-11-08 14:49:01'),
(268, 'public/uploads/product/1762613517-555194582_779396224898995_8823853251691840155_n.jpeg', 195, '2025-11-08 14:51:57', '2025-11-08 14:51:57'),
(269, 'public/uploads/product/1762865984-183965129-origpic-8f5ac5.webp', 184, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(270, 'public/uploads/product/1762865984-images.jfif', 184, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(271, 'public/uploads/product/1762865984-images (1).jfif', 184, '2025-11-11 12:59:44', '2025-11-11 12:59:44'),
(272, 'public/uploads/product/1762866138-images (1).jfif', 183, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(273, 'public/uploads/product/1762866138-images.jfif', 183, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(274, 'public/uploads/product/1762866138-premium-chiffon-hijab-heather-960585.webp', 183, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(275, 'public/uploads/product/1762866138-premium-chiffon-hijab-taupe-841181.webp', 183, '2025-11-11 13:02:18', '2025-11-11 13:02:18'),
(276, 'public/uploads/product/1762866283-71e3c97a534922babe9192f4245deeb1.png_720x720q80.png', 186, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(277, 'public/uploads/product/1762866283-aci-pure-mustard-oil-1-ltr.jfif', 186, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(278, 'public/uploads/product/1762866283-giant_324301.png', 186, '2025-11-11 13:04:43', '2025-11-11 13:04:43'),
(279, 'public/uploads/product/1762866408-fresh-green-vegetables-in-wicker-basket-photo.jpg', 185, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(280, 'public/uploads/product/1762866408-images.jfif', 185, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(281, 'public/uploads/product/1762866408-istockphoto-121111860-612x612.jpg', 185, '2025-11-11 13:06:48', '2025-11-11 13:06:48'),
(282, 'public/uploads/product/1762866514-images.jfif', 180, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(283, 'public/uploads/product/1762866514-JOYROOM-JR-CL06-154W-Multi-Port-Car-Cigarette-Lighter-Car-Charger.jpg', 180, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(284, 'public/uploads/product/1762866514-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 180, '2025-11-11 13:08:34', '2025-11-11 13:08:34'),
(285, 'public/uploads/product/1762866561-images.jfif', 181, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(286, 'public/uploads/product/1762866561-JOYROOM-JR-CL06-154W-Multi-Port-Car-Cigarette-Lighter-Car-Charger.jpg', 181, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(287, 'public/uploads/product/1762866561-sku_08295929-202e-487c-983b-6d657f2ba069.webp', 181, '2025-11-11 13:09:21', '2025-11-11 13:09:21'),
(288, 'public/uploads/product/1762867027-1759503555-1757778250-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-0db57-405414.webp', 196, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(289, 'public/uploads/product/1762867027-images-(1).jfif', 196, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(290, 'public/uploads/product/1762867027-good_vibes_rosehip_radiant_glow_face_ser-good_vibes-41fba-405414.jpg', 196, '2025-11-11 13:17:07', '2025-11-11 13:17:07'),
(291, 'public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', 197, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(292, 'public/uploads/product/1762867269-images.jfif', 197, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(293, 'public/uploads/product/1762867269-1759503635-1757779000-71snyaacrzl.webp', 197, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(294, 'public/uploads/product/1762867269-61bjy+if0ks.jpg', 197, '2025-11-11 13:21:09', '2025-11-11 13:21:09'),
(295, 'public/uploads/product/1762867779-4e3bc358294ed154f3763ae25e84d91c.jpg', 198, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(296, 'public/uploads/product/1762867779-107f548c79d19e4b79ed268bd81cd58d.jpg_720x720q80.jpg', 198, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(297, 'public/uploads/product/1762867779-833aecc8c7a04d8a20a5fb3d846883ff.jpg_720x720q80.jpg', 198, '2025-11-11 13:29:39', '2025-11-11 13:29:39'),
(298, 'public/uploads/product/1762868036-images.jfif', 199, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(299, 'public/uploads/product/1762868036-4e3bc358294ed154f3763ae25e84d91c.jpg', 199, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(300, 'public/uploads/product/1762868036-107f548c79d19e4b79ed268bd81cd58d.jpg_720x720q80.jpg', 199, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(301, 'public/uploads/product/1762868036-833aecc8c7a04d8a20a5fb3d846883ff.jpg_720x720q80.jpg', 199, '2025-11-11 13:33:56', '2025-11-11 13:33:56'),
(302, 'public/uploads/product/1762868343-6b3a9e8c518630293a361e7da1762b48.jpg', 200, '2025-11-11 13:39:03', '2025-11-11 13:39:03'),
(303, 'public/uploads/product/1762868344-0e1e78da1b33be8787926bbfe26133de.jpg', 200, '2025-11-11 13:39:04', '2025-11-11 13:39:04'),
(304, 'public/uploads/product/1762868344-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', 200, '2025-11-11 13:39:04', '2025-11-11 13:39:04'),
(305, 'public/uploads/product/1762868543-82c7603c7c840c47bfddf71db4d39cf9.jpg_720x720q80.jpg_.webp', 201, '2025-11-11 13:42:23', '2025-11-11 13:42:23'),
(306, 'public/uploads/product/1762868543-6b3a9e8c518630293a361e7da1762b48.jpg', 201, '2025-11-11 13:42:23', '2025-11-11 13:42:23'),
(307, 'public/uploads/product/1762868543-0e1e78da1b33be8787926bbfe26133de.jpg', 201, '2025-11-11 13:42:23', '2025-11-11 13:42:23'),
(308, 'public/uploads/product/1763312890-screenshot_10.png', 202, '2025-11-16 17:08:10', '2025-11-16 17:08:10'),
(309, 'public/uploads/product/1763569354-relax-tea-(linkedin-post).jpg', 203, '2025-11-19 16:22:34', '2025-11-19 16:22:34'),
(310, 'public/uploads/product/1763623545-images.jpg', 204, '2025-11-20 07:25:45', '2025-11-20 07:25:45'),
(311, 'public/uploads/product/1764306069-589211685_849235617694610_2829143546630379657_n.jpg', 205, '2025-11-28 05:01:09', '2025-11-28 05:01:09'),
(312, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.24_274e29a5.jpg', 206, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(313, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.25_3370ce0c.jpg', 206, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(314, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.21_04d389e9.jpg', 206, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(315, 'public/uploads/product/1764326847-whatsapp-image-2025-11-09-at-17.26.23_30b7714c.jpg', 206, '2025-11-28 10:47:27', '2025-11-28 10:47:27'),
(317, 'public/uploads/product/1764766501-screenshot_1.png', 207, '2025-12-03 12:55:01', '2025-12-03 12:55:01'),
(318, 'public/uploads/product/1764788259-canva_31d.jpg2_.jpg', 208, '2025-12-03 18:57:39', '2025-12-03 18:57:39'),
(319, 'public/uploads/product/1764788491-premium-mebership.jpg', 209, '2025-12-03 19:01:31', '2025-12-03 19:01:31'),
(320, 'public/uploads/product/1764937354-a07-black.jpg', 210, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(321, 'public/uploads/product/1764937354-a07-silver.jpg', 210, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(322, 'public/uploads/product/1764937354-a07-black.jpg', 210, '2025-12-05 12:22:34', '2025-12-05 12:22:34'),
(323, 'public/uploads/product/1764937354-a07-site.jpg', 210, '2025-12-05 12:22:34', '2025-12-05 12:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_type` enum('physical','digital') NOT NULL DEFAULT 'physical',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `advance_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `ratting` float(2,1) NOT NULL DEFAULT 0.0,
  `stock` int(11) NOT NULL,
  `is_digital` tinyint(1) NOT NULL DEFAULT 0,
  `digital_file` varchar(255) DEFAULT NULL,
  `download_limit` int(11) DEFAULT NULL,
  `download_expire_days` int(11) DEFAULT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `flashsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `sold` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `advance_amount`, `ratting`, `stock`, `is_digital`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(180, 'physical', 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 'ugreen-car-charger-with-fm-modulator-pd-2x-usb-1x-type-c-bluetooth-qc-3.0-car-charger-80910-cd229-180', 19, 0, NULL, NULL, 'P0180', 100, 1200, 1300, 0.00, 0.0, 976, 0, NULL, NULL, NULL, 'PCS', NULL, '<h4 style=\"margin-top: 0px; margin-bottom: 20px; line-height: 1.4; font-size: 18px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin-block: 0px; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth Car Charger 80910 CD229</span></h4><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0px; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ugreen Car Charger 80910 CD229&nbsp; Features :&nbsp;</span></p><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; list-style: none; color: rgb(33, 37, 41); font-family: Roboto, sans-serif;\"><li style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; list-style: inside square; font-size: 13px; line-height: inherit; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin-block: 0px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Car charger with Bluetooth 5.0 FM transmitter. Your own radio station. The FM transmitter and Bluetooth 5.0 technology allow you to listen to music stored on your smartphone via the radio. It is enough to pair the phone with the gadget, and then search for the appropriate frequency on the car receiver.</li><ul style=\"padding: 0px; margin-right: 0px; margin-left: 0px; border: 0px; list-style: none;\"><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Convenient conversations :</span>The built-in microphone allows you to make calls without having to hold the phone in your hand. And you only need one button to answer / reject calls or redial a number!</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Up to 3 devices simultaneously :</span>3 USB ports (2x USB + 1 x USB Type C) allow you to renew the energy of up to 3 devices at the same time.</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Music from a flash drive or memory card :</span>The gadget also easily plays audio files (in MP3 / WMA / WAV / FLAC formats) from a USB flash drive or TF / micro SD card connected to it.</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">When navigation is too quiet&nbsp;</span>The accessory will also be useful as a navigation voice amplifier. Thanks to the use of car speakers, all commands will be perfectly audible.</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Digital display&nbsp;</span>Practical display informs about the current voltage and transmission frequency.</li></ul><li style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; list-style: inside square; font-size: 13px; line-height: inherit; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin-block: 0px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Specification Ugreen Car Charger 80910 CD229 :&nbsp;</span></li><ul style=\"padding: 0px; margin-right: 0px; margin-left: 0px; border: 0px; list-style: none;\"><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB ports: USB Type C, USB Type A.</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB 1 output: 5V / 3A; 9V / 2A; 12V / 1.5A</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB 2 output: 5V / 1.5A</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB-C output: 5V / 3A; 9V / 2.22A; 12V / 1.67A</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Total output power: 5V = 4.8A; 31.5 W max</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Bluetooth version: Bluetooth 5.0</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Transmission distance:</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Working temperature: 0 ℃ -60 ℃</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">FM frequency range: 87.5-108MHz (100KHz step)</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Bit rate: 64-320 kbps</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Supports file types: MP3 / WMA / WAV</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Power supply: DC 12V-24V.</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Supports TF card / flash memory capacity: ≦ 128 GB</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Screen: LED</li><li style=\"margin: 0px; padding: 0px; border: 0px; list-style: inside square; font-size: 16px; line-height: inherit; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Weight: 50g</li></ul></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0px; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Ugreen Car Charger&nbsp; Fm modulator 80910 CD229 Warranty : 3 Months Warranty</span></p>', 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth QC 3.0 Car Charger 80910 CD229', 'Ugreen Car Charger With FM Modulator PD 2x Usb 1x Type-C Bluetooth Car Charger 80910 CD229Ugreen Car Charger 80910 CD229&nbsp; Features :&nbsp;Car charger with...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, NULL, NULL, '2025-10-03 14:30:47', '2025-12-11 04:15:08'),
(181, 'physical', 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 'jr-cl06-154w-car-cigarette-lighter-adapter-with-three-sockets-+-6-ports-181', 19, 0, NULL, NULL, 'P0181', 100, 1900, 2600, 0.00, 0.0, 989, 0, NULL, NULL, NULL, NULL, NULL, '<h1 class=\"product-meta__title heading h3\" style=\"margin-top: 0px; margin-bottom: 20px; line-height: 1.4; font-size: 28px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; margin-block: 0px; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\"><a href=\"https://www.joyroom.com/products/154w-car-adapter\" style=\"text-decoration: none; margin: 0px; padding: 0px; border: 0px; outline-offset: 0px; outline: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; transition: 0.25s; box-shadow: none; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\">JR-CL06</a>&nbsp;154W Car cigarette lighter adapter with three sockets + 6 ports</h1><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0px; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\">The JR-CL06 154W Car Cigarette Lighter Adapter is a high-power, versatile charging solution designed to meet all your in-car power needs. Featuring three cigarette lighter sockets and six USB ports, this adapter ensures you can power multiple devices simultaneously with ease. With a total power output of 154W, it provides fast and efficient charging for a wide range of devices, from smartphones and tablets to GPS units and dash cams.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0px; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\">The three cigarette lighter sockets offer ample space for powering additional car accessories such as air purifiers, vacuum cleaners, or car refrigerators. Meanwhile, the six USB ports, including both standard and fast-charging options, ensure that all your passengers can keep their devices fully charged during long journeys.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; margin-block: 0px; color: rgb(48, 48, 48) !important; font-family: Poppins !important;\">Designed with convenience and safety in mind, the JR-CL06 is compact and portable, making it an ideal addition to any vehicle. Its easy installation process means you can quickly set it up and start using it without any hassle. The adapter also features built-in protection against overcurrent and short circuits, ensuring your devices remain safe while charging.</p>', 'JR-CL06 154W Car cigarette lighter adapter with three sockets + 6 ports', 'JR-CL06&nbsp;154W Car cigarette lighter adapter with three sockets + 6 portsThe JR-CL06 154W Car Cigarette Lighter Adapter is a high-power, versatile charging s...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 0, 1, 0, NULL, 1, NULL, NULL, '2025-10-03 14:32:43', '2025-12-08 19:14:18'),
(183, 'physical', 'Premium Chiffon Hijab', 'premium-chiffon-hijab-183', 20, 0, NULL, NULL, 'P0183', 100, 1900, 1200, 0.00, 0.0, 987, 0, NULL, NULL, NULL, 'PCS', 'fZEkwcWnfDE', '<p>A timeless light-blue denim jacket with a comfortable fit. Perfect for casual outings or layering over your favorite tee. Durable stitching and premium cotton for long-lasting wear.</p>', 'Premium Chiffon Hijab', 'A timeless light-blue denim jacket with a comfortable fit. Perfect for casual outings or layering over your favorite tee. Durable stitching and premium cotton f...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, '10', NULL, '2025-10-03 14:37:35', '2025-12-11 11:48:19'),
(184, 'physical', 'Jersey Stretch Hijab', 'jersey-stretch-hijab-184', 20, 0, NULL, NULL, 'P0184', 100, 1200, 600, 0.00, 0.0, 989, 0, NULL, NULL, NULL, 'PCS', 'fZEkwcWnfDE', '<p>A timeless light-blue denim jacket with a comfortable fit. Perfect for casual outings or layering over your favorite tee. Durable stitching and premium cotton for long-lasting wear.</p>', 'Jersey Stretch Hijab', 'A timeless light-blue denim jacket with a comfortable fit. Perfect for casual outings or layering over your favorite tee. Durable stitching and premium cotton f...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, NULL, NULL, '2025-10-03 14:38:50', '2025-12-09 07:54:35'),
(185, 'physical', 'Fresh Green Vegetables Basket', 'fresh-green-vegetables-basket-185', 23, 0, NULL, NULL, 'P0185', 100, 1200, 800, 0.00, 0.0, 1191, 0, NULL, NULL, NULL, 'KG', 'fZEkwcWnfDE', '<p><b>Fresh Green Vegetables Basket</b></p><p>Description: A curated basket of fresh, locally sourced green vegetables including spinach, carrots, beans, and cucumbers. Grown without harmful chemicals, these vegetables are full of nutrients and flavor. Perfect for daily meals, salads, or cooking, this basket brings farm-fresh goodness directly to your kitchen. Enjoy healthy, tasty meals while supporting local farmers.</p>', 'Fresh Green Vegetables Basket', 'Fresh Green Vegetables BasketDescription: A curated basket of fresh, locally sourced green vegetables including spinach, carrots, beans, and cucumbers. Grown wi...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, NULL, NULL, '2025-10-03 14:56:36', '2025-12-09 17:29:01'),
(186, 'physical', 'Pure Mustard Oil (1L)', 'pure-mustard-oil-(1l)-186', 23, 0, NULL, NULL, 'P0186', 63000, 1900, 1200, 0.00, 0.0, 992, 0, NULL, NULL, NULL, 'KG', 'fZEkwcWnfDE', '<p>Cold-pressed from high-quality mustard seeds, this 1-liter mustard oil delivers the perfect pungent aroma and rich flavor essential in Bangladeshi kitchens. Ideal for cooking traditional dishes, frying, or marinating. Packed with natural antioxidants, it adds both taste and nutritional benefits to your meals. Use it to bring authentic, bold flavors to your everyday cooking.</p>', 'Pure Mustard Oil (1L)', 'Cold-pressed from high-quality mustard seeds, this 1-liter mustard oil delivers the perfect pungent aroma and rich flavor essential in Bangladeshi kitchens. Ide...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, '10', NULL, '2025-10-03 14:57:44', '2025-12-11 05:28:10'),
(196, 'physical', 'Radiance Glow Face Serum', 'radiance-glow-face-serum-196', 21, 0, NULL, NULL, 'P0187', 100, 1200, 1300, 0.00, 0.0, 995, 0, NULL, NULL, NULL, '4BOGLxlhzsk', NULL, '<p>Cold-pressed from high-quality mustard seeds, this 1-liter mustard oil delivers the perfect pungent aroma and rich flavor essential in Bangladeshi kitchens. Ideal for cooking traditional dishes, frying, or marinating. Packed with natural antioxidants, it adds both taste and nutritional benefits to your meals. Use it to bring authentic, bold flavors to your everyday cooking.</p>', 'Radiance Glow Face Serum', 'Cold-pressed from high-quality mustard seeds, this 1-liter mustard oil delivers the perfect pungent aroma and rich flavor essential in Bangladeshi kitchens. Ide...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, NULL, NULL, '2025-11-11 13:17:07', '2025-12-09 07:54:13'),
(197, 'physical', 'Herbal Green Tea Face Wash', 'herbal-green-tea-face-wash-197', 21, 0, NULL, 19, 'P0197', 999, 2100, 1200, 0.00, 0.0, 991, 0, NULL, NULL, NULL, '4BOGLxlhzsk', NULL, '<p>Cold-pressed from high-quality mustard seeds, this 1-liter mustard oil delivers the perfect pungent aroma and rich flavor essential in Bangladeshi kitchens. Ideal for cooking traditional dishes, frying, or marinating. Packed with natural antioxidants, it adds both taste and nutritional benefits to your meals. Use it to bring authentic, bold flavors to your everyday cooking.</p>', 'Herbal Green Tea Face Wash', 'Cold-pressed from high-quality mustard seeds, this 1-liter mustard oil delivers the perfect pungent aroma and rich flavor essential in Bangladeshi kitchens. Ide...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, '10', NULL, '2025-11-11 13:21:09', '2025-12-11 11:29:42'),
(198, 'physical', 'Premium Cotton Full Sleeve Casual Shirt For Men', 'premium-cotton-full-sleeve-casual-shirt-for-men-198', 20, 64, 0, NULL, 'P0198', 100, 1900, 1300, 0.00, 0.0, 991, 0, NULL, NULL, NULL, 'PCS', NULL, '<p>Product Type: Casual Shirt</p><p>Main Material: Cotton</p><p>Gender: Men</p><p>Stylish and fashionable</p><p>Perfect Fitting</p><p>Collection for Men</p><p>Comfortable to wear</p><p>Perfect for any Occasion</p><p>Size M L XL XXLM-length;28.\'\'chest;39\'\'L- length: 29\", chest; 41\'\'XL-length: 30\", chest; 43\'</p>', 'Premium Cotton Full Sleeve Casual Shirt For Men', 'Product Type: Casual ShirtMain Material: CottonGender: MenStylish and fashionablePerfect FittingCollection for MenComfortable to wearPerfect for any OccasionSiz...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, '10', NULL, '2025-11-11 13:29:39', '2025-12-09 07:54:01'),
(199, 'physical', 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 'new-stylish-&-smart-looking-trendy-cotton-oxford-long-sleeve-casual-shirt-for-men-by-salma-xport-(lx)-199', 20, 64, 0, NULL, 'P0199', 100, 1200, 2600, 0.00, 0.0, 88, 0, NULL, NULL, NULL, 'FSWl57UR4k0', NULL, '<p>Product Type: Casual Shirt</p><p>Main Material: Cotton</p><p>Gender: Men</p><p>Stylish and fashionable</p><p>Perfect Fitting</p><p>Collection for Men</p><p>Comfortable to wear</p><p>Perfect for any Occasion</p><p>Size M L XL XXLM-length;28.\'\'chest;39\'\'L- length: 29\", chest; 41\'\'XL-length: 30\", chest; 43\'</p><div><br></div>', 'New Stylish & Smart Looking Trendy Cotton Oxford Long Sleeve Casual Shirt For Men By SALMA XPORT (LX)', 'Product Type: Casual ShirtMain Material: CottonGender: MenStylish and fashionablePerfect FittingCollection for MenComfortable to wearPerfect for any OccasionSiz...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, '10', NULL, '2025-11-11 13:33:56', '2025-12-08 19:14:18'),
(200, 'physical', 'Linenn Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 'linenn-clothing-customized-man-casual-lightweight-linen-trousers-elastic-waist-straight-leg-men-pants-200', 20, 65, 0, NULL, 'P0200', 100, 1200, 1300, 0.00, 0.0, 991, 0, NULL, NULL, NULL, 'PCS', 'fZEkwcWnfDE', '<p>Product details of Linen Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants</p><p>Men 100% Linen Pants</p><p>Fabric Type: LinenFeature: Anti-Static, Anti-pilling, Sustainable, QUICK DRY, Anti-wrinkle, Breathable, Waterproof, Windproof, Men 100% Linen PantsPattern: Harem PantsMaterial: Linen / Cotton, Linen / CottonTechnics: Plain DyedGender: MenSeason: SpringFit Type: LooseFront Style: FlatClosure Type: Elastic WaistWaist Type: HighThickness: lightweightStyle: CasualSample: Sample is free, just charge shipping feeColor: Stock color /Custom colorSize: S-4XLWeight: 180gsmAge Group: Adults/Kidskeywords: Men 100% Linen Pants</p><p>Men 100% Linen Pants</p><p>Fabric Type: LinenFeature: Anti-Static, Anti-pilling, Sustainable, QUICK DRY, Anti-wrinkle, Breathable, Waterproof, Windproof, Men 100% Linen PantsPattern: Harem PantsMaterial: Linen / Cotton, Linen / CottonTechnics: Plain DyedGender: MenSeason: SpringFit Type: LooseFront Style: FlatClosure Type: Elastic WaistWaist Type: HighThickness: lightweightStyle: CasualSample: Sample is free, just charge shipping feeColor: Stock color /Custom colorSize: S-4XLWeight: 180gsmAge Group: Adults/Kidskeywords: Men 100% Linen Pants</p>', 'Linen Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men Pants', 'Product details of Linen Clothing Customized Man Casual Lightweight Linen Trousers Elastic Waist Straight Leg Men PantsMen 100% Linen PantsFabric Type: LinenFea...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, '10', NULL, '2025-11-11 13:39:03', '2025-12-09 07:53:53'),
(201, 'physical', 'Cotton Narrow Fit Pajama for Men White Color', 'cotton-narrow-fit-pajama-for-men-white-color-201', 20, 65, 0, NULL, 'P0201', 100, 1900, 1300, 0.00, 6.0, 985, 0, NULL, NULL, NULL, 'PCS', 'M4uuJPYSVS8', '<p>Cotton Narrow Fit Pajama for Men White Color\",</p><p>&nbsp; \"Category Path\": \"Fashion&gt;Men&gt;Clothing&gt;Suits&gt;Suit Pants\",</p><p>&nbsp; \"Main Material\": \"Cotton\"</p><p>\"comfortable, stylish, sleepwear, lounge, relaxation\"</p><p>Introducing the Cotton Narrow Fit Pajama for Men in White Color, perfect for lounging and relaxation. Crafted from high-quality cotton, these pajamas offer a comfortable and stylish fit. Ideal for sleepwear, the narrow-fit design adds a modern touch to your loungewear collection. Whether for a cozy night in or a leisurely morning, these pajamas provide the ultimate comfort and style.</p><p>Product Description:</p><p>Introducing the Cotton Narrow Fit Pajama for Men in White Color, perfect for lounging and relaxation. Crafted from high-quality cotton, these pajamas offer a comfortable and stylish fit. Ideal for sleepwear, the narrow-fit design adds a modern touch to your loungewear collection. Whether for a cozy night in or a leisurely morning, these pajamas provide the ultimate comfort and style.</p>', 'Cotton Narrow Fit Pajama for Men White Color', 'Cotton Narrow Fit Pajama for Men White Color\",&nbsp; \"Category Path\": \"Fashion&gt;Men&gt;Clothing&gt;Suits&gt;Suit Pants\",&nbsp; \"Main Material\": \"Cotton\"\"comfo...', '', 'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg', 1, 1, 0, NULL, 1, NULL, NULL, '2025-11-11 13:42:23', '2025-12-11 03:09:18'),
(208, 'digital', 'CanvaProOwner (500 Member Add)', 'canvaproowner-(500-member-add)-208', 36, 0, NULL, NULL, 'P0202', 100, 1200, 1300, 0.00, 0.0, 989, 1, 'digital-products/TQMrMtK0ttsYyLtu9Kc2iywbWSYZuKECsFJG1AxD.zip', 5, 7, 'fJ0CrOZh60o', 'fJ0CrOZh60o', '<div style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><div class=\"x14vqqas x1a8lsjc\" style=\"box-sizing: inherit;\"><div class=\"x78zum5 xdt5ytf x4cne27 xifccgj\" style=\"box-sizing: inherit;\"><div class=\"xzueoph x1k70j0n\" style=\"box-sizing: inherit;\"><span class=\"x193iq5w xeuugli x13faqbe x1vvkbs x1xmvt09 x1lliihq x1s928wv xhkezso x1gmr53x x1cpjm7i x1fgarty x1943h6x xtoi2st x3x7a5m x1603h9y x1u7k74 x1xlr1w8 xzsf02u x1yc453h\" dir=\"auto\" style=\"box-sizing: inherit;\">CanvaProOwner (500 Member Add)</span></div></div></div></div><div style=\"box-sizing: inherit; margin-bottom: 0px; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><div class=\"xjkvuk6 xuyqlj2 x1odjw0f\" style=\"box-sizing: inherit;\"><div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs\" style=\"box-sizing: inherit;\"><div dir=\"auto\" style=\"box-sizing: inherit;\">৫০০ টি ক্যানভা প্রিমিয়াম একাউন্ট মাত্র ৪৯০ টাকায়&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span></div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\" style=\"box-sizing: inherit;\"><div dir=\"auto\" style=\"box-sizing: inherit;\">জ্বি বস, আপনি ঠিকই শুনেছেন এখন মাত্র ৪৯০ টাকায় পাচ্ছেন Canva Owner Account,</div><div dir=\"auto\" style=\"box-sizing: inherit;\">যার মাধ্যমে আপনি ৫০০ জনকে canva প্রো এক্সেস দিতে পারবেন এবং এই একাউন্টটি হবে আপনার ইমেইলে।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s\" style=\"box-sizing: inherit;\"><div dir=\"auto\" style=\"box-sizing: inherit;\">**তাই সম্পূর্ণ কন্ট্রোল থাকবে আপনার হাতেই।</div><div dir=\"auto\" style=\"box-sizing: inherit;\">৩ টি&nbsp; Variations এ পাচ্ছেন Canva Pro Admin Account</div><div dir=\"auto\" style=\"box-sizing: inherit;\">&nbsp;Lifetime Access 6 Month Replace Guarantee (490 tk)</div><div dir=\"auto\" style=\"box-sizing: inherit;\">&nbsp;Lifetime Access 1 year Replace Guarantee (799 tk)</div><div dir=\"auto\" style=\"box-sizing: inherit;\">&nbsp;Lifetime Access 2 year Replace Guarantee (1399 tk)</div><div dir=\"auto\" style=\"box-sizing: inherit;\">=====================</div><div dir=\"auto\" style=\"box-sizing: inherit;\">আমাদের অ্যাকাউন্টের সুবিধা :</div><div dir=\"auto\" style=\"box-sizing: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;একাউন্ট হবে আপনার নিজের নামে।</div><div dir=\"auto\" style=\"box-sizing: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;৫০০ জনকে প্রিমিয়াম এক্সেস দিতে পারবেন।</div><div dir=\"auto\" style=\"box-sizing: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;সকল প্রিমিয়াম ফিচার ব্যবহার করতে</div><div dir=\"auto\" style=\"box-sizing: inherit;\">পারবেন।</div><div dir=\"auto\" style=\"box-sizing: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;কাস্টম ফন্ট এড করতে&nbsp;<span style=\"box-sizing: inherit;\">পারবেন।</span></div><div dir=\"auto\" style=\"box-sizing: inherit;\">এবং যাকে ইচ্ছা আপনার টিমে এড বা রিমুভ করতে পারবেন।</div><div dir=\"auto\" style=\"box-sizing: inherit;\">=====================</div><div dir=\"auto\" style=\"box-sizing: inherit;\">📌 একাউন্টে কোন সমস্যা দেখা দিলে থাকছে ১০০% Replacement Guarantee.</div><div dir=\"auto\" style=\"box-sizing: inherit;\">&nbsp;🚀 তাছাড়া ২টা Owner Account নেওয়ার পর রিসেল প্রাইসে নিয়ে বিজনেস করার সুযোগ তো থাকছেই&nbsp;</div></div></div></div>', 'CanvaProOwner (500 Member Add)', 'CanvaProOwner (500 Member Add)৫০০ টি ক্যানভা প্রিমিয়াম একাউন্ট মাত্র ৪৯০ টাকায়&nbsp;জ্বি বস, আপনি ঠিকই শুনেছেন এখন মাত্র ৪৯০ টাকায় পাচ্ছেন Canva Owner Account,...', '', 'public/uploads/product/1764788259-canva_31d.jpg2_.jpg', 0, NULL, 0, NULL, 1, NULL, NULL, '2025-12-03 18:57:39', '2025-12-11 11:48:19');
INSERT INTO `products` (`id`, `product_type`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `advance_amount`, `ratting`, `stock`, `is_digital`, `digital_file`, `download_limit`, `download_expire_days`, `pro_unit`, `pro_video`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `topsale`, `flashsale`, `feature_product`, `campaign_id`, `status`, `sold`, `note`, `created_at`, `updated_at`) VALUES
(209, 'digital', 'Premium Membership (Digital Product & Agency Business)', 'premium-membership-(digital-product-&-agency-business)-209', 36, 0, NULL, NULL, 'P0209', 100, 1200, 600, 0.00, 0.0, 994, 1, 'digital-products/QZR7zekLVHK53hIZftEU7vF8jjvsjbCof2wZGI6Q.zip', 5, 7, NULL, NULL, '<div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\">আপনি কি এমন একটি বিজনেস খুঁজছেন যেখানে স্টক, ডেলিভারি বা বড় ইনভেস্টমেন্টের প্রয়োজন নেই, কিন্তু লিমিটলেস ইনকাম করার সুযোগ আছে?&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span></div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\">তাহলে ডিজিটাল এজেন্সি বিজনেস হতে পারে আপনার জন্য পারফেক্ট সমাধান!</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\">আমাদের “ডিজিটাল এজেন্সি বিজনেস প্যাকেজ” আপনাকে দিবে রেডিমেড ডিজিটাল প্রডাক্ট, Subscriptional Product, একাউন্ট, কোর্স, এবং মেথড।</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;কীভাবে ডিজিটাল প্রডাক্ট বা সার্ভিস তৈরি করবেন, কীভাবে মার্কেটিং এবং বিক্রি করবেন—সব কিছু শিখবেন শুরু থেকে সফলতা পর্যন্ত!</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\">কেন ডিজিটাল প্রোডাক্ট বা সার্ভিস নিয়ে বিজনেস করবেন?</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;একবার তৈরি করলে বা শিখলে আজীবন বিক্রি করতে পারবেন!&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span></div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;স্টক রাখতে হবে না— ডিজিটাল প্রডাক্ট বা সার্ভিস যেকোনো জায়গায়, যেকোনো সময় বিক্রি করতে পারবেন!&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span></div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;ফিজিক্যাল প্রোডাক্টের তুলনায় প্রফিট মার্জিন অনেক বেশি!&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span></div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\">আমাদের “Digital Agency Business” প্যাকেজে যা যা থাকছে:</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Digital Product Website</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Canva Pro Owner Account Create Method</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Virtual Visa Card Create Method</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Landing Page Template</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;YouTube Premium Method</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Affiliate Programme Method</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Facebook BIN Number Method</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Facebook Blue Verified Method</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Adobe Master Collection</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Subscriptional Products Business Method</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;সাথে থাকছে:</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Freelancing, Digital Marketing, Graphics Design, Web Design সহ আনলিমিটেড কোর্স!&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span></div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;২০০০+ ডিজিটাল প্রডাক্ট, একাউন্ট, কোর্স, মেথড প্রোভাইড করা হবে!</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;প্রডাক্টের ধারণা থেকে শুরু করে, কিভাবে সফলভাবে বিক্রি করবেন তার সম্পূর্ণ গাইডলাইন দেওয়া হবে!</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\">“Digital Agency Business Course” থেকে যা যা শিখবেন:</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;কীভাবে আপনার ডিজিটাল প্রোডাক্ট / সার্ভিস বিক্রি করবেন।</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;একটি প্রফেশনাল ওয়েবসাইট সেটআপ ও ডিজিটাল প্রোডাক্ট আপলোড।</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;ফেসবুক পেজ Create, লোগো, কভার, পোস্টার, ব্যানার ডিজাইন।</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Promotional ভিডিও তৈরি করা।</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Facebook Boosting A-Z।</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;Meta Authorised Ads Account Service।</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;কোর্স থেকে শিখে খুব সহজেই ডিজিটাল এজেন্সি বিজনেস শুরু করতে পারবেন!</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\">তাছাড়াও, আপনার Already Running বিজনেসেও এই মেম্বারশিপ প্যাকেজটি অনেক কার্যকরী!</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;কীভাবে শুরু করবেন?</div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;এখনই নিচের লিংকে ক্লিক করুন এবং আপনার ডিজিটাল এজেন্সি বিজনেস শুরু করতে Premium Membership প্যাকেজে জয়েন করুন!&nbsp;<span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span></div><div dir=\"auto\" style=\"box-sizing: inherit; color: rgb(75, 79, 88); font-family: Rubik, sans-serif; font-size: 16px; background-color: rgb(230, 241, 242);\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"box-sizing: inherit;\"></span>&nbsp;এটাই আপনার ডিজিটাল বিজনেসের সফলতার প্রথম ধাপ!</div>', 'Premium Membership (Digital Product & Agency Business)', 'আপনি কি এমন একটি বিজনেস খুঁজছেন যেখানে স্টক, ডেলিভারি বা বড় ইনভেস্টমেন্টের প্রয়োজন নেই, কিন্তু লিমিটলেস ইনকাম করার সুযোগ আছে?&nbsp;তাহলে ডিজিটাল এজেন্সি বিজনেস...', '', 'public/uploads/product/1764788491-premium-mebership.jpg', 0, NULL, 0, NULL, 1, NULL, NULL, '2025-12-03 19:01:31', '2025-12-10 17:42:34'),
(210, 'physical', 'Samsung A072', 'samsung-a072-210', 19, 60, NULL, NULL, 'P0210', 5000, 12000, 10000, 500.00, 0.0, 986, 0, NULL, NULL, NULL, '2', NULL, '<p data-start=\"302\" data-end=\"448\">⭐ <strong data-start=\"304\" data-end=\"322\">কিস্তি সুবিধা:</strong><br data-start=\"322\" data-end=\"325\">\r\n🔹 ডাউনপেমেন্ট: মাত্র <strong data-start=\"347\" data-end=\"354\">২০%</strong><br data-start=\"354\" data-end=\"357\">\r\n🔹 সময়: <strong data-start=\"365\" data-end=\"378\">৯ মাস EMI</strong><br data-start=\"378\" data-end=\"381\">\r\n🔹 ইনস্ট্যান্ট কিস্তি অনুমোদন<br data-start=\"410\" data-end=\"413\">\r\n🔹 শুধু এনআইডি থাকলেই প্রসেস শুরু</p>', 'Samsung A07', '⭐ কিস্তি সুবিধা:\r\n🔹 ডাউনপেমেন্ট: মাত্র ২০%\r\n🔹 সময়: ৯ মাস EMI\r\n🔹 ইনস্ট্যান্ট কিস্তি অনুমোদন\r\n🔹 শুধু এনআইডি থাকলেই প্রসেস শুরু', '', 'public/uploads/product/1764937354-a07-black.jpg', 1, 1, 0, NULL, 1, '2', '📄 কিস্তির জন্য প্রয়োজনীয় ডকুমেন্টস:\r\n1️⃣ কাস্টমারের এনআইডি কার্ড (সামনে + পিছনে)\r\n2️⃣ বিকাশ / নগদ / ব্যাংক স্টেটমেন্ট\r\n3️⃣ গ্রান্টরের এনআইডি কার্ড\r\n4️⃣ কাস্টমার ও গ্রান্টরের মোবাইল নম্ব', '2025-12-05 12:22:34', '2025-12-11 11:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 117, 6, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(21, 117, 7, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(22, 117, 8, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(23, 117, 9, '2024-07-03 01:33:09', '2024-07-03 01:33:09'),
(24, 1, 10, '2024-07-06 15:29:32', '2024-07-06 15:29:32'),
(25, 132, 7, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(26, 132, 8, '2024-07-06 17:39:48', '2024-07-06 17:39:48'),
(27, 133, 6, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(28, 133, 8, '2024-08-13 10:03:44', '2024-08-13 10:03:44'),
(29, 130, 6, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(30, 130, 8, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(31, 130, 9, '2024-09-04 13:28:03', '2024-09-04 13:28:03'),
(32, 135, 6, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(33, 135, 7, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(34, 135, 8, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(35, 135, 9, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(36, 135, 10, '2024-10-26 12:56:55', '2024-10-26 12:56:55'),
(39, 157, 7, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(40, 157, 8, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(41, 157, 9, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(42, 157, 10, '2024-12-04 01:23:35', '2024-12-04 01:23:35'),
(43, 158, 7, '2024-12-05 15:43:20', '2024-12-05 15:43:20'),
(44, 179, 6, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(45, 179, 8, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(46, 179, 9, '2025-10-03 13:52:09', '2025-10-03 13:52:09'),
(53, 182, 7, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(54, 182, 8, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(55, 182, 9, '2025-10-03 14:36:05', '2025-10-03 14:36:05'),
(64, 190, 6, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(65, 190, 9, '2025-10-18 07:35:26', '2025-10-18 07:35:26'),
(66, 190, 10, '2025-10-18 07:35:26', '2025-10-18 07:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_prices`
--

CREATE TABLE `product_variant_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `sku` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_prices`
--

INSERT INTO `product_variant_prices` (`id`, `product_id`, `color_id`, `size_id`, `price`, `stock`, `sku`) VALUES
(57, 183, 35, 6, 2200.00, 100, NULL),
(58, 183, 36, 7, 1600.00, 100, NULL),
(59, 183, 39, 8, 2200.00, 100, NULL),
(159, 201, 36, 8, 130.00, 100, NULL),
(160, 201, 35, 7, 120.00, 100, NULL),
(161, 201, 40, 9, 150.00, 100, NULL),
(162, 201, 53, 8, 130.00, 100, NULL),
(163, 201, 40, 9, 150.00, 100, NULL),
(164, 201, 48, 6, 100.00, 100, NULL),
(165, 201, 39, 7, 100.00, 100, NULL),
(166, 201, 41, 9, 100.00, 100, NULL),
(169, 209, NULL, NULL, 0.00, 0, NULL),
(173, 199, 35, 6, 120.00, 100, NULL),
(174, 199, 35, 7, 130.00, 100, NULL),
(175, 199, 40, 9, 120.00, 100, NULL),
(176, 199, 44, 7, 2600.00, 2, NULL),
(246, 198, 35, 6, 120.00, 100, NULL),
(247, 198, 36, 7, 130.00, 100, NULL),
(248, 198, 40, 7, 150.00, 100, NULL),
(249, 184, 35, 6, 1300.00, 100, NULL),
(250, 184, 36, 7, 1200.00, 100, NULL),
(251, 184, 39, 8, 1100.00, 100, NULL),
(252, 184, 41, 9, 1000.00, 100, NULL),
(258, 210, 35, 23, 10000.00, 5, NULL),
(259, 210, 36, 23, 10000.00, 2, NULL),
(260, 210, 41, 23, 10000.00, 2, NULL),
(261, 210, 36, 24, 12000.00, 2, NULL),
(262, 210, 40, 24, 12000.00, 2, NULL),
(263, 200, 35, NULL, 120.00, 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `total_qty` int(11) NOT NULL DEFAULT 0,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'completed',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `invoice_no`, `purchase_date`, `total_qty`, `subtotal`, `discount`, `shipping_cost`, `grand_total`, `paid_amount`, `due_amount`, `note`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'PUR-1764103831', '2025-11-26', 200, 20000.00, 0.00, 0.00, 20000.00, 500.00, 19500.00, 'hellio', 'completed', 1, '2025-11-25 20:51:00', '2025-11-25 20:53:07'),
(2, 2, 'PUR-1765430839', '2025-12-11', 1, 63000.00, 50.00, 50.00, 63000.00, 1000.00, 62000.00, 'h ii', 'completed', 1, '2025-12-11 05:28:10', '2025-12-11 05:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_price_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `unit_cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `line_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `returned_qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `variant_price_id`, `qty`, `unit_cost`, `line_total`, `returned_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 185, NULL, 200, 100.00, 20000.00, 0, '2025-11-25 20:51:00', '2025-11-25 20:51:00'),
(2, 2, 186, NULL, 1, 63000.00, 63000.00, 0, '2025-12-11 05:28:10', '2025-12-11 05:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Jononi Madical Hall', 'info@dhakacoaching.com', '5', '\"আমি এই প্যান্টটি কিনেছি এবং আমার অভিজ্ঞতা বেশ ভালো।', 201, 215, 'active', '2025-11-11 13:49:23', '2025-11-11 14:11:46'),
(12, 'Jononi Madical Hall', 'N / A', '5', 'প্যান্টটি পরতে খুবই আরামদায়ক (comfortable)। ফিটিং (fitting) একদম পারফেক্ট।', 201, 215, 'active', '2025-11-11 14:32:28', '2025-11-11 14:32:56'),
(13, 'Jononi Madical Hall', 'info@dhakacoaching.com', '5', 'সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 215, 'active', '2025-11-11 14:33:32', '2025-11-11 14:50:29'),
(14, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 213, 'active', '2025-11-11 14:52:32', '2025-11-11 14:52:32'),
(15, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 201, 213, 'active', '2025-11-11 14:52:32', '2025-11-11 14:52:32'),
(16, 'Md Abdul Aziz', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 197, 214, 'active', '2025-11-11 14:53:57', '2025-11-11 14:53:57'),
(17, 'Jakir Hosain', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 181, 213, 'active', '2025-11-11 14:54:11', '2025-11-11 14:54:11'),
(18, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 183, 215, 'active', '2025-11-11 14:54:25', '2025-11-11 14:54:25'),
(19, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 184, 215, 'active', '2025-11-11 14:54:39', '2025-11-11 14:54:39'),
(20, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 184, 215, 'active', '2025-11-11 14:54:39', '2025-11-11 14:54:39'),
(21, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 185, 215, 'active', '2025-11-11 14:54:52', '2025-11-11 14:54:52'),
(22, 'Jakir Hosain', 'N / A', '4', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 186, 213, 'active', '2025-11-11 14:55:06', '2025-11-11 14:55:06'),
(23, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 196, 215, 'active', '2025-11-11 14:55:21', '2025-11-11 14:55:21'),
(24, 'Jononi Madical Hall', 'N / A', '5', 'আমার মতামত: সব মিলিয়ে, দাম অনুযায়ী প্যান্টের মান (value for money) চমৎকার। আমি এটি জোরালোভাবে সুপারিশ করছি (highly recommended)।', 196, 215, 'active', '2025-11-11 14:55:21', '2025-11-11 14:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(2, 'Super Viser', 'admin', '2025-11-06 20:31:31', '2025-11-06 20:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2);

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_tags` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `search_console_verification` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `meta_title`, `meta_tags`, `meta_description`, `search_console_verification`, `created_at`, `updated_at`) VALUES
(1, 'Gadget BD | Best Laravel Ecommerce Website', 'Best Laravel Ecommerce Website, Ecommerce,Commerce,Laravel Ecommerce', 'Best Laravel Ecommerce Website', '<meta name=\"google-site-verification\" content=\"Y2ScFf0of139JwV5S-Usylpny6aFEd83h9IrwupGJHg\" />', '2025-11-07 21:11:35', '2025-11-24 06:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(625, 628, 288, 'MONIRA AKTER', '01837363637', 'Modhumita Road', 'ঢাকার ভিতরে ৭০ টাকা', '2025-11-29 14:36:07', '2025-11-29 14:36:07'),
(626, 629, 289, 'MONIRA AKTER', '01826536372', 'Modhumita Road', 'ঢাকার ভিতরে ৭০ টাকা', '2025-11-29 14:37:06', '2025-11-29 14:37:06'),
(627, 630, 290, 'MONIRA AKTER', '01', 'Modhumita Road', 'N/A', '2025-11-29 14:40:23', '2025-11-29 14:40:23'),
(628, 631, 291, 'Rifat Islam', '01608572489', 'Mirjaging,Patuakhali,', 'ঢাকার ভিতরে ৭০ টাকা', '2025-11-29 16:55:05', '2025-11-29 16:55:05'),
(629, 632, 292, 'International Academy For Talents School', '01896314508', 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 'ঢাকার ভিতরে ৭০ টাকা', '2025-11-29 19:11:56', '2025-11-29 19:11:56'),
(630, 633, 293, 'Md Fazle Rabbi', '01332373527', 'Sonargaon Janapath', 'ঢাকার ভিতরে ৭০ টাকা', '2025-11-30 02:23:58', '2025-11-30 02:23:58'),
(631, 634, 293, 'Md Fazle Rabbi', '01332373527', 'Sonargaon Janapath', 'ফ্রি ডেলিভারি', '2025-11-30 02:25:03', '2025-11-30 02:28:43'),
(633, 637, 296, 'Rihan Mahamud', '01922737378', 'Nao, ulia, var, Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-11-30 17:51:40', '2025-11-30 17:51:40'),
(634, 638, 298, 'Trial', '01712345678', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-01 04:03:56', '2025-12-01 04:03:56'),
(635, 639, 299, 'MD NAyeem', '01907797147', '4111', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-01 06:44:24', '2025-12-01 06:44:24'),
(636, 640, 300, 'Trial', '017123', NULL, 'N/A', '2025-12-01 06:46:54', '2025-12-01 06:46:54'),
(637, 641, 299, 'MD NAyeem', '01907797147', '4111', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-01 06:48:41', '2025-12-01 06:48:41'),
(639, 643, 302, 'Jahangir Alam', '01674082566', '273/3/A, Middle Paikpara, Mirpur-1, Dhaka-1216', 'ফ্রি ডেলিভারি', '2025-12-01 14:51:51', '2025-12-01 19:13:03'),
(640, 644, 303, 'Ummah Islamic Institute', '01782295954', 'ঠিকানা : শায়েখ সুপার মার্কেট, দুর্গাপুর, উলিপুর, কুড়িগ্রাম।', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-03 10:53:06', '2025-12-03 10:53:06'),
(641, 645, 303, 'Ummah Islamic Institute', '01782295954', 'ঠিকানা : শায়েখ সুপার মার্কেট, দুর্গাপুর, উলিপুর, কুড়িগ্রাম।', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-03 11:52:37', '2025-12-03 11:52:37'),
(642, 646, 286, 'Jononi Madical Hall', '01775457008', 'AL TAZER RAHMAN ROAD, CHARNOABAD, BHOLA SADAR, BHOLA, BANGLADESH', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-03 12:23:03', '2025-12-03 12:23:03'),
(643, 647, 292, 'International Academy For Talents School', '01896314508', 'Coomunity Center Road, Hasnabad Housing, South Keraniganj, Dhaka-1311', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-03 12:29:56', '2025-12-03 12:29:56'),
(646, 650, 304, 'Md Abu kalam', '01977667849', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-04 12:30:32', '2025-12-04 12:30:32'),
(647, 651, 304, 'Md Abu kalam', '01977667849', 'Dhaka', 'ফ্রি ডেলিভারি', '2025-12-04 12:31:33', '2025-12-04 12:31:33'),
(648, 652, 305, 'sixdeveloper', '01780418641', 'Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-04 16:40:12', '2025-12-04 16:40:12'),
(649, 653, 286, 'Jononi Madical Hall', '01775457008', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-04 23:34:45', '2025-12-04 23:34:45'),
(650, 654, 306, 'Redwan Ahmed', '01327949940', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-04 23:37:10', '2025-12-04 23:37:10'),
(651, 655, 307, 'Engineering Lab', '01796825863', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-04 23:37:39', '2025-12-04 23:37:39'),
(652, 656, 308, 'Jakir Hosain', '01403130512', 'এস এম আলমগীর চেরাগালি, টঙ্গি', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-04 23:38:42', '2025-12-04 23:38:42'),
(654, 658, 310, 'kjhh', '01264555858', 'huyuhy', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-05 12:51:10', '2025-12-05 12:51:10'),
(655, 659, 294, 'Default', '01711223344', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-05 13:19:15', '2025-12-05 13:19:15'),
(659, 663, 313, 'Manik Mahmud', '01407679839', 'Mirpur 14', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-05 17:05:40', '2025-12-05 17:05:40'),
(660, 664, 314, 'Karul', '01975198438', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-05 17:37:46', '2025-12-05 17:37:46'),
(661, 665, 286, 'Jononi Madical Hall', '01775457008', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-05 17:47:28', '2025-12-05 17:47:28'),
(665, 669, 307, 'Engineering Lab', '01796825863', 'Dhaka, Bangladesh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-06 07:28:25', '2025-12-06 07:28:25'),
(666, 670, 317, 'Elite Design', '01614628005', 'Mudhur More, RK Road, Kurigram', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-06 07:29:04', '2025-12-06 07:29:04'),
(667, 671, 308, 'Jakir Hosain', '01403130512', 'এস এম আলমগীর চেরাগালি, টঙ্গি', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-06 07:39:46', '2025-12-06 07:39:46'),
(668, 672, 318, 'Hrittik', '01816547642', '8/1  moghbazar', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-06 09:37:35', '2025-12-06 09:37:35'),
(669, 673, 288, 'MONIRA AKTER', '01837363637', 'djjhad', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-06 09:40:14', '2025-12-06 09:40:14'),
(670, 674, 319, 'MD RUBEL MIA', '01728666634', 'Surjanagar Bazar, Shibchar, Madaripur.', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-06 12:22:56', '2025-12-06 12:22:56'),
(671, 675, 320, 'MD SABBIR AHAMMED SHAON', '01400881103', 'Dhaka', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-06 12:32:52', '2025-12-06 13:57:14'),
(672, 676, 309, 'Jononi Madical Hall', '01915711407', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-06 15:30:21', '2025-12-06 15:30:21'),
(673, 677, 321, 'Asif', '01325896025', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-07 09:20:17', '2025-12-07 09:20:17'),
(674, 678, 322, 'Roni patwary', '01854958294', 'East Jurain, K Ali Sardar Road, Kadomtoli, Dhaka1204', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-07 15:12:32', '2025-12-07 15:12:32'),
(675, 679, 323, 'Salman', '01754203991', '132 My Street, Kingston, New York 12401. United States', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-07 18:10:58', '2025-12-07 18:10:58'),
(676, 680, 323, 'Salman', '01754203991', '132 My Street, Kingston, New York 12401. United States', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-08 18:35:03', '2025-12-08 18:35:03'),
(677, 681, 323, 'Salman', '01754203991', '132 My Street, Kingston, New York 12401. United States', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-08 18:35:59', '2025-12-08 18:35:59'),
(678, 682, 325, 'Salman', '01754203921', '132 My Street, Kingston, New York 12401. United States', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-08 18:39:05', '2025-12-08 18:39:05'),
(679, 683, 326, 'SALMAN AHMED', '01741247114', 'SYLHET', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-08 18:45:15', '2025-12-08 18:45:15'),
(680, 684, 323, 'Salman', '01754203991', '132 My Street, Kingston, New York 12401. United States', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-08 19:14:18', '2025-12-08 19:14:18'),
(681, 685, 286, 'Jononi Madical Hall', '01775457008', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan\r\nBoro Bari, Noayar Hat', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-09 06:26:57', '2025-12-09 06:26:57'),
(682, 686, 321, 'Jayed', '01325896025', 'DHAKA, Dokkhin keranigonj thana, 555, beara jame mosjid songlogno road,  dakghor : tegoria 1311, keranigonj,  dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-09 09:19:29', '2025-12-09 09:19:29'),
(683, 687, 327, 'Seykot Mia', '01729151544', 'Nizampur, Paikurati, Dharmapasha, Sunamganj.', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-09 15:16:52', '2025-12-09 15:16:52'),
(684, 688, 328, 'st tv', '01935090672', 'Dhanbari', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-09 17:29:01', '2025-12-09 17:29:01'),
(685, 689, 286, 'Jononi Madical Hall', '01775457008', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 04:15:24', '2025-12-10 04:15:24'),
(686, 690, 286, 'Jononi Madical Hall', '01775457008', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 04:16:37', '2025-12-10 04:16:37'),
(687, 691, 286, 'Jononi Madical Hall', '01775457008', 'Ashkona Bazar Hazi Alauddin Market 603  -Dakshinkhan', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 04:17:17', '2025-12-10 04:17:17'),
(688, 692, 308, 'Jakir Hosain', '01403130512', 'এস এম আলমগীর চেরাগালি, টঙ্গি', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 06:51:22', '2025-12-10 06:51:22'),
(689, 693, 329, 'Fake', '01911111111', 'Fghh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 07:24:31', '2025-12-10 07:24:31'),
(690, 694, 330, 'sohag minarul', '01733199222', 'Mokamtola', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 07:25:06', '2025-12-10 07:25:06'),
(691, 695, 331, 'Shshshhd', '01843367191', 'Sjjsjssj', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 07:25:38', '2025-12-10 07:25:38'),
(692, 696, 332, 'Abir Group', '01506760729', 'Hhs', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 08:08:46', '2025-12-10 08:08:46'),
(693, 697, 333, 'farabi', '01923323339', 'savar', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 08:13:04', '2025-12-10 08:13:04'),
(694, 698, 333, 'farabi', '01923323339', 'savar', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 08:13:44', '2025-12-10 08:13:44'),
(695, 699, 334, 'Abdulahad1', '01883709761', 'Kk', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 08:45:35', '2025-12-10 08:45:35'),
(696, 700, 335, 'MD Saiful Islam', '01611369868', 'Majzvshssg', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-10 10:06:47', '2025-12-10 10:06:47'),
(697, 701, 336, 'Hasan', '01700000000', 'sjjsj', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 10:28:14', '2025-12-10 10:28:14'),
(698, 702, 337, 'Tff', '01666666666', 'Hsshbs', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 10:42:37', '2025-12-10 10:42:37'),
(699, 703, 338, 'Shuvo Pal', '01636235525', 'Sree', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 11:51:43', '2025-12-10 11:51:43'),
(700, 704, 339, 'Fff', '01312031302', 'Xxx', 'ঢাকার বাহিরে  ১২০ টাকা ', '2025-12-10 12:11:20', '2025-12-10 12:11:20'),
(701, 705, 340, 'gdfhf', '01765489632', 'fhghfghg', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 13:27:23', '2025-12-10 13:27:23'),
(702, 706, 341, 'জয়নাল দিনাজপুর', '01745598060', 'Bjn', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 13:28:43', '2025-12-10 13:28:43'),
(703, 707, 342, 'athj h.', '01731535353', 'dhakam dhskk', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 13:51:53', '2025-12-10 13:51:53'),
(704, 708, 343, 'Mahedi', '01827744456', 'Hhhggg', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 14:35:38', '2025-12-10 14:35:38'),
(705, 709, 344, 'Jjj', '01776689893', 'Yyh', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 17:33:36', '2025-12-10 17:33:36'),
(706, 710, 345, 'Test', '01682862358', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 17:42:34', '2025-12-10 17:42:34'),
(707, 711, 294, 'Test', '01711223344', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 17:44:58', '2025-12-10 17:44:58'),
(708, 712, 346, 'Raju', '01797328888', 'Dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 17:46:27', '2025-12-10 17:46:27'),
(709, 713, 347, 'Md. Yasin', '01683189893', 'Shop No: 5119, Cumilla IT Park (Level 5), Kandirpar, Cumilla', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 19:35:51', '2025-12-10 19:35:51'),
(710, 714, 348, 'Md', '01707796801', 'Hfd', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-10 23:29:31', '2025-12-10 23:29:31'),
(711, 717, 351, 'Sabbir Hasan', '01777362239', '69/A, Green Road, Panthapath, Dhaka 1205', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-11 03:09:18', '2025-12-11 03:09:18'),
(713, 719, 355, 'md hafiz', '017111555444', 'dhaka', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-11 07:55:59', '2025-12-11 07:55:59'),
(714, 720, 356, 'SH Masum', '01407892308', 'Konapara, Demra', 'ঢাকার ভিতরে ৭০ টাকা', '2025-12-11 11:48:19', '2025-12-11 11:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকার ভিতরে ৭০ টাকা', 70, '1', '2023-08-04 10:34:54', '2025-12-10 16:22:45'),
(2, 'ঢাকার বাহিরে  ১২০ টাকা ', 120, '1', '2023-08-04 10:35:57', '2023-10-27 10:50:28'),
(7, 'Free Delivery', 0, '1', '2025-12-10 16:22:57', '2025-12-10 16:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '12 Inchi', '1', '2024-02-05 09:39:19', '2024-11-10 04:43:12'),
(12, '10 Inchi', '1', '2024-02-05 09:39:25', '2024-11-10 04:42:40'),
(13, '8.5 Inch', '1', '2024-02-05 09:39:30', '2024-11-10 04:42:17'),
(14, '20 mm', '1', '2024-02-05 09:39:34', '2024-11-10 04:41:48'),
(15, '22 mm', '1', '2024-02-05 09:39:39', '2024-11-10 04:41:35'),
(17, '500gm', '1', '2025-11-19 16:19:07', '2025-11-19 16:19:07'),
(18, '250gm', '1', '2025-11-19 16:19:14', '2025-11-19 16:19:14'),
(19, '1 kg', '1', '2025-11-19 16:19:18', '2025-11-19 16:19:18'),
(20, '2kg', '1', '2025-11-19 16:19:31', '2025-11-19 16:19:31'),
(21, '12 month to 5 years', '1', '2025-11-20 07:27:48', '2025-11-20 07:27:48'),
(22, '1 to 5 years', '1', '2025-11-28 04:40:57', '2025-11-28 04:40:57'),
(23, 'RAM 4GB', '1', '2025-12-07 09:30:13', '2025-12-07 09:30:13'),
(24, 'RAM 6GB', '1', '2025-12-07 09:30:22', '2025-12-07 09:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_phone_list` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`, `admin_phone_list`) VALUES
(1, 'http://bulksmsbd.net/api/smsapi', 'eHyWyEX2AMcDtuOzknF6', '8809648904744', '1', '1', '1', '1', '2024-02-06 11:29:46', '2025-11-27 19:21:47', '01775457008');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/official.elitedesign', '#0b0f89', 1, '2023-02-12 11:32:20', '2025-01-10 02:51:01'),
(3, 'Official Mail', 'fab fa-twitter', 'https://www.facebook.com/official.elitedesign', '#c53302', 1, '2023-02-14 03:29:41', '2025-01-10 02:51:34'),
(4, 'Whatsapp', 'fab fa-whatsapp', '01775457008', '#5ca314', 1, '2024-11-10 06:36:32', '2025-01-10 02:51:46'),
(5, 'youtube.com', 'fab fa-youtube', 'https://www.youtube.com/@eHatBazarLive/videos', '#ff0000', 1, '2024-11-10 06:37:34', '2025-11-12 10:51:50'),
(6, 'Instagram', 'fab fa-instagram', 'https://www.facebook.com/official.elitedesign', '#000000', 1, '2024-11-10 14:52:24', '2025-01-10 02:51:53'),
(7, 'Linkedin', 'fab fa-linkedin', 'https://www.facebook.com/official.elitedesign', '#000000', 1, '2024-11-10 14:52:59', '2025-01-10 02:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(60, 'Smart Lamp & Lights', 'smart-lamp-&-lights', 19, NULL, NULL, NULL, 1, '2025-10-03 13:45:11', '2025-10-03 13:45:11'),
(61, 'TV & Monitor', 'tv-&-monitor', 19, NULL, NULL, NULL, 1, '2025-10-03 13:45:31', '2025-10-03 13:45:31'),
(62, 'Laptop', 'laptop', 19, NULL, NULL, NULL, 1, '2025-10-28 19:04:55', '2025-10-28 19:04:55'),
(63, 'bewoutifool', 'bewoutifool', 30, NULL, 'jj', NULL, 1, '2025-11-11 09:43:39', '2025-11-11 09:43:39'),
(64, 'Shirt', 'shirt', 20, NULL, NULL, NULL, 1, '2025-11-11 13:21:55', '2025-11-11 13:21:55'),
(65, 'Pant', 'pant', 20, NULL, NULL, NULL, 1, '2025-11-11 13:22:07', '2025-11-11 13:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `opening_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `current_due` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `address`, `opening_balance`, `current_due`, `created_at`, `updated_at`) VALUES
(1, 'Redwan Ahmed', '01327949940', 'creativedesign.com.bd@gmail.com', 'Dhaka, Bangladesh\r\nBoro Bari, Noayar Hat', 0.00, 19500.00, '2025-11-25 20:49:16', '2025-11-25 20:53:07'),
(2, 'a', '1', '1@gmail.com', '1', 0.00, 62000.00, '2025-12-11 02:43:36', '2025-12-11 05:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payments`
--

CREATE TABLE `supplier_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_date` date NOT NULL,
  `method` varchar(50) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fund_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_payments`
--

INSERT INTO `supplier_payments` (`id`, `supplier_id`, `purchase_id`, `amount`, `payment_date`, `method`, `note`, `fund_transaction_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 200.00, '2025-11-26', 'fund', 'Initial payment', 9, 1, '2025-11-25 20:51:00', '2025-11-25 20:51:00'),
(2, 1, 1, 100.00, '2025-11-26', 'fund', NULL, 10, 1, '2025-11-25 20:51:49', '2025-11-25 20:51:49'),
(3, 1, 1, 200.00, '2025-11-26', 'fund', NULL, 11, 1, '2025-11-25 20:53:07', '2025-11-25 20:53:07'),
(4, 2, 2, 1000.00, '2025-12-11', 'fund', 'Initial payment', 36, 1, '2025-12-11 05:28:10', '2025-12-11 05:28:10');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'info@creativedesign.com.bd', '2024-11-21 15:43:10', '$2y$10$ppU.Q0gEXjBpcflVgN9UaeYpHcPwm3O8kf3YHhWzDvJiNcW84/pGK', 'q3dDPbIpuisUvwft9jQFwA2RDYGma4f47mAQeF6nGUcicS1hFjKB93GrecTn', 'public/uploads/users/1736271519-defualt.webp', 1, NULL, '2025-11-26 09:41:25'),
(11, 'Salman', 'ifo@creativedesign.com.bd', NULL, '$2y$10$iBxg5q6FkdVvEbUgmjDis.hiCxSactg0imPUedLEH80g9RR58TaSC', NULL, 'public/uploads/users/1765219327-chatgpt-image-oct-21,-2025,-02_02_03-pm.webp', 1, '2025-12-08 18:42:07', '2025-12-08 18:42:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_downloads`
--
ALTER TABLE `digital_downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `digital_downloads_token_unique` (`token`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_fund_transaction_id_index` (`fund_transaction_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fund_transactions`
--
ALTER TABLE `fund_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomplete_orders`
--
ALTER TABLE `incomplete_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product` (`product_id`),
  ADD KEY `fk_color` (`color_id`),
  ADD KEY `fk_size` (`size_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_items_variant_price_id_foreign` (`variant_price_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_payments_supplier_id_foreign` (`supplier_id`),
  ADD KEY `supplier_payments_purchase_id_foreign` (`purchase_id`),
  ADD KEY `supplier_payments_fund_transaction_id_foreign` (`fund_transaction_id`);

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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `campaign_product`
--
ALTER TABLE `campaign_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `digital_downloads`
--
ALTER TABLE `digital_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fund_transactions`
--
ALTER TABLE `fund_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `incomplete_orders`
--
ALTER TABLE `incomplete_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=715;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=715;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD CONSTRAINT `fk_color` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_size` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_variant_price_id_foreign` FOREIGN KEY (`variant_price_id`) REFERENCES `product_variant_prices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `supplier_payments`
--
ALTER TABLE `supplier_payments`
  ADD CONSTRAINT `supplier_payments_fund_transaction_id_foreign` FOREIGN KEY (`fund_transaction_id`) REFERENCES `fund_transactions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `supplier_payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `supplier_payments_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
