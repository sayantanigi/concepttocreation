-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2023 at 03:06 AM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c2c_conceptTocreation`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_cart`
--

CREATE TABLE `add_cart` (
  `id` bigint(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_date` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email_id` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email_id`, `password`, `role`, `status`, `last_login`) VALUES
(1, 'admin', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '2019-01-31 07:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading`, `sub_heading`, `banner_image`, `banner_url`, `status`, `created_at`) VALUES
(1, 'World Leading Learning Platform', 'People Expect to be Bored of Learning &lt;br&gt; DONT BE', 'h2-11.jpg', 'https://dev.igiapp.com/concepttocreation/course-detail/7', 1, '2023-05-04 16:36:42'),
(2, 'Beyond Automation', 'RECREATE yourself &lt;br&gt; EXPONENTIALLY!', 'h2-21.jpg', 'https://dev.igiapp.com/concepttocreation/course-detail/7', 1, '2023-05-04 16:38:44'),
(3, 'Concept To Creation', 'Use your uniqueness  &lt;br&gt; to automate creativity!', 'pexels-buro-millennial-1438072.jpg', 'https://dev.igiapp.com/concepttocreation/course-detail/8', 1, '2023-05-16 05:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `uploaded_by` varchar(255) NOT NULL,
  `popular` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_payments`
--

CREATE TABLE `cert_payments` (
  `id` bigint(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `shiped_price` varchar(50) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_verify`
--

CREATE TABLE `cert_verify` (
  `id` int(11) NOT NULL,
  `cert_name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_fname` varchar(255) NOT NULL,
  `org_lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `rply_text` longtext NOT NULL,
  `rply_status` int(11) NOT NULL,
  `rply_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `page` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `image1` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `page`, `title`, `meta_title`, `slug`, `meta_description`, `description`, `image`, `image1`, `status`, `created_at`) VALUES
(1, 'About us', 'Welcome to The Concept To Creation', 'Welcome to The Concept To Creation', 'welcome-to-the-concept-to-creation', 'Recogizing the need is the primary than we expected Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint ipsa voluptatibus,', '<p><strong>Recogizing the need is the primary than we expected Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint ipsa voluptatibus,</strong></p>\r\n\r\n<p><span class=\"marker\"><em><strong>Great Site to Learn and Gain Knowledge.</strong></em></span></p>\r\n', 'image11.png', '', 1, '2019-01-30 02:28:24'),
(2, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'privacy-policy', '', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n\r\n<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n\r\n<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n\r\n<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n\r\n<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n', '', '', 1, '2019-04-10 06:10:58'),
(4, 'Why students choose us', 'Why students choose us?', 'Why students choose us?', 'why-students-choose-us', 'Why students choose us?', '<p>Leverage our experience and collaborations.</p>\r\n', '', '', 1, '2020-10-30 04:40:10'),
(5, 'Self Paced online', 'Self Paced online', 'Self Paced online', 'self-paced-online', 'Self Paced online', '<p>Online industry standard certifications, thoroughly prepared by experts.</p>\r\n', '', '', 1, '2020-10-30 04:40:50'),
(6, 'Mentorship', 'Mentorship', 'Mentorship', 'mentorship', 'Mentorship', '<p>One on one mentorship access to professionals with decades of experience in pharmaceuticals.</p>\r\n', '', '', 1, '2020-10-30 04:41:35'),
(12, 'Terms of Service', 'Terms of Service', '', 'terms-of-service', '', '<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n\r\n<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n\r\n<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n\r\n<p>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</p>\r\n', '', '', 1, '2020-12-10 06:24:08'),
(13, 'Hands on work experience', 'Hands on work experience', 'Hands on work experience', 'hands-on-work-experience', 'Hands on work experience', '<p>With safety databases, CTMS, eTMF, EDC applications.</p>\r\n', '', '', 1, '2021-01-08 01:20:44'),
(14, 'Collaborations', 'Collaborations', 'Collaborations', 'collaborations', 'Collaborations', '<p>with hiring agencies, Pharmaceutical/CRO companies.</p>\r\n', '', '', 1, '2021-01-15 04:27:15'),
(15, 'Job place assistance', '100% Job place assistance', '100% Job place assistance', '100-job-place-assistance', '100% Job place assistance', '<p>End to end assistance with resume writing, mock screens and interview questionnaire.</p>\r\n', '', '', 1, '2021-01-15 04:30:30'),
(16, 'Get In Touch', 'Get In Touch', 'Get In Touch', 'get-in-touch', 'Get In Touch', '<p>Have some queries or suggestions, or just want to say hi? Our support teams are ready to help you 24/7.</p>\r\n', '', '', 1, '2021-01-15 04:31:05'),
(20, 'Job readiness', 'Job readiness', 'Job readiness', 'job-readiness', 'Curriculum drafted for current market needs.', '<p>Curriculum drafted for current market needs.</p>\r\n', '', '', 1, '2023-01-19 09:15:40'),
(21, 'Consulting', 'Consulting Services at Concept To Creation', 'Consulting services at Concept To Creation', 'consulting-services-at-concept-to-creation', 'We offer the best consulting services on this planet', '<p><strong>Knowledge is Information, and the more you share the more you know:</strong></p>\r\n\r\n<p>Our expertise is available to you at all times so that you may benefit from our experience. Our consulting servies include&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Job Consulting</li>\r\n	<li>Career Planning</li>\r\n	<li>Placements and relocation</li>\r\n	<li>Portfolio management</li>\r\n</ul>\r\n\r\n<p>All are welcome, and all shall benefit.</p>\r\n', 'image12.png', 'image1.jpg', 1, '2023-05-05 00:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `consulting_form`
--

CREATE TABLE `consulting_form` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `msg` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `rply_text` longtext NOT NULL,
  `rply_status` int(11) NOT NULL,
  `rply_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(15) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `crested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `rply_text` longtext NOT NULL,
  `rply_status` int(11) NOT NULL,
  `rply_date` datetime DEFAULT NULL,
  `address` text NOT NULL,
  `business_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fname`, `lname`, `email`, `phone`, `subject`, `message`, `crested_at`, `rply_text`, `rply_status`, `rply_date`, `address`, `business_name`) VALUES
(1, 'David ds Pavel', '', 'david@domainlions.net', 2147483647, 'Establish your online presence with fromconcepttocreation.com', 'Hi,\r\n\r\nWe wanted to let you know that the domain fromconcepttocreation.com is now available for purchase. If you are interested in acquiring this domain, please follow the link below to get more information and express your interest.\r\n\r\nhttps://domainlions.com/domains/fromconcepttocreation.com\r\n\r\nYou can find more information about this domain on our website, but if you have any questions or need assistance, please don\'t hesitate to reply to this email. We would be happy to help.\r\n\r\nBest regards,\r\nDavid Pavel\r\n\r\n--\r\nDomain Lions LLC\r\nT: +1 661 505 9573', '2023-10-05 14:39:13', '', 0, NULL, '30 N Gould St Ste R', 'Domain Lions'),
(2, 'David ds Pavel', '', 'david@domainlions.net', 2147483647, 'Establish your online presence with fromconcepttocreation.com', 'Hi,\r\n\r\nWe wanted to let you know that the domain fromconcepttocreation.com is now available for purchase. If you are interested in acquiring this domain, please follow the link below to get more information and express your interest.\r\n\r\nhttps://domainlions.com/domains/fromconcepttocreation.com\r\n\r\nYou can find more information about this domain on our website, but if you have any questions or need assistance, please don\'t hesitate to reply to this email. We would be happy to help.\r\n\r\nBest regards,\r\nDavid Pavel\r\n\r\n--\r\nDomain Lions LLC\r\nT: +1 661 505 9573', '2023-10-05 14:39:15', '', 0, NULL, '30 N Gould St Ste R', 'Domain Lions');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `heading_1` text DEFAULT NULL,
  `heading_2` text DEFAULT NULL,
  `meta_descr` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `program_overview` longtext DEFAULT NULL,
  `objectives` longtext DEFAULT NULL,
  `curriculam` longtext DEFAULT NULL,
  `duration` longtext DEFAULT NULL,
  `career_paths` longtext DEFAULT NULL,
  `course_type` varchar(25) NOT NULL,
  `price` int(11) NOT NULL,
  `price_key` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cat_id`, `title`, `slug`, `heading_1`, `heading_2`, `meta_descr`, `description`, `program_overview`, `objectives`, `curriculam`, `duration`, `career_paths`, `course_type`, `price`, `price_key`, `rating`, `image`, `video`, `status`, `created_at`) VALUES
(1, 1, 'Test Course Name', 'test-course-name', 'Test Course Heading 1', 'Test Course Heading 2', '', '<p>Test Course&nbsp;Description</p>\r\n', '<p>Test Course&nbsp;Program Overview</p>\r\n', '<p>Test Course&nbsp;Objectives</p>\r\n', '<p>Test Course&nbsp;Curriculam</p>\r\n', '30', '<p>Test Course&nbsp;Career Paths</p>\r\n', 'free', 0, '', 0, 'image-blog-revel-top-java-tools1.jpg', '', 1, '2023-07-26 11:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `course_enrollment`
--

CREATE TABLE `course_enrollment` (
  `enrollment_id` bigint(20) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `enrollment_date` datetime DEFAULT current_timestamp(),
  `enrollment_price` double DEFAULT NULL,
  `price_cents` double DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_enrollment`
--

INSERT INTO `course_enrollment` (`enrollment_id`, `course_id`, `user_id`, `order_id`, `enrollment_date`, `enrollment_price`, `price_cents`, `currency`, `currency_symbol`, `payment_status`, `transaction_id`) VALUES
(1, 1, 10, NULL, '2023-07-26 07:36:01', 0, 0, 'USD', '$', 'COMPLETED', 'tKBzxsrXuj8QbisENYXyyk7tWYaEg');

-- --------------------------------------------------------

--
-- Table structure for table `course_enrollment_status`
--

CREATE TABLE `course_enrollment_status` (
  `id` bigint(20) NOT NULL,
  `enrollment_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `material_type` varchar(100) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_materials`
--

CREATE TABLE `course_materials` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `module` bigint(20) DEFAULT NULL,
  `material_type` varchar(100) DEFAULT NULL,
  `video_type` varchar(100) DEFAULT NULL,
  `video_url` text DEFAULT NULL,
  `video_file` varchar(255) DEFAULT NULL,
  `material_description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `position_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_modules`
--

CREATE TABLE `course_modules` (
  `id` bigint(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `position_order` int(11) DEFAULT NULL,
  `name` varchar(350) NOT NULL,
  `module_image` varchar(255) DEFAULT NULL,
  `module_descriptions` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_quiz`
--

CREATE TABLE `course_quiz` (
  `id` bigint(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `ans1` varchar(800) NOT NULL,
  `ans2` varchar(800) NOT NULL,
  `ans3` varchar(800) NOT NULL,
  `ans4` varchar(800) NOT NULL,
  `correct_answer` varchar(255) DEFAULT NULL,
  `quiz_file` text DEFAULT NULL,
  `ans1_file` text DEFAULT NULL,
  `ans2_file` text DEFAULT NULL,
  `ans3_file` text DEFAULT NULL,
  `ans4_file` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_resources`
--

CREATE TABLE `course_resources` (
  `id` bigint(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  `resource_file` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_reviews`
--

CREATE TABLE `course_reviews` (
  `review_id` bigint(20) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `review_message` text DEFAULT NULL,
  `review_status` varchar(255) DEFAULT NULL,
  `review_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cr_category`
--

CREATE TABLE `cr_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(300) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cr_category`
--

INSERT INTO `cr_category` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Artificial Intelligence', 'artificial-intelligence', 1),
(2, 'Python', 'python', 1),
(3, 'Data Structure', 'data-structure', 1),
(4, 'Web Development', 'web-development', 1),
(5, 'History', 'history', 1),
(6, 'Humanities', 'humanities', 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_unsubscribe_list`
--

CREATE TABLE `email_unsubscribe_list` (
  `id` int(11) NOT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0 COMMENT '1 for subscribe and 0 for unsubscribe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_photos`
--

CREATE TABLE `gallery_photos` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homecourse`
--

CREATE TABLE `homecourse` (
  `id` int(11) NOT NULL,
  `heading` longtext NOT NULL,
  `sub_heading` longtext NOT NULL,
  `course_icon` longtext NOT NULL,
  `course_url` longtext NOT NULL,
  `status` enum('1','2') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homecourse`
--

INSERT INTO `homecourse` (`id`, `heading`, `sub_heading`, `course_icon`, `course_url`, `status`, `created_at`) VALUES
(2, 'Creativity Concepts', 'Recreate the Universe!', 'professor-svgrepo-com1.png', 'https://dev.igiapp.com/concepttocreation/course-detail/4', '1', '2023-05-04 16:42:01'),
(3, 'Digitalization', 'Automation concepts and more!', 'Icon11.png', 'https://dev.igiapp.com/concepttocreation/course-detail/1', '1', '2023-05-04 16:44:09'),
(4, 'Augmented Reality', 'Challenge the Creator!', 'a1.png', 'https://dev.igiapp.com/concepttocreation/course-detail/2', '1', '2023-05-16 05:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'logo', 'logo.png'),
(2, 'meta_title', NULL),
(6, 'twitter', 'https://www.twitter.com/'),
(7, 'facebook', 'https://www.facebook.com/'),
(8, 'google_plus', 'javascript:void(0);'),
(9, 'linkdin', 'javascript:void(0);'),
(11, 'address', '215 Palm Street, Orlando, FL 2721, USA'),
(12, 'phone', '(+01) 987-654-321'),
(13, 'email', 'support@concept2creation.com'),
(14, 'web', 'https://qramerca.com'),
(15, 'hc', ''),
(16, 'aws', ''),
(17, 'aw', ''),
(18, 'oy', '27 years in Arlington, Texas'),
(19, 'course_price', NULL),
(20, 'pint', NULL),
(21, 'linked', 'https://www.linkedin.com/'),
(22, 'lt', 'Reality superimposed into creativity!'),
(23, 'insta', 'https://www.instagram.com/'),
(24, 'l1', NULL),
(25, 'l2', NULL),
(26, 'l3', NULL),
(27, 'l4', NULL),
(28, 'l5', NULL),
(29, 'l6', NULL),
(30, 'hth1', NULL),
(31, 'hd1', NULL),
(32, 'hth2', NULL),
(33, 'hd2', NULL),
(34, 'hth3', NULL),
(35, 'hd3', NULL),
(36, 'hth4', NULL),
(37, 'hd4', NULL),
(38, 'cemail', NULL),
(39, 'wemail', NULL),
(40, 'youtube', 'https://www.youtube.com/'),
(41, 'openh', NULL),
(42, 'map', '<iframe src=\"https://maps.google.com/maps?q=Fort%20Miley&t=&z=13&ie=UTF8&iwloc=&output=embed\"></iframe>'),
(43, 'tollfree', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `c_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `txn_id` text NOT NULL,
  `order_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `payment_gross` int(11) NOT NULL,
  `total_pay` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_bank`
--

CREATE TABLE `quiz_bank` (
  `id` bigint(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `ques` varchar(1000) NOT NULL,
  `ans1` varchar(800) NOT NULL,
  `ans2` varchar(800) NOT NULL,
  `ans3` varchar(800) NOT NULL,
  `ans4` varchar(800) NOT NULL,
  `cor_ans` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `descr` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `rply_text` longtext NOT NULL,
  `rply_status` int(11) NOT NULL,
  `rply_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `option_id` bigint(20) NOT NULL,
  `option_name` varchar(250) DEFAULT NULL,
  `option_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'hth1', 'Incredible Infrastructure'),
(2, 'hd1', 'Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.'),
(3, 'hth2', 'Email Notifications'),
(4, 'hd2', 'Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.'),
(5, 'hth3', 'Simple Dashboard'),
(6, 'hd3', 'Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.'),
(7, 'hth4', 'Information Retrieval'),
(8, 'hd4', 'Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.'),
(9, 'hth5', 'Drag and Drop Functionality'),
(10, 'hd5', 'Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.'),
(11, 'hth6', 'Deadline Reminders'),
(12, 'hd6', 'Lorem ipsum dolor amet, adipiscing, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.');

-- --------------------------------------------------------

--
-- Table structure for table `set_exam_test`
--

CREATE TABLE `set_exam_test` (
  `id` bigint(20) NOT NULL,
  `courseid` int(11) NOT NULL,
  `quesid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `set_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_id` bigint(20) NOT NULL,
  `price_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `unit_amount` varchar(255) DEFAULT NULL,
  `unit_amount_decimal` varchar(255) DEFAULT NULL,
  `subscription` tinyint(4) DEFAULT NULL,
  `subscription_name` varchar(255) DEFAULT NULL,
  `subscription_type` varchar(255) DEFAULT NULL,
  `subscription_duration` int(11) DEFAULT NULL,
  `subscription_description` text DEFAULT NULL,
  `plan_discount` float DEFAULT NULL,
  `subscription_created_at` datetime DEFAULT NULL,
  `subscription_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desig` varchar(255) NOT NULL,
  `descr` longtext NOT NULL,
  `img` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `phone_full` varchar(255) DEFAULT NULL,
  `phone_code` int(11) DEFAULT NULL,
  `phone_country` varchar(100) DEFAULT NULL,
  `phone_st_country` int(11) DEFAULT NULL,
  `user_bio` text DEFAULT NULL,
  `email_verified` smallint(6) NOT NULL DEFAULT 0,
  `status` smallint(6) DEFAULT 0,
  `image` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `otp` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `currency`, `currency_symbol`, `fname`, `lname`, `email`, `password`, `phone`, `phone_full`, `phone_code`, `phone_country`, `phone_st_country`, `user_bio`, `email_verified`, `status`, `image`, `created_at`, `otp`, `token`) VALUES
(5, 'USD', '$', 'Prithwiraj', 'Bhattacharjee', 'care@goigi.com', 'e10adc3949ba59abbe56e057f20f883e', '(347) 535-3666', '+13475353666', 1, 'United States', 0, 'The student in his quest for oneness with the Universe.', 1, 1, 'Profile2_-_Copy_-_Copy.jpg', '2023-06-09 14:18:58', '', NULL),
(10, 'USD', '$', 'Sayantan', 'Bhakta', 'sayantan@goigi.in', 'e10adc3949ba59abbe56e057f20f883e', '7894561230', '+917894561230', 91, 'India (भारत)', 0, NULL, 1, 1, NULL, '2023-06-13 16:01:29', '', NULL),
(13, 'USD', '$', '', '', NULL, 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2023-10-02 15:46:57', '513815', NULL),
(14, 'USD', '$', 'digituMnHL', 'digituMnHL', 'digitu2oo@pin-up-st.com', '28c895fd8bf50b5a0d09a1d15c8f0a82', '84832341344', '', 0, '', 0, NULL, 0, 0, NULL, '2023-10-12 22:34:22', '963764', NULL),
(15, 'USD', '$', 'LorXlVJooEXPl', 'LorXlVJooEXPl', 'iMQFJm.qttwpdc@virilia.life', '362f2d73437dcc5fac0501005693fa57', '645-874-67-74', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-13 03:49:19', '786577', NULL),
(16, 'USD', '$', 'SCeTRIfXEWXbv', 'SCeTRIfXEWXbv', 'jorgemartin272@gmail.com', '18626dfb8b902c1d9796b67e1a7e9f81', '885-882-25-56', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-13 04:45:42', '068157', NULL),
(17, 'USD', '$', 'wmltuMnHL', 'wmltuMnHL', 'wmltu2oo@catcasinostyle.ru', '28c895fd8bf50b5a0d09a1d15c8f0a82', '82336472775', '', 0, '', 0, NULL, 0, 0, NULL, '2023-11-16 20:53:03', '223809', NULL),
(18, 'USD', '$', 'YlTSYvuDvUhf', 'YlTSYvuDvUhf', 'YLDMEV.hhdttbt@zetetic.sbs', 'b4381df5ced3601b630049e33e315823', '287-120-50-35', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-24 22:27:44', '311944', NULL),
(19, 'USD', '$', 'zYANkchHzyF', 'zYANkchHzyF', 'countryboyheart@gmail.com', '3f4ac069dd7f9432699b98f4bb899e63', '501-865-31-78', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-24 22:43:36', '194939', NULL),
(20, 'USD', '$', 'vhKPSjkpQwIvxxU', 'vhKPSjkpQwIvxxU', 'kirk@kirkdavislaw.com', '894162d071c8ead46b269a414e95cb32', '629-515-36-63', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-25 07:13:31', '211919', NULL),
(21, 'USD', '$', 'jwlJFchzRRJoluy', 'jwlJFchzRRJoluy', 'XIUJqm.twdbchp@monochord.xyz', 'f1697a3d541945515ad4888df7f19f26', '148-371-00-77', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-29 23:54:14', '202065', NULL),
(22, 'USD', '$', 'ocdzxrROTlWzQ', 'ocdzxrROTlWzQ', 'barb.gain@sympatico.ca', 'e493b9de2e875aca31d89b3e4ae80498', '497-224-09-00', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-30 00:11:37', '210572', NULL),
(23, 'USD', '$', 'iCWjwUNcOjLFyyVNx', 'iCWjwUNcOjLFyyVNx', 'n0use4achick@yahoo.com', '5bde68344ee08498f2367375ff6283ae', '275-593-56-27', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-30 03:27:01', '379600', NULL),
(24, 'USD', '$', 'RsEzHKFHdNKvclyT', 'RsEzHKFHdNKvclyT', 'michael@rosetheatre.com', '1c36c472545b327b3453a96f84659f97', '839-733-11-77', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-30 05:36:17', '331816', NULL),
(25, 'USD', '$', 'SJwIFEcADm', 'SJwIFEcADm', 'ar09ny@hotmail.com', '9d4494af2fd79e1102aba21ca9f5b087', '839-191-20-39', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-30 07:55:20', '241737', NULL),
(26, 'USD', '$', 'nLfWXuibX', 'nLfWXuibX', 'dking1@telus.net', '13eec33bf21d69dbbfe236ded6df6f10', '103-241-86-20', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-11-30 18:36:15', '884627', NULL),
(27, 'USD', '$', 'rYFFYpEUVmPCR', 'rYFFYpEUVmPCR', 'ihatebieber12@gmail.com', 'dd2f18689dd331a638206ba13b88367b', '959-934-39-07', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-01 01:16:45', '547085', NULL),
(28, 'USD', '$', 'ObzVHCRISOHQobr', 'ObzVHCRISOHQobr', 'alan_miquel_ruiz@hotmail.com', 'e67a8d5cf2e5a20621dcda7ad58b8346', '202-146-21-97', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-01 07:30:05', '409957', NULL),
(29, 'USD', '$', 'SccLdXKJNuQ', 'SccLdXKJNuQ', 'mehmetcemcr7@gmail.com', '357df524816a5da5c2d37c68fd9860e4', '923-116-72-07', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-02 05:22:51', '814144', NULL),
(30, 'USD', '$', 'WBTyocimwAfXK', 'WBTyocimwAfXK', 'brieuc.langlois@gmail.com', '5d32073a7301fec88962d8ca2560de2c', '083-466-26-96', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-02 18:10:29', '457369', NULL),
(31, 'USD', '$', 'RbbvNYmCwy', 'RbbvNYmCwy', 'matt.wright@digital-os.co.uk', '21698fc12b44fb041eed58644ceb81fd', '230-221-36-63', '1', 1, '1', 1, NULL, 1, 1, NULL, '2023-12-05 01:22:17', '', NULL),
(32, 'USD', '$', 'fxCKfVjKnmPUUi', 'fxCKfVjKnmPUUi', 'pdilley@stonestreetquarries.com', 'b94e058249a73b94e191bcd0b3b5e7fd', '812-549-25-07', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-05 05:25:49', '151120', NULL),
(33, 'USD', '$', 'Elliott', 'Elliott', 'IEMOaz.hpptqbd@spinapp.bar', '84fc26c7f2ae072ea5d8373d415187c1', '391-528-56-13', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-11 01:35:43', '039197', NULL),
(34, 'USD', '$', 'Remi', 'Remi', 'harish@arabindia.com', '63b30b41fb29e61ce85e0c37da2694d5', '399-839-94-19', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-11 01:39:05', '161392', NULL),
(35, 'USD', '$', 'Ivy', 'Ivy', 'qrong12@gmail.com', '726879b73a3082907d26795bf7d1d45c', '595-308-06-38', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-11 21:03:05', '518262', NULL),
(36, 'USD', '$', 'Nash', 'Nash', 'michellern94@yahoo.com', 'de8b68136901e216bf735122655b6bca', '093-013-05-49', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-12 00:58:46', '213518', NULL),
(37, 'USD', '$', 'Oscar', 'Oscar', 'spiausainc@gmail.com', '59a936fb53adc4fe961706780909d20e', '808-713-08-19', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-12 04:39:00', '862338', NULL),
(38, 'USD', '$', 'Emir', 'Emir', 'michelle@hultine.com', 'b049b81fe228866c046faf71f1a2d6a9', '059-454-06-90', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-12 09:01:39', '227133', NULL),
(39, 'USD', '$', 'Dior', 'Dior', 'kristin@iamfirstrate.com', '7e20e2fb7db6b1bd186f588c55570846', '533-945-76-45', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-12 21:05:07', '879283', NULL),
(40, 'USD', '$', 'Enoch', 'Enoch', 'marieb@studyhair.com', '08f839924584beab6df6575128d5aabd', '862-080-45-63', '1', 1, '1', 1, NULL, 0, 0, NULL, '2023-12-13 00:03:29', '125501', NULL),
(41, 'USD', '$', 'Giovanna', 'Giovanna', 'info@vdefa.nl', '7ae8b072946f1d7fe5b9ac1df1164ac2', '901-662-83-86', '1', 1, '1', 1, NULL, 1, 1, NULL, '2023-12-13 04:15:02', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_final_ques`
--

CREATE TABLE `user_final_ques` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `quesid` int(11) NOT NULL,
  `ansid` varchar(255) NOT NULL,
  `corans` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_ques`
--

CREATE TABLE `user_ques` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `quesid` int(11) NOT NULL,
  `ansid` varchar(255) NOT NULL,
  `corans` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `usr_subid` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `recurring_price_id` varchar(255) DEFAULT NULL,
  `recurring_price_currency` varchar(255) DEFAULT NULL,
  `recurring_price_amount` varchar(255) DEFAULT NULL,
  `subscription_id` varchar(255) DEFAULT NULL,
  `latest_invoice` varchar(255) DEFAULT NULL,
  `invoice_pdf` text DEFAULT NULL,
  `current_period_end` date DEFAULT NULL,
  `current_period_start` date DEFAULT NULL,
  `stripe_period_end` int(11) DEFAULT NULL,
  `stripe_period_start` varchar(255) DEFAULT NULL,
  `subscriptions_amount` varchar(255) DEFAULT NULL,
  `subscriptions_status` varchar(255) DEFAULT NULL,
  `subscriptions_cancel` enum('1','0') NOT NULL DEFAULT '0',
  `subscriptions_canceled_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_cart`
--
ALTER TABLE `add_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cert_payments`
--
ALTER TABLE `cert_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cert_verify`
--
ALTER TABLE `cert_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consulting_form`
--
ALTER TABLE `consulting_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_enrollment`
--
ALTER TABLE `course_enrollment`
  ADD PRIMARY KEY (`enrollment_id`);

--
-- Indexes for table `course_enrollment_status`
--
ALTER TABLE `course_enrollment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_modules`
--
ALTER TABLE `course_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_quiz`
--
ALTER TABLE `course_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_resources`
--
ALTER TABLE `course_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `cr_category`
--
ALTER TABLE `cr_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_unsubscribe_list`
--
ALTER TABLE `email_unsubscribe_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homecourse`
--
ALTER TABLE `homecourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_bank`
--
ALTER TABLE `quiz_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `set_exam_test`
--
ALTER TABLE `set_exam_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_final_ques`
--
ALTER TABLE `user_final_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ques`
--
ALTER TABLE `user_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`usr_subid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_cart`
--
ALTER TABLE `add_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_payments`
--
ALTER TABLE `cert_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_verify`
--
ALTER TABLE `cert_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `consulting_form`
--
ALTER TABLE `consulting_form`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_enrollment`
--
ALTER TABLE `course_enrollment`
  MODIFY `enrollment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_enrollment_status`
--
ALTER TABLE `course_enrollment_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_materials`
--
ALTER TABLE `course_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_modules`
--
ALTER TABLE `course_modules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_quiz`
--
ALTER TABLE `course_quiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_resources`
--
ALTER TABLE `course_resources`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_reviews`
--
ALTER TABLE `course_reviews`
  MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cr_category`
--
ALTER TABLE `cr_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_unsubscribe_list`
--
ALTER TABLE `email_unsubscribe_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homecourse`
--
ALTER TABLE `homecourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_bank`
--
ALTER TABLE `quiz_bank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `option_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `set_exam_test`
--
ALTER TABLE `set_exam_test`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subscription_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_final_ques`
--
ALTER TABLE `user_final_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_ques`
--
ALTER TABLE `user_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `usr_subid` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
