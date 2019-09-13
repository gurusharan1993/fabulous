-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2019 at 07:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custom`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fontclass` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `heading`, `description`, `fontclass`, `desc`, `head`, `created_at`, `updated_at`) VALUES
(1, 'ABOUT US', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'fa fa-leaf fa-5x', 'Nulla vitae libero pharetra augue. Etiam porta malesuada magna mollis euismod consectetur sem urdom tempus porttitor.', 'Strength', '2019-09-01 12:13:32', '2019-09-01 12:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Admin','Editor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `department` enum('It','Civil','Electronic') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `type`, `department`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(2, 'Neymar Jr', 'govindaa@gmail.com', 'Admin', NULL, '$2y$10$y1sf1F38HwtezwVUAKBoFuFh0xPo7Ef6DP6aLCLUWNZpejKhExF5u', NULL, '2019-08-28 12:14:30', '2019-08-28 12:14:30', '1566994470rolex.jpg'),
(6, 'Admin User', 'admin@gmail.com', 'Admin', NULL, '$2y$10$DoVnK3BHzZH/pzatqMsyPOpm/wU6RPOpWmrkyQ02/VBurnQ70oFEO', NULL, '2019-09-01 11:47:26', '2019-09-01 11:47:26', '1567338446images.jpg'),
(7, 'IT User', 'it@gmail.com', 'Editor', 'It', '$2y$10$RD9kDrRTQlsdbsUrVGxQ0e9nyRgegHYGhQf8/fPhmK0eSH4tlPcyO', NULL, '2019-09-01 11:49:02', '2019-09-01 11:49:02', '1567338542it.jpg'),
(8, 'Civil User', 'civil@gmail.com', 'Editor', 'Civil', '$2y$10$TMBjtfKhvA1dOFDv2cf03OElIAxKzoc5naZ8s8UIPNjXsQbAUXUFm', NULL, '2019-09-01 11:49:55', '2019-09-01 11:49:55', '1567338594c4.jpg'),
(9, 'Electronic User', 'electronic@gmail.com', 'Editor', 'Electronic', '$2y$10$hCPfcCrjnDvzzTJrYxjc6eh6KeGPLYRo/6xkvaCc61bM8vIr7yZJ.', NULL, '2019-09-01 11:52:12', '2019-09-01 11:52:12', '1567338731c1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bloggs`
--

CREATE TABLE `bloggs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloggs`
--

INSERT INTO `bloggs` (`id`, `type`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'it', 'hg8hgrei', '1567424786c4.jpg', '2019-09-02 11:46:26', '2019-09-02 11:46:26'),
(3, 'it', 'hg8hgrei', '1567424786it.jpg', '2019-09-02 11:46:27', '2019-09-02 11:46:27'),
(4, 'it', 'hg8hgrei', '1567424787tab.jpg', '2019-09-02 11:46:27', '2019-09-02 11:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `heading`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Blogs', '<p>byugds7wfe yg67efeg bfew8gfrfr</p>', '1567345575tab.jpg', '2019-09-01 13:46:15', '2019-09-01 13:46:15'),
(2, 'Blogs', '<p>h8gv8f7ed ygfi67fife uyvewf67fwfe</p>', '1567345617c4.jpg', '2019-09-01 13:46:57', '2019-09-01 13:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `heading`, `description`, `created_at`, `updated_at`) VALUES
(1, 'career', '<div class=\"col-lg-8 col-md-8 col-sm-12\">\r\n<h3><strong>Job Specification</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Education Level:Bachelor.<br />\r\nExperience Required: Fresher&#39;s or minimum 1years experience.<br />\r\nRequired:Rest Api Design Object Oriented PHP And Laravel ...<br />\r\nSQL Schema Design Program Solving Multitasking Solid<br />\r\nPrinciples Logical Thinking</p>\r\n\r\n<h3><strong>Other Specification</strong></h3>\r\n\r\n<p>Education Level:Bachelor.<br />\r\nExperience Required: Fresher&#39;s or minimum 1years experience.<br />\r\nRequired:Rest Api Design Object Oriented PHP And Laravel ...<br />\r\nSQL Schema Design Program Solving Multitasking Solid<br />\r\nPrinciples Logical Thinking</p>\r\n\r\n<h3><strong>Job Description</strong></h3>\r\n\r\n<p>Education Level:Bachelor.<br />\r\nExperience Required: Fresher&#39;s or minimum 1years experience.<br />\r\nRequired:Rest Api Design Object Oriented PHP And Laravel ...<br />\r\nSQL Schema Design Program Solving Multitasking Solid<br />\r\nPrinciples Logical Thinking</p>\r\n</div>', '2019-09-01 16:20:11', '2019-09-01 16:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `civils`
--

CREATE TABLE `civils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `civils`
--

INSERT INTO `civils` (`id`, `heading`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'uihew78re', '<p>byfe yvftwfe</p>', '1567348791c2.jpg', '2019-09-01 14:39:52', '2019-09-01 14:39:52'),
(2, 'uhewfuirv', '<p>sduifvgd</p>', '1567358738c4.jpg', '2019-09-01 17:25:39', '2019-09-01 17:25:39'),
(3, 'ef7fewi', '<p>87gf9ew7 tfe8rrfe</p>', '1567358757c1.jpg', '2019-09-01 17:25:57', '2019-09-01 17:25:57'),
(4, 'uywg7wf', '<p>&nbsp;udsg76gr</p>', '1567358772c3.jpg', '2019-09-01 17:26:12', '2019-09-01 17:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('seen','unseen') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unseen',
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `status`, `subject`, `company`, `message`, `created_at`, `updated_at`) VALUES
(1, 'b7ydfs', 'gfe67e67@gmail.com', 'seen', 'vydstrfdw', 'yd65rwdq6', 'uygwe6ed', '2019-08-29 12:05:24', '2019-08-29 12:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maplink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactuses`
--

INSERT INTO `contactuses` (`id`, `name`, `email`, `location`, `phone`, `image`, `maplink`, `created_at`, `updated_at`) VALUES
(1, 'Fabulous IT & Engineering company pvt. ltd.', 'support@fabulousnepal.com', 'Bafal Kathmandu Nepal', '01-5237138', '1567343658services.jpg', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14129.801731691216!2d85.2847344!3d27.7033757!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa41246090df71b0!2sFabulous+IT+and+Engineering+Company+Pvt.+Ltd.!5e0!3m2!1sen!2snp!4v1563182071093!5m2!1sen!2snp', '2019-09-01 12:54:06', '2019-09-01 13:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`id`, `heading`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'yug76sf', '<p>b7gfrwe4r ygfwe67fwe</p>', '1567348817e1.jpg', '2019-09-01 14:40:17', '2019-09-01 14:40:17'),
(2, 'hjdsbytsfd', '<p>&nbsp;cdvsy6efw7 6ewtefw</p>', '1567348835e2.jpg', '2019-09-01 14:40:36', '2019-09-01 14:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `department`, `image`, `created_at`, `updated_at`) VALUES
(4, 'it', '1567429932bg.jpg', '2019-09-02 13:12:12', '2019-09-02 13:12:12'),
(5, 'it', '1567429932it.jpg', '2019-09-02 13:12:12', '2019-09-02 13:12:12'),
(6, 'it', '1567429933project.jpg', '2019-09-02 13:12:13', '2019-09-02 13:12:13'),
(7, 'it', '1567429933tab.jpg', '2019-09-02 13:12:13', '2019-09-02 13:12:13'),
(8, 'electronic', '1567429962e1.jpg', '2019-09-02 13:12:42', '2019-09-02 13:12:42'),
(9, 'electronic', '1567429962e2.jpg', '2019-09-02 13:12:43', '2019-09-02 13:12:43'),
(10, 'electronic', '1567429963e3.jpg', '2019-09-02 13:12:43', '2019-09-02 13:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `its`
--

CREATE TABLE `its` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `its`
--

INSERT INTO `its` (`id`, `heading`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 'It', '<p>byugf ytvb7fi</p>', '1567346720it.jpg', '2019-09-01 14:05:20', '2019-09-01 14:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`, `created_at`, `updated_at`) VALUES
(1, '1567006040logo.PNG', '2019-08-28 15:27:21', '2019-08-28 15:27:21');

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
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_resets_table', 1),
(52, '2019_08_20_113447_create_registers_table', 1),
(53, '2019_08_20_113511_create_logins_table', 1),
(54, '2019_08_21_131359_create_admins_table', 1),
(55, '2019_08_22_125248_add_type_to_admins', 1),
(56, '2019_08_22_152626_add_image_to_admins', 1),
(57, '2019_08_23_110816_create_logos_table', 1),
(58, '2019_08_23_111306_create_navigations_table', 1),
(59, '2019_08_23_112329_create_abouts_table', 1),
(60, '2019_08_23_113314_create_ourprojects_table', 1),
(61, '2019_08_23_130723_create_videos_table', 1),
(62, '2019_08_23_170946_create_ourclients_table', 1),
(63, '2019_08_23_171310_create_contacts_table', 1),
(64, '2019_08_23_171336_create_contactuses_table', 1),
(65, '2019_08_23_171515_create_socials_table', 1),
(66, '2019_08_23_174402_create_services_table', 1),
(67, '2019_08_24_210032_create_serviceimages_table', 1),
(68, '2019_08_26_104647_add_status_to_contacts', 1),
(69, '2019_08_27_112625_create_blogs_table', 1),
(70, '2019_08_27_113303_create_its_table', 1),
(71, '2019_08_27_113348_create_civils_table', 1),
(72, '2019_08_27_113442_create_electronics_table', 1),
(73, '2019_08_27_113850_create_galleries_table', 1),
(74, '2019_08_27_114744_create_submenus_table', 1),
(75, '2019_08_27_130241_add_type_to_serviceimages', 1),
(76, '2019_08_28_105156_create_resumes_table', 1),
(77, '2019_08_28_110553_create_careers_table', 1),
(78, '2019_08_28_114138_add_image_to_ourclients', 1),
(79, '2019_08_28_114214_add_desc_to_ourclients', 1),
(80, '2019_08_28_143139_add_department_to_admins', 2),
(81, '2019_09_01_151351_add_file_to_resumes', 3),
(84, '2019_09_01_151643_create_bloggs_table', 4),
(85, '2019_09_02_111000_create_populars_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `menu`, `slug`, `submenu`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', NULL, '2019-08-28 12:27:00', '2019-08-28 12:27:00'),
(2, 'Contact', 'contact', NULL, '2019-08-28 13:26:58', '2019-08-28 13:26:58'),
(3, 'Services', 'services', NULL, '2019-08-29 12:03:10', '2019-08-29 12:03:10'),
(4, 'Career', 'career', NULL, '2019-08-30 12:20:38', '2019-08-30 12:20:38'),
(5, 'Gallery', 'gallery', NULL, '2019-09-01 12:07:18', '2019-09-01 12:07:18'),
(6, 'Project', 'project', NULL, '2019-09-01 12:07:35', '2019-09-01 12:07:35'),
(7, 'Blog', 'blog', NULL, '2019-09-01 12:07:47', '2019-09-01 12:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `ourclients`
--

CREATE TABLE `ourclients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourclients`
--

INSERT INTO `ourclients` (`id`, `description`, `created_at`, `updated_at`, `image`, `desc`) VALUES
(1, '<p>urere efw8g6re 7yfg96fbt78&nbsp; 7ftr6 77e87 fey hre87gregrf hre87gr</p>', '2019-09-01 16:36:20', '2019-09-01 16:40:30', '1567355780c3.jpg', 'dugfr8 uwegewf79fw ubfwey7efw'),
(2, '<p>uyg68rwe efbuygewu hgggyuuy guyug776</p>', '2019-09-01 16:41:35', '2019-09-01 16:41:35', '1567356095c4.jpg', 'byf7wfeiyu 6efwg6efw7gw');

-- --------------------------------------------------------

--
-- Table structure for table `ourprojects`
--

CREATE TABLE `ourprojects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourprojects`
--

INSERT INTO `ourprojects` (`id`, `heading`, `description`, `image`, `backimage`, `department`, `created_at`, `updated_at`) VALUES
(4, 'OUR PROJECT', '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\">idatat non proident, sunt in culpa qui officiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cup</span></p>', '1567341568tab.jpg', '1567341568tab.jpg', 'IT Projects', '2019-09-01 12:28:46', '2019-09-01 12:39:28'),
(5, 'OUR PROJECT', '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\">idatat non proident, sunt in culpa qui officiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cup</span></p>', '1567341787tab.jpg', '1567341787tab.jpg', 'Electronics Projects', '2019-09-01 12:43:07', '2019-09-01 12:43:07'),
(6, 'OUR PROJECT', '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\">idatat non proident, sunt in culpa qui officiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cup</span></p>', '1567341844tab.jpg', '1567341844tab.jpg', 'Civil Projects', '2019-09-01 12:44:04', '2019-09-01 12:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `populars`
--

CREATE TABLE `populars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `populars`
--

INSERT INTO `populars` (`id`, `type`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'ggy7fgw7', 'b87f9re t67feg8grb t7gewfwe', '1567425067c2.jpg', '2019-09-02 11:51:07', '2019-09-02 11:51:07'),
(4, 'ggy7fgw7', 'b87f9re t67feg8grb t7gewfwe', '1567425067c3.jpg', '2019-09-02 11:51:07', '2019-09-02 11:51:07'),
(5, 'ggy7fgw7', 'b87f9re t67feg8grb t7gewfwe', '1567425067c4.jpg', '2019-09-02 11:51:08', '2019-09-02 11:51:08'),
(6, 'ggy7fgw7', 'b87f9re t67feg8grb t7gewfwe', '1567425068c5.jpg', '2019-09-02 11:51:08', '2019-09-02 11:51:08'),
(7, 'gf7v', '8679 uugiyf', '1567425887c1.jpg', '2019-09-02 12:04:48', '2019-09-02 12:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `name`, `email`, `address`, `experience`, `qualification`, `contact`, `created_at`, `updated_at`, `file`) VALUES
(7, 'csjbuds', 'bschbv@gmail.com', 'bhudc', 'bcdudcs', 'cbudgs', 'bcxhgdc', '2019-09-13 12:37:14', '2019-09-13 12:37:14', '1568378234download.jpg'),
(8, 'bcyu', 'bchug7@gmail.com', 'hfyf', 'cdyuds', 'dgfbhv', 'hfgf', '2019-09-13 12:39:03', '2019-09-13 12:39:03', '1568378343Untitled presentation (1).pptx');

-- --------------------------------------------------------

--
-- Table structure for table `serviceimages`
--

CREATE TABLE `serviceimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `backimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serviceimages`
--

INSERT INTO `serviceimages` (`id`, `type`, `backimage`, `created_at`, `updated_at`) VALUES
(3, 'services', '1567343500services.jpg', '2019-09-01 13:11:40', '2019-09-01 13:11:40'),
(4, 'it', '1567344937bg.jpg', '2019-09-01 13:35:37', '2019-09-01 13:35:37'),
(5, 'blog', '1567345519services.jpg', '2019-09-01 13:45:19', '2019-09-01 13:45:19'),
(6, 'civil', '1567346760c4.jpg', '2019-09-01 14:06:00', '2019-09-01 14:06:00'),
(7, 'electronic', '1567346781ele_bg.jpg', '2019-09-01 14:06:21', '2019-09-01 14:06:21'),
(8, 'single_it', '1567348696services.jpg', '2019-09-01 14:38:16', '2019-09-01 14:38:16'),
(9, 'single_civil', '1567348730services.jpg', '2019-09-01 14:38:50', '2019-09-01 14:38:50'),
(10, 'single_electronic', '1567348752services.jpg', '2019-09-01 14:39:12', '2019-09-01 14:39:12'),
(11, 'career', '1567349256services.jpg', '2019-09-01 14:47:37', '2019-09-01 14:47:37'),
(12, 'single_blog', '1567350728services.jpg', '2019-09-01 15:12:08', '2019-09-01 15:12:08'),
(13, 'footer', '1567355154tab.jpg', '2019-09-01 16:25:54', '2019-09-01 16:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `department`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Software Solution', '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\">idatat non proident, sunt in culpa qui officiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cup</span></p>', '1567343000itimage.png', '2019-09-01 13:03:20', '2019-09-01 13:03:20'),
(2, 'Electronics', '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\">idatat non proident, sunt in culpa qui officiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cup</span></p>', '1567343058electronics.png', '2019-09-01 13:04:18', '2019-09-01 13:11:01'),
(3, 'Civil', '<p style=\"text-align:center\"><span style=\"color:#ecf0f1\">idatat non proident, sunt in culpa qui officiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cup</span></p>', '1567343598c4.jpg', '2019-09-01 13:05:02', '2019-09-01 13:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `type`, `link`, `created_at`, `updated_at`) VALUES
(1, 'fa fa-facebook-square fa-3x', 'uhsdvs', '2019-09-01 12:45:50', '2019-09-01 12:45:50'),
(2, 'fa fa-twitter-square fa-3x', 'nu8gefwr', '2019-09-01 12:46:08', '2019-09-01 12:46:08'),
(3, 'fa fa-instagram fa-3x', 'uydgviyfe', '2019-09-01 12:46:25', '2019-09-01 12:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submenus`
--

INSERT INTO `submenus` (`id`, `name`, `slug`, `navigation_id`, `created_at`, `updated_at`) VALUES
(1, 'IT', 'it', 6, '2019-09-01 13:15:27', '2019-09-01 13:15:27'),
(2, 'Civil', 'civil', 6, '2019-09-01 13:16:04', '2019-09-01 13:16:04'),
(3, 'Electronic', 'electronic', 6, '2019-09-01 13:16:19', '2019-09-01 13:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video`, `created_at`, `updated_at`) VALUES
(1, '1567006007back.mp4', '2019-08-28 15:26:47', '2019-08-28 15:26:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloggs`
--
ALTER TABLE `bloggs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civils`
--
ALTER TABLE `civils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `its`
--
ALTER TABLE `its`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourclients`
--
ALTER TABLE `ourclients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourprojects`
--
ALTER TABLE `ourprojects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `populars`
--
ALTER TABLE `populars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceimages`
--
ALTER TABLE `serviceimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submenus_navigation_id_foreign` (`navigation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bloggs`
--
ALTER TABLE `bloggs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `civils`
--
ALTER TABLE `civils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `electronics`
--
ALTER TABLE `electronics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `its`
--
ALTER TABLE `its`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ourclients`
--
ALTER TABLE `ourclients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ourprojects`
--
ALTER TABLE `ourprojects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `populars`
--
ALTER TABLE `populars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `serviceimages`
--
ALTER TABLE `serviceimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `submenus_navigation_id_foreign` FOREIGN KEY (`navigation_id`) REFERENCES `navigations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
