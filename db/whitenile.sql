-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2018 at 10:39 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whitenile`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_alm`
--

CREATE TABLE `wp_alm` (
  `id` mediumint(9) NOT NULL,
  `name` text NOT NULL,
  `repeaterDefault` longtext NOT NULL,
  `repeaterType` text NOT NULL,
  `pluginVersion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_alm`
--

INSERT INTO `wp_alm` (`id`, `name`, `repeaterDefault`, `repeaterType`, `pluginVersion`) VALUES
(1, 'default', '<li <?php if (!has_post_thumbnail()) { ?> class=\"no-img\"<?php } ?>><?php if ( has_post_thumbnail() ) { the_post_thumbnail(\'alm-thumbnail\');}?><h3><a href=\"<?php the_permalink(); ?>\" title=\"<?php the_title(); ?>\"><?php the_title(); ?></a></h3><p class=\"entry-meta\"><?php the_time(\"F d, Y\"); ?></p><?php the_excerpt(); ?></li>', 'default', '3.3.1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aws_index`
--

CREATE TABLE `wp_aws_index` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `count` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `in_stock` int(11) NOT NULL DEFAULT '0',
  `visibility` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aws_index`
--

INSERT INTO `wp_aws_index` (`id`, `term`, `term_source`, `type`, `count`, `in_stock`, `visibility`, `lang`) VALUES
(88, 'aaaaaaaa', 'title', 'product', 1, 1, 'visible', 'en'),
(88, 'aaaaaaaaaaa', 'content', 'product', 1, 1, 'visible', 'en'),
(88, 'dasd', 'category', 'product', 1, 1, 'visible', 'en'),
(80, 'لاب', 'title', 'product', 1, 1, 'visible', 'ar'),
(80, 'توب', 'title', 'product', 1, 1, 'visible', 'ar'),
(80, 'لاب', 'category', 'product', 1, 1, 'visible', 'ar'),
(80, 'توب', 'category', 'product', 1, 1, 'visible', 'ar'),
(74, 'shed', 'title', 'product', 1, 1, 'visible', 'en'),
(74, 'asasdasd', 'content', 'product', 1, 1, 'visible', 'en'),
(74, 'sdfsdfsdf', 'excerpt', 'product', 1, 1, 'visible', 'en'),
(74, 'dasd', 'category', 'product', 1, 1, 'visible', 'en'),
(74, 'fgdfg', 'category', 'product', 1, 1, 'visible', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '4'),
(2, 2, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-20 12:09:19', '2017-11-20 12:09:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 80, 'master', 'me@ahmedelsayed.me', '', '::1', '2017-12-11 12:30:20', '2017-12-11 12:30:20', 'ؤربلابلا', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalogs`
--

CREATE TABLE `wp_huge_it_catalogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) UNSIGNED DEFAULT NULL,
  `sl_width` int(11) UNSIGNED DEFAULT NULL,
  `pause_on_hover` text,
  `catalog_list_effects_s` text,
  `description` text,
  `url` text,
  `link_target` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text,
  `categories` text,
  `ht_show_sorting` text,
  `ht_show_filtering` text,
  `album_id` int(11) NOT NULL,
  `cat_thumb` text,
  `pagination_type` text,
  `count_into_page` text,
  `catalog_search` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_huge_it_catalogs`
--

INSERT INTO `wp_huge_it_catalogs` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `catalog_list_effects_s`, `description`, `url`, `link_target`, `param`, `sl_position`, `ordering`, `published`, `categories`, `ht_show_sorting`, `ht_show_filtering`, `album_id`, `cat_thumb`, `pagination_type`, `count_into_page`, `catalog_search`) VALUES
(8, 'Watches', 375, 600, 'on', '3', 'description2', 'url2', 'on', '1000', 'center', 1, 'on', 'Condition,Brand,Movement,Color,Case Diameter,Color Case,Segment', 'off', 'off', 1, NULL, 'show_all', '2', 'off'),
(9, 'New Catalog', 375, 600, 'on', '0', '4000', NULL, 'on', '1000', 'center', 1, '300', 'param1,param2', 'off', 'off', 0, '', 'show_all', '', 'off'),
(10, 'New Catalog', 375, 600, 'on', 'cubeH', '4000', NULL, 'on', '1000', 'center', 0, '300', 'param1,param2', 'off', 'off', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalog_albums`
--

CREATE TABLE `wp_huge_it_catalog_albums` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `catalog_album_view_mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_huge_it_catalog_albums`
--

INSERT INTO `wp_huge_it_catalog_albums` (`id`, `name`, `catalog_album_view_mode`) VALUES
(8, 'album1', 2),
(9, 'album2', 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalog_album_catalog_contact`
--

CREATE TABLE `wp_huge_it_catalog_album_catalog_contact` (
  `id` int(11) UNSIGNED NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_huge_it_catalog_album_catalog_contact`
--

INSERT INTO `wp_huge_it_catalog_album_catalog_contact` (`id`, `album_id`, `catalog_id`) VALUES
(8, 8, 8),
(9, 9, 0),
(11, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalog_asc_seller`
--

CREATE TABLE `wp_huge_it_catalog_asc_seller` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_name` text CHARACTER SET utf8 NOT NULL,
  `user_email` text CHARACTER SET utf8 NOT NULL,
  `user_phone` text CHARACTER SET utf8 NOT NULL,
  `user_massage` text CHARACTER SET utf8 NOT NULL,
  `user_ip` text CHARACTER SET utf8 NOT NULL,
  `date` text CHARACTER SET utf8 NOT NULL,
  `spam` text CHARACTER SET utf8 NOT NULL,
  `read_or_not` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalog_general_params`
--

CREATE TABLE `wp_huge_it_catalog_general_params` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_huge_it_catalog_general_params`
--

INSERT INTO `wp_huge_it_catalog_general_params` (`id`, `name`, `title`, `description`, `value`) VALUES
(8, 'ht_single_product_price_text', 'ht_single_product_price_text', '', 'Price'),
(9, 'ht_single_product_comments_text', 'ht_single_product_comments_text', '', 'Comments'),
(10, 'ht_single_product_parameters_text', 'ht_single_product_parameters_text', '', 'Parameters'),
(11, 'ht_single_product_rating_text', 'ht_single_product_rating_text', '', 'Rating'),
(12, 'ht_single_product_share_text', 'ht_single_product_share_text', '', 'Share'),
(13, 'ht_single_product_your_name_text', 'ht_single_product_your_name_text', '', 'Your Name'),
(14, 'ht_single_product_your_Comment_text', 'ht_single_product_your_Comment_text', '', 'Your Comment'),
(15, 'ht_single_product_captcha_text', 'ht_single_product_captcha_text', '', 'Captcha'),
(16, 'ht_single_product_invalid_captcha_text', 'ht_single_product_invalid_captcha_text', '', 'Invalid Captcha'),
(17, 'ht_single_product_asc_to_seller_text', 'ht_single_product_asc_to_seller_text', '', 'Contact Seller'),
(18, 'ht_single_product_your_mail_text', 'Your E-mail', '', 'Your E-mail'),
(19, 'ht_single_product_your_phone_text', 'Your Phone', '', 'Your Phone'),
(20, 'ht_single_product_your_message_text', 'Your Message', '', 'Your Message'),
(21, 'ht_catalog_general_message_to_admin', 'ht_catalog_general_message_to_admin', '', 'on'),
(22, 'ht_catalog_general_admin_email', 'ht_catalog_general_admin_email', '', 'me@ahmedelsayed.me'),
(23, 'ht_catalog_general_admin_email_subject', 'ht_catalog_general_admin_email_subject', '', 'Admin subject'),
(24, 'ht_catalog_general_admin_email_message', 'ht_catalog_general_admin_email_message', '', 'Message For admin {userMessage}'),
(25, 'ht_catalog_general_admin_from_text', 'ht_catalog_general_admin_from_text', '', 'me@ahmedelsayed.me'),
(26, 'ht_catalog_general_message_to_user', 'ht_catalog_general_message_to_user', '', 'on'),
(27, 'ht_catalog_general_user_subject', 'ht_catalog_general_user_subject', '', 'User subject'),
(28, 'ht_catalog_general_user_message', 'ht_catalog_general_user_message', '', 'Message for user'),
(29, 'ht_catalog_general_linkbutton_text', 'ht_catalog_general_linkbutton_text', '', 'View Product'),
(30, 'ht_single_product_show_asc_seller_button', 'ht_single_product_show_asc_seller_button', '', 'on'),
(31, 'ht_single_product_comments_submit_button_text', 'Zoom Window Type', '', 'Submit'),
(32, 'ht_single_product_asc_seller_popup_button_text', 'Zoom Window Type', '', 'Submit'),
(33, 'ht_single_product_asc_seller_button_text', 'ht_single_product_asc_seller_button_text', '', 'Contact Seller'),
(34, 'ht_single_product_invalid_mail_text', 'ht_single_product_invalid_mail_text', 'ht_single_product_invalid_mail_text', 'Invalid Email'),
(35, 'ht_catalog_general_no_search_result_text', 'ht_catalog_general_no_search_result_text', '', 'No product matches your request.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalog_products`
--

CREATE TABLE `wp_huge_it_catalog_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `catalog_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `sl_url` varchar(128) DEFAULT NULL,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` varchar(5) NOT NULL,
  `published_in_sl_width` text NOT NULL,
  `price` varchar(200) NOT NULL,
  `market_price` varchar(200) NOT NULL,
  `parameters` text NOT NULL,
  `single_product_url_type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_huge_it_catalog_products`
--

INSERT INTO `wp_huge_it_catalog_products` (`id`, `name`, `catalog_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `ordering`, `published`, `published_in_sl_width`, `price`, `market_price`, `parameters`, `single_product_url_type`) VALUES
(16, 'Pit Crew Watch', '8', '<p>Capturing all the thrills of race day with its tire-design crown, Pit Crew adds new 3-hand bracelet models with bold links made of silicon-wrapped TR90, a high tech thermoplastic composite prized for its light weight and rich color. New designs feature graphic new stylized stripe straps suggested by an aerial view of the Abu-Dhabi Ferrari World theme park, or the Racing Shield logo on the strap upper half, mimicking the position of the shield on the sides of the racing cars.</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/1.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/1.3.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/1.2.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/1.1.jpg;', NULL, '', 'off', 5, 'on', '6', '$200.00', '$135.00', 'Condition_()_NEW*()*Brand_()_FERRARI*()*Movement_()_QUARTZ*()*Color_()_BLUE*()*CASE DIAMETER_()_44 MM*()*Color Case_()_BLUE*()*Segment_()_FANS', 'default'),
(17, 'Scuderia Ferrari chronograph', '8', 'Available from next week on our Worldwide online store for all our customers.\r\nAvailable on our US online store in the beginning of July. \r\n<p>Р В Р вЂ Р В РІР‚С™Р РЋРЎв„ўScuderiaР В Р вЂ Р В РІР‚С™Р РЋРЎС™,  Ferrari\'s most classic watch line, boasts a timeless style with traditional male details, including its 44 mm case. </p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/2.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/2.1.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/2.2.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/2.3.jpg;', NULL, '', 'off', 7, 'on', '6', '$550.45', '$445.00', 'Condition_()_NEW*()*Brand_()_FERRARI*()*Movement_()_CHRONOGRAPH*()*Color_()_BLACK*()*CASE DIAMETER_()_44 MM*()*Color Case_()_STAINLESS STEEL*()*Segment_()_ESSENZIALE', 'default'),
(18, 'Grand Prix Watch', '8', '<p>In 2013, Gran Premio premiered as a pinnacle family of automatic timepieces inspired by the high-performance 2005 FXX car. New quartz-powered 3-hand and chronograph models on strap and bracelet join this distinguished family. The diamond pattern on the new leather strap was inspired by the pattern on the vented steering wheel of another venerated race car.</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/3.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/3.1.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/3.2.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/3.3.jpg;', NULL, '', 'off', 11, 'on', '6', '$350.00', '$295.00', 'Condition_()_NEW*()*Brand_()_FERRARI*()*Movement_()_QUARTZ*()*Color_()_WHITE*()*CASE DIAMETER_()_45 MM*()*Color Case_()_STAINLESS STEEL*()*Segment_()_ESSENZIALE', 'default'),
(19, 'D50 Chronograph Watch', '8', '<p>Proudly invoking the past, the name of this Scuderia Ferrari watch collection pays tribute to the single-seater that brought the DriverР В Р вЂ Р В РІР‚С™Р Р†РІР‚С›РЎС›s World Championship to Maranello in 1956.\r\nThe distinctively thin 44 mm D-50 case features fluidly elongated lugs and a glare-reducing domed crystal, popular in wristwatches from that era.</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/4.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/4.1.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/4.2.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/4.3.jpg;', NULL, '', 'off', 9, 'on', '6', '$415.00', '$315.00', 'Condition_()_NEW*()*Brand_()_FERRARI*()*Movement_()_ CHRONOGRAPH*()*Color_()_YELLOW & BLACK*()*CASE DIAMETER_()_44 MM*()*Color Case_()_STAINLESS STEEL*()*Segment_()_CLASSICHE', 'default'),
(20, 'Scuderia Ferrari Aero Touch', '8', '<p>Aerodynamics and aesthetics blend seamlessly in this line of casually sophisticated Scuderia Ferrari timepieces. Designed to hit the racetrack in sleek, wind-deflecting style, Aerodinamico features an integrated, ventilated silicone strap molded to echo the design of the diffuser on the Scuderia Ferrari single-seater. Its masculine 46mm TR90 thermoplastic chassis reveals a distinctive stepped case design with curved rectangular contours..</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/5.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/5.1.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/5.2.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/5.3.jpg;', NULL, '', 'off', 3, 'on', '6', ' $300.00', ' $235.00', 'Condition_()_NEW*()*Brand_()_FERRARI*()*Movement_()_DIGITAL*()*Color_()_BLACK*()*CASE DIAMETER_()_46 MM*()*Color Case_()_BLACK*()*Segment_()_FANS', 'default'),
(21, 'Aerodinamico Carbon Fibre Chronograph Watch', '8', '<p>Aerodynamics and aesthetics blend seamlessly in this line of casually sophisticated Scuderia Ferrari timepieces.\r\nDesigned to hit the racetrack in sleek, wind-deflecting style, Aerodinamico features an integrated, ventilated silicone strap molded to echo the design of the diffuser on the Scuderia Ferrari single-seater.\r\nIts masculine 46mm TR90 thermoplastic chassis reveals a distinctive stepped case design with curved rectangular contours</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/6.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/6.1.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/6.2.jpg;http://localhost/psolvingegypt/primestore/wp-content/plugins/product-catalog/Front_images/projects/6.3.jpg;', NULL, '', 'off', 1, 'on', '6', '$415.00', '$315.00', 'Condition_()_NEW*()*Brand_()_FERRARI*()*Movement_()_CHRONOGRAPH*()*Color_()_BLACK*()*CASE DIAMETER_()_46 MM*()*Color Case_()_BLACK*()*Segment_()_CHALLENGE', 'default'),
(22, '', '9', '', 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/pic6.jpg;', '', '', 'on', 0, 'on', '6', '', '', 'param1*()*param2', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalog_rating`
--

CREATE TABLE `wp_huge_it_catalog_rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `value` text NOT NULL,
  `prod_id` int(11) UNSIGNED NOT NULL,
  `ip` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_huge_it_catalog_rating`
--

INSERT INTO `wp_huge_it_catalog_rating` (`id`, `value`, `prod_id`, `ip`, `date`) VALUES
(1, '5', 16, '127.0.0.1', '12.04'),
(2, '4', 17, '127.0.0.2', '12.04'),
(3, '5', 18, '127.0.0.3', '12.04'),
(4, '5', 19, '127.0.0.2', '12.044'),
(5, '1', 20, '127.0.0.5', '12.04'),
(6, '2', 21, '127.0.0.4', '12.04');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_catalog_reviews`
--

CREATE TABLE `wp_huge_it_catalog_reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `content` text NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `spam` int(11) UNSIGNED NOT NULL,
  `ip` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_huge_it_catalog_reviews`
--

INSERT INTO `wp_huge_it_catalog_reviews` (`id`, `name`, `content`, `product_id`, `spam`, `ip`, `date`) VALUES
(8, 'Daniel', 'Lorem ipsum dolor sit amet', 16, 0, '127.0.0.1', '12.01.2015'),
(9, 'Emily', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, massa sit amet viverra tristique, urna sapien aliquam massa, sit amet ornare odio erat eleifend quam.', 17, 0, '127.0.0.1', '12.01.2015'),
(10, 'Michael', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 18, 0, '127.0.0.1', '12.01.2015'),
(11, 'Harry', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, massa sit amet viverra tristique, urna sapien aliquam massa, sit amet ornare odio erat eleifend quam. In hac habitasse platea dictumst.', 19, 0, '127.0.0.1', '12.01.2015'),
(12, 'Jack', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, massa sit amet viverra tristique, urna sapien aliquam massa, sit amet ornare odio erat eleifend quam. In hac habitasse platea dictumst. Sed tincidunt arcu ut vestibulum lobortis.', 20, 0, '127.0.0.1', '12.01.2015'),
(13, 'Maria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, massa sit amet viverra tristique, urna sapien aliquam massa.', 21, 0, '127.0.0.1', '12.01.2015');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(0, '_transient_plugin_slugs', 'a:22:{i:0;s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:43:\"advanced-woo-search/advanced-woo-search.php\";i:3;s:33:\"ajax-load-more/ajax-load-more.php\";i:4;s:19:\"akismet/akismet.php\";i:5;s:32:\"category-and-post-tab/plugin.php\";i:6;s:36:\"contact-form-7/wp-contact-form-7.php\";i:7;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:8;s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";i:9;s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";i:10;s:9:\"hello.php\";i:11;s:57:\"load-more-products-for-woocommerce/load-more-products.php\";i:12;s:33:\"logo-slider-wp/logo-slider-wp.php\";i:13;s:23:\"ml-slider/ml-slider.php\";i:14;s:21:\"polylang/polylang.php\";i:15;s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";i:16;s:31:\"search-filter/search-filter.php\";i:17;s:54:\"search-by-algolia-instant-relevant-results/algolia.php\";i:18;s:87:\"show-all-products-shortcode-for-woocommerce/show-all-products-shortcode-woocommerce.php\";i:19;s:41:\"tc-product-catalog/tc-product-catalog.php\";i:20;s:61:\"theme-translation-for-polylang/polylang-theme-translation.php\";i:21;s:37:\"wpml-to-polylang/wpml-to-polylang.php\";}', 'no'),
(1, 'siteurl', 'http://localhost/psolvingegypt/primestore', 'yes'),
(2, 'home', 'http://localhost/psolvingegypt/primestore', 'yes'),
(3, 'blogname', 'tahawybridge', 'yes'),
(4, 'blogdescription', 'tahawybridge', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'me@ahmedelsayed.me', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '7', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:21:\"polylang/polylang.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:33:\"logo-slider-wp/logo-slider-wp.php\";i:5;s:23:\"ml-slider/ml-slider.php\";i:6;s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";i:7;s:54:\"search-by-algolia-instant-relevant-results/algolia.php\";i:8;s:31:\"search-filter/search-filter.php\";i:9;s:61:\"theme-translation-for-polylang/polylang-theme-translation.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:108:\"D:\\xampp\\htdocs\\psolvingegypt\\primestore/wp-content/plugins/woocommerce-ajax-filters/woocommerce-filters.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'eltahawi', 'yes'),
(41, 'stylesheet', 'eltahawi', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'file', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";a:2:{i:0;s:24:\"Custom_Post_Type_Widgets\";i:1;s:9:\"uninstall\";}s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";a:2:{i:0;s:25:\"MW_Polylang_Theme_Strings\";i:1;s:9:\"Uninstall\";}s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";a:2:{i:0;s:13:\"BeRocket_AAPF\";i:1;s:24:\"br_delete_plugin_options\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:171:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:13:\"manage_twotap\";b:1;s:12:\"edit_tt_cart\";b:1;s:12:\"read_tt_cart\";b:1;s:14:\"delete_tt_cart\";b:1;s:13:\"edit_tt_carts\";b:1;s:20:\"edit_others_tt_carts\";b:1;s:16:\"publish_tt_carts\";b:1;s:21:\"read_private_tt_carts\";b:1;s:15:\"delete_tt_carts\";b:1;s:23:\"delete_private_tt_carts\";b:1;s:25:\"delete_published_tt_carts\";b:1;s:22:\"delete_others_tt_carts\";b:1;s:21:\"edit_private_tt_carts\";b:1;s:23:\"edit_published_tt_carts\";b:1;s:20:\"manage_tt_cart_terms\";b:1;s:18:\"edit_tt_cart_terms\";b:1;s:20:\"delete_tt_cart_terms\";b:1;s:20:\"assign_tt_cart_terms\";b:1;s:16:\"edit_tt_purchase\";b:1;s:16:\"read_tt_purchase\";b:1;s:18:\"delete_tt_purchase\";b:1;s:17:\"edit_tt_purchases\";b:1;s:24:\"edit_others_tt_purchases\";b:1;s:20:\"publish_tt_purchases\";b:1;s:25:\"read_private_tt_purchases\";b:1;s:19:\"delete_tt_purchases\";b:1;s:27:\"delete_private_tt_purchases\";b:1;s:29:\"delete_published_tt_purchases\";b:1;s:26:\"delete_others_tt_purchases\";b:1;s:25:\"edit_private_tt_purchases\";b:1;s:27:\"edit_published_tt_purchases\";b:1;s:24:\"manage_tt_purchase_terms\";b:1;s:22:\"edit_tt_purchase_terms\";b:1;s:24:\"delete_tt_purchase_terms\";b:1;s:24:\"assign_tt_purchase_terms\";b:1;s:16:\"publish_products\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:15:\"delete_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"read_private_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:23:\"edit_published_products\";b:1;s:25:\"manage_product_categories\";b:1;s:23:\"edit_product_categories\";b:1;s:25:\"delete_product_categories\";b:1;s:25:\"assign_product_categories\";b:1;s:23:\"manage_product_settings\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:15:\"catalog_manager\";a:2:{s:4:\"name\";s:15:\"Catalog Manager\";s:12:\"capabilities\";a:48:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:16:\"publish_products\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:15:\"delete_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"read_private_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:23:\"edit_published_products\";b:1;s:25:\"manage_product_categories\";b:1;s:23:\"edit_product_categories\";b:1;s:25:\"delete_product_categories\";b:1;s:25:\"assign_product_categories\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:10:\"polylang-2\";}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:6:\"header\";a:1:{i:0;s:10:\"polylang-3\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:6:{i:1515845362;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515845363;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515846271;a:1:{s:29:\"ic_epc_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515846609;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515851952;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512318680;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, 'can_compress_scripts', '1', 'no'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(139, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1511181044;s:7:\"version\";s:5:\"4.9.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(141, 'acf_version', '4.4.12', 'yes'),
(142, 'polylang', 'a:14:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:3:{i:0;s:7:\"product\";i:1;s:4:\"news\";i:2;s:12:\"logosliderwp\";}s:10:\"taxonomies\";a:1:{i:0;s:15:\"logosliderwpcat\";}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.2.7\";s:16:\"previous_version\";s:5:\"2.2.5\";s:12:\"default_lang\";s:2:\"en\";}', 'yes'),
(143, 'polylang_wpml_strings', 'a:48:{i:0;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:8:\"facebook\";s:6:\"string\";s:25:\"https://www.facebook.com/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:1;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:7:\"twitter\";s:6:\"string\";s:20:\"https://twitter.com/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:2;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:9:\"instagram\";s:6:\"string\";s:26:\"https://www.instagram.com/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:3;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:5:\"phone\";s:6:\"string\";s:13:\"010129833938 \";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:4;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:5:\"email\";s:6:\"string\";s:16:\" info@domain.com\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:5;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:7:\"address\";s:6:\"string\";s:34:\"132, My Street, Kingston, New York\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:6;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_about\";s:6:\"string\";s:226:\"<p><strong>Construct</strong> Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec odios Suspe ndisse cursus. cons ectetur elit. Vestibulum nec odios Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec.</p>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:7;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_about\";s:6:\"string\";s:883:\"<p><strong>Construct</strong> Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec odios Suspe ndisse cursus. cons ectetur elit. Vestibulum nec odios Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec.</p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:8;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"title_about\";s:6:\"string\";s:35:\"Welcome To Strong Construction Firm\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:9;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"title_img_1\";s:6:\"string\";s:12:\"Construction\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:10;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_1\";s:6:\"string\";s:123:\"Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:11;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"title_img_2\";s:6:\"string\";s:11:\"Architecure\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:12;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_2\";s:6:\"string\";s:401:\"<div class=\"col-md-3 col-sm-6 m-b30\">\r\n<div class=\"dez-box\">\r\n<div class=\"dez-info\">\r\n<p>Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6 m-b10\">\r\n<div class=\"dez-box\">\r\n<div class=\"dez-media ow-portfolio-img dez-img-overlay11 dez-img-effect\"> </div>\r\n</div>\r\n</div>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:13;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_2\";s:6:\"string\";s:134:\"\r\n<p>Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:14;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_1\";s:6:\"string\";s:127:\"Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\r\n\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:15;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_2\";s:6:\"string\";s:132:\"<p>Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:16;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_1\";s:6:\"string\";s:132:\"<p>Lorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:17;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:19:\"description_about_1\";s:6:\"string\";s:657:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:18;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_about\";s:6:\"string\";s:201:\"Construct Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec odios Suspe ndisse cursus. cons ectetur elit. Vestibulum nec odios Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:19;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:19:\"description_about_1\";s:6:\"string\";s:664:\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:20;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:5:\"phone\";s:6:\"string\";s:18:\"+8190-6002-2831   \";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:21;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:5:\"email\";s:6:\"string\";s:21:\"info@tahawybridge.com\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:22;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:7:\"address\";s:6:\"string\";s:103:\"ZIP CODE 232-0014 Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:23;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:3:\"fax\";s:6:\"string\";s:14:\"+8128-333-1473\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:24;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:7:\"address\";s:6:\"string\";s:85:\"Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:25;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_about\";s:6:\"string\";s:533:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:26;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_about\";s:6:\"string\";s:349:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:27;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_about\";s:6:\"string\";s:356:\"<p>Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.</p>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:28;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:19:\"description_about_1\";s:6:\"string\";s:1337:\"<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><strong>Background: </strong>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</div>\r\n<div>\r\n<div> </div>\r\n<div>\r\n<div>\r\n<div><b>Shipping</b><strong>: </strong>we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.</div>\r\n</div>\r\n</div>\r\n</div>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:29;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"title_img_1\";s:6:\"string\";s:10:\"Background\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:30;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_1\";s:6:\"string\";s:177:\"<p>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</p>\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:31;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"title_img_2\";s:6:\"string\";s:8:\"Shipping\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:32;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:17:\"description_img_2\";s:6:\"string\";s:153:\"we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:33;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:19:\"description_about_1\";s:6:\"string\";s:632:\"<span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:34;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:19:\"description_about_1\";s:6:\"string\";s:542:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\r\n\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:35;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:11:\"title_about\";s:6:\"string\";s:8:\"About Us\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:36;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:19:\"description_about_1\";s:6:\"string\";s:533:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:37;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:27:\"Search bar placeholder text\";s:6:\"string\";s:13:\"Search here..\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:38;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:20:\"Exact matches filter\";s:6:\"string\";s:18:\"Exact matches only\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:39;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:22:\"Search in title filter\";s:6:\"string\";s:15:\"Search in title\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:40;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:24:\"Search in content filter\";s:6:\"string\";s:17:\"Search in content\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:41;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:22:\"Search in posts filter\";s:6:\"string\";s:15:\"Search in posts\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:42;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:22:\"Search in pages filter\";s:6:\"string\";s:15:\"Search in pages\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:43;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:26:\"Categories filter box text\";s:6:\"string\";s:20:\"Filter by Categories\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:44;a:5:{s:7:\"context\";s:16:\"ajax-search-lite\";s:4:\"name\";s:41:\"Search filter for category: Uncategorized\";s:6:\"string\";s:13:\"Uncategorized\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:45;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:8:\"facebook\";s:6:\"string\";s:37:\"https://www.facebook.com/TahawyJapan/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:46;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:7:\"twitter\";s:6:\"string\";s:39:\"https://www.instagram.com/tahawybridge/\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}i:47;a:5:{s:7:\"context\";s:13:\"Theme Options\";s:4:\"name\";s:9:\"instagram\";s:6:\"string\";s:32:\"https://twitter.com/TahawyBridge\";s:9:\"multiline\";b:1;s:3:\"icl\";b:1;}}', 'yes'),
(144, 'widget_polylang', 'a:3:{i:2;a:7:{s:5:\"title\";s:0:\"\";s:8:\"dropdown\";i:0;s:10:\"show_names\";i:1;s:10:\"show_flags\";i:0;s:10:\"force_home\";i:0;s:12:\"hide_current\";i:0;s:22:\"hide_if_no_translation\";i:0;}i:3;a:7:{s:5:\"title\";s:0:\"\";s:8:\"dropdown\";i:0;s:10:\"show_names\";i:1;s:10:\"show_flags\";i:0;s:10:\"force_home\";i:0;s:12:\"hide_current\";i:0;s:22:\"hide_if_no_translation\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'cptui_new_install', 'false', 'yes'),
(148, 'widget_custom-post-type-archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_custom-post-type-categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'widget_custom-post-type-calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'widget_custom-post-type-tag-cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'mw_polylang_strings_twentyfifteen_data', 'a:2:{s:4:\"name\";s:14:\"Twenty Fifteen\";s:7:\"strings\";a:0:{}}', 'yes'),
(154, 'mw_polylang_strings_twentyseventeen_data', 'a:2:{s:4:\"name\";s:16:\"Twenty Seventeen\";s:7:\"strings\";a:0:{}}', 'yes'),
(155, 'mw_polylang_strings_twentysixteen_data', 'a:2:{s:4:\"name\";s:14:\"Twenty Sixteen\";s:7:\"strings\";a:0:{}}', 'yes'),
(192, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"me@ahmedelsayed.me\";s:7:\"version\";s:5:\"4.9.1\";s:9:\"timestamp\";i:1512286374;}', 'no'),
(213, 'current_theme', '', 'yes'),
(214, 'theme_mods_eltahawi', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:19:\"ot_set_google_fonts\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1513506129;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:6:\"header\";a:5:{i:0;s:10:\"polylang-2\";i:1;s:22:\"berocket_aapf_widget-2\";i:2;s:27:\"woocommerce_rating_filter-2\";i:3;s:25:\"woocommerce_layered_nav-2\";i:4;s:26:\"woocommerce_price_filter-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(215, 'theme_switched', '', 'yes'),
(216, 'option_tree_settings', 'a:3:{s:8:\"sections\";a:2:{i:0;a:2:{s:5:\"title\";s:7:\"General\";s:2:\"id\";s:7:\"general\";}i:1;a:2:{s:5:\"title\";s:5:\"About\";s:2:\"id\";s:5:\"about\";}}s:8:\"settings\";a:17:{i:0;a:13:{s:5:\"label\";s:4:\"logo\";s:2:\"id\";s:4:\"logo\";s:4:\"type\";s:6:\"upload\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:1;a:13:{s:5:\"label\";s:8:\"facebook\";s:2:\"id\";s:8:\"facebook\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:2;a:13:{s:5:\"label\";s:7:\"twitter\";s:2:\"id\";s:7:\"twitter\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:3;a:13:{s:5:\"label\";s:9:\"instagram\";s:2:\"id\";s:9:\"instagram\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:4;a:13:{s:5:\"label\";s:5:\"phone\";s:2:\"id\";s:5:\"phone\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:5;a:13:{s:5:\"label\";s:3:\"fax\";s:2:\"id\";s:3:\"fax\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:6;a:13:{s:5:\"label\";s:6:\"E-mail\";s:2:\"id\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:7;a:13:{s:5:\"label\";s:7:\"Address\";s:2:\"id\";s:7:\"address\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:8;a:13:{s:5:\"label\";s:11:\"Description\";s:2:\"id\";s:17:\"description_about\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:7:\"general\";}i:9;a:13:{s:5:\"label\";s:11:\"Title About\";s:2:\"id\";s:11:\"title_about\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:10;a:13:{s:5:\"label\";s:11:\"Description\";s:2:\"id\";s:19:\"description_about_1\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:11;a:13:{s:5:\"label\";s:11:\"Title Image\";s:2:\"id\";s:11:\"title_img_1\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:12;a:13:{s:5:\"label\";s:5:\"Image\";s:2:\"id\";s:5:\"img_1\";s:4:\"type\";s:6:\"upload\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:13;a:13:{s:5:\"label\";s:17:\"Description Image\";s:2:\"id\";s:17:\"description_img_1\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:14;a:13:{s:5:\"label\";s:13:\"Title Image 2\";s:2:\"id\";s:11:\"title_img_2\";s:4:\"type\";s:4:\"text\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:15;a:13:{s:5:\"label\";s:5:\"Image\";s:2:\"id\";s:5:\"img_2\";s:4:\"type\";s:6:\"upload\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}i:16;a:13:{s:5:\"label\";s:17:\"Description Image\";s:2:\"id\";s:17:\"description_img_2\";s:4:\"type\";s:8:\"textarea\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"section\";s:5:\"about\";}}s:15:\"contextual_help\";a:1:{s:7:\"sidebar\";s:0:\"\";}}', 'yes'),
(217, 'option_tree', 'a:17:{s:4:\"logo\";s:77:\"http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/logo.png\";s:8:\"facebook\";s:37:\"https://www.facebook.com/TahawyJapan/\";s:7:\"twitter\";s:39:\"https://www.instagram.com/tahawybridge/\";s:9:\"instagram\";s:32:\"https://twitter.com/TahawyBridge\";s:5:\"phone\";s:18:\"+8190-6002-2831   \";s:3:\"fax\";s:14:\"+8128-333-1473\";s:5:\"email\";s:21:\"info@tahawybridge.com\";s:7:\"address\";s:85:\"Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";s:17:\"description_about\";s:356:\"<p>Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.</p>\";s:11:\"title_about\";s:8:\"About Us\";s:19:\"description_about_1\";s:533:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";s:11:\"title_img_1\";s:10:\"Background\";s:5:\"img_1\";s:86:\"http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-2-1-1.jpg\";s:17:\"description_img_1\";s:177:\"<p>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</p>\";s:11:\"title_img_2\";s:8:\"Shipping\";s:5:\"img_2\";s:83:\"http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-3-.jpg\";s:17:\"description_img_2\";s:153:\"we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\";}', 'yes'),
(218, 'ot_media_post_ID', '7', 'yes'),
(259, 'logosliderwp_basic', '', 'yes'),
(260, 'logosliderwp_responsive', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(261, 'logosliderwp_config', 'a:10:{s:26:\"logosliderwp_settings_loop\";s:3:\"yes\";s:26:\"logosliderwp_settings_dots\";s:3:\"yes\";s:28:\"logosliderwp_settings_margin\";s:2:\"10\";s:30:\"logosliderwp_settings_autoplay\";s:3:\"yes\";s:38:\"logosliderwp_settings_autoplay_timeout\";s:4:\"7000\";s:33:\"logosliderwp_settings_hover_pause\";s:2:\"no\";s:30:\"logosliderwp_settings_lazyload\";s:2:\"no\";s:41:\"logosliderwp_settings_autoplay_slidespeed\";s:3:\"200\";s:46:\"logosliderwp_settings_autoplay_paginationspeed\";s:3:\"800\";s:42:\"logosliderwp_settings_autoplay_rewindspeed\";s:4:\"1000\";}', 'yes'),
(262, 'logosliderwp_style', '', 'yes'),
(312, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'ms_hide_all_ads_until', '1514033106', 'yes'),
(314, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(315, 'ml-slider_children', 'a:0:{}', 'yes'),
(319, 'metaslider_tour_cancelled_on', 'step_view_shortcode', 'yes'),
(320, 'mw_polylang_strings_eltahawi_data', 'a:2:{s:4:\"name\";s:0:\"\";s:7:\"strings\";a:0:{}}', 'yes'),
(326, 'widget_powr_about_us', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(327, 'cptui_post_types', 'a:2:{s:7:\"product\";a:28:{s:4:\"name\";s:7:\"product\";s:5:\"label\";s:8:\"Products\";s:14:\"singular_label\";s:8:\"Products\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:10:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";i:4;s:10:\"trackbacks\";i:5;s:13:\"custom-fields\";i:6;s:9:\"revisions\";i:7;s:6:\"author\";i:8;s:15:\"page-attributes\";i:9;s:12:\"post-formats\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:15:\"logosliderwpcat\";}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:4:\"news\";a:28:{s:4:\"name\";s:4:\"news\";s:5:\"label\";s:4:\"News\";s:14:\"singular_label\";s:4:\"News\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:9:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";i:4;s:13:\"custom-fields\";i:5;s:9:\"revisions\";i:6;s:6:\"author\";i:7;s:15:\"page-attributes\";i:8;s:12:\"post-formats\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(414, 'UPCP_Currency_Symbol_Location', 'Before', 'yes'),
(415, 'UPCP_Price_Filter', 'No', 'yes'),
(416, 'UPCP_Sale_Mode', 'Individual', 'yes'),
(417, 'UPCP_Product_Sort', 'a:2:{i:0;s:4:\"Name\";i:1;s:5:\"Price\";}', 'yes'),
(418, 'UPCP_Product_Search', 'name', 'yes'),
(419, 'UPCP_Custom_Product_Page', 'No', 'yes'),
(420, 'UPCP_Sidebar_Order', 'Normal', 'yes'),
(421, 'UPCP_Apply_Contents_Filter', 'Yes', 'yes'),
(422, 'UPCP_Maintain_Filtering', 'Yes', 'yes'),
(423, 'UPCP_Thumbnail_Support', 'No', 'yes'),
(424, 'UPCP_Show_Category_Descriptions', 'No', 'yes'),
(425, 'UPCP_Show_Catalogue_Information', 'None', 'yes'),
(426, 'UPCP_Display_Category_Image', 'No', 'yes'),
(427, 'UPCP_Display_SubCategory_Image', 'No', 'yes'),
(428, 'UPCP_Overview_Mode', 'None', 'yes'),
(429, 'UPCP_Inner_Filter', 'No', 'yes'),
(430, 'UPCP_Breadcrumbs', 'None', 'yes'),
(431, 'UPCP_Product_Comparison', 'No', 'yes'),
(432, 'UPCP_Product_Inquiry_Form', 'No', 'yes'),
(433, 'UPCP_Product_Inquiry_Cart', 'No', 'yes'),
(434, 'UPCP_Product_Reviews', 'No', 'yes'),
(435, 'UPCP_Catalog_Display_Reviews', 'No', 'yes'),
(436, 'UPCP_Lightbox', 'No', 'yes'),
(437, 'UPCP_Lightbox_Mode', 'No', 'yes'),
(438, 'UPCP_Hidden_Drop_Down_Sidebar_On_Mobile', 'No', 'yes'),
(439, 'UPCP_Infinite_Scroll', 'No', 'yes'),
(440, 'UPCP_Products_Per_Page', '1000000', 'yes'),
(441, 'UPCP_Pagination_Location', 'Top', 'yes'),
(442, 'UPCP_CF_Conversion', 'No', 'yes'),
(443, 'UPCP_Access_Role', 'administrator', 'yes'),
(444, 'UPCP_PP_Grid_Width', '90', 'yes'),
(445, 'UPCP_PP_Grid_Height', '35', 'yes'),
(446, 'UPCP_Top_Bottom_Padding', '10', 'yes'),
(447, 'UPCP_Left_Right_Padding', '10', 'yes'),
(448, 'UPCP_WooCommerce_Sync', 'No', 'yes'),
(449, 'UPCP_WooCommerce_Show_Cart_Count', 'No', 'yes'),
(450, 'UPCP_WooCommerce_Checkout', 'No', 'yes'),
(451, 'UPCP_WooCommerce_Cart_Page', 'Checkout', 'yes'),
(452, 'UPCP_WooCommerce_Product_Page', 'No', 'yes'),
(453, 'UPCP_WooCommerce_Back_Link', 'No', 'yes'),
(454, 'UPCP_SEO_Option', 'None', 'yes'),
(455, 'UPCP_SEO_Integration', 'Add', 'yes'),
(456, 'UPCP_SEO_Title', '[page-title] | [product-name]', 'yes'),
(457, 'UPCP_Update_Breadcrumbs', 'No', 'yes'),
(458, 'UPCP_List_View_Click_Action', 'Expand', 'yes'),
(459, 'UPCP_Details_Icon_Type', 'Default', 'yes'),
(460, 'UPCP_Pagination_Background', 'None', 'yes'),
(461, 'UPCP_Pagination_Border', 'none', 'yes'),
(462, 'UPCP_Pagination_Shadow', 'shadow-none', 'yes'),
(463, 'UPCP_Pagination_Gradient', 'gradient-none', 'yes'),
(464, 'UPCP_Pagination_Font', 'none', 'yes'),
(465, 'UPCP_Sidebar_Title_Collapse', 'no', 'yes'),
(466, 'UPCP_Sidebar_Start_Collapsed', 'no', 'yes'),
(467, 'UPCP_Sidebar_Title_Hover', 'none', 'yes'),
(468, 'UPCP_Sidebar_Checkbox_Style', 'none', 'yes'),
(469, 'UPCP_Categories_Control_Type', 'Checkbox', 'yes'),
(470, 'UPCP_SubCategories_Control_Type', 'Checkbox', 'yes'),
(471, 'UPCP_Tags_Control_Type', 'Checkbox', 'yes'),
(472, 'UPCP_Installed_Skins', 'a:0:{}', 'yes'),
(474, 'UPCP_Full_Version', 'No', 'yes'),
(475, 'UPCP_Color_Scheme', 'Blue', 'yes'),
(476, 'UPCP_Product_Links', 'Same', 'yes'),
(477, 'UPCP_Tag_Logic', 'AND', 'yes'),
(478, 'UPCP_Read_More', 'Yes', 'yes'),
(479, 'UPCP_Pretty_Links', 'No', 'yes'),
(480, 'UPCP_Mobile_SS', 'No', 'yes'),
(481, 'UPCP_Install_Flag', 'No', 'yes'),
(482, 'UPCP_First_Install_Version', '3.6', 'yes'),
(483, 'UPCP_Desc_Chars', '240', 'yes'),
(484, 'UPCP_Case_Insensitive_Search', 'Yes', 'yes'),
(485, 'UPCP_Run_Tutorial', 'No', 'yes'),
(486, 'plugin_error', '', 'yes'),
(487, 'UPCP_Product_Import', 'None', 'yes'),
(488, 'widget_upcp_product_list_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(489, 'widget_upcp_random_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(490, 'widget_upcp_recent_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(491, 'widget_upcp_popular_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(492, 'widget_upcp_search_bar_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(493, 'UPCP_Blog_Content', '<h3>Filter WooCommerce Products by Attribute!</h3>\r\n<p>Want visitors to easily search WooCommerce products by attributes, price, tags and more?</p>\r\n<p><a target=\'_blank\' href=\'http://www.etoilewebdesign.com/product-catalog-woocommerce-sync-tips/\'>Read our tips on making your products filterable with the Ultimate Product Catalog plugin!</a></p>', 'yes'),
(494, 'UPCP_Dash_Cache', '1512905465', 'yes'),
(495, 'UPCP_Hide_Dash_Review_Ask', 'No', 'yes'),
(496, 'UPCP_Changelog_Content', '\r\n<h3>4.3.0</h3>\r\n<br />- Added two new catalogue styles\r\n<br />- Added in \"Accepted values\" to text and text area type custom fields that have input values\r\n\r\n<h3>4.2.27</h3>\r\n<br />- Minor styling updates\r\n\r\n', 'yes'),
(497, 'UPCP_Update_Flag', 'Yes', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(545, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(546, 'widget_product_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(547, 'widget_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(548, 'widget_product_category_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(549, 'widget_product_sort_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(550, 'widget_related_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(551, 'widget_product_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(552, 'ic_epc_tracking_notice', '1', 'yes'),
(554, 'al_product_cat_image_16', '0', 'yes'),
(555, 'al_product-cat_children', 'a:0:{}', 'yes'),
(561, 'al_product-attributes_children', 'a:3:{i:17;a:1:{i:0;i:18;}i:19;a:1:{i:0;i:20;}i:21;a:1:{i:0;i:22;}}', 'yes'),
(566, 'widget_huge_it_catalog_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(570, 'installer_repositories_with_theme', 'a:1:{i:0;s:7:\"toolset\";}', 'yes'),
(572, 'product_catalog_disable_right_click', 'off', 'yes'),
(618, 'tcpc_category_children', 'a:0:{}', 'yes'),
(631, 'tcpc_catalog_children', 'a:0:{}', 'yes'),
(638, 'woocommerce_store_address', '', 'yes'),
(639, 'woocommerce_store_address_2', '', 'yes'),
(640, 'woocommerce_store_city', '', 'yes'),
(641, 'woocommerce_default_country', 'GB', 'yes'),
(642, 'woocommerce_store_postcode', '', 'yes'),
(643, 'woocommerce_allowed_countries', 'all', 'yes'),
(644, 'woocommerce_all_except_countries', '', 'yes'),
(645, 'woocommerce_specific_allowed_countries', '', 'yes'),
(646, 'woocommerce_ship_to_countries', '', 'yes'),
(647, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(648, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(649, 'woocommerce_calc_taxes', 'no', 'yes'),
(650, 'woocommerce_demo_store', 'no', 'yes'),
(651, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(652, 'woocommerce_currency', 'GBP', 'yes'),
(653, 'woocommerce_currency_pos', 'left', 'yes'),
(654, 'woocommerce_price_thousand_sep', ',', 'yes'),
(655, 'woocommerce_price_decimal_sep', '.', 'yes'),
(656, 'woocommerce_price_num_decimals', '2', 'yes'),
(657, 'woocommerce_weight_unit', 'kg', 'yes'),
(658, 'woocommerce_dimension_unit', 'cm', 'yes'),
(659, 'woocommerce_enable_reviews', 'yes', 'yes'),
(660, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(661, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(662, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(663, 'woocommerce_review_rating_required', 'yes', 'no'),
(664, 'woocommerce_shop_page_id', '', 'yes'),
(665, 'woocommerce_shop_page_display', '', 'yes'),
(666, 'woocommerce_category_archive_display', '', 'yes'),
(667, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(668, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(669, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(670, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}', 'yes'),
(671, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}', 'yes'),
(672, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}', 'yes'),
(673, 'woocommerce_manage_stock', 'yes', 'yes'),
(674, 'woocommerce_hold_stock_minutes', '60', 'no'),
(675, 'woocommerce_notify_low_stock', 'yes', 'no'),
(676, 'woocommerce_notify_no_stock', 'yes', 'no'),
(677, 'woocommerce_stock_email_recipient', 'me@ahmedelsayed.me', 'no'),
(678, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(679, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(680, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(681, 'woocommerce_stock_format', '', 'yes'),
(682, 'woocommerce_file_download_method', 'force', 'no'),
(683, 'woocommerce_downloads_require_login', 'no', 'no'),
(684, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(685, 'woocommerce_prices_include_tax', 'no', 'yes'),
(686, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(687, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(688, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(689, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(690, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(691, 'woocommerce_tax_display_cart', 'excl', 'no'),
(692, 'woocommerce_price_display_suffix', '', 'yes'),
(693, 'woocommerce_tax_total_display', 'itemized', 'no'),
(694, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(695, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(696, 'woocommerce_ship_to_destination', 'billing', 'no'),
(697, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(698, 'woocommerce_enable_coupons', 'yes', 'yes'),
(699, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(700, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(701, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(702, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(703, 'woocommerce_cart_page_id', '', 'yes'),
(704, 'woocommerce_checkout_page_id', '', 'yes'),
(705, 'woocommerce_terms_page_id', '', 'no'),
(706, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(707, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(708, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(709, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(710, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(711, 'woocommerce_myaccount_page_id', '', 'yes'),
(712, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(713, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(714, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(715, 'woocommerce_registration_generate_username', 'yes', 'no'),
(716, 'woocommerce_registration_generate_password', 'no', 'no'),
(717, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(718, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(719, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(720, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(721, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(722, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(723, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(724, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(725, 'woocommerce_email_from_name', 'primestore', 'no'),
(726, 'woocommerce_email_from_address', 'me@ahmedelsayed.me', 'no'),
(727, 'woocommerce_email_header_image', '', 'no'),
(728, 'woocommerce_email_footer_text', 'primestore', 'no'),
(729, 'woocommerce_email_base_color', '#96588a', 'no'),
(730, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(731, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(732, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(733, 'woocommerce_api_enabled', 'yes', 'yes'),
(734, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:13:\"theme_support\";}', 'yes'),
(735, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(736, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(737, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(738, 'widget_woocommerce_layered_nav', 'a:2:{i:2;a:4:{s:5:\"title\";s:9:\"Filter by\";s:9:\"attribute\";s:0:\"\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(739, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:15:\"Filter by price\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(740, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(741, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(742, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(743, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(744, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(745, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(746, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(747, 'widget_woocommerce_rating_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Average rating\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(748, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(750, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(751, 'custom_product_tabs_onesixone_data_update', '1', 'yes'),
(752, 'yikes_woo_reusable_products_tabs', 'a:2:{i:1;a:7:{s:9:\"tab_title\";s:2:\"as\";s:8:\"tab_name\";s:3:\"asd\";s:11:\"tab_content\";s:16:\"<p>asdasdasd</p>\";s:6:\"tab_id\";i:1;s:10:\"taxonomies\";a:0:{}s:8:\"tab_slug\";s:2:\"as\";s:10:\"global_tab\";b:0;}i:2;a:7:{s:9:\"tab_title\";s:3:\"sdf\";s:8:\"tab_name\";s:5:\"dfsdf\";s:11:\"tab_content\";s:13:\"<p>dsfsdf</p>\";s:6:\"tab_id\";i:2;s:10:\"taxonomies\";a:0:{}s:8:\"tab_slug\";s:3:\"sdf\";s:10:\"global_tab\";b:0;}}', 'yes'),
(753, 'yikes_woo_reusable_products_tabs_applied', 'a:0:{}', 'yes'),
(757, '_transient_product_query-transient-version', '1513003759', 'yes'),
(758, '_transient_product-transient-version', '1513003759', 'yes'),
(763, 'woocommerce_version', '3.2.5', 'yes'),
(764, 'woocommerce_db_version', '3.2.5', 'yes'),
(777, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1515835825;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(779, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515835841;s:7:\"checked\";a:5:{s:3:\"eat\";s:5:\"1.0.0\";s:8:\"eltahawi\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(782, 'berocket_admin_notices', 'a:2:{i:7;a:1:{i:1514764803;a:2:{i:1513598078;a:1:{s:15:\"SALE_LOAD_MORE2\";a:16:{s:5:\"start\";i:1513598078;s:3:\"end\";i:1514764803;s:4:\"name\";s:15:\"SALE_LOAD_MORE2\";s:4:\"html\";s:352:\"Only <strong>$10</strong> for <strong>Premium</strong> WooCommerce Load More Products!\n            <a class=\"berocket_button\" href=\"http://berocket.com/product/woocommerce-load-more-products\" target=\"_blank\">Buy Now</a>\n             &nbsp; <span>Get your <strong class=\"red\">60% discount</strong> and save <strong>$15</strong> today</span>\n            \";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:910;s:9:\"subscribe\";b:0;s:6:\"closed\";i:0;s:8:\"priority\";i:7;s:6:\"height\";i:50;s:6:\"repeat\";s:7:\"+1 week\";s:11:\"repeatcount\";i:3;s:5:\"image\";a:4:{s:5:\"local\";s:117:\"http://localhost/psolvingegypt/primestore/wp-content/plugins/woocommerce-ajax-filters/includes/../images/60p_sale.jpg\";s:5:\"width\";i:752;s:6:\"height\";i:478;s:5:\"scale\";d:0.10460251046025104;}s:8:\"original\";a:4:{i:0;s:1:\"7\";i:1;s:10:\"1514764803\";i:2;s:10:\"1511281980\";i:3;s:15:\"SALE_LOAD_MORE2\";}}}i:1511281980;a:1:{s:15:\"SALE_LOAD_MORE2\";a:15:{s:5:\"start\";i:1511281980;s:3:\"end\";i:1514764803;s:4:\"name\";s:15:\"SALE_LOAD_MORE2\";s:4:\"html\";s:352:\"Only <strong>$10</strong> for <strong>Premium</strong> WooCommerce Load More Products!\n            <a class=\"berocket_button\" href=\"http://berocket.com/product/woocommerce-load-more-products\" target=\"_blank\">Buy Now</a>\n             &nbsp; <span>Get your <strong class=\"red\">60% discount</strong> and save <strong>$15</strong> today</span>\n            \";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:910;s:9:\"subscribe\";b:0;s:6:\"closed\";i:1;s:8:\"priority\";i:7;s:6:\"height\";i:50;s:6:\"repeat\";s:7:\"+1 week\";s:11:\"repeatcount\";i:4;s:5:\"image\";a:4:{s:5:\"local\";s:117:\"http://localhost/psolvingegypt/primestore/wp-content/plugins/woocommerce-ajax-filters/includes/../images/60p_sale.jpg\";s:5:\"width\";i:752;s:6:\"height\";i:478;s:5:\"scale\";d:0.10460251046025104;}}}}}i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";i:2;s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:127:\"http://localhost/psolvingegypt/primestore/wp-content/plugins/woocommerce-ajax-filters/includes/../images/ad_white_on_orange.png\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.423728813559322;}}}}}}', 'yes'),
(783, 'br_filters_options', 'a:17:{s:19:\"no_products_message\";s:43:\"There are no products meeting your criteria\";s:17:\"no_products_class\";s:0:\"\";s:18:\"products_holder_id\";s:11:\"ul.products\";s:30:\"woocommerce_result_count_class\";s:25:\".woocommerce-result-count\";s:26:\"woocommerce_ordering_class\";s:25:\"form.woocommerce-ordering\";s:28:\"woocommerce_pagination_class\";s:23:\".woocommerce-pagination\";s:15:\"control_sorting\";s:1:\"1\";s:17:\"seo_friendly_urls\";s:1:\"1\";s:16:\"filters_turn_off\";s:1:\"1\";s:15:\"show_all_values\";s:1:\"1\";s:10:\"hide_value\";a:2:{s:1:\"o\";s:1:\"1\";s:3:\"sel\";s:1:\"1\";}s:15:\"first_page_jump\";s:1:\"1\";s:15:\"scroll_shop_top\";s:1:\"1\";s:17:\"ajax_request_load\";s:1:\"1\";s:23:\"ajax_request_load_style\";s:6:\"jquery\";s:9:\"user_func\";a:3:{s:13:\"before_update\";s:0:\"\";s:9:\"on_update\";s:0:\"\";s:12:\"after_update\";s:0:\"\";}s:13:\"br_opened_tab\";s:7:\"general\";}', 'yes'),
(784, 'widget_berocket_aapf_widget', 'a:2:{i:2;a:12:{s:11:\"widget_type\";s:13:\"update_button\";s:5:\"title\";s:6:\"بحث\";s:9:\"attribute\";s:5:\"price\";s:4:\"type\";s:6:\"slider\";s:11:\"product_cat\";s:0:\"\";s:12:\"scroll_theme\";s:4:\"dark\";s:15:\"cat_propagation\";i:0;s:9:\"css_class\";s:0:\"\";s:17:\"text_before_price\";s:0:\"\";s:16:\"text_after_price\";s:0:\"\";s:6:\"height\";s:4:\"auto\";s:8:\"operator\";s:3:\"AND\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(785, 'berocket_current_displayed_notice', '', 'yes'),
(799, 'berocket_last_close_notices_time', '1513496429', 'yes'),
(825, '_transient_orders-transient-version', '1512995422', 'yes'),
(828, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"2\";s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(850, 'wct_general_settings', 'a:6:{s:38:\"enable_product_category_dependent_tabs\";s:1:\"1\";s:28:\"disable_sub_category_display\";s:1:\"1\";s:14:\"common_tabname\";s:0:\"\";s:19:\"common_tab_priority\";s:2:\"30\";s:15:\"hide_empty_tabs\";s:1:\"1\";s:31:\"enable_multiple_tabs_admin_test\";s:1:\"1\";}', 'yes'),
(851, 'widget_aws_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(852, 'aws_settings', 'a:22:{s:5:\"cache\";s:4:\"true\";s:9:\"search_in\";s:0:\"\";s:10:\"outofstock\";s:4:\"true\";s:9:\"stopwords\";s:2223:\"a, about, above, across, after, afterwards, again, against, all, almost, alone, along, already, also, although, always, am, among, amongst, amoungst, amount, an, and, another, any, anyhow, anyone, anything, anyway, anywhere, are, around, as, at, back, be, became, because, become, becomes, becoming, been, before, beforehand, behind, being, below, beside, besides, between, beyond, bill, both, bottom, but, by, call, can, cannot, cant, co, con, could, couldnt, cry, de, describe, detail, do, done, down, due, during, each, eg, eight, either, eleven, else, elsewhere, empty, enough, etc, even, ever, every, everyone, everything, everywhere, except, few, fifteen, fify, fill, find, fire, first, five, for, former, formerly, forty, found, four, from, front, full, further, get, give, go, had, has, hasnt, have, he, hence, her, here, hereafter, hereby, herein, hereupon, hers, herself, him, himself, his, how, however, hundred, ie, if, in, inc, indeed, interest, into, is, it, its, itself, keep, last, latter, latterly, least, less, ltd, made, many, may, me, meanwhile, might, mill, mine, more, moreover, most, mostly, move, much, must, my, myself, name, namely, neither, never, nevertheless, next, nine, no, nobody, none, noone, nor, not, nothing, now, nowhere, of, off, often, on, once, one, only, onto, or, other, others, otherwise, our, ours, ourselves, out, over, own, part, per, perhaps, please, put, rather, re, same, see, seem, seemed, seeming, seems, serious, several, she, should, show, side, since, sincere, six, sixty, so, some, somehow, someone, something, sometime, sometimes, somewhere, still, such, system, take, ten, than, that, the, their, them, themselves, then, thence, there, thereafter, thereby, therefore, therein, thereupon, these, they, thickv, thin, third, this, those, though, three, through, throughout, thru, thus, to, together, too, top, toward, towards, twelve, twenty, two, un, under, until, up, upon, us, very, via, was, we, well, were, what, whatever, when, whence, whenever, where, whereafter, whereas, whereby, wherein, whereupon, wherever, whether, which, while, whither, who, whoever, whole, whom, whose, why, will, with, within, without, would, yet, you, your, yours, yourself, yourselves\";s:13:\"use_analytics\";s:4:\"true\";s:17:\"search_field_text\";s:6:\"Search\";s:14:\"not_found_text\";s:13:\"Nothing found\";s:9:\"min_chars\";s:1:\"1\";s:11:\"show_loader\";s:4:\"true\";s:9:\"show_page\";s:4:\"true\";s:10:\"show_image\";s:4:\"true\";s:12:\"show_excerpt\";s:4:\"true\";s:11:\"desc_source\";s:7:\"content\";s:14:\"excerpt_length\";s:2:\"20\";s:10:\"mark_words\";s:4:\"true\";s:10:\"show_price\";s:4:\"true\";s:9:\"show_cats\";s:4:\"true\";s:9:\"show_tags\";s:4:\"true\";s:9:\"show_sale\";s:4:\"true\";s:8:\"show_sku\";s:4:\"true\";s:10:\"show_stock\";s:4:\"true\";s:11:\"results_num\";s:2:\"10\";}', 'yes'),
(853, 'aws_plugin_ver', '1.29', 'yes'),
(855, 'aws_reindex_version', '1.29', 'yes'),
(867, 'product_number', '20', 'yes'),
(868, 'max_char_per_cat', '20', 'yes'),
(869, 'column_number', '4', 'yes'),
(870, 'order_product_by', 'ASC', 'yes'),
(873, 'custom_global_css', '', 'yes'),
(932, '_transient_shipping-transient-version', '1513003792', 'yes'),
(935, 'product_cat_children', 'a:0:{}', 'yes'),
(951, 'widget_categoryposttab', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(988, 'alm_version', '3.3.1', 'yes'),
(989, 'widget_woof_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(990, 'woof_first_init', '1', 'yes'),
(991, 'woof_set_automatically', '0', 'yes'),
(992, 'woof_autosubmit', '1', 'yes'),
(993, 'woof_show_count', '1', 'yes'),
(994, 'woof_show_count_dynamic', '0', 'yes'),
(995, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(996, 'woof_try_ajax', '0', 'yes'),
(997, 'woof_checkboxes_slide', '1', 'yes'),
(998, 'woof_hide_red_top_panel', '0', 'yes'),
(999, 'woof_sort_terms_checked', '0', 'yes'),
(1000, 'woof_filter_btn_txt', '', 'yes'),
(1001, 'woof_reset_btn_txt', '', 'yes'),
(1002, 'woof_settings', 'a:2:{s:10:\"use_chosen\";i:1;s:14:\"non_latin_mode\";i:1;}', 'yes'),
(1003, 'woof_version', '1.1.8', 'yes'),
(1004, 'woof_woocs_alert', 'a:1:{s:29:\"woocommerce-currency-switcher\";s:0:\"\";}', 'no'),
(1057, 'alm_settings', 'a:10:{s:19:\"_alm_container_type\";s:1:\"2\";s:14:\"_alm_classname\";s:0:\"\";s:16:\"_alm_disable_css\";s:1:\"0\";s:14:\"_alm_btn_color\";s:7:\"default\";s:15:\"_alm_inline_css\";s:1:\"1\";s:18:\"_alm_btn_classname\";s:0:\"\";s:15:\"_alm_scroll_top\";s:1:\"0\";s:20:\"_alm_disable_dynamic\";s:1:\"0\";s:13:\"_alm_hide_btn\";s:1:\"0\";s:18:\"_alm_error_notices\";s:1:\"1\";}', 'yes'),
(1102, 'theme_mods_eat', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1513506148;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:10:\"polylang-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(1126, 'mw_polylang_strings_eat_data', 'a:2:{s:4:\"name\";s:3:\"eat\";s:7:\"strings\";a:0:{}}', 'yes'),
(1145, 'category_children', 'a:0:{}', 'yes'),
(1154, 'searchandfilter_version', '1.2.9', 'yes'),
(1157, 'algolia_application_id', '', 'yes'),
(1158, 'algolia_search_api_key', 'admin@gmail.com', 'yes'),
(1159, 'algolia_api_key', 'admin', 'yes'),
(1160, 'algolia_synced_indices_ids', 'a:0:{}', 'yes'),
(1161, 'algolia_autocomplete_enabled', 'no', 'yes'),
(1162, 'algolia_autocomplete_config', 'a:0:{}', 'yes'),
(1163, 'algolia_override_native_search', 'native', 'yes'),
(1164, 'algolia_index_name_prefix', 'wp_', 'yes'),
(1165, 'algolia_api_is_reachable', 'no', 'yes'),
(1166, 'algolia_powered_by_enabled', 'no', 'yes'),
(1197, 'ms_ads_first_seen_on', '1514101906', 'yes'),
(1421, 'WPLANG', '', 'yes'),
(1422, 'new_admin_email', 'me@ahmedelsayed.me', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1478, 'rewrite_rules', 'a:284:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:52:\"(ar)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(ar)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(ar)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(ar)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(ar)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(ar)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(ar)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(ar)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(ar)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(ar)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(ar)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(ar)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(ar)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&post_format=$matches[1]&embed=true\";s:38:\"(ar)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(ar)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=en&post_format=$matches[1]\";s:40:\"(ar)/product/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"(ar)/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"(ar)/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"(ar)/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"(ar)/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"(ar)/product/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"(ar)/product/([^/]+)/embed/?$\";s:57:\"index.php?lang=$matches[1]&product=$matches[2]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:33:\"(ar)/product/([^/]+)/trackback/?$\";s:51:\"index.php?lang=$matches[1]&product=$matches[2]&tb=1\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:41:\"(ar)/product/([^/]+)/page/?([0-9]{1,})/?$\";s:64:\"index.php?lang=$matches[1]&product=$matches[2]&paged=$matches[3]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:48:\"(ar)/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:64:\"index.php?lang=$matches[1]&product=$matches[2]&cpage=$matches[3]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:37:\"(ar)/product/([^/]+)(?:/([0-9]+))?/?$\";s:63:\"index.php?lang=$matches[1]&product=$matches[2]&page=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:29:\"(ar)/product/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"(ar)/product/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"(ar)/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"(ar)/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"(ar)/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"(ar)/product/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"(ar)/news/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"(ar)/news/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"(ar)/news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"(ar)/news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"(ar)/news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"(ar)/news/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"(ar)/news/([^/]+)/embed/?$\";s:54:\"index.php?lang=$matches[1]&news=$matches[2]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:30:\"(ar)/news/([^/]+)/trackback/?$\";s:48:\"index.php?lang=$matches[1]&news=$matches[2]&tb=1\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:38:\"(ar)/news/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&news=$matches[2]&paged=$matches[3]\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:45:\"(ar)/news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&news=$matches[2]&cpage=$matches[3]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:34:\"(ar)/news/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?lang=$matches[1]&news=$matches[2]&page=$matches[3]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:26:\"(ar)/news/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"(ar)/news/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"(ar)/news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"(ar)/news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"(ar)/news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"(ar)/news/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:40:\"logosliderwp/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:50:\"logosliderwp/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:70:\"logosliderwp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:65:\"logosliderwp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:65:\"logosliderwp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"(ar)/logosliderwp/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:46:\"logosliderwp/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"(ar)/logosliderwp/([^/]+)/embed/?$\";s:62:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&embed=true\";s:29:\"logosliderwp/([^/]+)/embed/?$\";s:45:\"index.php?logosliderwp=$matches[1]&embed=true\";s:38:\"(ar)/logosliderwp/([^/]+)/trackback/?$\";s:56:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&tb=1\";s:33:\"logosliderwp/([^/]+)/trackback/?$\";s:39:\"index.php?logosliderwp=$matches[1]&tb=1\";s:46:\"(ar)/logosliderwp/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&paged=$matches[3]\";s:41:\"logosliderwp/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?logosliderwp=$matches[1]&paged=$matches[2]\";s:53:\"(ar)/logosliderwp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:69:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&cpage=$matches[3]\";s:48:\"logosliderwp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?logosliderwp=$matches[1]&cpage=$matches[2]\";s:42:\"(ar)/logosliderwp/([^/]+)(?:/([0-9]+))?/?$\";s:68:\"index.php?lang=$matches[1]&logosliderwp=$matches[2]&page=$matches[3]\";s:37:\"logosliderwp/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?logosliderwp=$matches[1]&page=$matches[2]\";s:34:\"(ar)/logosliderwp/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:29:\"logosliderwp/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"(ar)/logosliderwp/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:39:\"logosliderwp/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"(ar)/logosliderwp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:59:\"logosliderwp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"(ar)/logosliderwp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:54:\"logosliderwp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"(ar)/logosliderwp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:54:\"logosliderwp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"(ar)/logosliderwp/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:35:\"logosliderwp/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"(ar)/logosliderwpcat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:71:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&feed=$matches[3]\";s:56:\"logosliderwpcat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?logosliderwpcat=$matches[1]&feed=$matches[2]\";s:56:\"(ar)/logosliderwpcat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:71:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&feed=$matches[3]\";s:51:\"logosliderwpcat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?logosliderwpcat=$matches[1]&feed=$matches[2]\";s:37:\"(ar)/logosliderwpcat/([^/]+)/embed/?$\";s:65:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&embed=true\";s:32:\"logosliderwpcat/([^/]+)/embed/?$\";s:48:\"index.php?logosliderwpcat=$matches[1]&embed=true\";s:49:\"(ar)/logosliderwpcat/([^/]+)/page/?([0-9]{1,})/?$\";s:72:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]&paged=$matches[3]\";s:44:\"logosliderwpcat/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?logosliderwpcat=$matches[1]&paged=$matches[2]\";s:31:\"(ar)/logosliderwpcat/([^/]+)/?$\";s:54:\"index.php?lang=$matches[1]&logosliderwpcat=$matches[2]\";s:26:\"logosliderwpcat/([^/]+)/?$\";s:37:\"index.php?logosliderwpcat=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(ar)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:32:\"(ar)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=en&&feed=$matches[1]\";s:13:\"(ar)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:25:\"(ar)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=en&&paged=$matches[1]\";s:7:\"(ar)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(ar)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:41:\"(ar)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=en&&feed=$matches[1]&withcomments=1\";s:22:\"(ar)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=en&&embed=true\";s:49:\"(ar)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:44:\"(ar)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=en&s=$matches[1]&feed=$matches[2]\";s:25:\"(ar)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=en&s=$matches[1]&embed=true\";s:37:\"(ar)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=en&s=$matches[1]&paged=$matches[2]\";s:19:\"(ar)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=en&s=$matches[1]\";s:52:\"(ar)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(ar)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=en&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(ar)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=en&author_name=$matches[1]&embed=true\";s:40:\"(ar)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=en&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(ar)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=en&author_name=$matches[1]\";s:74:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(ar)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(ar)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(ar)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(ar)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(ar)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"(ar)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"(ar)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"(ar)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"(ar)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"(ar)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"(ar)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"(ar)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"(ar)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"(ar)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:32:\"(ar)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(ar)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(ar)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ar)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(ar)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(ar)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(ar)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(ar)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(ar)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(ar)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(ar)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(ar)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(ar)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(1527, 'asl_options', 'a:144:{s:5:\"theme\";s:10:\"simple-red\";s:20:\"override_search_form\";s:1:\"1\";s:24:\"override_woo_search_form\";i:0;s:13:\"keyword_logic\";s:2:\"OR\";s:14:\"triggeronclick\";s:1:\"1\";s:23:\"trigger_on_facet_change\";s:1:\"1\";s:15:\"redirectonclick\";s:1:\"0\";s:17:\"redirect_click_to\";s:12:\"results_page\";s:17:\"redirect_on_enter\";s:1:\"0\";s:17:\"redirect_enter_to\";s:12:\"results_page\";s:19:\"custom_redirect_url\";s:11:\"?s={phrase}\";s:13:\"triggerontype\";s:1:\"1\";s:13:\"searchinposts\";s:1:\"1\";s:13:\"searchinpages\";s:1:\"1\";s:11:\"customtypes\";s:87:\"wpcf7_contact_form|product|news|logosliderwp|ml-slider|ml-slide|option-tree|polylang_mo\";s:13:\"searchintitle\";s:1:\"1\";s:15:\"searchincontent\";s:1:\"1\";s:15:\"searchinexcerpt\";s:1:\"1\";s:20:\"search_in_permalinks\";s:1:\"1\";s:13:\"search_all_cf\";s:1:\"1\";s:12:\"customfields\";s:0:\"\";s:24:\"override_default_results\";s:1:\"0\";s:15:\"override_method\";s:3:\"get\";s:9:\"exactonly\";s:1:\"0\";s:13:\"searchinterms\";s:1:\"0\";s:9:\"charcount\";s:1:\"0\";s:10:\"maxresults\";s:2:\"10\";s:10:\"itemscount\";s:1:\"4\";s:16:\"resultitemheight\";s:4:\"70px\";s:15:\"orderby_primary\";s:14:\"relevance DESC\";s:17:\"orderby_secondary\";s:9:\"date DESC\";s:11:\"show_images\";s:1:\"1\";s:18:\"image_transparency\";i:1;s:14:\"image_bg_color\";s:7:\"#FFFFFF\";s:11:\"image_width\";s:2:\"70\";s:12:\"image_height\";s:2:\"70\";s:19:\"image_crop_location\";s:1:\"c\";s:27:\"image_crop_location_selects\";a:9:{i:0;a:2:{s:6:\"option\";s:13:\"In the center\";s:5:\"value\";s:1:\"c\";}i:1;a:2:{s:6:\"option\";s:9:\"Align top\";s:5:\"value\";s:1:\"t\";}i:2;a:2:{s:6:\"option\";s:15:\"Align top right\";s:5:\"value\";s:2:\"tr\";}i:3;a:2:{s:6:\"option\";s:14:\"Align top left\";s:5:\"value\";s:2:\"tl\";}i:4;a:2:{s:6:\"option\";s:12:\"Align bottom\";s:5:\"value\";s:1:\"b\";}i:5;a:2:{s:6:\"option\";s:18:\"Align bottom right\";s:5:\"value\";s:2:\"br\";}i:6;a:2:{s:6:\"option\";s:17:\"Align bottom left\";s:5:\"value\";s:2:\"bl\";}i:7;a:2:{s:6:\"option\";s:10:\"Align left\";s:5:\"value\";s:1:\"l\";}i:8;a:2:{s:6:\"option\";s:11:\"Align right\";s:5:\"value\";s:1:\"r\";}}s:13:\"image_sources\";a:7:{i:0;a:2:{s:6:\"option\";s:14:\"Featured image\";s:5:\"value\";s:8:\"featured\";}i:1;a:2:{s:6:\"option\";s:12:\"Post Content\";s:5:\"value\";s:7:\"content\";}i:2;a:2:{s:6:\"option\";s:12:\"Post Excerpt\";s:5:\"value\";s:7:\"excerpt\";}i:3;a:2:{s:6:\"option\";s:12:\"Custom field\";s:5:\"value\";s:6:\"custom\";}i:4;a:2:{s:6:\"option\";s:15:\"Page Screenshot\";s:5:\"value\";s:10:\"screenshot\";}i:5;a:2:{s:6:\"option\";s:13:\"Default image\";s:5:\"value\";s:7:\"default\";}i:6;a:2:{s:6:\"option\";s:8:\"Disabled\";s:5:\"value\";s:8:\"disabled\";}}s:13:\"image_source1\";s:8:\"featured\";s:13:\"image_source2\";s:7:\"content\";s:13:\"image_source3\";s:7:\"excerpt\";s:13:\"image_source4\";s:6:\"custom\";s:13:\"image_source5\";s:7:\"default\";s:13:\"image_default\";s:93:\"http://localhost/psolvingegypt/primestore/wp-content/plugins/ajax-search-lite/img/default.jpg\";s:21:\"image_source_featured\";s:8:\"original\";s:18:\"image_custom_field\";s:0:\"\";s:12:\"use_timthumb\";i:1;s:29:\"show_frontend_search_settings\";s:1:\"1\";s:16:\"showexactmatches\";s:1:\"1\";s:17:\"showsearchinposts\";s:1:\"1\";s:17:\"showsearchinpages\";s:1:\"1\";s:17:\"showsearchintitle\";s:1:\"1\";s:19:\"showsearchincontent\";s:1:\"1\";s:15:\"showcustomtypes\";s:0:\"\";s:20:\"showsearchincomments\";i:1;s:19:\"showsearchinexcerpt\";i:1;s:19:\"showsearchinbpusers\";i:0;s:20:\"showsearchinbpgroups\";i:0;s:20:\"showsearchinbpforums\";i:0;s:16:\"exactmatchestext\";s:18:\"Exact matches only\";s:17:\"searchinpoststext\";s:15:\"Search in posts\";s:17:\"searchinpagestext\";s:15:\"Search in pages\";s:17:\"searchintitletext\";s:15:\"Search in title\";s:19:\"searchincontenttext\";s:17:\"Search in content\";s:20:\"searchincommentstext\";s:18:\"Search in comments\";s:19:\"searchinexcerpttext\";s:17:\"Search in excerpt\";s:19:\"searchinbpuserstext\";s:15:\"Search in users\";s:20:\"searchinbpgroupstext\";s:16:\"Search in groups\";s:20:\"searchinbpforumstext\";s:16:\"Search in forums\";s:22:\"showsearchincategories\";s:1:\"1\";s:17:\"showuncategorised\";s:1:\"1\";s:20:\"exsearchincategories\";s:0:\"\";s:26:\"exsearchincategoriesheight\";i:200;s:22:\"showsearchintaxonomies\";i:1;s:9:\"showterms\";s:0:\"\";s:23:\"showseparatefilterboxes\";i:1;s:24:\"exsearchintaxonomiestext\";s:9:\"Filter by\";s:24:\"exsearchincategoriestext\";s:20:\"Filter by Categories\";s:9:\"box_width\";s:4:\"100%\";s:10:\"box_margin\";s:22:\"||0px||0px||0px||0px||\";s:15:\"resultstype_def\";a:4:{i:0;a:2:{s:6:\"option\";s:16:\"Vertical Results\";s:5:\"value\";s:8:\"vertical\";}i:1;a:2:{s:6:\"option\";s:18:\"Horizontal Results\";s:5:\"value\";s:10:\"horizontal\";}i:2;a:2:{s:6:\"option\";s:16:\"Isotopic Results\";s:5:\"value\";s:8:\"isotopic\";}i:3;a:2:{s:6:\"option\";s:22:\"Polaroid style Results\";s:5:\"value\";s:8:\"polaroid\";}}s:11:\"resultstype\";s:8:\"vertical\";s:19:\"resultsposition_def\";a:2:{i:0;a:2:{s:6:\"option\";s:20:\"Hover - over content\";s:5:\"value\";s:5:\"hover\";}i:1;a:2:{s:6:\"option\";s:22:\"Block - pushes content\";s:5:\"value\";s:5:\"block\";}}s:15:\"resultsposition\";s:5:\"hover\";s:16:\"resultsmargintop\";s:4:\"12px\";s:17:\"defaultsearchtext\";s:13:\"Search here..\";s:15:\"showmoreresults\";s:1:\"0\";s:19:\"showmoreresultstext\";s:15:\"More results...\";s:12:\"showmorefont\";s:151:\"font-weight:normal;font-family:--g--Open Sans;color:rgba(5, 94, 148, 1);font-size:12px;line-height:15px;text-shadow:0px 0px 0px rgba(255, 255, 255, 0);\";s:19:\"results_click_blank\";s:1:\"0\";s:17:\"scroll_to_results\";s:1:\"0\";s:19:\"resultareaclickable\";s:1:\"1\";s:23:\"close_on_document_click\";s:1:\"1\";s:15:\"show_close_icon\";s:1:\"1\";s:10:\"showauthor\";s:1:\"0\";s:8:\"showdate\";s:1:\"0\";s:15:\"showdescription\";s:1:\"1\";s:17:\"descriptionlength\";s:3:\"100\";s:19:\"description_context\";s:1:\"0\";s:13:\"noresultstext\";s:11:\"No results!\";s:14:\"didyoumeantext\";s:13:\"Did you mean:\";s:12:\"kw_highlight\";s:1:\"0\";s:24:\"kw_highlight_whole_words\";s:1:\"1\";s:15:\"highlight_color\";s:20:\"rgba(217, 49, 43, 1)\";s:18:\"highlight_bg_color\";s:22:\"rgba(238, 238, 238, 1)\";s:12:\"autocomplete\";s:1:\"1\";s:14:\"kw_suggestions\";s:1:\"1\";s:9:\"kw_length\";s:2:\"60\";s:8:\"kw_count\";s:2:\"10\";s:14:\"kw_google_lang\";s:2:\"en\";s:13:\"kw_exceptions\";s:0:\"\";s:12:\"shortcode_op\";s:6:\"remove\";s:16:\"striptagsexclude\";s:0:\"\";s:12:\"runshortcode\";i:1;s:14:\"stripshortcode\";i:0;s:19:\"pageswithcategories\";i:0;s:10:\"titlefield\";s:1:\"0\";s:13:\"titlefield_cf\";s:0:\"\";s:16:\"descriptionfield\";s:1:\"0\";s:19:\"descriptionfield_cf\";s:0:\"\";s:18:\"exclude_woo_hidden\";s:1:\"1\";s:17:\"excludecategories\";s:0:\"\";s:12:\"excludeposts\";s:0:\"\";s:18:\"wpml_compatibility\";s:1:\"1\";s:22:\"polylang_compatibility\";s:1:\"1\";s:21:\"classname-customtypes\";s:23:\"wpdreamsCustomPostTypes\";s:8:\"wdcfs_11\";s:0:\"\";s:22:\"classname-customfields\";s:20:\"wpdreamsCustomFields\";s:10:\"asl_submit\";s:1:\"1\";s:10:\"submit_asl\";s:13:\"Save options!\";s:25:\"classname-showcustomtypes\";s:31:\"wpdreamsCustomPostTypesEditable\";s:30:\"classname-exsearchincategories\";s:18:\"wpdreamsCategories\";s:7:\"topleft\";s:3:\"0px\";s:11:\"bottomright\";s:3:\"0px\";s:8:\"topright\";s:3:\"0px\";s:10:\"bottomleft\";s:3:\"0px\";s:27:\"classname-excludecategories\";s:18:\"wpdreamsCategories\";s:10:\"sett_tabid\";s:1:\"1\";s:20:\"selected-customtypes\";a:8:{i:0;s:18:\"wpcf7_contact_form\";i:1;s:7:\"product\";i:2;s:4:\"news\";i:3;s:12:\"logosliderwp\";i:4;s:9:\"ml-slider\";i:5;s:8:\"ml-slide\";i:6;s:11:\"option-tree\";i:7;s:11:\"polylang_mo\";}s:21:\"selected-customfields\";N;s:24:\"selected-showcustomtypes\";N;s:29:\"selected-exsearchincategories\";N;s:26:\"selected-excludecategories\";N;}', 'yes'),
(1528, 'asl_version', '4721', 'yes'),
(1529, 'widget_ajaxsearchlitewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1530, 'asl_debug_data', 'a:2:{s:11:\"asl_options\";a:144:{s:5:\"theme\";s:10:\"simple-red\";s:20:\"override_search_form\";s:1:\"1\";s:24:\"override_woo_search_form\";i:0;s:13:\"keyword_logic\";s:2:\"OR\";s:14:\"triggeronclick\";s:1:\"1\";s:23:\"trigger_on_facet_change\";s:1:\"1\";s:15:\"redirectonclick\";s:1:\"0\";s:17:\"redirect_click_to\";s:12:\"results_page\";s:17:\"redirect_on_enter\";s:1:\"0\";s:17:\"redirect_enter_to\";s:12:\"results_page\";s:19:\"custom_redirect_url\";s:11:\"?s={phrase}\";s:13:\"triggerontype\";s:1:\"1\";s:13:\"searchinposts\";s:1:\"1\";s:13:\"searchinpages\";s:1:\"1\";s:11:\"customtypes\";s:87:\"wpcf7_contact_form|product|news|logosliderwp|ml-slider|ml-slide|option-tree|polylang_mo\";s:13:\"searchintitle\";s:1:\"1\";s:15:\"searchincontent\";s:1:\"1\";s:15:\"searchinexcerpt\";s:1:\"1\";s:20:\"search_in_permalinks\";s:1:\"1\";s:13:\"search_all_cf\";s:1:\"1\";s:12:\"customfields\";s:0:\"\";s:24:\"override_default_results\";s:1:\"0\";s:15:\"override_method\";s:3:\"get\";s:9:\"exactonly\";s:1:\"0\";s:13:\"searchinterms\";s:1:\"0\";s:9:\"charcount\";s:1:\"0\";s:10:\"maxresults\";s:2:\"10\";s:10:\"itemscount\";s:1:\"4\";s:16:\"resultitemheight\";s:4:\"70px\";s:15:\"orderby_primary\";s:14:\"relevance DESC\";s:17:\"orderby_secondary\";s:9:\"date DESC\";s:11:\"show_images\";s:1:\"1\";s:18:\"image_transparency\";i:1;s:14:\"image_bg_color\";s:7:\"#FFFFFF\";s:11:\"image_width\";s:2:\"70\";s:12:\"image_height\";s:2:\"70\";s:19:\"image_crop_location\";s:1:\"c\";s:27:\"image_crop_location_selects\";a:9:{i:0;a:2:{s:6:\"option\";s:13:\"In the center\";s:5:\"value\";s:1:\"c\";}i:1;a:2:{s:6:\"option\";s:9:\"Align top\";s:5:\"value\";s:1:\"t\";}i:2;a:2:{s:6:\"option\";s:15:\"Align top right\";s:5:\"value\";s:2:\"tr\";}i:3;a:2:{s:6:\"option\";s:14:\"Align top left\";s:5:\"value\";s:2:\"tl\";}i:4;a:2:{s:6:\"option\";s:12:\"Align bottom\";s:5:\"value\";s:1:\"b\";}i:5;a:2:{s:6:\"option\";s:18:\"Align bottom right\";s:5:\"value\";s:2:\"br\";}i:6;a:2:{s:6:\"option\";s:17:\"Align bottom left\";s:5:\"value\";s:2:\"bl\";}i:7;a:2:{s:6:\"option\";s:10:\"Align left\";s:5:\"value\";s:1:\"l\";}i:8;a:2:{s:6:\"option\";s:11:\"Align right\";s:5:\"value\";s:1:\"r\";}}s:13:\"image_sources\";a:7:{i:0;a:2:{s:6:\"option\";s:14:\"Featured image\";s:5:\"value\";s:8:\"featured\";}i:1;a:2:{s:6:\"option\";s:12:\"Post Content\";s:5:\"value\";s:7:\"content\";}i:2;a:2:{s:6:\"option\";s:12:\"Post Excerpt\";s:5:\"value\";s:7:\"excerpt\";}i:3;a:2:{s:6:\"option\";s:12:\"Custom field\";s:5:\"value\";s:6:\"custom\";}i:4;a:2:{s:6:\"option\";s:15:\"Page Screenshot\";s:5:\"value\";s:10:\"screenshot\";}i:5;a:2:{s:6:\"option\";s:13:\"Default image\";s:5:\"value\";s:7:\"default\";}i:6;a:2:{s:6:\"option\";s:8:\"Disabled\";s:5:\"value\";s:8:\"disabled\";}}s:13:\"image_source1\";s:8:\"featured\";s:13:\"image_source2\";s:7:\"content\";s:13:\"image_source3\";s:7:\"excerpt\";s:13:\"image_source4\";s:6:\"custom\";s:13:\"image_source5\";s:7:\"default\";s:13:\"image_default\";s:93:\"http://localhost/psolvingegypt/primestore/wp-content/plugins/ajax-search-lite/img/default.jpg\";s:21:\"image_source_featured\";s:8:\"original\";s:18:\"image_custom_field\";s:0:\"\";s:12:\"use_timthumb\";i:1;s:29:\"show_frontend_search_settings\";s:1:\"1\";s:16:\"showexactmatches\";s:1:\"1\";s:17:\"showsearchinposts\";s:1:\"1\";s:17:\"showsearchinpages\";s:1:\"1\";s:17:\"showsearchintitle\";s:1:\"1\";s:19:\"showsearchincontent\";s:1:\"1\";s:15:\"showcustomtypes\";s:0:\"\";s:20:\"showsearchincomments\";i:1;s:19:\"showsearchinexcerpt\";i:1;s:19:\"showsearchinbpusers\";i:0;s:20:\"showsearchinbpgroups\";i:0;s:20:\"showsearchinbpforums\";i:0;s:16:\"exactmatchestext\";s:18:\"Exact matches only\";s:17:\"searchinpoststext\";s:15:\"Search in posts\";s:17:\"searchinpagestext\";s:15:\"Search in pages\";s:17:\"searchintitletext\";s:15:\"Search in title\";s:19:\"searchincontenttext\";s:17:\"Search in content\";s:20:\"searchincommentstext\";s:18:\"Search in comments\";s:19:\"searchinexcerpttext\";s:17:\"Search in excerpt\";s:19:\"searchinbpuserstext\";s:15:\"Search in users\";s:20:\"searchinbpgroupstext\";s:16:\"Search in groups\";s:20:\"searchinbpforumstext\";s:16:\"Search in forums\";s:22:\"showsearchincategories\";s:1:\"1\";s:17:\"showuncategorised\";s:1:\"1\";s:20:\"exsearchincategories\";s:0:\"\";s:26:\"exsearchincategoriesheight\";i:200;s:22:\"showsearchintaxonomies\";i:1;s:9:\"showterms\";s:0:\"\";s:23:\"showseparatefilterboxes\";i:1;s:24:\"exsearchintaxonomiestext\";s:9:\"Filter by\";s:24:\"exsearchincategoriestext\";s:20:\"Filter by Categories\";s:9:\"box_width\";s:4:\"100%\";s:10:\"box_margin\";s:22:\"||0px||0px||0px||0px||\";s:15:\"resultstype_def\";a:4:{i:0;a:2:{s:6:\"option\";s:16:\"Vertical Results\";s:5:\"value\";s:8:\"vertical\";}i:1;a:2:{s:6:\"option\";s:18:\"Horizontal Results\";s:5:\"value\";s:10:\"horizontal\";}i:2;a:2:{s:6:\"option\";s:16:\"Isotopic Results\";s:5:\"value\";s:8:\"isotopic\";}i:3;a:2:{s:6:\"option\";s:22:\"Polaroid style Results\";s:5:\"value\";s:8:\"polaroid\";}}s:11:\"resultstype\";s:8:\"vertical\";s:19:\"resultsposition_def\";a:2:{i:0;a:2:{s:6:\"option\";s:20:\"Hover - over content\";s:5:\"value\";s:5:\"hover\";}i:1;a:2:{s:6:\"option\";s:22:\"Block - pushes content\";s:5:\"value\";s:5:\"block\";}}s:15:\"resultsposition\";s:5:\"hover\";s:16:\"resultsmargintop\";s:4:\"12px\";s:17:\"defaultsearchtext\";s:13:\"Search here..\";s:15:\"showmoreresults\";s:1:\"0\";s:19:\"showmoreresultstext\";s:15:\"More results...\";s:12:\"showmorefont\";s:151:\"font-weight:normal;font-family:--g--Open Sans;color:rgba(5, 94, 148, 1);font-size:12px;line-height:15px;text-shadow:0px 0px 0px rgba(255, 255, 255, 0);\";s:19:\"results_click_blank\";s:1:\"0\";s:17:\"scroll_to_results\";s:1:\"0\";s:19:\"resultareaclickable\";s:1:\"1\";s:23:\"close_on_document_click\";s:1:\"1\";s:15:\"show_close_icon\";s:1:\"1\";s:10:\"showauthor\";s:1:\"0\";s:8:\"showdate\";s:1:\"0\";s:15:\"showdescription\";s:1:\"1\";s:17:\"descriptionlength\";s:3:\"100\";s:19:\"description_context\";s:1:\"0\";s:13:\"noresultstext\";s:11:\"No results!\";s:14:\"didyoumeantext\";s:13:\"Did you mean:\";s:12:\"kw_highlight\";s:1:\"0\";s:24:\"kw_highlight_whole_words\";s:1:\"1\";s:15:\"highlight_color\";s:20:\"rgba(217, 49, 43, 1)\";s:18:\"highlight_bg_color\";s:22:\"rgba(238, 238, 238, 1)\";s:12:\"autocomplete\";s:1:\"1\";s:14:\"kw_suggestions\";s:1:\"1\";s:9:\"kw_length\";s:2:\"60\";s:8:\"kw_count\";s:2:\"10\";s:14:\"kw_google_lang\";s:2:\"en\";s:13:\"kw_exceptions\";s:0:\"\";s:12:\"shortcode_op\";s:6:\"remove\";s:16:\"striptagsexclude\";s:0:\"\";s:12:\"runshortcode\";i:1;s:14:\"stripshortcode\";i:0;s:19:\"pageswithcategories\";i:0;s:10:\"titlefield\";s:1:\"0\";s:13:\"titlefield_cf\";s:0:\"\";s:16:\"descriptionfield\";s:1:\"0\";s:19:\"descriptionfield_cf\";s:0:\"\";s:18:\"exclude_woo_hidden\";s:1:\"1\";s:17:\"excludecategories\";s:0:\"\";s:12:\"excludeposts\";s:0:\"\";s:18:\"wpml_compatibility\";s:1:\"1\";s:22:\"polylang_compatibility\";s:1:\"1\";s:21:\"classname-customtypes\";s:23:\"wpdreamsCustomPostTypes\";s:8:\"wdcfs_11\";s:0:\"\";s:22:\"classname-customfields\";s:20:\"wpdreamsCustomFields\";s:10:\"asl_submit\";s:1:\"1\";s:10:\"submit_asl\";s:13:\"Save options!\";s:25:\"classname-showcustomtypes\";s:31:\"wpdreamsCustomPostTypesEditable\";s:30:\"classname-exsearchincategories\";s:18:\"wpdreamsCategories\";s:7:\"topleft\";s:3:\"0px\";s:11:\"bottomright\";s:3:\"0px\";s:8:\"topright\";s:3:\"0px\";s:10:\"bottomleft\";s:3:\"0px\";s:27:\"classname-excludecategories\";s:18:\"wpdreamsCategories\";s:10:\"sett_tabid\";s:1:\"1\";s:20:\"selected-customtypes\";a:8:{i:0;s:18:\"wpcf7_contact_form\";i:1;s:7:\"product\";i:2;s:4:\"news\";i:3;s:12:\"logosliderwp\";i:4;s:9:\"ml-slider\";i:5;s:8:\"ml-slide\";i:6;s:11:\"option-tree\";i:7;s:11:\"polylang_mo\";}s:21:\"selected-customfields\";N;s:24:\"selected-showcustomtypes\";N;s:29:\"selected-exsearchincategories\";N;s:26:\"selected-excludecategories\";N;}s:7:\"queries\";a:5:{i:0;a:4:{s:6:\"phrase\";s:2:\"ص\";s:7:\"options\";a:18:{s:15:\"qtranslate_lang\";s:1:\"0\";s:13:\"polylang_lang\";s:2:\"ar\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:9:\"customset\";a:8:{i:0;s:18:\"wpcf7_contact_form\";i:1;s:7:\"product\";i:2;s:4:\"news\";i:3;s:12:\"logosliderwp\";i:4;s:9:\"ml-slider\";i:5;s:8:\"ml-slide\";i:6;s:11:\"option-tree\";i:7;s:11:\"polylang_mo\";}s:11:\"categoryset\";a:1:{i:0;s:1:\"1\";}s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:7:\"termset\";a:0:{}}s:5:\"query\";s:2263:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			\'\' as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                (wp_posts.post_title LIKE \'ص%\')\r\n                 then 30 else 0 end) + (case when\r\n                (wp_posts.post_title LIKE \'%ص%\')\r\n                 then 10 else 0 end) + (case when\r\n                  (wp_posts.post_title LIKE \'%ص%\')\r\n                   then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%ص%\')\r\n                     then 8 else 0 end) + (case when\r\n                (wp_posts.post_content LIKE \'%ص%\')\r\n                 then 8 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%ص%\')\r\n                     then 7 else 0 end) + (case when\r\n                (wp_posts.post_excerpt LIKE \'%ص%\')\r\n                 then 7 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			LEFT JOIN wp_postmeta ON wp_postmeta.post_id = wp_posts.ID\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\',\'wpcf7_contact_form\',\'product\',\'news\',\'logosliderwp\',\'ml-slider\',\'ml-slide\',\'option-tree\',\'polylang_mo\') )\r\n                \r\n            AND ( wp_posts.post_status = \'publish\')\r\n            AND (1)\r\n            AND (( wp_posts.post_title LIKE \'%ص%\' ) OR ( wp_posts.post_content LIKE \'%ص%\' ) OR ( wp_posts.post_name LIKE \'%ص%\' ) OR ( wp_posts.post_excerpt LIKE \'%ص%\' ) OR (  wp_postmeta.meta_value LIKE \'%ص%\' ))\r\n            AND (wp_posts.ID NOT IN (-55))\r\n            AND ( (1) )\r\n             AND (\r\n                    wp_posts.ID IN ( SELECT DISTINCT(tr.object_id)\r\n                        FROM wp_term_relationships AS tr\r\n                        LEFT JOIN wp_term_taxonomy as tt ON (tr.term_taxonomy_id = tt.term_taxonomy_id AND tt.taxonomy = \'language\')\r\n                        WHERE tt.term_id = 2\r\n			         ) )\r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:4;}i:1;a:4:{s:6:\"phrase\";s:1:\"d\";s:7:\"options\";a:18:{s:15:\"qtranslate_lang\";s:1:\"0\";s:13:\"polylang_lang\";s:2:\"ar\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:9:\"customset\";a:8:{i:0;s:18:\"wpcf7_contact_form\";i:1;s:7:\"product\";i:2;s:4:\"news\";i:3;s:12:\"logosliderwp\";i:4;s:9:\"ml-slider\";i:5;s:8:\"ml-slide\";i:6;s:11:\"option-tree\";i:7;s:11:\"polylang_mo\";}s:11:\"categoryset\";a:1:{i:0;s:1:\"1\";}s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:7:\"termset\";a:0:{}}s:5:\"query\";s:2251:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			\'\' as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                (wp_posts.post_title LIKE \'d%\')\r\n                 then 30 else 0 end) + (case when\r\n                (wp_posts.post_title LIKE \'%d%\')\r\n                 then 10 else 0 end) + (case when\r\n                  (wp_posts.post_title LIKE \'%d%\')\r\n                   then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%d%\')\r\n                     then 8 else 0 end) + (case when\r\n                (wp_posts.post_content LIKE \'%d%\')\r\n                 then 8 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%d%\')\r\n                     then 7 else 0 end) + (case when\r\n                (wp_posts.post_excerpt LIKE \'%d%\')\r\n                 then 7 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			LEFT JOIN wp_postmeta ON wp_postmeta.post_id = wp_posts.ID\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\',\'wpcf7_contact_form\',\'product\',\'news\',\'logosliderwp\',\'ml-slider\',\'ml-slide\',\'option-tree\',\'polylang_mo\') )\r\n                \r\n            AND ( wp_posts.post_status = \'publish\')\r\n            AND (1)\r\n            AND (( wp_posts.post_title LIKE \'%d%\' ) OR ( wp_posts.post_content LIKE \'%d%\' ) OR ( wp_posts.post_name LIKE \'%d%\' ) OR ( wp_posts.post_excerpt LIKE \'%d%\' ) OR (  wp_postmeta.meta_value LIKE \'%d%\' ))\r\n            AND (wp_posts.ID NOT IN (-55))\r\n            AND ( (1) )\r\n             AND (\r\n                    wp_posts.ID IN ( SELECT DISTINCT(tr.object_id)\r\n                        FROM wp_term_relationships AS tr\r\n                        LEFT JOIN wp_term_taxonomy as tt ON (tr.term_taxonomy_id = tt.term_taxonomy_id AND tt.taxonomy = \'language\')\r\n                        WHERE tt.term_id = 2\r\n			         ) )\r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:10;}i:2;a:4:{s:6:\"phrase\";s:1:\"s\";s:7:\"options\";a:18:{s:15:\"qtranslate_lang\";s:1:\"0\";s:13:\"polylang_lang\";s:2:\"en\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:9:\"customset\";a:8:{i:0;s:18:\"wpcf7_contact_form\";i:1;s:7:\"product\";i:2;s:4:\"news\";i:3;s:12:\"logosliderwp\";i:4;s:9:\"ml-slider\";i:5;s:8:\"ml-slide\";i:6;s:11:\"option-tree\";i:7;s:11:\"polylang_mo\";}s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:11:\"categoryset\";a:0:{}s:7:\"termset\";a:0:{}}s:5:\"query\";s:2251:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			\'\' as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                (wp_posts.post_title LIKE \'s%\')\r\n                 then 30 else 0 end) + (case when\r\n                (wp_posts.post_title LIKE \'%s%\')\r\n                 then 10 else 0 end) + (case when\r\n                  (wp_posts.post_title LIKE \'%s%\')\r\n                   then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%s%\')\r\n                     then 8 else 0 end) + (case when\r\n                (wp_posts.post_content LIKE \'%s%\')\r\n                 then 8 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%s%\')\r\n                     then 7 else 0 end) + (case when\r\n                (wp_posts.post_excerpt LIKE \'%s%\')\r\n                 then 7 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			LEFT JOIN wp_postmeta ON wp_postmeta.post_id = wp_posts.ID\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\',\'wpcf7_contact_form\',\'product\',\'news\',\'logosliderwp\',\'ml-slider\',\'ml-slide\',\'option-tree\',\'polylang_mo\') )\r\n                \r\n            AND ( wp_posts.post_status = \'publish\')\r\n            AND (1)\r\n            AND (( wp_posts.post_title LIKE \'%s%\' ) OR ( wp_posts.post_content LIKE \'%s%\' ) OR ( wp_posts.post_name LIKE \'%s%\' ) OR ( wp_posts.post_excerpt LIKE \'%s%\' ) OR (  wp_postmeta.meta_value LIKE \'%s%\' ))\r\n            AND (wp_posts.ID NOT IN (-55))\r\n            AND ( (1) )\r\n             AND (\r\n                    wp_posts.ID IN ( SELECT DISTINCT(tr.object_id)\r\n                        FROM wp_term_relationships AS tr\r\n                        LEFT JOIN wp_term_taxonomy as tt ON (tr.term_taxonomy_id = tt.term_taxonomy_id AND tt.taxonomy = \'language\')\r\n                        WHERE tt.term_id = 5\r\n			         ) )\r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:10;}i:3;a:4:{s:6:\"phrase\";s:1:\";\";s:7:\"options\";a:18:{s:15:\"qtranslate_lang\";s:1:\"0\";s:13:\"polylang_lang\";s:2:\"ar\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:9:\"customset\";a:8:{i:0;s:18:\"wpcf7_contact_form\";i:1;s:7:\"product\";i:2;s:4:\"news\";i:3;s:12:\"logosliderwp\";i:4;s:9:\"ml-slider\";i:5;s:8:\"ml-slide\";i:6;s:11:\"option-tree\";i:7;s:11:\"polylang_mo\";}s:11:\"categoryset\";a:1:{i:0;s:1:\"1\";}s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:7:\"termset\";a:0:{}}s:5:\"query\";s:2251:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			\'\' as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                (wp_posts.post_title LIKE \';%\')\r\n                 then 30 else 0 end) + (case when\r\n                (wp_posts.post_title LIKE \'%;%\')\r\n                 then 10 else 0 end) + (case when\r\n                  (wp_posts.post_title LIKE \'%;%\')\r\n                   then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%;%\')\r\n                     then 8 else 0 end) + (case when\r\n                (wp_posts.post_content LIKE \'%;%\')\r\n                 then 8 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%;%\')\r\n                     then 7 else 0 end) + (case when\r\n                (wp_posts.post_excerpt LIKE \'%;%\')\r\n                 then 7 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			LEFT JOIN wp_postmeta ON wp_postmeta.post_id = wp_posts.ID\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\',\'wpcf7_contact_form\',\'product\',\'news\',\'logosliderwp\',\'ml-slider\',\'ml-slide\',\'option-tree\',\'polylang_mo\') )\r\n                \r\n            AND ( wp_posts.post_status = \'publish\')\r\n            AND (1)\r\n            AND (( wp_posts.post_title LIKE \'%;%\' ) OR ( wp_posts.post_content LIKE \'%;%\' ) OR ( wp_posts.post_name LIKE \'%;%\' ) OR ( wp_posts.post_excerpt LIKE \'%;%\' ) OR (  wp_postmeta.meta_value LIKE \'%;%\' ))\r\n            AND (wp_posts.ID NOT IN (-55))\r\n            AND ( (1) )\r\n             AND (\r\n                    wp_posts.ID IN ( SELECT DISTINCT(tr.object_id)\r\n                        FROM wp_term_relationships AS tr\r\n                        LEFT JOIN wp_term_taxonomy as tt ON (tr.term_taxonomy_id = tt.term_taxonomy_id AND tt.taxonomy = \'language\')\r\n                        WHERE tt.term_id = 2\r\n			         ) )\r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:1;}i:4;a:4:{s:6:\"phrase\";s:0:\"\";s:7:\"options\";a:18:{s:15:\"qtranslate_lang\";s:1:\"0\";s:13:\"polylang_lang\";s:2:\"ar\";s:11:\"set_intitle\";b:1;s:13:\"set_incontent\";b:1;s:13:\"set_inexcerpt\";b:1;s:11:\"set_inposts\";b:1;s:11:\"set_inpages\";b:1;s:9:\"customset\";a:8:{i:0;s:18:\"wpcf7_contact_form\";i:1;s:7:\"product\";i:2;s:4:\"news\";i:3;s:12:\"logosliderwp\";i:4;s:9:\"ml-slider\";i:5;s:8:\"ml-slide\";i:6;s:11:\"option-tree\";i:7;s:11:\"polylang_mo\";}s:11:\"categoryset\";a:1:{i:0;s:1:\"1\";}s:13:\"set_exactonly\";b:0;s:14:\"set_incomments\";b:0;s:13:\"searchinterms\";b:0;s:13:\"set_inbpusers\";b:0;s:14:\"set_inbpgroups\";b:0;s:14:\"set_inbpforums\";b:0;s:10:\"maxresults\";s:2:\"10\";s:8:\"do_group\";b:1;s:7:\"termset\";a:0:{}}s:5:\"query\";s:2239:\"\r\n    	SELECT\r\n			\r\n			wp_posts.post_title as title,\r\n			wp_posts.ID as id,\r\n			wp_posts.post_date as date,\r\n			wp_posts.post_content as content,\r\n			\'\' as excerpt,\r\n			\'pagepost\' as content_type,\r\n			(SELECT\r\n				wp_users.display_name as author\r\n				FROM wp_users\r\n				WHERE wp_users.ID = wp_posts.post_author\r\n			) as author,\r\n			\'\' as ttid,\r\n			wp_posts.post_type as post_type,\r\n			((case when\r\n                (wp_posts.post_title LIKE \'%\')\r\n                 then 30 else 0 end) + (case when\r\n                (wp_posts.post_title LIKE \'%%\')\r\n                 then 10 else 0 end) + (case when\r\n                  (wp_posts.post_title LIKE \'%%\')\r\n                   then 10 else 0 end) + (case when\r\n                    (wp_posts.post_content LIKE \'%%\')\r\n                     then 8 else 0 end) + (case when\r\n                (wp_posts.post_content LIKE \'%%\')\r\n                 then 8 else 0 end) + (case when\r\n                    (wp_posts.post_excerpt LIKE \'%%\')\r\n                     then 7 else 0 end) + (case when\r\n                (wp_posts.post_excerpt LIKE \'%%\')\r\n                 then 7 else 0 end)) as relevance\r\n    	FROM wp_posts\r\n			LEFT JOIN wp_postmeta ON wp_postmeta.post_id = wp_posts.ID\r\n			\r\n			\r\n    	WHERE\r\n                ( wp_posts.post_type IN (\'post\',\'page\',\'wpcf7_contact_form\',\'product\',\'news\',\'logosliderwp\',\'ml-slider\',\'ml-slide\',\'option-tree\',\'polylang_mo\') )\r\n                \r\n            AND ( wp_posts.post_status = \'publish\')\r\n            AND (1)\r\n            AND (( wp_posts.post_title LIKE \'%%\' ) OR ( wp_posts.post_content LIKE \'%%\' ) OR ( wp_posts.post_name LIKE \'%%\' ) OR ( wp_posts.post_excerpt LIKE \'%%\' ) OR (  wp_postmeta.meta_value LIKE \'%%\' ))\r\n            AND (wp_posts.ID NOT IN (-55))\r\n            AND ( (1) )\r\n             AND (\r\n                    wp_posts.ID IN ( SELECT DISTINCT(tr.object_id)\r\n                        FROM wp_term_relationships AS tr\r\n                        LEFT JOIN wp_term_taxonomy as tt ON (tr.term_taxonomy_id = tt.term_taxonomy_id AND tt.taxonomy = \'language\')\r\n                        WHERE tt.term_id = 2\r\n			         ) )\r\n            \r\n        GROUP BY\r\n          	 wp_posts.ID\r\n        ORDER BY\r\n        	 relevance DESC, date DESC, id DESC\r\n        LIMIT 10\";s:7:\"results\";i:10;}}}', 'yes'),
(1708, '_site_transient_timeout_browser_c89882595a0b6fb065599d15013dcdb5', '1516091325', 'no'),
(1709, '_site_transient_browser_c89882595a0b6fb065599d15013dcdb5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1741, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:\"term_id\";i:2;s:4:\"name\";s:14:\"العربية\";s:4:\"slug\";s:2:\"ar\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:2;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"ar\";s:6:\"parent\";i:0;s:5:\"count\";i:29;s:10:\"tl_term_id\";i:3;s:19:\"tl_term_taxonomy_id\";i:3;s:8:\"tl_count\";i:4;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:1;s:8:\"flag_url\";s:82:\"http://localhost/psolvingegypt/primestore/wp-content/plugins/polylang/flags/eg.png\";s:4:\"flag\";s:700:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFjSURBVHjaYnzLwPCPAQr+oZJw9AdJECAAx2FuAwAIA7EUlGycrRiKJe4jorBlr2F3z8QuO1KoiCGLDDDh7wLuOU8AsYCUMvz/++QpA1Dp379AUZAeIPn7N0jdLyDj179fv4DiTLKyQKsAAoiFzdSUSVOLQVQMajxQz9+/v3/+Zrb9xrSf9d/vX0Czmf6ALGQUFWXbvh0ggBj//v3LyMgIsuf/fwYw/Pfv74/X8xh+P2GVqGD4z/IfBoDKPn36BBBATBDvQsXA9K+XXX9+fvr39+evZy3/kQHQ0//+AQQQE5pqMPjz+8//H7/5//3/jaL+P9DyfwABxKivr19YWPj69Wug2/6Awe/ff1ICXwG1TVrKD+QCXQgkgbLi4uJtbW0AAQRyfVpa2r17936DwS8wgDBAJJgFNASoRUVF5eLFiwABBApWoJGSkpJAKaAoyAIwAFv1G2LnXxgAKgYIIJIRQIABAP7XTmNIudjEAAAAAElFTkSuQmCC\" title=\"العربية\" alt=\"العربية\" />\";s:8:\"home_url\";s:45:\"http://localhost/psolvingegypt/primestore/ar/\";s:10:\"search_url\";s:45:\"http://localhost/psolvingegypt/primestore/ar/\";s:4:\"host\";N;s:5:\"mo_id\";s:1:\"5\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"eg\";}i:1;a:24:{s:7:\"term_id\";i:5;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:5;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_US\";s:6:\"parent\";i:0;s:5:\"count\";i:58;s:10:\"tl_term_id\";i:6;s:19:\"tl_term_taxonomy_id\";i:6;s:8:\"tl_count\";i:9;s:6:\"locale\";R:33;s:6:\"is_rtl\";i:0;s:8:\"flag_url\";s:82:\"http://localhost/psolvingegypt/primestore/wp-content/plugins/polylang/flags/us.png\";s:4:\"flag\";s:878:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHzSURBVHjaYkxOP8IAB//+Mfz7w8Dwi4HhP5CcJb/n/7evb16/APL/gRFQDiAAw3JuAgAIBEDQ/iswEERjGzBQLEru97ll0g0+3HvqMn1SpqlqGsZMsZsIe0SICA5gt5a/AGIEarCPtFh+6N/ffwxA9OvP/7//QYwff/6fZahmePeB4dNHhi+fGb59Y4zyvHHmCEAAAW3YDzQYaJJ93a+vX79aVf58//69fvEPlpIfnz59+vDhw7t37968efP3b/SXL59OnjwIEEAsDP+YgY53b2b89++/awvLn98MDi2cVxl+/vl6mituCtBghi9f/v/48e/XL86krj9XzwEEEENy8g6gu22rfn78+NGs5Ofr16+ZC58+fvyYwX8rxOxXr169fPny+fPn1//93bJlBUAAsQADZMEBxj9/GBxb2P/9+S/R8u3vzxuyaX8ZHv3j8/YGms3w8ycQARmi2eE37t4ACCDGR4/uSkrKAS35B3TT////wADOgLOBIaXIyjBlwxKAAGKRXjCB0SOEaeu+/y9fMnz4AHQxCP348R/o+l+//sMZQBNLEvif3AcIIMZbty7Ly6t9ZmXl+fXj/38GoHH/UcGfP79//BBiYHjy9+8/oUkNAAHEwt1V/vI/KBY/QSISFqM/GBg+MzB8A6PfYC5EFiDAABqgW776MP0rAAAAAElFTkSuQmCC\" title=\"English\" alt=\"English\" />\";s:8:\"home_url\";s:42:\"http://localhost/psolvingegypt/primestore/\";s:10:\"search_url\";s:42:\"http://localhost/psolvingegypt/primestore/\";s:4:\"host\";N;s:5:\"mo_id\";s:1:\"6\";s:13:\"page_on_front\";N;s:14:\"page_for_posts\";N;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"us\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1744, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1515836115;s:7:\"checked\";a:27:{s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";s:5:\"1.2.4\";s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:43:\"advanced-woo-search/advanced-woo-search.php\";s:4:\"1.31\";s:33:\"ajax-load-more/ajax-load-more.php\";s:5:\"3.3.1\";s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:32:\"category-and-post-tab/plugin.php\";s:3:\"1.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"4.9.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.6\";s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";s:5:\"1.1.3\";s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";s:5:\"1.6.3\";s:9:\"hello.php\";s:3:\"1.6\";s:57:\"load-more-products-for-woocommerce/load-more-products.php\";s:7:\"1.0.9.1\";s:33:\"logo-slider-wp/logo-slider-wp.php\";s:5:\"1.3.2\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.6.6\";s:21:\"polylang/polylang.php\";s:5:\"2.2.7\";s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";s:3:\"3.5\";s:31:\"search-filter/search-filter.php\";s:5:\"1.2.9\";s:54:\"search-by-algolia-instant-relevant-results/algolia.php\";s:5:\"2.8.1\";s:87:\"show-all-products-shortcode-for-woocommerce/show-all-products-shortcode-woocommerce.php\";s:3:\"1.0\";s:41:\"tc-product-catalog/tc-product-catalog.php\";s:3:\"1.2\";s:61:\"theme-translation-for-polylang/polylang-theme-translation.php\";s:5:\"2.0.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.2.5\";s:51:\"woocommerce-custom-tabs/woocommerce-custom-tabs.php\";s:6:\"1.0.23\";s:53:\"woocommerce-product-tabs/woocommerce-product-tabs.php\";s:5:\"2.0.0\";s:37:\"woocommerce-products-filter/index.php\";s:5:\"1.1.8\";s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";s:5:\"1.6.2\";s:37:\"wpml-to-polylang/wpml-to-polylang.php\";s:5:\"0.2.4\";}s:8:\"response\";a:5:{s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:60:\"w.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs\";s:4:\"slug\";s:46:\"yikes-inc-easy-custom-woocommerce-product-tabs\";s:6:\"plugin\";s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";s:11:\"new_version\";s:5:\"1.6.4\";s:3:\"url\";s:77:\"https://wordpress.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs/\";s:7:\"package\";s:95:\"https://downloads.wordpress.org/plugin/yikes-inc-easy-custom-woocommerce-product-tabs.1.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:99:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/icon-128x128.png?rev=1558461\";s:2:\"2x\";s:99:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/icon-256x256.png?rev=1558461\";s:7:\"default\";s:99:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/icon-256x256.png?rev=1558461\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:102:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/banner-1544x500.png?rev=1558461\";s:2:\"1x\";s:101:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/banner-772x250.png?rev=1558478\";s:7:\"default\";s:102:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/banner-1544x500.png?rev=1558461\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.6.7\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.6.7.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-128x128.png?rev=1000654\";s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1000654\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654\";s:7:\"default\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1686195\";s:7:\"default\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"2.2.8\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.2.2.8.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:7:\"default\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";s:7:\"default\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:54:\"search-by-algolia-instant-relevant-results/algolia.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:56:\"w.org/plugins/search-by-algolia-instant-relevant-results\";s:4:\"slug\";s:42:\"search-by-algolia-instant-relevant-results\";s:6:\"plugin\";s:54:\"search-by-algolia-instant-relevant-results/algolia.php\";s:11:\"new_version\";s:5:\"2.9.1\";s:3:\"url\";s:73:\"https://wordpress.org/plugins/search-by-algolia-instant-relevant-results/\";s:7:\"package\";s:91:\"https://downloads.wordpress.org/plugin/search-by-algolia-instant-relevant-results.2.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:95:\"https://ps.w.org/search-by-algolia-instant-relevant-results/assets/icon-128x128.png?rev=1658410\";s:2:\"2x\";s:95:\"https://ps.w.org/search-by-algolia-instant-relevant-results/assets/icon-256x256.png?rev=1658410\";s:7:\"default\";s:95:\"https://ps.w.org/search-by-algolia-instant-relevant-results/assets/icon-256x256.png?rev=1658410\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:98:\"https://ps.w.org/search-by-algolia-instant-relevant-results/assets/banner-1544x500.png?rev=1659773\";s:2:\"1x\";s:97:\"https://ps.w.org/search-by-algolia-instant-relevant-results/assets/banner-772x250.png?rev=1659773\";s:7:\"default\";s:98:\"https://ps.w.org/search-by-algolia-instant-relevant-results/assets/banner-1544x500.png?rev=1659773\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:61:\"theme-translation-for-polylang/polylang-theme-translation.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:44:\"w.org/plugins/theme-translation-for-polylang\";s:4:\"slug\";s:30:\"theme-translation-for-polylang\";s:6:\"plugin\";s:61:\"theme-translation-for-polylang/polylang-theme-translation.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/theme-translation-for-polylang/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/theme-translation-for-polylang.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:83:\"https://ps.w.org/theme-translation-for-polylang/assets/icon-128x128.png?rev=1431912\";s:2:\"2x\";s:83:\"https://ps.w.org/theme-translation-for-polylang/assets/icon-256x256.png?rev=1431912\";s:7:\"default\";s:83:\"https://ps.w.org/theme-translation-for-polylang/assets/icon-256x256.png?rev=1431912\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:20:{s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/woocommerce-ajax-filters\";s:4:\"slug\";s:24:\"woocommerce-ajax-filters\";s:6:\"plugin\";s:48:\"woocommerce-ajax-filters/woocommerce-filters.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/woocommerce-ajax-filters/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/woocommerce-ajax-filters.1.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:77:\"https://ps.w.org/woocommerce-ajax-filters/assets/icon-128x128.png?rev=1720711\";s:2:\"2x\";s:77:\"https://ps.w.org/woocommerce-ajax-filters/assets/icon-256x256.png?rev=1720711\";s:7:\"default\";s:77:\"https://ps.w.org/woocommerce-ajax-filters/assets/icon-256x256.png?rev=1720711\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-ajax-filters/assets/banner-772x250.png?rev=1720711\";s:7:\"default\";s:79:\"https://ps.w.org/woocommerce-ajax-filters/assets/banner-772x250.png?rev=1720711\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"ajax-load-more/ajax-load-more.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/ajax-load-more\";s:4:\"slug\";s:14:\"ajax-load-more\";s:6:\"plugin\";s:33:\"ajax-load-more/ajax-load-more.php\";s:11:\"new_version\";s:5:\"3.3.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/ajax-load-more/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/ajax-load-more.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/ajax-load-more/assets/icon-128x128.png?rev=1667395\";s:2:\"2x\";s:67:\"https://ps.w.org/ajax-load-more/assets/icon-256x256.png?rev=1631559\";s:7:\"default\";s:67:\"https://ps.w.org/ajax-load-more/assets/icon-256x256.png?rev=1631559\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/ajax-load-more/assets/banner-772x250.jpg?rev=1667398\";s:7:\"default\";s:69:\"https://ps.w.org/ajax-load-more/assets/banner-772x250.jpg?rev=1667398\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:32:\"category-and-post-tab/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/category-and-post-tab\";s:4:\"slug\";s:21:\"category-and-post-tab\";s:6:\"plugin\";s:32:\"category-and-post-tab/plugin.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/category-and-post-tab/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/category-and-post-tab.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/category-and-post-tab/assets/icon-128x128.png?rev=1437260\";s:7:\"default\";s:74:\"https://ps.w.org/category-and-post-tab/assets/icon-128x128.png?rev=1437260\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:76:\"https://ps.w.org/category-and-post-tab/assets/banner-772x250.png?rev=1437260\";s:7:\"default\";s:76:\"https://ps.w.org/category-and-post-tab/assets/banner-772x250.png?rev=1437260\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/custom-post-type-widgets\";s:4:\"slug\";s:24:\"custom-post-type-widgets\";s:6:\"plugin\";s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/custom-post-type-widgets/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/custom-post-type-widgets.1.1.3.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"load-more-products-for-woocommerce/load-more-products.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/load-more-products-for-woocommerce\";s:4:\"slug\";s:34:\"load-more-products-for-woocommerce\";s:6:\"plugin\";s:57:\"load-more-products-for-woocommerce/load-more-products.php\";s:11:\"new_version\";s:7:\"1.0.9.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/load-more-products-for-woocommerce/\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/plugin/load-more-products-for-woocommerce.1.0.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:87:\"https://ps.w.org/load-more-products-for-woocommerce/assets/icon-128x128.png?rev=1732143\";s:2:\"2x\";s:87:\"https://ps.w.org/load-more-products-for-woocommerce/assets/icon-256x256.png?rev=1732143\";s:7:\"default\";s:87:\"https://ps.w.org/load-more-products-for-woocommerce/assets/icon-256x256.png?rev=1732143\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:89:\"https://ps.w.org/load-more-products-for-woocommerce/assets/banner-772x250.png?rev=1732142\";s:7:\"default\";s:89:\"https://ps.w.org/load-more-products-for-woocommerce/assets/banner-772x250.png?rev=1732142\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"logo-slider-wp/logo-slider-wp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/logo-slider-wp\";s:4:\"slug\";s:14:\"logo-slider-wp\";s:6:\"plugin\";s:33:\"logo-slider-wp/logo-slider-wp.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/logo-slider-wp/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/logo-slider-wp.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/logo-slider-wp/assets/icon-128x128.png?rev=1488003\";s:2:\"2x\";s:67:\"https://ps.w.org/logo-slider-wp/assets/icon-256x256.png?rev=1488003\";s:7:\"default\";s:67:\"https://ps.w.org/logo-slider-wp/assets/icon-256x256.png?rev=1488003\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/logo-slider-wp/assets/banner-772x250.png?rev=1488003\";s:7:\"default\";s:69:\"https://ps.w.org/logo-slider-wp/assets/banner-772x250.png?rev=1488003\";}s:11:\"banners_rtl\";a:0:{}}s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/polylang-theme-strings\";s:4:\"slug\";s:22:\"polylang-theme-strings\";s:6:\"plugin\";s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/polylang-theme-strings/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/polylang-theme-strings.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-128x128.png?rev=1428148\";s:2:\"2x\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-256x256.png?rev=1428148\";s:7:\"default\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-256x256.png?rev=1428148\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:31:\"search-filter/search-filter.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/search-filter\";s:4:\"slug\";s:13:\"search-filter\";s:6:\"plugin\";s:31:\"search-filter/search-filter.php\";s:11:\"new_version\";s:5:\"1.2.9\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/search-filter/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/search-filter.1.2.9.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/search-filter/assets/banner-772x250.png?rev=776041\";s:7:\"default\";s:67:\"https://ps.w.org/search-filter/assets/banner-772x250.png?rev=776041\";}s:11:\"banners_rtl\";a:0:{}}s:87:\"show-all-products-shortcode-for-woocommerce/show-all-products-shortcode-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/show-all-products-shortcode-for-woocommerce\";s:4:\"slug\";s:43:\"show-all-products-shortcode-for-woocommerce\";s:6:\"plugin\";s:87:\"show-all-products-shortcode-for-woocommerce/show-all-products-shortcode-woocommerce.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/show-all-products-shortcode-for-woocommerce/\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/plugin/show-all-products-shortcode-for-woocommerce.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:41:\"tc-product-catalog/tc-product-catalog.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/tc-product-catalog\";s:4:\"slug\";s:18:\"tc-product-catalog\";s:6:\"plugin\";s:41:\"tc-product-catalog/tc-product-catalog.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/tc-product-catalog/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/tc-product-catalog.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:71:\"https://ps.w.org/tc-product-catalog/assets/icon-128x128.jpg?rev=1584398\";s:7:\"default\";s:71:\"https://ps.w.org/tc-product-catalog/assets/icon-128x128.jpg?rev=1584398\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:73:\"https://ps.w.org/tc-product-catalog/assets/banner-772x250.jpg?rev=1584398\";s:7:\"default\";s:73:\"https://ps.w.org/tc-product-catalog/assets/banner-772x250.jpg?rev=1584398\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"woocommerce-custom-tabs/woocommerce-custom-tabs.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/woocommerce-custom-tabs\";s:4:\"slug\";s:23:\"woocommerce-custom-tabs\";s:6:\"plugin\";s:51:\"woocommerce-custom-tabs/woocommerce-custom-tabs.php\";s:11:\"new_version\";s:6:\"1.0.23\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/woocommerce-custom-tabs/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/woocommerce-custom-tabs.1.0.23.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-custom-tabs/assets/icon-256x256.jpg?rev=1693208\";s:7:\"default\";s:76:\"https://ps.w.org/woocommerce-custom-tabs/assets/icon-256x256.jpg?rev=1693208\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-custom-tabs/assets/banner-1544x500.jpg?rev=1693210\";s:2:\"1x\";s:78:\"https://ps.w.org/woocommerce-custom-tabs/assets/banner-772x250.jpg?rev=1693209\";s:7:\"default\";s:79:\"https://ps.w.org/woocommerce-custom-tabs/assets/banner-1544x500.jpg?rev=1693210\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"woocommerce-product-tabs/woocommerce-product-tabs.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/woocommerce-product-tabs\";s:4:\"slug\";s:24:\"woocommerce-product-tabs\";s:6:\"plugin\";s:53:\"woocommerce-product-tabs/woocommerce-product-tabs.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/woocommerce-product-tabs/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/woocommerce-product-tabs.2.0.0.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-product-tabs/assets/banner-772x250.png?rev=1019679\";s:7:\"default\";s:79:\"https://ps.w.org/woocommerce-product-tabs/assets/banner-772x250.png?rev=1019679\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"woocommerce-products-filter/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/woocommerce-products-filter\";s:4:\"slug\";s:27:\"woocommerce-products-filter\";s:6:\"plugin\";s:37:\"woocommerce-products-filter/index.php\";s:11:\"new_version\";s:5:\"1.1.8\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/woocommerce-products-filter/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-128x128.png?rev=1208072\";s:2:\"2x\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-256x256.png?rev=1208073\";s:7:\"default\";s:80:\"https://ps.w.org/woocommerce-products-filter/assets/icon-256x256.png?rev=1208073\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:82:\"https://ps.w.org/woocommerce-products-filter/assets/banner-772x250.png?rev=1208068\";s:7:\"default\";s:82:\"https://ps.w.org/woocommerce-products-filter/assets/banner-772x250.png?rev=1208068\";}s:11:\"banners_rtl\";a:0:{}}s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/woo-tabbed-category-product-listing\";s:4:\"slug\";s:35:\"woo-tabbed-category-product-listing\";s:6:\"plugin\";s:75:\"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/woo-tabbed-category-product-listing/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/woo-tabbed-category-product-listing.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/woo-tabbed-category-product-listing/assets/icon-256x256.jpg?rev=1718935\";s:7:\"default\";s:88:\"https://ps.w.org/woo-tabbed-category-product-listing/assets/icon-256x256.jpg?rev=1718935\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:90:\"https://ps.w.org/woo-tabbed-category-product-listing/assets/banner-772x250.jpg?rev=1718935\";s:7:\"default\";s:90:\"https://ps.w.org/woo-tabbed-category-product-listing/assets/banner-772x250.jpg?rev=1718935\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"wpml-to-polylang/wpml-to-polylang.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wpml-to-polylang\";s:4:\"slug\";s:16:\"wpml-to-polylang\";s:6:\"plugin\";s:37:\"wpml-to-polylang/wpml-to-polylang.php\";s:11:\"new_version\";s:5:\"0.2.4\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wpml-to-polylang/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wpml-to-polylang.0.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:69:\"https://ps.w.org/wpml-to-polylang/assets/icon-128x128.png?rev=1272595\";s:2:\"2x\";s:69:\"https://ps.w.org/wpml-to-polylang/assets/icon-256x256.png?rev=1272595\";s:7:\"default\";s:69:\"https://ps.w.org/wpml-to-polylang/assets/icon-256x256.png?rev=1272595\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/wpml-to-polylang/assets/banner-1544x500.png?rev=1405284\";s:2:\"1x\";s:71:\"https://ps.w.org/wpml-to-polylang/assets/banner-772x250.png?rev=1405284\";s:7:\"default\";s:72:\"https://ps.w.org/wpml-to-polylang/assets/banner-1544x500.png?rev=1405284\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_form', '<div class=\"col-md-6\">\n <div class=\"form-group\">\n    <div class=\"input-group\"> \n    [text* your-name class:form-control ] \n<span class=\"input-group-addon\"><i class=\"fa fa-user\"></i></span>\n      </div>\n     </div>\n   </div>\n<div class=\"col-md-6\">\n      <div class=\"form-group\">\n             <div class=\"input-group\"> \n    [email* your-email class:form-control ]\n<span class=\"input-group-addon\"><i class=\"fa fa-envelope\"></i></span>\n</div>\n  </div>\n    </div>\n<div class=\"col-md-12\">\n      <div class=\"form-group\">\n        <div class=\"input-group\"> \n    [textarea your-message class:form-control ] \n<span class=\"input-group-addon v-align-t\"><i class=\"fa fa-pencil\"></i></span>\n</div>\n      </div>\n   </div>\n\n[submit class:site-button  \"Send\"]'),
(3, 4, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <info@tahawybridge.com>\";s:9:\"recipient\";s:21:\"info@tahawybridge.com\";s:4:\"body\";s:39:\"[your-name]\n[your-email]\n[your-message]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:31:\"primestore <me@ahmedelsayed.me>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:132:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/primestore)\";s:18:\"additional_headers\";s:28:\"Reply-To: me@ahmedelsayed.me\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 4, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 5, '_pll_strings_translations', 'a:20:{i:0;a:2:{i:0;s:21:\"info@tahawybridge.com\";i:1;s:21:\"info@tahawybridge.com\";}i:1;a:2:{i:0;s:103:\"ZIP CODE 232-0014 Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";i:1;s:103:\"ZIP CODE 232-0014 Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";}i:2;a:2:{i:0;s:85:\"Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";i:1;s:91:\"Tahawy Global Bridge Co., Ltd \r\n<br>410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";}i:3;a:2:{i:0;s:533:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";i:1;s:533:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";}i:4;a:2:{i:0;s:349:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.\";i:1;s:528:\"نرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\";}i:5;a:2:{i:0;s:8:\"About Us\";i:1;s:17:\"عن الشركة\";}i:6;a:2:{i:0;s:356:\"<p>Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.</p>\";i:1;s:535:\"<p>نرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.</p>\";}i:7;a:2:{i:0;s:1337:\"<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><strong>Background: </strong>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</div>\r\n<div>\r\n<div> </div>\r\n<div>\r\n<div>\r\n<div><b>Shipping</b><strong>: </strong>we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.</div>\r\n</div>\r\n</div>\r\n</div>\";i:1;s:1337:\"<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><strong>Background: </strong>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</div>\r\n<div>\r\n<div> </div>\r\n<div>\r\n<div>\r\n<div><b>Shipping</b><strong>: </strong>we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.</div>\r\n</div>\r\n</div>\r\n</div>\";}i:8;a:2:{i:0;s:632:\"<span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\r\n\";i:1;s:630:\"<span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\";}i:9;a:2:{i:0;s:542:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\r\n\";i:1;s:540:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\";}i:10;a:2:{i:0;s:533:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";i:1;s:541:\"<p>\r\nنرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة \r\nهي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\r\n</p>\";}i:11;a:2:{i:0;s:10:\"Background\";i:1;s:8:\"نبذة\";}i:12;a:2:{i:0;s:177:\"<p>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</p>\";i:1;s:330:\"<p>تأسست شركة جسر الطحاوي عام 2017 بمقاطعة توتشيجي باليابان ومسجله بالغرفة التجاريه بوزارة التجارة اليابانية بأسم Tahawy Global Bridge برقم 000000 تحت اشراف المدير التنفيذي / محمود واصف الطحاوي</p>\";}i:13;a:2:{i:0;s:8:\"Shipping\";i:1;s:23:\"سياسة الشركة\";}i:14;a:2:{i:0;s:153:\"we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\";i:1;s:207:\"<p>جسر الطحاوي  تصدير المعدات الثقيله بجودة عالية واسعار تنافسية للاسواق الدولية وخاصة الاسواق بالبلاد العربية </p>\";}i:15;a:2:{i:0;s:657:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\";i:1;s:657:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\";}i:16;a:2:{i:0;s:201:\"Construct Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec odios Suspe ndisse cursus. cons ectetur elit. Vestibulum nec odios Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec.\";i:1;s:201:\"Construct Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec odios Suspe ndisse cursus. cons ectetur elit. Vestibulum nec odios Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec.\";}i:17;a:2:{i:0;s:664:\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\";i:1;s:664:\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\";}i:18;a:2:{i:0;s:18:\"+8190-6002-2831   \";i:1;s:16:\"8190-6002-2831 +\";}i:19;a:2:{i:0;s:14:\"+8128-333-1473\";i:1;s:15:\"8128-333-1473 +\";}}'),
(9, 6, '_pll_strings_translations', 'a:20:{i:0;a:2:{i:0;s:21:\"info@tahawybridge.com\";i:1;s:21:\"info@tahawybridge.com\";}i:1;a:2:{i:0;s:103:\"ZIP CODE 232-0014 Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";i:1;s:103:\"ZIP CODE 232-0014 Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";}i:2;a:2:{i:0;s:85:\"Tahawy Global Bridge Co., Ltd 410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";i:1;s:91:\"Tahawy Global Bridge Co., Ltd \r\n<br>410 YNS Haitsu, 1201-1 Kizawa, Oyama-shi, Tochigi-JAPAN\";}i:3;a:2:{i:0;s:533:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";i:1;s:533:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";}i:4;a:2:{i:0;s:349:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.\";i:1;s:349:\"Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.\";}i:5;a:2:{i:0;s:8:\"About Us\";i:1;s:8:\"About Us\";}i:6;a:2:{i:0;s:356:\"<p>Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.</p>\";i:1;s:356:\"<p>Tahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required.</p>\";}i:7;a:2:{i:0;s:1337:\"<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><strong>Background: </strong>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</div>\r\n<div>\r\n<div> </div>\r\n<div>\r\n<div>\r\n<div><b>Shipping</b><strong>: </strong>we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.</div>\r\n</div>\r\n</div>\r\n</div>\";i:1;s:1337:\"<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\"> </span></div>\r\n<div><strong>Background: </strong>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</div>\r\n<div>\r\n<div> </div>\r\n<div>\r\n<div>\r\n<div><b>Shipping</b><strong>: </strong>we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.</div>\r\n</div>\r\n</div>\r\n</div>\";}i:8;a:2:{i:0;s:632:\"<span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\r\n\";i:1;s:630:\"<span style=\"color: #000000; font-family: Arial, Verdana, Geneva, Helvetica, sans-serif;\">ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\";}i:9;a:2:{i:0;s:542:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\r\n\";i:1;s:540:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</span>\";}i:10;a:2:{i:0;s:533:\"ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\";i:1;s:540:\"<p>ahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.</p>\";}i:11;a:2:{i:0;s:10:\"Background\";i:1;s:10:\"Background\";}i:12;a:2:{i:0;s:177:\"<p>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</p>\";i:1;s:177:\"<p>The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.</p>\";}i:13;a:2:{i:0;s:8:\"Shipping\";i:1;s:8:\"Shipping\";}i:14;a:2:{i:0;s:153:\"we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\";i:1;s:158:\"<p>we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.</p>\";}i:15;a:2:{i:0;s:657:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\";i:1;s:657:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius\";}i:16;a:2:{i:0;s:201:\"Construct Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec odios Suspe ndisse cursus. cons ectetur elit. Vestibulum nec odios Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec.\";i:1;s:201:\"Construct Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec odios Suspe ndisse cursus. cons ectetur elit. Vestibulum nec odios Lorem ipsum dolor sit amet, cons ectetur elit. Vestibulum nec.\";}i:17;a:2:{i:0;s:664:\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\";i:1;s:664:\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus.\r\n\r\nLorem ipsum dolor consectetur adipiscing Fusce varius euismod lacus eget feugiat rorem ipsum dolor consectetur Fusce varius</p>\";}i:18;a:2:{i:0;s:18:\"+8190-6002-2831   \";i:1;s:15:\"+8190-6002-2831\";}i:19;a:2:{i:0;s:14:\"+8128-333-1473\";i:1;s:14:\"+8128-333-1473\";}}'),
(10, 8, '_wp_attached_file', '2017/12/logo.png'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:203;s:4:\"file\";s:16:\"2017/12/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1512570503:1'),
(14, 10, '_wp_attached_file', '2017/12/logo2.jpg'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:150;s:4:\"file\";s:17:\"2017/12/logo2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo2-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 9, '_thumbnail_id', '10'),
(17, 9, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(18, 11, '_edit_last', '1'),
(19, 11, '_edit_lock', '1512570520:1'),
(20, 11, '_thumbnail_id', '10'),
(21, 11, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(22, 12, '_edit_last', '1'),
(23, 12, '_edit_lock', '1512570530:1'),
(24, 12, '_thumbnail_id', '10'),
(25, 12, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(26, 13, '_edit_last', '1'),
(27, 13, '_edit_lock', '1512826347:1'),
(28, 13, '_thumbnail_id', '10'),
(29, 13, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(30, 14, '_edit_last', '1'),
(31, 14, '_edit_lock', '1512826337:1'),
(32, 14, '_thumbnail_id', '10'),
(33, 14, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(34, 15, '_edit_last', '1'),
(35, 15, '_edit_lock', '1512826326:1'),
(36, 15, '_thumbnail_id', '10'),
(37, 15, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(38, 17, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:4:\"1200\";s:6:\"height\";s:3:\"550\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(39, 18, '_wp_attached_file', '2017/12/bg2.jpg'),
(40, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:15:\"2017/12/bg2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:15:\"bg2-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x400\";a:4:{s:4:\"file\";s:16:\"bg2-1200x400.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:16:\"bg2-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(41, 19, '_wp_attached_file', '2017/12/bg3.jpg'),
(42, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:15:\"2017/12/bg3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg3-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:15:\"bg3-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x400\";a:4:{s:4:\"file\";s:16:\"bg3-1200x400.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:16:\"bg3-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(43, 20, '_wp_attached_file', '2017/12/bg4.jpg'),
(44, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:15:\"2017/12/bg4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg4-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bg4-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bg4-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:15:\"bg4-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x400\";a:4:{s:4:\"file\";s:16:\"bg4-1200x400.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:16:\"bg4-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(45, 21, '_thumbnail_id', '236'),
(46, 21, '_wp_attachment_image_alt', ''),
(47, 21, 'ml-slider_type', 'image'),
(48, 22, '_thumbnail_id', '237'),
(49, 22, '_wp_attachment_image_alt', ''),
(50, 22, 'ml-slider_type', 'image'),
(51, 23, '_thumbnail_id', '228'),
(52, 23, '_wp_attachment_image_alt', ''),
(53, 23, 'ml-slider_type', 'image'),
(54, 18, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:79:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg2-700x300.jpg\";s:4:\"file\";s:15:\"bg2-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x400\";a:5:{s:4:\"path\";s:80:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg2-1200x400.jpg\";s:4:\"file\";s:16:\"bg2-1200x400.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:80:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg2-1200x500.jpg\";s:4:\"file\";s:16:\"bg2-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(55, 19, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:79:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg3-700x300.jpg\";s:4:\"file\";s:15:\"bg3-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x400\";a:5:{s:4:\"path\";s:80:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg3-1200x400.jpg\";s:4:\"file\";s:16:\"bg3-1200x400.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:80:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg3-1200x500.jpg\";s:4:\"file\";s:16:\"bg3-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(56, 20, '_wp_attachment_backup_sizes', 'a:3:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:79:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg4-700x300.jpg\";s:4:\"file\";s:15:\"bg4-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x400\";a:5:{s:4:\"path\";s:80:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg4-1200x400.jpg\";s:4:\"file\";s:16:\"bg4-1200x400.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:80:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/bg4-1200x500.jpg\";s:4:\"file\";s:16:\"bg4-1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(57, 21, 'ml-slider_crop_position', 'center-center'),
(58, 22, 'ml-slider_crop_position', 'center-center'),
(59, 23, 'ml-slider_crop_position', 'center-center'),
(60, 25, '_wp_attached_file', '2017/12/2.jpg'),
(61, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2017/12/2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 24, '_edit_last', '1'),
(63, 24, '_thumbnail_id', '25'),
(64, 24, '_edit_lock', '1512829132:1'),
(65, 27, '_thumbnail_id', '25'),
(66, 27, '_edit_last', '1'),
(67, 27, '_edit_lock', '1512826313:1'),
(68, 29, '_thumbnail_id', '10'),
(69, 29, '_edit_last', '1'),
(70, 29, '_edit_lock', '1512826423:1'),
(71, 29, '_logosliderwpmeta', 'a:2:{s:11:\"company_url\";s:0:\"\";s:12:\"company_name\";s:4:\"Logo\";}'),
(72, 30, '_edit_last', '1'),
(73, 30, '_edit_lock', '1512826449:1'),
(74, 31, '_wp_attached_file', '2017/12/5.jpg'),
(75, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2017/12/5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 30, '_thumbnail_id', '31'),
(77, 33, '_thumbnail_id', '31'),
(78, 33, '_edit_last', '1'),
(79, 33, '_edit_lock', '1512910610:1'),
(80, 37, '_edit_last', '1'),
(81, 37, '_edit_lock', '1515487340:1'),
(82, 37, '_thumbnail_id', '228'),
(83, 37, '_wp_page_template', 'tempales/page-about.php'),
(84, 39, '_wp_page_template', 'tempales/page-about.php'),
(85, 39, '_thumbnail_id', '242'),
(86, 39, '_edit_last', '1'),
(87, 39, '_edit_lock', '1514127661:1'),
(88, 41, '_edit_last', '1'),
(89, 41, '_edit_lock', '1513529628:1'),
(90, 41, '_wp_page_template', 'tempales/page-contact.php'),
(91, 43, '_wp_page_template', 'tempales/page-contact.php'),
(92, 43, '_edit_last', '1'),
(93, 43, '_edit_lock', '1512831032:1'),
(94, 46, '_wp_attached_file', '2017/12/pic1.jpg'),
(95, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:438;s:4:\"file\";s:16:\"2017/12/pic1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pic1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 47, '_wp_attached_file', '2017/12/pic4.jpg'),
(97, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:438;s:4:\"file\";s:16:\"2017/12/pic4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pic4-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 48, '_form', '<div class=\"col-md-6\">\n <div class=\"form-group\">\n    <div class=\"input-group\"> <span class=\"input-group-addon\"><i class=\"fa fa-user\"></i></span>\n    [text* your-name class:form-control ] \n      </div>\n     </div>\n   </div>\n\n<div class=\"col-md-6\">\n      <div class=\"form-group\">\n             <div class=\"input-group\"> <span class=\"input-group-addon\"><i class=\"fa fa-envelope\"></i></span>\n    [email* your-email class:form-control ]\n</div>\n  </div>\n    </div>\n\n<div class=\"col-md-12\">\n      <div class=\"form-group\">\n        <div class=\"input-group\">\n    [textarea   your-message class:form-control ] \n<span class=\"input-group-addon v-align-t\"><i class=\"fa fa-pencil\"></i></span> \n</div>\n      </div>\n   </div>\n\n[submit class:site-button  \"Send\"]'),
(99, 48, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <info@tahawybridge.com>\";s:9:\"recipient\";s:21:\"info@tahawybridge.com\";s:4:\"body\";s:39:\"[your-name]\n[your-email]\n[your-message]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(100, 48, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"primestore \"[your-subject]\"\";s:6:\"sender\";s:31:\"primestore <me@ahmedelsayed.me>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:132:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/primestore)\";s:18:\"additional_headers\";s:28:\"Reply-To: me@ahmedelsayed.me\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(101, 48, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(102, 48, '_additional_settings', ''),
(103, 48, '_locale', 'en_US'),
(107, 51, '_wp_attached_file', '2017/12/pic6.jpg'),
(108, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:438;s:4:\"file\";s:16:\"2017/12/pic6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pic6-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 52, '_wp_attached_file', '2017/12/pic6-1.jpg'),
(110, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:438;s:4:\"file\";s:18:\"2017/12/pic6-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic6-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 56, '_price', '30'),
(112, 56, '_sku', 'INT102'),
(113, 56, '_attribute-label1', 'Color'),
(114, 56, '_attribute-label2', 'Size'),
(115, 56, '_attribute-label3', 'Weight'),
(116, 56, '_attribute1', 'White'),
(117, 56, '_attribute2', 'Big'),
(118, 56, '_attribute3', '130'),
(119, 56, '_attribute-unit1', ''),
(120, 56, '_attribute-unit2', ''),
(121, 56, '_attribute-unit3', 'lbs'),
(122, 56, '_shipping-label1', 'UPS'),
(123, 56, '_shipping1', '15'),
(124, 56, 'excerpt', '<p>You can change the product page template in catalog settings.</p><p><strong>Please read this page carefully to fully understand all product page elements.</strong></p>'),
(125, 56, 'content', '[sample_long_desc]'),
(126, 56, '_edit_lock', '1512908628:1'),
(127, 56, '_edit_last', '1'),
(128, 57, '_edit_last', '1'),
(129, 57, '_edit_lock', '1512908655:1'),
(130, 57, 'excerpt', 'vzxcvxcvxcv'),
(131, 57, 'content', 'xcvxcvxcvxcv'),
(132, 57, '_price', ''),
(133, 57, '_attribute-label1', ''),
(134, 57, '_attribute1', ''),
(135, 57, '_attribute-unit1', ''),
(136, 57, '_attribute-label2', ''),
(137, 57, '_attribute2', ''),
(138, 57, '_attribute-unit2', ''),
(139, 57, '_attribute-label3', ''),
(140, 57, '_attribute3', ''),
(141, 57, '_attribute-unit3', ''),
(142, 57, '_shipping1', ''),
(143, 57, '_shipping-label1', ''),
(144, 57, '_sku', ''),
(145, 59, '_edit_last', '1'),
(146, 59, '_edit_lock', '1512918468:1'),
(147, 59, '_thumbnail_id', '51'),
(148, 59, 'tcpc_fields_currency_icon', 'ddd$'),
(149, 59, 'tcpc_fields_regular_price', ''),
(150, 59, 'tcpc_fields_sale_price', ''),
(151, 65, '_edit_last', '1'),
(152, 65, '_edit_lock', '1512989391:1'),
(153, 65, '_thumbnail_id', '46'),
(154, 65, 'tcpc_fields_currency_icon', '$12'),
(155, 65, 'tcpc_fields_regular_price', ''),
(156, 65, 'tcpc_fields_sale_price', ''),
(157, 55, '_edit_lock', '1514364940:1'),
(158, 55, '_edit_last', '1'),
(159, 55, '_wp_page_template', 'tempales/page-products.php'),
(160, 58, '_edit_lock', '1513003912:1'),
(161, 58, '_edit_last', '1'),
(162, 58, '_wp_page_template', 'tempales/page-products.php'),
(163, 70, 'tcpc_fields_currency_icon', '$12'),
(164, 70, 'tcpc_fields_regular_price', ''),
(165, 70, 'tcpc_fields_sale_price', ''),
(166, 70, '_thumbnail_id', '46'),
(167, 70, '_edit_last', '1'),
(168, 70, '_edit_lock', '1512979357:1'),
(169, 74, '_wc_review_count', '0'),
(170, 74, '_wc_rating_count', 'a:0:{}'),
(171, 74, '_wc_average_rating', '0'),
(172, 74, '_edit_last', '1'),
(173, 74, '_edit_lock', '1513003586:1'),
(174, 74, 'yikes_woo_products_tabs', 'a:0:{}'),
(175, 74, '_sku', ''),
(176, 74, '_regular_price', ''),
(177, 74, '_sale_price', ''),
(178, 74, '_sale_price_dates_from', ''),
(179, 74, '_sale_price_dates_to', ''),
(180, 74, 'total_sales', '0'),
(181, 74, '_tax_status', 'taxable'),
(182, 74, '_tax_class', ''),
(183, 74, '_manage_stock', 'no'),
(184, 74, '_backorders', 'no'),
(185, 74, '_sold_individually', 'no'),
(186, 74, '_weight', ''),
(187, 74, '_length', ''),
(188, 74, '_width', ''),
(189, 74, '_height', ''),
(190, 74, '_upsell_ids', 'a:0:{}'),
(191, 74, '_crosssell_ids', 'a:0:{}'),
(192, 74, '_purchase_note', ''),
(193, 74, '_default_attributes', 'a:0:{}'),
(194, 74, '_virtual', 'no'),
(195, 74, '_downloadable', 'no'),
(196, 74, '_product_image_gallery', ''),
(197, 74, '_download_limit', '-1'),
(198, 74, '_download_expiry', '-1'),
(199, 74, '_stock', NULL),
(200, 74, '_stock_status', 'instock'),
(201, 74, '_product_version', '3.2.5'),
(202, 74, '_price', ''),
(203, 74, '_thumbnail_id', '51'),
(204, 80, 'yikes_woo_products_tabs', 'a:0:{}'),
(205, 80, 'total_sales', '0'),
(206, 80, '_thumbnail_id', '51'),
(207, 80, '_wc_review_count', '1'),
(208, 80, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(209, 80, '_wc_average_rating', '4.00'),
(210, 80, '_edit_last', '1'),
(211, 80, '_sku', ''),
(212, 80, '_regular_price', ''),
(213, 80, '_sale_price', ''),
(214, 80, '_sale_price_dates_from', ''),
(215, 80, '_sale_price_dates_to', ''),
(216, 80, '_tax_status', 'taxable'),
(217, 80, '_tax_class', ''),
(218, 80, '_manage_stock', 'no'),
(219, 80, '_backorders', 'no'),
(220, 80, '_sold_individually', 'no'),
(221, 80, '_weight', ''),
(222, 80, '_length', ''),
(223, 80, '_width', ''),
(224, 80, '_height', ''),
(225, 80, '_upsell_ids', 'a:0:{}'),
(226, 80, '_crosssell_ids', 'a:0:{}'),
(227, 80, '_purchase_note', ''),
(228, 80, '_default_attributes', 'a:0:{}'),
(229, 80, '_virtual', 'no'),
(230, 80, '_downloadable', 'no'),
(231, 80, '_product_image_gallery', ''),
(232, 80, '_download_limit', '-1'),
(233, 80, '_download_expiry', '-1'),
(234, 80, '_stock', NULL),
(235, 80, '_stock_status', 'instock'),
(236, 80, '_product_version', '3.2.5'),
(237, 80, '_price', ''),
(238, 80, '_edit_lock', '1512995810:1'),
(239, 82, '_edit_last', '1'),
(240, 82, 'use_for_all_products', '1'),
(241, 82, '_use_for_all_products', 'use_for_all_products'),
(242, 82, 'priority', '40'),
(243, 82, '_priority', 'priority'),
(244, 82, 'default_content', 'dfgdfg'),
(245, 82, '_default_content', 'default_content'),
(246, 82, 'content_header', 'fgdfg'),
(247, 82, '_content_header', 'content_header'),
(248, 82, 'content_footer', ''),
(249, 82, '_content_footer', 'content_footer'),
(250, 82, '_edit_lock', '1512999655:1'),
(251, 83, '_edit_last', '1'),
(252, 83, '_edit_lock', '1512999812:1'),
(253, 83, '_wpt_option_use_default_for_all', 'no'),
(254, 83, '_wpt_conditions_category', 'a:2:{i:0;s:2:\"53\";i:1;s:2:\"51\";}'),
(255, 87, '_edit_last', '1'),
(256, 87, '_edit_lock', '1513003038:1'),
(257, 87, '_wpt_option_use_default_for_all', 'no'),
(258, 87, '_wpt_conditions_category', 'a:1:{i:0;s:2:\"51\";}'),
(259, 74, 'dfgdfg_tab_custom_title', 'sdfsdf'),
(260, 74, '_dfgdfg_tab_custom_title', 'dfgdfg_tab_custom_title'),
(261, 74, 'dfgdfg', 'sdfgdfsdf'),
(262, 74, '_dfgdfg', 'dfgdfg'),
(263, 74, '_wpt_field_gdfg', 'asdasd'),
(264, 74, '_wpt_field_asdas', 'asdasdasd'),
(265, 88, '_wc_review_count', '0'),
(266, 88, '_wc_rating_count', 'a:0:{}'),
(267, 88, '_wc_average_rating', '0'),
(268, 88, '_edit_last', '1'),
(269, 88, '_edit_lock', '1513499842:1'),
(270, 88, 'yikes_woo_products_tabs', 'a:0:{}'),
(271, 88, '_sku', ''),
(272, 88, '_regular_price', ''),
(273, 88, '_sale_price', ''),
(274, 88, '_sale_price_dates_from', ''),
(275, 88, '_sale_price_dates_to', ''),
(276, 88, 'total_sales', '0'),
(277, 88, '_tax_status', 'taxable'),
(278, 88, '_tax_class', ''),
(279, 88, '_manage_stock', 'no'),
(280, 88, '_backorders', 'no'),
(281, 88, '_sold_individually', 'no'),
(282, 88, '_weight', ''),
(283, 88, '_length', ''),
(284, 88, '_width', ''),
(285, 88, '_height', ''),
(286, 88, '_upsell_ids', 'a:0:{}'),
(287, 88, '_crosssell_ids', 'a:0:{}'),
(288, 88, '_purchase_note', ''),
(289, 88, '_default_attributes', 'a:0:{}'),
(290, 88, '_virtual', 'no'),
(291, 88, '_downloadable', 'no'),
(292, 88, '_product_image_gallery', ''),
(293, 88, '_download_limit', '-1'),
(294, 88, '_download_expiry', '-1'),
(295, 88, '_stock', NULL),
(296, 88, '_stock_status', 'instock'),
(297, 88, '_product_version', '3.2.5'),
(298, 88, '_price', ''),
(299, 88, 'dfgdfg_tab_custom_title', ''),
(300, 88, '_dfgdfg_tab_custom_title', 'dfgdfg_tab_custom_title'),
(301, 88, 'dfgdfg', ''),
(302, 88, '_dfgdfg', 'dfgdfg'),
(303, 88, '_wpt_field_gdfg', ''),
(304, 88, '_wpt_field_asdas', ''),
(305, 92, '_edit_last', '1'),
(306, 92, '_edit_lock', '1513506381:1'),
(307, 92, '_thumbnail_id', '47'),
(308, 102, '_edit_last', '1'),
(309, 102, '_edit_lock', '1514116512:1'),
(310, 102, '_wp_page_template', 'tempales/page-news.php'),
(311, 104, '_edit_last', '1'),
(312, 104, '_edit_lock', '1513533193:1'),
(313, 104, '_thumbnail_id', '47'),
(314, 104, '_wp_trash_meta_status', 'publish'),
(315, 104, '_wp_trash_meta_time', '1514102084'),
(316, 104, '_wp_desired_post_slug', 'fgdfgdfg'),
(317, 92, '_wp_trash_meta_status', 'publish'),
(318, 92, '_wp_trash_meta_time', '1514102085'),
(319, 92, '_wp_desired_post_slug', 'xfsdfsdf'),
(320, 88, '_wp_trash_meta_status', 'publish'),
(321, 88, '_wp_trash_meta_time', '1514102087'),
(322, 88, '_wp_desired_post_slug', 'aaaaaaaa'),
(323, 80, '_wp_trash_meta_status', 'publish'),
(324, 80, '_wp_trash_meta_time', '1514102089'),
(325, 80, '_wp_desired_post_slug', '%d9%84%d8%a7%d8%a8-%d8%aa%d9%88%d8%a8'),
(326, 80, '_wp_trash_meta_comments_status', 'a:1:{i:2;s:1:\"1\";}'),
(327, 74, '_wp_trash_meta_status', 'publish'),
(328, 74, '_wp_trash_meta_time', '1514102091'),
(329, 74, '_wp_desired_post_slug', 'shed'),
(330, 110, '_edit_last', '1'),
(331, 110, '_edit_lock', '1514112761:1'),
(332, 111, '_wp_attached_file', '2017/12/1-Excavator.jpg'),
(333, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:542;s:4:\"file\";s:23:\"2017/12/1-Excavator.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"1-Excavator-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"1-Excavator-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:7:\"unknown\";s:6:\"camera\";s:27:\"Canon EOS DIGITAL REBEL XTi\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1408696399\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(334, 110, '_thumbnail_id', '111'),
(335, 113, '_thumbnail_id', '111'),
(336, 113, '_edit_last', '1'),
(337, 113, '_edit_lock', '1514102219:1'),
(338, 113, '_wp_old_slug', '%d8%ad%d9%81%d8%a7%d8%b1%d8%a9'),
(339, 115, '_edit_last', '1'),
(340, 115, '_edit_lock', '1514102314:1'),
(341, 116, '_wp_attached_file', '2017/12/2-wheel-Loader-.jpg'),
(342, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:598;s:4:\"file\";s:27:\"2017/12/2-wheel-Loader-.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"2-wheel-Loader--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"2-wheel-Loader--300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"2-wheel-Loader--768x574.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 115, '_thumbnail_id', '116'),
(344, 118, '_thumbnail_id', '116'),
(345, 118, '_edit_last', '1'),
(346, 118, '_edit_lock', '1514102345:1'),
(347, 120, '_edit_last', '1'),
(348, 120, '_edit_lock', '1514102426:1'),
(349, 121, '_wp_attached_file', '2017/12/3-Bulldozer-.gif'),
(350, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:999;s:6:\"height\";i:599;s:4:\"file\";s:24:\"2017/12/3-Bulldozer-.gif\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"3-Bulldozer--150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"3-Bulldozer--300x180.gif\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"3-Bulldozer--768x460.gif\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(351, 120, '_thumbnail_id', '121'),
(352, 123, '_thumbnail_id', '121'),
(353, 123, '_edit_last', '1'),
(354, 123, '_edit_lock', '1514102480:1'),
(355, 125, '_edit_last', '1'),
(356, 125, '_edit_lock', '1514103800:1'),
(357, 126, '_wp_attached_file', '2017/12/4-rollers-.jpg'),
(358, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2017/12/4-rollers-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"4-rollers--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"4-rollers--300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T4i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1437058977\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(359, 125, '_thumbnail_id', '126'),
(360, 128, '_thumbnail_id', '126'),
(361, 128, '_edit_last', '1'),
(362, 128, '_edit_lock', '1514104923:1'),
(363, 130, '_edit_last', '1'),
(364, 130, '_edit_lock', '1514105123:1'),
(365, 131, '_wp_attached_file', '2017/12/5-cranes-.jpg'),
(366, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:756;s:6:\"height\";i:415;s:4:\"file\";s:21:\"2017/12/5-cranes-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"5-cranes--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"5-cranes--300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 130, '_thumbnail_id', '131'),
(368, 133, '_thumbnail_id', '131'),
(369, 133, '_edit_last', '1'),
(370, 133, '_edit_lock', '1514105161:1'),
(371, 135, '_edit_last', '1'),
(372, 135, '_edit_lock', '1514105193:1'),
(373, 136, '_wp_attached_file', '2017/12/6-forklift-.jpg'),
(374, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:23:\"2017/12/6-forklift-.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"6-forklift--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"6-forklift--300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"6-forklift--768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"NIKON D3S\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1256170937\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(375, 135, '_thumbnail_id', '136'),
(376, 138, '_thumbnail_id', '136'),
(377, 138, '_edit_last', '1'),
(378, 138, '_edit_lock', '1514105211:1'),
(379, 140, '_edit_last', '1'),
(380, 140, '_edit_lock', '1514105342:1'),
(381, 141, '_wp_attached_file', '2017/12/7-Liftman-.jpg'),
(382, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:22:\"2017/12/7-Liftman-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"7-Liftman--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"7-Liftman--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(383, 140, '_thumbnail_id', '141'),
(384, 143, '_thumbnail_id', '141'),
(385, 143, '_edit_last', '1'),
(386, 143, '_edit_lock', '1514105387:1'),
(387, 145, '_edit_last', '1'),
(388, 145, '_edit_lock', '1514105433:1'),
(389, 146, '_wp_attached_file', '2017/12/8-scissor-lift-.jpg'),
(390, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:350;s:4:\"file\";s:27:\"2017/12/8-scissor-lift-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"8-scissor-lift--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"8-scissor-lift--225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(391, 145, '_thumbnail_id', '146'),
(392, 148, '_thumbnail_id', '146'),
(393, 148, '_edit_last', '1'),
(394, 148, '_edit_lock', '1514105444:1'),
(395, 150, '_edit_last', '1'),
(396, 150, '_edit_lock', '1514105517:1'),
(397, 151, '_wp_attached_file', '2017/12/9-milling-and-paver-.jpg'),
(398, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:381;s:6:\"height\";i:254;s:4:\"file\";s:32:\"2017/12/9-milling-and-paver-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"9-milling-and-paver--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"9-milling-and-paver--300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 150, '_thumbnail_id', '151'),
(400, 153, '_thumbnail_id', '151'),
(401, 153, '_edit_last', '1'),
(402, 153, '_edit_lock', '1514105563:1'),
(403, 155, '_edit_last', '1'),
(404, 155, '_edit_lock', '1514105690:1'),
(405, 156, '_wp_attached_file', '2017/12/10-pilling-and-drilling-.jpg'),
(406, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:598;s:6:\"height\";i:798;s:4:\"file\";s:36:\"2017/12/10-pilling-and-drilling-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"10-pilling-and-drilling--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"10-pilling-and-drilling--225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(407, 155, '_thumbnail_id', '156'),
(408, 158, '_thumbnail_id', '156'),
(409, 158, '_edit_last', '1'),
(410, 158, '_edit_lock', '1514105727:1'),
(411, 160, '_edit_last', '1'),
(412, 160, '_edit_lock', '1514106026:1'),
(413, 161, '_wp_attached_file', '2017/12/11-trencher-.jpg'),
(414, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:24:\"2017/12/11-trencher-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"11-trencher--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"11-trencher--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"DSC-W120\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1274981274\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"5.35\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 160, '_thumbnail_id', '161'),
(416, 163, '_thumbnail_id', '161'),
(417, 163, '_edit_last', '1'),
(418, 163, '_edit_lock', '1514106255:1'),
(419, 165, '_edit_last', '1'),
(420, 165, '_edit_lock', '1514106357:1'),
(421, 166, '_wp_attached_file', '2017/12/12-motor-grader-.jpg'),
(422, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:28:\"2017/12/12-motor-grader-.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"12-motor-grader--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"12-motor-grader--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"12-motor-grader--768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 165, '_thumbnail_id', '166'),
(424, 168, '_thumbnail_id', '166'),
(425, 168, '_edit_last', '1'),
(426, 168, '_edit_lock', '1514107271:1'),
(427, 170, '_edit_last', '1'),
(428, 170, '_edit_lock', '1514107319:1'),
(429, 171, '_wp_attached_file', '2017/12/13-Screen-and-crushing-.jpg'),
(430, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:475;s:4:\"file\";s:35:\"2017/12/13-Screen-and-crushing-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"13-Screen-and-crushing--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"13-Screen-and-crushing--300x223.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(431, 170, '_thumbnail_id', '171'),
(432, 173, '_thumbnail_id', '171'),
(433, 173, '_edit_last', '1'),
(434, 173, '_edit_lock', '1514107359:1'),
(435, 175, '_edit_last', '1'),
(436, 175, '_edit_lock', '1514107398:1'),
(437, 176, '_wp_attached_file', '2017/12/14-attachments-.jpg'),
(438, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:424;s:4:\"file\";s:27:\"2017/12/14-attachments-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"14-attachments--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"14-attachments--300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(439, 175, '_thumbnail_id', '176'),
(440, 178, '_thumbnail_id', '176'),
(441, 178, '_edit_last', '1'),
(442, 178, '_edit_lock', '1514110630:1'),
(443, 181, '_edit_last', '1'),
(444, 181, '_edit_lock', '1514113030:1'),
(445, 182, '_wp_attached_file', '2017/12/15-generator-.jpg'),
(446, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:291;s:6:\"height\";i:240;s:4:\"file\";s:25:\"2017/12/15-generator-.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"15-generator--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(447, 181, '_thumbnail_id', '182'),
(448, 184, '_thumbnail_id', '182'),
(449, 184, '_edit_last', '1'),
(450, 184, '_edit_lock', '1514113071:1'),
(451, 186, '_edit_last', '1'),
(452, 186, '_edit_lock', '1514113107:1'),
(453, 187, '_wp_attached_file', '2017/12/16-construction-machinery-parts-.jpg'),
(454, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:424;s:4:\"file\";s:44:\"2017/12/16-construction-machinery-parts-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"16-construction-machinery-parts--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"16-construction-machinery-parts--300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 186, '_thumbnail_id', '187'),
(456, 189, '_thumbnail_id', '187'),
(457, 189, '_edit_last', '1'),
(458, 189, '_edit_lock', '1514113132:1'),
(459, 191, '_edit_last', '1'),
(460, 191, '_edit_lock', '1514113203:1'),
(461, 192, '_wp_attached_file', '2017/12/17-tractor-and-attachment-.jpg'),
(462, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:38:\"2017/12/17-tractor-and-attachment-.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"17-tractor-and-attachment--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"17-tractor-and-attachment--300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"17-tractor-and-attachment--768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"17-tractor-and-attachment--1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:12:\"Roy Persinko\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1432823448\";s:9:\"copyright\";s:36:\"© Kubota &amp; Schneeman Photo 2015\";s:12:\"focal_length\";s:2:\"58\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(463, 191, '_thumbnail_id', '192'),
(464, 194, '_thumbnail_id', '192'),
(465, 194, '_edit_last', '1'),
(466, 194, '_edit_lock', '1514113320:1'),
(467, 196, '_edit_last', '1'),
(468, 196, '_edit_lock', '1514113353:1'),
(469, 197, '_wp_attached_file', '2017/12/18-combines-.jpg'),
(470, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2017/12/18-combines-.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"18-combines--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"18-combines--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"18-combines--768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(471, 196, '_thumbnail_id', '197'),
(472, 199, '_thumbnail_id', '197'),
(473, 199, '_edit_last', '1'),
(474, 199, '_edit_lock', '1514113380:1'),
(475, 201, '_edit_last', '1'),
(476, 201, '_edit_lock', '1514113421:1'),
(477, 202, '_wp_attached_file', '2017/12/19-trucks-.jpg'),
(478, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:798;s:6:\"height\";i:322;s:4:\"file\";s:22:\"2017/12/19-trucks-.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"19-trucks--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"19-trucks--300x121.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"19-trucks--768x310.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(479, 201, '_thumbnail_id', '202'),
(480, 204, '_thumbnail_id', '202'),
(481, 204, '_edit_last', '1'),
(482, 204, '_edit_lock', '1514113440:1'),
(483, 206, '_edit_last', '1'),
(484, 206, '_edit_lock', '1514113470:1'),
(485, 207, '_wp_attached_file', '2017/12/20-concrete-pump-.jpg'),
(486, 207, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:225;s:4:\"file\";s:29:\"2017/12/20-concrete-pump-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"20-concrete-pump--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"20-concrete-pump--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(487, 206, '_thumbnail_id', '207'),
(488, 209, '_thumbnail_id', '207'),
(489, 209, '_edit_last', '1'),
(490, 209, '_edit_lock', '1514113496:1'),
(491, 211, '_edit_last', '1'),
(492, 211, '_edit_lock', '1514113568:1'),
(493, 212, '_wp_attached_file', '2017/12/21-conceret-mixer-.jpeg'),
(494, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:31:\"2017/12/21-conceret-mixer-.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"21-conceret-mixer--150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"21-conceret-mixer--300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(495, 211, '_thumbnail_id', '212'),
(496, 214, '_thumbnail_id', '212'),
(497, 214, '_edit_last', '1'),
(498, 214, '_edit_lock', '1514113603:1'),
(499, 216, '_edit_last', '1'),
(500, 216, '_edit_lock', '1514113708:1'),
(501, 217, '_wp_attached_file', '2017/12/22-used-car-.jpg'),
(502, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:24:\"2017/12/22-used-car-.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"22-used-car--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"22-used-car--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"22-used-car--768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(503, 216, '_thumbnail_id', '217'),
(504, 219, '_thumbnail_id', '217'),
(505, 219, '_edit_last', '1'),
(506, 219, '_edit_lock', '1514113739:1'),
(507, 221, '_edit_last', '1'),
(508, 221, '_edit_lock', '1514113808:1'),
(509, 222, '_wp_attached_file', '2017/12/23-used-car-parts-and-engines-.jpg'),
(510, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:345;s:4:\"file\";s:42:\"2017/12/23-used-car-parts-and-engines-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"23-used-car-parts-and-engines--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"23-used-car-parts-and-engines--300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(511, 221, '_thumbnail_id', '222'),
(512, 224, '_thumbnail_id', '222'),
(513, 224, '_edit_last', '1'),
(514, 224, '_edit_lock', '1514286052:1'),
(515, 227, '_wp_attached_file', '2017/12/profile-2-.jpg'),
(516, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:736;s:6:\"height\";i:467;s:4:\"file\";s:22:\"2017/12/profile-2-.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"profile-2--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"profile-2--300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(517, 228, '_wp_attached_file', '2017/12/profile-5-.jpg'),
(518, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3898;s:6:\"height\";i:2268;s:4:\"file\";s:22:\"2017/12/profile-5-.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"profile-5--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"profile-5--300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"profile-5--768x447.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"profile-5--1024x596.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:596;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:23:\"profile-5--1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x550\";a:4:{s:4:\"file\";s:23:\"profile-5--1200x550.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"NIKON D3S\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1403698917\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(519, 229, '_edit_last', '1'),
(520, 229, '_edit_lock', '1514115260:1'),
(521, 229, '_thumbnail_id', '111'),
(522, 232, '_wp_page_template', 'tempales/page-news.php'),
(523, 232, '_edit_last', '1'),
(524, 232, '_edit_lock', '1514127412:1'),
(525, 234, '_edit_last', '1'),
(526, 234, '_edit_lock', '1514127658:1'),
(527, 234, '_thumbnail_id', '176'),
(528, 236, '_wp_attached_file', '2017/12/profile-2-1-1.jpg'),
(529, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:736;s:6:\"height\";i:467;s:4:\"file\";s:25:\"2017/12/profile-2-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"profile-2-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"profile-2-1-1-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-736x306\";a:4:{s:4:\"file\";s:25:\"profile-2-1-1-736x306.jpg\";s:5:\"width\";i:736;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-736x337\";a:4:{s:4:\"file\";s:25:\"profile-2-1-1-736x337.jpg\";s:5:\"width\";i:736;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(530, 237, '_wp_attached_file', '2017/12/profile-3-.jpg'),
(531, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4256;s:6:\"height\";i:2236;s:4:\"file\";s:22:\"2017/12/profile-3-.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"profile-3--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"profile-3--300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"profile-3--768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"profile-3--1024x538.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:23:\"profile-3--1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x550\";a:4:{s:4:\"file\";s:23:\"profile-3--1200x550.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(532, 238, '_wp_attached_file', '2017/12/profile-4-.jpg'),
(533, 238, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1085;s:6:\"height\";i:703;s:4:\"file\";s:22:\"2017/12/profile-4-.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"profile-4--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"profile-4--300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"profile-4--768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"profile-4--1024x663.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:663;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1085x452\";a:4:{s:4:\"file\";s:23:\"profile-4--1085x452.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1085x497\";a:4:{s:4:\"file\";s:23:\"profile-4--1085x497.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:497;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 239, '_thumbnail_id', '250'),
(535, 239, '_wp_attachment_image_alt', ''),
(536, 239, 'ml-slider_type', 'image'),
(537, 238, '_wp_attachment_backup_sizes', 'a:2:{s:16:\"resized-1085x452\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-4--1085x452.jpg\";s:4:\"file\";s:23:\"profile-4--1085x452.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1085x497\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-4--1085x497.jpg\";s:4:\"file\";s:23:\"profile-4--1085x497.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:497;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(538, 240, '_wp_attached_file', '2017/12/profile-6-.jpg'),
(539, 240, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4320;s:6:\"height\";i:2880;s:4:\"file\";s:22:\"2017/12/profile-6-.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"profile-6--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"profile-6--300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"profile-6--768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"profile-6--1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x500\";a:4:{s:4:\"file\";s:23:\"profile-6--1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1200x550\";a:4:{s:4:\"file\";s:23:\"profile-6--1200x550.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:17:\"Michael J. Newell\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:5:\"37843\";s:17:\"created_timestamp\";s:10:\"1403996986\";s:9:\"copyright\";s:36:\"Copyright© 2016 Deere &amp; Company\";s:12:\"focal_length\";s:2:\"21\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:5:\"37843\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(540, 241, '_thumbnail_id', '240'),
(541, 241, '_wp_attachment_image_alt', ''),
(542, 241, 'ml-slider_type', 'image'),
(543, 240, '_wp_attachment_backup_sizes', 'a:2:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-6--1200x500.jpg\";s:4:\"file\";s:23:\"profile-6--1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x550\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-6--1200x550.jpg\";s:4:\"file\";s:23:\"profile-6--1200x550.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(544, 239, 'ml-slider_crop_position', 'center-center'),
(545, 241, 'ml-slider_crop_position', 'center-center'),
(546, 236, '_wp_attachment_backup_sizes', 'a:2:{s:15:\"resized-736x306\";a:5:{s:4:\"path\";s:89:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-2-1-1-736x306.jpg\";s:4:\"file\";s:25:\"profile-2-1-1-736x306.jpg\";s:5:\"width\";i:736;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-736x337\";a:5:{s:4:\"path\";s:89:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-2-1-1-736x337.jpg\";s:4:\"file\";s:25:\"profile-2-1-1-736x337.jpg\";s:5:\"width\";i:736;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(547, 237, '_wp_attachment_backup_sizes', 'a:2:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-3--1200x500.jpg\";s:4:\"file\";s:23:\"profile-3--1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x550\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-3--1200x550.jpg\";s:4:\"file\";s:23:\"profile-3--1200x550.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(548, 228, '_wp_attachment_backup_sizes', 'a:2:{s:16:\"resized-1200x500\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-5--1200x500.jpg\";s:4:\"file\";s:23:\"profile-5--1200x500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x550\";a:5:{s:4:\"path\";s:87:\"D:xampphtdocspsolvingegyptprimestore/wp-content/uploads/2017/12/profile-5--1200x550.jpg\";s:4:\"file\";s:23:\"profile-5--1200x550.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(549, 242, '_wp_attached_file', '2017/12/profile-5-1-1.jpg'),
(550, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3898;s:6:\"height\";i:2268;s:4:\"file\";s:25:\"2017/12/profile-5-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"profile-5-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"profile-5-1-1-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"profile-5-1-1-768x447.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"profile-5-1-1-1024x596.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:596;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"NIKON D3S\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1403698917\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(551, 243, '_wp_page_template', 'tempales/page-products.php'),
(552, 243, '_edit_last', '1'),
(553, 243, '_edit_lock', '1514365832:1'),
(554, 247, '_wp_attached_file', '2017/12/profile-1-.jpg'),
(555, 247, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:527;s:4:\"file\";s:22:\"2017/12/profile-1-.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"profile-1--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"profile-1--300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"profile-1--768x337.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"profile-1--1024x450.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1149x527\";a:4:{s:4:\"file\";s:23:\"profile-1--1149x527.jpg\";s:5:\"width\";i:1149;s:6:\"height\";i:527;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:16:\"Tony Ellis Media\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(556, 248, '_thumbnail_id', '247'),
(557, 248, '_wp_attachment_image_alt', ''),
(558, 248, 'ml-slider_type', 'image'),
(559, 247, '_wp_attachment_backup_sizes', 'a:1:{s:16:\"resized-1149x527\";a:5:{s:4:\"path\";s:81:\"/home/mn9hetutvwu1/public_html/wp-content/uploads/2017/12/profile-1--1149x527.jpg\";s:4:\"file\";s:23:\"profile-1--1149x527.jpg\";s:5:\"width\";i:1149;s:6:\"height\";i:527;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(560, 248, 'ml-slider_crop_position', 'center-center'),
(561, 250, '_wp_attached_file', '2017/12/c.jpg'),
(562, 250, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1085;s:6:\"height\";i:507;s:4:\"file\";s:13:\"2017/12/c.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"c-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"c-768x359.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"c-1024x478.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"meta-slider-resized-1085x497\";a:4:{s:4:\"file\";s:14:\"c-1085x497.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:497;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(563, 250, '_wp_attachment_backup_sizes', 'a:1:{s:16:\"resized-1085x497\";a:5:{s:4:\"path\";s:72:\"/home/mn9hetutvwu1/public_html/wp-content/uploads/2017/12/c-1085x497.jpg\";s:4:\"file\";s:14:\"c-1085x497.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:497;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(0, 1, '2018-01-13 09:35:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-13 09:35:05', '0000-00-00 00:00:00', '', 0, '', 0, 'post', '', 0),
(1, 1, '2017-11-20 12:09:19', '2017-11-20 12:09:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-20 12:09:19', '2017-11-20 12:09:19', '', 0, 'http://localhost/psolvingegypt/primestore/?p=1', 0, 'post', '', 1),
(4, 1, '2017-11-20 12:30:43', '2017-11-20 12:30:43', '<div class=\"col-md-6\">\r\n <div class=\"form-group\">\r\n    <div class=\"input-group\"> \r\n    [text* your-name class:form-control ] \r\n<span class=\"input-group-addon\"><i class=\"fa fa-user\"></i></span>\r\n      </div>\r\n     </div>\r\n   </div>\r\n<div class=\"col-md-6\">\r\n      <div class=\"form-group\">\r\n             <div class=\"input-group\"> \r\n    [email* your-email class:form-control ]\r\n<span class=\"input-group-addon\"><i class=\"fa fa-envelope\"></i></span>\r\n</div>\r\n  </div>\r\n    </div>\r\n<div class=\"col-md-12\">\r\n      <div class=\"form-group\">\r\n        <div class=\"input-group\"> \r\n    [textarea your-message class:form-control ] \r\n<span class=\"input-group-addon v-align-t\"><i class=\"fa fa-pencil\"></i></span>\r\n</div>\r\n      </div>\r\n   </div>\r\n\r\n[submit class:site-button  \"Send\"]\n1\nprimestore \"[your-subject]\"\n[your-name] <info@tahawybridge.com>\ninfo@tahawybridge.com\n[your-name]\r\n[your-email]\r\n[your-message]\nReply-To: [your-email]\n\n\n\n\nprimestore \"[your-subject]\"\nprimestore <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/primestore)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form en', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-12-26 12:19:05', '2017-12-26 12:19:05', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2017-12-02 14:13:10', '2017-12-02 14:13:10', '', 'polylang_mo_2', '', 'private', 'closed', 'closed', '', 'polylang_mo_2', '', '', '2017-12-02 14:13:10', '2017-12-02 14:13:10', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=polylang_mo&p=5', 0, 'polylang_mo', '', 0),
(6, 1, '2017-12-02 14:13:57', '2017-12-02 14:13:57', '', 'polylang_mo_5', '', 'private', 'closed', 'closed', '', 'polylang_mo_5', '', '', '2017-12-02 14:13:57', '2017-12-02 14:13:57', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=polylang_mo&p=6', 0, 'polylang_mo', '', 0),
(7, 1, '2017-12-03 16:31:22', '2017-12-03 16:31:22', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2017-12-03 16:31:22', '2017-12-03 16:31:22', '', 0, 'http://localhost/psolvingegypt/primestore/?option-tree=media', 0, 'option-tree', '', 0),
(8, 1, '2017-12-06 12:19:52', '2017-12-06 12:19:52', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-12-06 12:19:52', '2017-12-06 12:19:52', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/logo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2017-12-06 13:59:59', '2017-12-06 13:59:59', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo', '', '', '2017-12-06 13:59:59', '2017-12-06 13:59:59', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=logosliderwp&#038;p=9', 0, 'logosliderwp', '', 0),
(10, 1, '2017-12-06 13:59:48', '2017-12-06 13:59:48', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2017-12-06 13:59:48', '2017-12-06 13:59:48', '', 9, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/logo2.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-12-06 14:31:01', '2017-12-06 14:31:01', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo-2', '', '', '2017-12-06 14:31:01', '2017-12-06 14:31:01', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=logosliderwp&#038;p=11', 0, 'logosliderwp', '', 0),
(12, 1, '2017-12-06 14:31:12', '2017-12-06 14:31:12', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo-3', '', '', '2017-12-06 14:31:12', '2017-12-06 14:31:12', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=logosliderwp&#038;p=12', 0, 'logosliderwp', '', 0),
(13, 1, '2017-12-06 14:31:22', '2017-12-06 14:31:22', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo-4', '', '', '2017-12-09 13:34:46', '2017-12-09 13:34:46', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=logosliderwp&#038;p=13', 0, 'logosliderwp', '', 0),
(14, 1, '2017-12-06 14:31:52', '2017-12-06 14:31:52', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo-5', '', '', '2017-12-09 13:34:36', '2017-12-09 13:34:36', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=logosliderwp&#038;p=14', 0, 'logosliderwp', '', 0),
(15, 1, '2017-12-06 14:32:03', '2017-12-06 14:32:03', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo-6', '', '', '2017-12-09 13:34:24', '2017-12-09 13:34:24', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=logosliderwp&#038;p=15', 0, 'logosliderwp', '', 0),
(17, 1, '2017-12-09 12:45:11', '2017-12-09 12:45:11', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-01-09 08:48:11', '2018-01-09 08:48:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=ml-slider&#038;p=17', 0, 'ml-slider', '', 0),
(18, 1, '2017-12-09 12:46:14', '2017-12-09 12:46:14', '', 'bg2', '', 'inherit', 'open', 'closed', '', 'bg2', '', '', '2017-12-09 12:46:14', '2017-12-09 12:46:14', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/bg2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2017-12-09 12:46:21', '2017-12-09 12:46:21', '', 'bg3', '', 'inherit', 'open', 'closed', '', 'bg3', '', '', '2017-12-09 12:46:21', '2017-12-09 12:46:21', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/bg3.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2017-12-09 12:46:29', '2017-12-09 12:46:29', '', 'bg4', '', 'inherit', 'open', 'closed', '', 'bg4', '', '', '2017-12-09 12:46:29', '2017-12-09 12:46:29', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/bg4.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-12-09 12:46:38', '2017-12-09 12:46:38', '', 'Slider 17 - image', '', 'publish', 'closed', 'closed', '', 'slider-17-image', '', '', '2018-01-09 08:48:11', '2018-01-09 08:48:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=ml-slide&#038;p=21', 0, 'ml-slide', '', 0),
(22, 1, '2017-12-09 12:46:41', '2017-12-09 12:46:41', '', 'Slider 17 - image', '', 'publish', 'closed', 'closed', '', 'slider-17-image-2', '', '', '2018-01-09 08:48:11', '2018-01-09 08:48:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=ml-slide&#038;p=22', 1, 'ml-slide', '', 0),
(23, 1, '2017-12-09 12:46:43', '2017-12-09 12:46:43', '', 'Slider 17 - image', '', 'publish', 'closed', 'closed', '', 'slider-17-image-3', '', '', '2018-01-09 08:48:11', '2018-01-09 08:48:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=ml-slide&#038;p=23', 2, 'ml-slide', '', 0),
(24, 1, '2017-12-09 13:18:15', '2017-12-09 13:18:15', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '1', '', 'publish', 'closed', 'closed', '', '1', '', '', '2017-12-09 13:42:43', '2017-12-09 13:42:43', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=products&#038;p=24', 0, 'products', '', 0),
(25, 1, '2017-12-09 13:17:58', '2017-12-09 13:17:58', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2017-12-09 13:17:58', '2017-12-09 13:17:58', '', 24, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2017-12-09 13:18:15', '2017-12-09 13:18:15', '', '1', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-09 13:18:15', '2017-12-09 13:18:15', '', 24, 'http://localhost/psolvingegypt/primestore/2017/12/09/24-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-12-09 13:19:19', '2017-12-09 13:19:19', '', '1', '', 'publish', 'closed', 'closed', '', '1-2', '', '', '2017-12-09 13:19:29', '2017-12-09 13:19:29', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=products&#038;p=27', 0, 'products', '', 0),
(28, 1, '2017-12-09 13:19:19', '2017-12-09 13:19:19', '', '1', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-12-09 13:19:19', '2017-12-09 13:19:19', '', 27, 'http://localhost/psolvingegypt/primestore/2017/12/09/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-12-09 13:35:05', '2017-12-09 13:35:05', '', 'Logo', '', 'publish', 'closed', 'closed', '', 'logo-7', '', '', '2017-12-09 13:35:05', '2017-12-09 13:35:05', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=logosliderwp&#038;p=29', 0, 'logosliderwp', '', 0),
(30, 1, '2017-12-09 13:36:27', '2017-12-09 13:36:27', '', '2', '', 'publish', 'closed', 'closed', '', '2', '', '', '2017-12-09 13:36:27', '2017-12-09 13:36:27', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=products&#038;p=30', 0, 'products', '', 0),
(31, 1, '2017-12-09 13:36:23', '2017-12-09 13:36:23', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2017-12-09 13:36:23', '2017-12-09 13:36:23', '', 30, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2017-12-09 13:36:27', '2017-12-09 13:36:27', '', '2', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-12-09 13:36:27', '2017-12-09 13:36:27', '', 30, 'http://localhost/psolvingegypt/primestore/2017/12/09/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-12-09 13:36:38', '2017-12-09 13:36:38', ' [tcproduct-catalog] \r\n', '2', '', 'publish', 'closed', 'closed', '', '2-2', '', '', '2017-12-10 12:58:11', '2017-12-10 12:58:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=products&#038;p=33', 0, 'products', '', 0),
(34, 1, '2017-12-09 13:36:38', '2017-12-09 13:36:38', '', '2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-09 13:36:38', '2017-12-09 13:36:38', '', 33, 'http://localhost/psolvingegypt/primestore/2017/12/09/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-12-09 13:42:31', '2017-12-09 13:42:31', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '1', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2017-12-09 13:42:31', '2017-12-09 13:42:31', '', 24, 'http://localhost/psolvingegypt/primestore/2017/12/09/24-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2017-12-09 13:42:43', '2017-12-09 13:42:43', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '1', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-09 13:42:43', '2017-12-09 13:42:43', '', 24, 'http://localhost/psolvingegypt/primestore/2017/12/09/24-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-12-09 14:15:33', '2017-12-09 14:15:33', '<strong>Company Profile</strong>\r\n\r\nTahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\r\n\r\n<strong>Background :</strong> The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.\r\n\r\n<strong>Shipping :</strong> we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\r\n<strong>Vision :</strong>\r\n\r\nContribute to growth :\r\nReliable and affordable heavy machinery is an economic driver for projects all around the world. To ensure a steady supply, the Tahawy Global Bridge Group has a global network to source some of the best new and used machinery, and to be an Excellent Company which is always a model to benchmark not by its size but its Excellence of Operations. We believe that being the best employer will contribute to sustainable growth and translate to satisfied clients with whom we have long term, trustful relationships.\r\n\r\n<strong>MISSION :</strong>\r\n\r\nTo become a company that :\r\n\r\nAspires to assist our customer to become successful by utilizing our comprehensive understanding through continuous interaction\r\nWe want to be acknowledged by our clients, our people and other stakeholders for delivering what we promise; a competitive edge through high-quality solutions.\r\nTo grow business and trade through enabling excellent international trade services.\r\n\r\n<strong>Values</strong>\r\n<ul style=\"line-height: 30px;\">\r\n 	<li><strong>Integrity</strong> : Ethics and integrity are the foundation of our brand and the guiding principles for all we do.</li>\r\n 	<li><strong>Safety </strong>: Priority number one. We are focused on our own personal safety as well as the safety of others.</li>\r\n 	<li><strong>Collaboration </strong>: We work together with customers and understand that everyone has a role in providing the best solution.</li>\r\n 	<li><strong>Competition</strong> : We compete to win. We know that competition makes everyone stronger.</li>\r\n 	<li><strong>Creativity</strong> : We are resourceful. We are innovative and strive to apply the right technology and solution every time.</li>\r\n 	<li><strong>Respect</strong> : We are honest with ourselves and each other. We value our diverse skills and talents, and know we are stronger together as one family.</li>\r\n</ul>', 'Tahawy', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-01-09 08:44:39', '2018-01-09 08:44:39', '', 0, 'http://localhost/psolvingegypt/primestore/?page_id=37', 0, 'page', '', 0),
(38, 1, '2017-12-09 14:15:33', '2017-12-09 14:15:33', 'The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest these men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea maybe you and me were never meant once in a while.\r\n\r\nThese men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea.', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-09 14:15:33', '2017-12-09 14:15:33', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/09/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-12-09 14:30:58', '2017-12-09 14:30:58', '<strong> من نحن </strong>\r\nنرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\r\n\r\n<strong>نبذة عن الشركة :</strong>\r\nتأسست شركة جسر الطحاوي عام 2017 بمقاطعة توتشيجي باليابان ومسجله بالغرفة التجاريه بوزارة التجارة اليابانية بأسم Tahawy Global Bridge برقم 000000 تحت اشراف المدير التنفيذي / محمود واصف الطحاوي\r\n\r\n<strong>سياسة الشركة :</strong>\r\nجسر الطحاوي تصدير المعدات الثقيله بجودة عالية واسعار تنافسية للاسواق الدولية وخاصة الاسواق بالبلاد العربية\r\n\r\n<strong>هدفنا :</strong>\r\nان نبذل كل جهدنا من اجل تقديم خدمة ممتازة والعناية المطلوبة وايجاد كل الحلول لتنفيذ كل التعاقدات والالتزامات ونقدم الخدمة الافضل من حيث نوع المعدات، الحجم، الشكل، مواصفات المحرك والاجزاء الفنية، بلد المنشأ، سنة التصنيع مسئولين عن جودة المعدات ولخبرتنا نقدم النصيحة من حيث الحاله الفنية قبل البيع لعملائنا الكرام وايضا الحفاظ على أسرار العمل بينا. والاهم من ذلك كسب ثقة العميل ويكون صديقاً لنا', 'عن الشركة', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-12-24 14:41:28', '2017-12-24 14:41:28', '', 0, 'http://localhost/psolvingegypt/primestore/?page_id=39', 0, 'page', '', 0),
(40, 1, '2017-12-09 14:30:58', '2017-12-09 14:30:58', '', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-09 14:30:58', '2017-12-09 14:30:58', '', 39, 'http://localhost/psolvingegypt/primestore/2017/12/09/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-12-09 14:32:18', '2017-12-09 14:32:18', '', 'Contact US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-12-09 14:32:18', '2017-12-09 14:32:18', '', 0, 'http://localhost/psolvingegypt/primestore/?page_id=41', 0, 'page', '', 0),
(42, 1, '2017-12-09 14:32:18', '2017-12-09 14:32:18', '', 'Contact US', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-09 14:32:18', '2017-12-09 14:32:18', '', 41, 'http://localhost/psolvingegypt/primestore/2017/12/09/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-12-09 14:51:52', '2017-12-09 14:51:52', '', 'اتصل بنا', '', 'publish', 'closed', 'closed', '', 'con', '', '', '2017-12-09 14:52:19', '2017-12-09 14:52:19', '', 0, 'http://localhost/psolvingegypt/primestore/?page_id=43', 0, 'page', '', 0),
(44, 1, '2017-12-09 14:51:52', '2017-12-09 14:51:52', '', 'اتصل بنا', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-12-09 14:51:52', '2017-12-09 14:51:52', '', 43, 'http://localhost/psolvingegypt/primestore/2017/12/09/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-12-10 08:56:32', '2017-12-10 08:56:32', '', 'pic1', '', 'inherit', 'open', 'closed', '', 'pic1', '', '', '2017-12-10 08:56:32', '2017-12-10 08:56:32', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/pic1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2017-12-10 08:56:41', '2017-12-10 08:56:41', '', 'pic4', '', 'inherit', 'open', 'closed', '', 'pic4', '', '', '2017-12-10 08:56:41', '2017-12-10 08:56:41', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/pic4.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2017-12-10 09:46:36', '2017-12-10 09:46:36', '<div class=\"col-md-6\">\r\n <div class=\"form-group\">\r\n    <div class=\"input-group\"> <span class=\"input-group-addon\"><i class=\"fa fa-user\"></i></span>\r\n    [text* your-name class:form-control ] \r\n      </div>\r\n     </div>\r\n   </div>\r\n\r\n<div class=\"col-md-6\">\r\n      <div class=\"form-group\">\r\n             <div class=\"input-group\"> <span class=\"input-group-addon\"><i class=\"fa fa-envelope\"></i></span>\r\n    [email* your-email class:form-control ]\r\n</div>\r\n  </div>\r\n    </div>\r\n\r\n<div class=\"col-md-12\">\r\n      <div class=\"form-group\">\r\n        <div class=\"input-group\">\r\n    [textarea   your-message class:form-control ] \r\n<span class=\"input-group-addon v-align-t\"><i class=\"fa fa-pencil\"></i></span> \r\n</div>\r\n      </div>\r\n   </div>\r\n\r\n[submit class:site-button  \"Send\"]\n1\nprimestore \"[your-subject]\"\n[your-name] <info@tahawybridge.com>\ninfo@tahawybridge.com\n[your-name]\r\n[your-email]\r\n[your-message]\nReply-To: [your-email]\n\n\n\n\nprimestore \"[your-subject]\"\nprimestore <me@ahmedelsayed.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on primestore (http://localhost/psolvingegypt/primestore)\nReply-To: me@ahmedelsayed.me\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form ar', '', 'publish', 'closed', 'closed', '', 'contact-form-ar', '', '', '2017-12-26 12:18:18', '2017-12-26 12:18:18', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=wpcf7_contact_form&#038;p=48', 0, 'wpcf7_contact_form', '', 0),
(51, 1, '2017-12-10 11:36:10', '2017-12-10 11:36:10', '', 'pic6', '', 'inherit', 'open', 'closed', '', 'pic6', '', '', '2017-12-10 11:36:10', '2017-12-10 11:36:10', '', 0, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/pic6.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-12-10 11:36:28', '2017-12-10 11:36:28', '', 'pic6', '', 'inherit', 'open', 'closed', '', 'pic6-2', '', '', '2017-12-10 11:36:28', '2017-12-10 11:36:28', '', 0, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/pic6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-12-10 11:41:44', '2017-12-10 11:41:44', '[product-catalogue id=\'1\']	', '2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-10 11:41:44', '2017-12-10 11:41:44', '', 33, 'http://localhost/psolvingegypt/primestore/2017/12/10/33-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-12-10 11:51:04', '2017-12-10 11:51:04', '[product-catalogue id=\'2\']	', '2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-10 11:51:04', '2017-12-10 11:51:04', '', 33, 'http://localhost/psolvingegypt/primestore/2017/12/10/33-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-12-10 12:24:07', '2017-12-10 12:24:07', '<pre>[products]\r\n\r\n[wtcpl-product-cat]</pre>', 'Products', '', 'private', 'closed', 'closed', '', 'products', '', '', '2017-12-11 14:37:05', '2017-12-11 14:37:05', '', 0, 'http://localhost/psolvingegypt/primestore/products/', 0, 'page', '', 0),
(56, 1, '2017-12-10 12:24:09', '2017-12-10 12:24:09', '[sample_long_desc]', 'Sample Product Page', '<p>You can change the product page template in catalog settings.</p><p><strong>Please read this page carefully to fully understand all product page elements.</strong></p>', 'publish', 'closed', 'closed', '', 'sample-product-page', '', '', '2017-12-10 12:25:59', '2017-12-10 12:25:59', '', 0, 'http://localhost/psolvingegypt/primestore/2017/12/10/sample-product-page/', 0, 'al_product', '', 0),
(57, 1, '2017-12-10 12:26:33', '2017-12-10 12:26:33', 'xcvxcvxcvxcv', 'vbv', 'vzxcvxcvxcv', 'publish', 'closed', 'closed', '', 'vbv', '', '', '2017-12-10 12:26:33', '2017-12-10 12:26:33', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=al_product&#038;p=57', 0, 'al_product', '', 0),
(58, 1, '2017-12-10 12:32:58', '2017-12-10 12:32:58', '[show_product_catalog]', 'Catalog', '', 'private', 'closed', 'closed', '', 'catalog', '', '', '2017-12-11 07:39:43', '2017-12-11 07:39:43', '', 0, 'http://localhost/psolvingegypt/primestore/catalog/', 0, 'page', '', 0),
(59, 1, '2017-12-10 12:35:07', '2017-12-10 12:35:07', 'asdasdasdasdsd', 'sdasas', '', 'publish', 'closed', 'closed', '', 'sdasas', '', '', '2017-12-10 15:02:57', '2017-12-10 15:02:57', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=tcpc&#038;p=59', 0, 'tcpc', '', 0),
(61, 1, '2017-12-10 12:50:40', '2017-12-10 12:50:40', '[huge_it_catalog id=\"8\"]', '2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-10 12:50:40', '2017-12-10 12:50:40', '', 33, 'http://localhost/psolvingegypt/primestore/2017/12/10/33-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-12-10 12:53:49', '2017-12-10 12:53:49', '', '2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-10 12:53:49', '2017-12-10 12:53:49', '', 33, 'http://localhost/psolvingegypt/primestore/2017/12/10/33-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-12-10 12:58:11', '2017-12-10 12:58:11', ' [tcproduct-catalog] \r\n', '2', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-10 12:58:11', '2017-12-10 12:58:11', '', 33, 'http://localhost/psolvingegypt/primestore/2017/12/10/33-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-12-10 13:01:58', '2017-12-10 13:01:58', 'sfasdsdasdsd', 'asdasd', '', 'publish', 'closed', 'closed', '', 'asdasd', '', '', '2017-12-10 15:02:34', '2017-12-10 15:02:34', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=tcpc&#038;p=65', 0, 'tcpc', '', 0),
(68, 1, '2017-12-11 07:32:50', '2017-12-11 07:32:50', '[show_product_catalog]', 'Products', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-11 07:32:50', '2017-12-11 07:32:50', '', 55, 'http://localhost/psolvingegypt/primestore/2017/12/11/55-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-12-11 07:39:32', '2017-12-11 07:39:32', '[show_product_catalog]', 'Catalog', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-12-11 07:39:32', '2017-12-11 07:39:32', '', 58, 'http://localhost/psolvingegypt/primestore/2017/12/11/58-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-12-11 08:04:35', '2017-12-11 08:04:35', '', 'لاب توب', '', 'publish', 'closed', 'closed', '', '%d9%84%d8%a7%d8%a8-%d8%aa%d9%88%d8%a8', '', '', '2017-12-11 08:04:35', '2017-12-11 08:04:35', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=tcpc&#038;p=70', 0, 'tcpc', '', 0),
(72, 1, '2017-12-11 10:08:56', '2017-12-11 10:08:56', '[huge_it_catalog id=\"9\"]', 'Products', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-11 10:08:56', '2017-12-11 10:08:56', '', 55, 'http://localhost/psolvingegypt/primestore/2017/12/11/55-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-12-11 10:25:32', '2017-12-11 10:25:32', '', 'Products', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-11 10:25:32', '2017-12-11 10:25:32', '', 55, 'http://localhost/psolvingegypt/primestore/2017/12/11/55-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-12-11 11:11:40', '2017-12-11 11:11:40', 'asasdasd', 'shed', 'sdfsdfsdf', 'trash', 'open', 'closed', '', 'shed__trashed', '', '', '2017-12-24 07:54:51', '2017-12-24 07:54:51', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2017-12-11 11:29:21', '2017-12-11 11:29:21', '[products]', 'Products', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-11 11:29:21', '2017-12-11 11:29:21', '', 55, 'http://localhost/psolvingegypt/primestore/2017/12/11/55-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-12-11 11:43:46', '2017-12-11 11:43:46', '<pre>[products limit=\"4\" columns=\"4\" orderby=\"popularity\" class=\"quick-sale\" on_sale=\"true\" ]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-11 11:43:46', '2017-12-11 11:43:46', '', 55, 'http://localhost/psolvingegypt/primestore/2017/12/11/55-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-12-11 11:44:25', '2017-12-11 11:44:25', 'The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest these men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea maybe you and me were never meant once in a while.\r\n\r\nThese men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea.\r\n\r\n&nbsp;\r\n\r\n[products limit=\"4\" columns=\"4\" orderby=\"popularity\" class=\"quick-sale\" on_sale=\"true\" ]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-11 11:44:25', '2017-12-11 11:44:25', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/11/37-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-12-11 11:44:49', '2017-12-11 11:44:49', 'The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest these men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea maybe you and me were never meant once in a while.\r\n\r\nThese men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea.\r\n\r\n&nbsp;\r\n\r\n[products]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-11 11:44:49', '2017-12-11 11:44:49', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/11/37-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-12-11 11:54:15', '2017-12-11 11:54:15', 'The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest these men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea maybe you and me were never meant once in a while.\r\n\r\nThese men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea.', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-11 11:54:15', '2017-12-11 11:54:15', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/11/37-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-12-11 12:15:20', '2017-12-11 12:15:20', '', 'لاب توب', '', 'trash', 'open', 'closed', '', '%d9%84%d8%a7%d8%a8-%d8%aa%d9%88%d8%a8__trashed', '', '', '2017-12-24 07:54:49', '2017-12-24 07:54:49', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=80', 0, 'product', '', 1),
(81, 1, '2017-12-11 12:41:44', '2017-12-11 12:41:44', '<pre>[products]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-11 12:41:44', '2017-12-11 12:41:44', '', 55, 'http://localhost/psolvingegypt/primestore/2017/12/11/55-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-12-11 13:42:52', '2017-12-11 13:42:52', '', 'dfgdfg', '', 'publish', 'closed', 'closed', '', 'dfgdfg', '', '', '2017-12-11 13:42:52', '2017-12-11 13:42:52', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product_tabpage&#038;p=82', 0, 'product_tabpage', '', 0),
(83, 1, '2017-12-11 13:45:45', '2017-12-11 13:45:45', 'dgfgd', 'gdfg', '', 'publish', 'closed', 'closed', '', 'gdfg', '', '', '2017-12-11 13:45:45', '2017-12-11 13:45:45', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=woo_product_tab&#038;p=83', 0, 'woo_product_tab', '', 0),
(84, 1, '2017-12-11 14:37:05', '2017-12-11 14:37:05', '<pre>[products]\r\n\r\n[wtcpl-product-cat]</pre>', 'Products', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-11 14:37:05', '2017-12-11 14:37:05', '', 55, 'http://localhost/psolvingegypt/primestore/2017/12/11/55-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-12-11 14:38:18', '2017-12-11 14:38:18', 'The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest these men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea maybe you and me were never meant once in a while.\r\n\r\nThese men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea.\r\n\r\n&nbsp;\r\n\r\n[wtcpl-product-cat]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-11 14:38:18', '2017-12-11 14:38:18', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/11/37-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-12-11 14:39:22', '2017-12-11 14:39:22', 'sadas', 'asdas', '', 'publish', 'closed', 'closed', '', 'asdas', '', '', '2017-12-11 14:39:22', '2017-12-11 14:39:22', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=woo_product_tab&#038;p=87', 0, 'woo_product_tab', '', 0),
(88, 1, '2017-12-11 14:49:02', '2017-12-11 14:49:02', 'aaaaaaaaaaa', 'aaaaaaaa', '', 'trash', 'open', 'closed', '', 'aaaaaaaa__trashed', '', '', '2017-12-24 07:54:47', '2017-12-24 07:54:47', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2017-12-17 10:19:06', '2017-12-17 10:19:06', '<strong>Company Profile</strong>\n\nTahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\n\n<strong>Background :</strong> The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.\n\n<strong>Shipping :</strong> we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\n\n<strong>Vision :</strong>\n\ncontribute to growth.\nReliable and affordable heavy machinery is an economic driver for projects all around the world. To ensure a steady supply, the Tahawy Global Bridge Group has a global network to source some of the best new and used machinery, and to be an Excellent Company which is always a model to benchmark not by its size but its Excellence of Operations. We believe that being the best employer will contribute to sustainable growth and translate to satisfied clients with whom we have long term, trustful relationships.\n\n<strong>MISSION</strong>\n\nTo become a company that :\n\nAspires to assist our customer to become successful by utilizing our comprehensive understanding through continuous interaction\nWe want to be acknowledged by our clients, our people and other stakeholders for delivering what we promise; a competitive edge through high-quality solutions.\nTo grow business and trade through enabling excellent international trade services.\n\n<strong>Values</strong>\n<ul style=\"\">\n 	<li><strong>Integrity</strong> : Ethics and integrity are the foundation of our brand and the guiding principles for all we do.\n</li><li>\n<strong>Safety </strong>: Priority number one. We are focused on our own personal safety as well as the safety of others.\n</li><li>\n<strong>Collaboration </strong>: We work together with customers and understand that everyone has a role in providing the best solution.\n</li><li>\n<strong>Competition</strong> : We compete to win. We know that competition makes everyone stronger.\n</li><li>\n<strong>Creativity</strong> : We are resourceful. We are innovative and strive to apply the right technology and solution every time.\n</li><li>\n<strong>Respect</strong> : We are honest with ourselves and each other. We value our diverse skills and talents, and know we are stronger together as one family.</li>\n</ul>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2017-12-17 10:19:06', '2017-12-17 10:19:06', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/11/37-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2017-12-12 07:33:15', '2017-12-12 07:33:15', 'The first mate and his Skipper too will do their very best to make the others comfortable in their tropic island nest these men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea maybe you and me were never meant once in a while.\r\n\r\nThese men promptly escaped from a maximum security stockade to the Los Angeles underground texas tea.\r\n\r\n[catlist]\r\n\r\n[wtcpl-product-cat]', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-12 07:33:15', '2017-12-12 07:33:15', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/12/37-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-12-17 08:44:51', '2017-12-17 08:44:51', 'sdfsdfsdfsdsd', 'xfsdfsdf', 'sdfffffffasfasfasdf', 'trash', 'closed', 'open', '', 'xfsdfsdf__trashed', '', '', '2017-12-24 07:54:46', '2017-12-24 07:54:46', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2017-12-17 08:44:51', '2017-12-17 08:44:51', 'sdfsdfsdfsdsd', 'xfsdfsdf', 'sdfffffffasfasfasdf', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-12-17 08:44:51', '2017-12-17 08:44:51', '', 92, 'http://localhost/psolvingegypt/primestore/2017/12/17/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-12-17 10:07:52', '2017-12-17 10:07:52', 'ompany profile\r\n\r\nTahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\r\n\r\nBackground: The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.\r\n\r\nShipping: we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\r\nVision: contribute to growth.\r\nReliable and affordable heavy machinery is an economic driver for projects all around the world. To ensure a steady supply, the Tahawy Global Bridge Group has a global network to source some of the best new and used machinery, and to be an Excellent Company which is always a model to benchmark not by its size but its Excellence of Operations. We believe that being the best employer will contribute to sustainable growth and translate to satisfied clients with whom we have long term, trustful relationships.\r\n\r\nMISSION\r\n\r\nTo become a company that :\r\n\r\nAspires to assist our customer to become successful by utilizing our comprehensive understanding through continuous interaction\r\nWe want to be acknowledged by our clients, our people and other stakeholders for delivering what we promise; a competitive edge through high-quality solutions.\r\nTo grow business and trade through enabling excellent international trade services.\r\n\r\nValues\r\n\r\nIntegrity: Ethics and integrity are the foundation of our brand and the guiding principles for all we do.\r\nSafety: Priority number one. We are focused on our own personal safety as well as the safety of others.\r\nCollaboration: We work together with customers and understand that everyone has a role in providing the best solution.\r\nCompetition: We compete to win. We know that competition makes everyone stronger.\r\nCreativity: We are resourceful. We are innovative and strive to apply the right technology and solution every time.\r\nRespect: We are honest with ourselves and each other. We value our diverse skills and talents, and know we are stronger together as one family.', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-17 10:07:52', '2017-12-17 10:07:52', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/17/37-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-12-17 10:18:02', '2017-12-17 10:18:02', '<strong>Company Profile</strong>\r\n\r\nTahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\r\n\r\n<strong>Background :</strong> The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.\r\n\r\n<strong>Shipping :</strong> we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\r\n<strong>Vision :</strong>\r\n\r\ncontribute to growth.\r\nReliable and affordable heavy machinery is an economic driver for projects all around the world. To ensure a steady supply, the Tahawy Global Bridge Group has a global network to source some of the best new and used machinery, and to be an Excellent Company which is always a model to benchmark not by its size but its Excellence of Operations. We believe that being the best employer will contribute to sustainable growth and translate to satisfied clients with whom we have long term, trustful relationships.\r\n\r\n<strong>MISSION</strong>\r\n\r\nTo become a company that :\r\n\r\nAspires to assist our customer to become successful by utilizing our comprehensive understanding through continuous interaction\r\nWe want to be acknowledged by our clients, our people and other stakeholders for delivering what we promise; a competitive edge through high-quality solutions.\r\nTo grow business and trade through enabling excellent international trade services.\r\n\r\n<strong>Values</strong>\r\n<ul>\r\n 	<li><strong>Integrity</strong> : Ethics and integrity are the foundation of our brand and the guiding principles for all we do.\r\n</li><li>\r\n<strong>Safety </strong>: Priority number one. We are focused on our own personal safety as well as the safety of others.\r\n</li><li>\r\n<strong>Collaboration </strong>: We work together with customers and understand that everyone has a role in providing the best solution.\r\n</li><li>\r\n<strong>Competition</strong> : We compete to win. We know that competition makes everyone stronger.\r\n</li><li>\r\n<strong>Creativity</strong> : We are resourceful. We are innovative and strive to apply the right technology and solution every time.\r\n</li><li>\r\n<strong>Respect</strong> : We are honest with ourselves and each other. We value our diverse skills and talents, and know we are stronger together as one family.</li>\r\n</ul>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-17 10:18:02', '2017-12-17 10:18:02', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/17/37-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-12-17 10:19:24', '2017-12-17 10:19:24', '<strong>Company Profile</strong>\r\n\r\nTahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\r\n\r\n<strong>Background :</strong> The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.\r\n\r\n<strong>Shipping :</strong> we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\r\n<strong>Vision :</strong>\r\n\r\ncontribute to growth.\r\nReliable and affordable heavy machinery is an economic driver for projects all around the world. To ensure a steady supply, the Tahawy Global Bridge Group has a global network to source some of the best new and used machinery, and to be an Excellent Company which is always a model to benchmark not by its size but its Excellence of Operations. We believe that being the best employer will contribute to sustainable growth and translate to satisfied clients with whom we have long term, trustful relationships.\r\n\r\n<strong>MISSION</strong>\r\n\r\nTo become a company that :\r\n\r\nAspires to assist our customer to become successful by utilizing our comprehensive understanding through continuous interaction\r\nWe want to be acknowledged by our clients, our people and other stakeholders for delivering what we promise; a competitive edge through high-quality solutions.\r\nTo grow business and trade through enabling excellent international trade services.\r\n\r\n<strong>Values</strong>\r\n<ul style=\"line-height: 30px;\">\r\n 	<li><strong>Integrity</strong> : Ethics and integrity are the foundation of our brand and the guiding principles for all we do.\r\n</li><li>\r\n<strong>Safety </strong>: Priority number one. We are focused on our own personal safety as well as the safety of others.\r\n</li><li>\r\n<strong>Collaboration </strong>: We work together with customers and understand that everyone has a role in providing the best solution.\r\n</li><li>\r\n<strong>Competition</strong> : We compete to win. We know that competition makes everyone stronger.\r\n</li><li>\r\n<strong>Creativity</strong> : We are resourceful. We are innovative and strive to apply the right technology and solution every time.\r\n</li><li>\r\n<strong>Respect</strong> : We are honest with ourselves and each other. We value our diverse skills and talents, and know we are stronger together as one family.</li>\r\n</ul>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-17 10:19:24', '2017-12-17 10:19:24', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/17/37-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(97, 1, '2017-12-17 10:30:09', '2017-12-17 10:30:09', '<h2 style=\"text-align: center;\"><strong>من نحن</strong></h2>\r\nنرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\r\n\r\n<strong>نبذة عن الشركة :</strong>\r\nتأسست شركة جسر الطحاوي عام 2017 بمقاطعة توتشيجي باليابان ومسجله بالغرفة التجاريه بوزارة التجارة اليابانية بأسم Tahawy Global Bridge برقم 000000 تحت اشراف المدير التنفيذي / محمود واصف الطحاوي\r\n\r\n<strong>سياسة الشركة :</strong>\r\nجسر الطحاوي تصدير المعدات الثقيله بجودة عالية واسعار تنافسية للاسواق الدولية وخاصة الاسواق بالبلاد العربية\r\n\r\n<strong>هدفنا :</strong>\r\nان نبذل كل جهدنا من اجل تقديم خدمة ممتازة والعناية المطلوبة وايجاد كل الحلول لتنفيذ كل التعاقدات والالتزامات ونقدم الخدمة الافضل من حيث نوع المعدات، الحجم، الشكل، مواصفات المحرك والاجزاء الفنية، بلد المنشأ، سنة التصنيع مسئولين عن جودة المعدات ولخبرتنا نقدم النصيحة من حيث الحاله الفنية قبل البيع لعملائنا الكرام وايضا الحفاظ على أسرار العمل بينا. والاهم من ذلك كسب ثقة العميل ويكون صديقاً لنا', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-17 10:30:09', '2017-12-17 10:30:09', '', 39, 'http://localhost/psolvingegypt/primestore/2017/12/17/39-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-12-17 10:30:53', '2017-12-17 10:30:53', '<h2 style=\"text-align: right;\"><strong>من نحن</strong></h2>\r\nنرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\r\n\r\n<strong>نبذة عن الشركة :</strong>\r\nتأسست شركة جسر الطحاوي عام 2017 بمقاطعة توتشيجي باليابان ومسجله بالغرفة التجاريه بوزارة التجارة اليابانية بأسم Tahawy Global Bridge برقم 000000 تحت اشراف المدير التنفيذي / محمود واصف الطحاوي\r\n\r\n<strong>سياسة الشركة :</strong>\r\nجسر الطحاوي تصدير المعدات الثقيله بجودة عالية واسعار تنافسية للاسواق الدولية وخاصة الاسواق بالبلاد العربية\r\n\r\n<strong>هدفنا :</strong>\r\nان نبذل كل جهدنا من اجل تقديم خدمة ممتازة والعناية المطلوبة وايجاد كل الحلول لتنفيذ كل التعاقدات والالتزامات ونقدم الخدمة الافضل من حيث نوع المعدات، الحجم، الشكل، مواصفات المحرك والاجزاء الفنية، بلد المنشأ، سنة التصنيع مسئولين عن جودة المعدات ولخبرتنا نقدم النصيحة من حيث الحاله الفنية قبل البيع لعملائنا الكرام وايضا الحفاظ على أسرار العمل بينا. والاهم من ذلك كسب ثقة العميل ويكون صديقاً لنا', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-17 10:30:53', '2017-12-17 10:30:53', '', 39, 'http://localhost/psolvingegypt/primestore/2017/12/17/39-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-12-17 10:33:43', '2017-12-17 10:33:43', '<h1 style=\"text-align: right;\"><strong>من نحن</strong></h1>\r\nنرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\r\n\r\n<strong>نبذة عن الشركة :</strong>\r\nتأسست شركة جسر الطحاوي عام 2017 بمقاطعة توتشيجي باليابان ومسجله بالغرفة التجاريه بوزارة التجارة اليابانية بأسم Tahawy Global Bridge برقم 000000 تحت اشراف المدير التنفيذي / محمود واصف الطحاوي\r\n\r\n<strong>سياسة الشركة :</strong>\r\nجسر الطحاوي تصدير المعدات الثقيله بجودة عالية واسعار تنافسية للاسواق الدولية وخاصة الاسواق بالبلاد العربية\r\n\r\n<strong>هدفنا :</strong>\r\nان نبذل كل جهدنا من اجل تقديم خدمة ممتازة والعناية المطلوبة وايجاد كل الحلول لتنفيذ كل التعاقدات والالتزامات ونقدم الخدمة الافضل من حيث نوع المعدات، الحجم، الشكل، مواصفات المحرك والاجزاء الفنية، بلد المنشأ، سنة التصنيع مسئولين عن جودة المعدات ولخبرتنا نقدم النصيحة من حيث الحاله الفنية قبل البيع لعملائنا الكرام وايضا الحفاظ على أسرار العمل بينا. والاهم من ذلك كسب ثقة العميل ويكون صديقاً لنا', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-17 10:33:43', '2017-12-17 10:33:43', '', 39, 'http://localhost/psolvingegypt/primestore/2017/12/17/39-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-12-17 10:35:04', '2017-12-17 10:35:04', '<b><span style=\"font-size: large;\">من نحن </span></b>\r\nنرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\r\n\r\n<strong>نبذة عن الشركة :</strong>\r\nتأسست شركة جسر الطحاوي عام 2017 بمقاطعة توتشيجي باليابان ومسجله بالغرفة التجاريه بوزارة التجارة اليابانية بأسم Tahawy Global Bridge برقم 000000 تحت اشراف المدير التنفيذي / محمود واصف الطحاوي\r\n\r\n<strong>سياسة الشركة :</strong>\r\nجسر الطحاوي تصدير المعدات الثقيله بجودة عالية واسعار تنافسية للاسواق الدولية وخاصة الاسواق بالبلاد العربية\r\n\r\n<strong>هدفنا :</strong>\r\nان نبذل كل جهدنا من اجل تقديم خدمة ممتازة والعناية المطلوبة وايجاد كل الحلول لتنفيذ كل التعاقدات والالتزامات ونقدم الخدمة الافضل من حيث نوع المعدات، الحجم، الشكل، مواصفات المحرك والاجزاء الفنية، بلد المنشأ، سنة التصنيع مسئولين عن جودة المعدات ولخبرتنا نقدم النصيحة من حيث الحاله الفنية قبل البيع لعملائنا الكرام وايضا الحفاظ على أسرار العمل بينا. والاهم من ذلك كسب ثقة العميل ويكون صديقاً لنا', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-17 10:35:04', '2017-12-17 10:35:04', '', 39, 'http://localhost/psolvingegypt/primestore/2017/12/17/39-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-12-17 10:35:41', '2017-12-17 10:35:41', '<strong> من نحن </strong>\r\nنرحب بكم في موقعنا موقع شركتنا جسر الطحاوي للمعدات الثقيلة هي بمثابة جســر يربط بين اليابان والوطن العربي ومقرها الاساسي بمقاطعة توتشيجي باليابان وتبعد عن العاصمة طوكيو أقل من 85 كيلو متر، ومقر شركتنا بالقرب من اكبر مزاد باليابان للمعدات الثقيلة المستعملة والالات الزراعية والسيارات ايضا.\r\n\r\n<strong>نبذة عن الشركة :</strong>\r\nتأسست شركة جسر الطحاوي عام 2017 بمقاطعة توتشيجي باليابان ومسجله بالغرفة التجاريه بوزارة التجارة اليابانية بأسم Tahawy Global Bridge برقم 000000 تحت اشراف المدير التنفيذي / محمود واصف الطحاوي\r\n\r\n<strong>سياسة الشركة :</strong>\r\nجسر الطحاوي تصدير المعدات الثقيله بجودة عالية واسعار تنافسية للاسواق الدولية وخاصة الاسواق بالبلاد العربية\r\n\r\n<strong>هدفنا :</strong>\r\nان نبذل كل جهدنا من اجل تقديم خدمة ممتازة والعناية المطلوبة وايجاد كل الحلول لتنفيذ كل التعاقدات والالتزامات ونقدم الخدمة الافضل من حيث نوع المعدات، الحجم، الشكل، مواصفات المحرك والاجزاء الفنية، بلد المنشأ، سنة التصنيع مسئولين عن جودة المعدات ولخبرتنا نقدم النصيحة من حيث الحاله الفنية قبل البيع لعملائنا الكرام وايضا الحفاظ على أسرار العمل بينا. والاهم من ذلك كسب ثقة العميل ويكون صديقاً لنا', 'عن الشركة', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-17 10:35:41', '2017-12-17 10:35:41', '', 39, 'http://localhost/psolvingegypt/primestore/2017/12/17/39-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-12-17 16:57:13', '2017-12-17 16:57:13', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2017-12-24 11:38:54', '2017-12-24 11:38:54', '', 0, 'http://localhost/psolvingegypt/primestore/?page_id=102', 0, 'page', '', 0),
(103, 1, '2017-12-17 16:57:13', '2017-12-17 16:57:13', '', 'Types Of Equipment', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2017-12-17 16:57:13', '2017-12-17 16:57:13', '', 102, 'http://localhost/psolvingegypt/primestore/2017/12/17/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2017-12-17 17:27:01', '2017-12-17 17:27:01', 'sdfgdfgdfg', 'fgdfgdfg', 'sdfgsdgsdff', 'trash', 'closed', 'open', '', 'fgdfgdfg__trashed', '', '', '2017-12-24 07:54:44', '2017-12-24 07:54:44', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2017-12-17 17:27:01', '2017-12-17 17:27:01', 'sdfgdfgdfg', 'fgdfgdfg', 'sdfgsdgsdff', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2017-12-17 17:27:01', '2017-12-17 17:27:01', '', 104, 'http://localhost/psolvingegypt/primestore/2017/12/17/104-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2017-12-24 07:54:47', '2017-12-24 07:54:47', 'aaaaaaaaaaa', 'aaaaaaaa', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2017-12-24 07:54:47', '2017-12-24 07:54:47', '', 88, 'http://localhost/psolvingegypt/primestore/2017/12/24/88-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-12-24 07:54:49', '2017-12-24 07:54:49', '', 'لاب توب', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-12-24 07:54:49', '2017-12-24 07:54:49', '', 80, 'http://localhost/psolvingegypt/primestore/2017/12/24/80-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2017-12-24 07:54:51', '2017-12-24 07:54:51', 'asasdasd', 'shed', 'sdfsdfsdf', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-12-24 07:54:51', '2017-12-24 07:54:51', '', 74, 'http://localhost/psolvingegypt/primestore/2017/12/24/74-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2017-12-24 07:57:46', '2017-12-24 07:57:46', '', 'Excavators', '', 'publish', 'closed', 'open', '', 'excavators', '', '', '2017-12-24 07:57:46', '2017-12-24 07:57:46', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=110', 0, 'product', '', 0),
(111, 1, '2017-12-24 07:57:38', '2017-12-24 07:57:38', '', '1- Excavator', '', 'inherit', 'open', 'closed', '', '1-excavator', '', '', '2017-12-24 07:57:38', '2017-12-24 07:57:38', '', 110, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/1-Excavator.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-12-24 07:57:46', '2017-12-24 07:57:46', '', 'Excavators', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-12-24 07:57:46', '2017-12-24 07:57:46', '', 110, 'http://localhost/psolvingegypt/primestore/2017/12/24/110-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2017-12-24 07:58:31', '2017-12-24 07:58:31', '', 'حفارة', '', 'publish', 'closed', 'open', '', 'excavators-2', '', '', '2017-12-24 07:59:09', '2017-12-24 07:59:09', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=113', 0, 'product', '', 0),
(114, 1, '2017-12-24 07:58:31', '2017-12-24 07:58:31', '', 'حفارة', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2017-12-24 07:58:31', '2017-12-24 07:58:31', '', 113, 'http://localhost/psolvingegypt/primestore/2017/12/24/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-12-24 08:00:44', '2017-12-24 08:00:44', '', 'Wheel Loaders', '', 'publish', 'closed', 'open', '', 'wheel-loaders', '', '', '2017-12-24 08:00:44', '2017-12-24 08:00:44', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=115', 0, 'product', '', 0),
(116, 1, '2017-12-24 08:00:37', '2017-12-24 08:00:37', '', '2- wheel Loader', '', 'inherit', 'open', 'closed', '', '2-wheel-loader', '', '', '2017-12-24 08:00:37', '2017-12-24 08:00:37', '', 115, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/2-wheel-Loader-.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2017-12-24 08:00:44', '2017-12-24 08:00:44', '', 'Wheel Loaders', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2017-12-24 08:00:44', '2017-12-24 08:00:44', '', 115, 'http://localhost/psolvingegypt/primestore/2017/12/24/115-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2017-12-24 08:01:15', '2017-12-24 08:01:15', '', 'جرافة', '', 'publish', 'closed', 'open', '', '%d8%ac%d8%b1%d8%a7%d9%81%d8%a9', '', '', '2017-12-24 08:01:15', '2017-12-24 08:01:15', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2017-12-24 08:01:15', '2017-12-24 08:01:15', '', 'جرافة', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2017-12-24 08:01:15', '2017-12-24 08:01:15', '', 118, 'http://localhost/psolvingegypt/primestore/2017/12/24/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2017-12-24 08:02:11', '2017-12-24 08:02:11', '', 'Bulldozers', '', 'publish', 'closed', 'open', '', 'bulldozers', '', '', '2017-12-24 08:02:43', '2017-12-24 08:02:43', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2017-12-24 08:01:56', '2017-12-24 08:01:56', '', '3- Bulldozer', '', 'inherit', 'open', 'closed', '', '3-bulldozer', '', '', '2017-12-24 08:01:56', '2017-12-24 08:01:56', '', 120, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/3-Bulldozer-.gif', 0, 'attachment', 'image/gif', 0),
(122, 1, '2017-12-24 08:02:11', '2017-12-24 08:02:11', '', 'Bulldozers', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2017-12-24 08:02:11', '2017-12-24 08:02:11', '', 120, 'http://localhost/psolvingegypt/primestore/2017/12/24/120-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2017-12-24 08:03:03', '2017-12-24 08:03:03', '', 'بلدوزر', '', 'publish', 'closed', 'open', '', '%d8%a8%d9%84%d8%af%d9%88%d8%b2%d8%b1', '', '', '2017-12-24 08:03:03', '2017-12-24 08:03:03', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=123', 0, 'product', '', 0),
(124, 1, '2017-12-24 08:03:03', '2017-12-24 08:03:03', '', 'بلدوزر', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2017-12-24 08:03:03', '2017-12-24 08:03:03', '', 123, 'http://localhost/psolvingegypt/primestore/2017/12/24/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2017-12-24 08:25:26', '2017-12-24 08:25:26', '', 'Rollers', '', 'publish', 'closed', 'open', '', 'rollers', '', '', '2017-12-24 08:25:26', '2017-12-24 08:25:26', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=125', 0, 'product', '', 0),
(126, 1, '2017-12-24 08:25:17', '2017-12-24 08:25:17', '', '4- rollers', '', 'inherit', 'open', 'closed', '', '4-rollers', '', '', '2017-12-24 08:25:17', '2017-12-24 08:25:17', '', 125, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/4-rollers-.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2017-12-24 08:25:26', '2017-12-24 08:25:26', '', 'Rollers', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-12-24 08:25:26', '2017-12-24 08:25:26', '', 125, 'http://localhost/psolvingegypt/primestore/2017/12/24/125-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2017-12-24 08:25:54', '2017-12-24 08:25:54', '', 'مدحله', '', 'publish', 'closed', 'open', '', '%d9%85%d8%af%d8%ad%d9%84%d9%87', '', '', '2017-12-24 08:25:54', '2017-12-24 08:25:54', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2017-12-24 08:25:54', '2017-12-24 08:25:54', '', 'مدحله', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2017-12-24 08:25:54', '2017-12-24 08:25:54', '', 128, 'http://localhost/psolvingegypt/primestore/2017/12/24/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2017-12-24 08:47:41', '2017-12-24 08:47:41', '', 'Cranes', '', 'publish', 'closed', 'open', '', 'cranes', '', '', '2017-12-24 08:47:41', '2017-12-24 08:47:41', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=130', 0, 'product', '', 0),
(131, 1, '2017-12-24 08:47:28', '2017-12-24 08:47:28', '', '5- cranes', '', 'inherit', 'open', 'closed', '', '5-cranes', '', '', '2017-12-24 08:47:28', '2017-12-24 08:47:28', '', 130, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/5-cranes-.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2017-12-24 08:47:41', '2017-12-24 08:47:41', '', 'Cranes', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2017-12-24 08:47:41', '2017-12-24 08:47:41', '', 130, 'http://localhost/psolvingegypt/primestore/2017/12/24/130-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2017-12-24 08:48:02', '2017-12-24 08:48:02', '', 'رافعة', '', 'publish', 'closed', 'open', '', '%d8%b1%d8%a7%d9%81%d8%b9%d8%a9', '', '', '2017-12-24 08:48:02', '2017-12-24 08:48:02', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 1, '2017-12-24 08:48:02', '2017-12-24 08:48:02', '', 'رافعة', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2017-12-24 08:48:02', '2017-12-24 08:48:02', '', 133, 'http://localhost/psolvingegypt/primestore/2017/12/24/133-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2017-12-24 08:48:52', '2017-12-24 08:48:52', '', 'Forklift', '', 'publish', 'closed', 'open', '', 'forklift', '', '', '2017-12-24 08:48:52', '2017-12-24 08:48:52', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=135', 0, 'product', '', 0),
(136, 1, '2017-12-24 08:48:47', '2017-12-24 08:48:47', '', '6- forklift', '', 'inherit', 'open', 'closed', '', '6-forklift', '', '', '2017-12-24 08:48:47', '2017-12-24 08:48:47', '', 135, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/6-forklift-.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2017-12-24 08:48:52', '2017-12-24 08:48:52', '', 'Forklift', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2017-12-24 08:48:52', '2017-12-24 08:48:52', '', 135, 'http://localhost/psolvingegypt/primestore/2017/12/24/135-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2017-12-24 08:49:09', '2017-12-24 08:49:09', '', 'رافعة شوكية', '', 'publish', 'closed', 'open', '', '%d8%b1%d8%a7%d9%81%d8%b9%d8%a9-%d8%b4%d9%88%d9%83%d9%8a%d8%a9', '', '', '2017-12-24 08:49:09', '2017-12-24 08:49:09', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=138', 0, 'product', '', 0),
(139, 1, '2017-12-24 08:49:09', '2017-12-24 08:49:09', '', 'رافعة شوكية', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2017-12-24 08:49:09', '2017-12-24 08:49:09', '', 138, 'http://localhost/psolvingegypt/primestore/2017/12/24/138-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2017-12-24 08:51:19', '2017-12-24 08:51:19', '', 'Manlift', '', 'publish', 'closed', 'open', '', 'manlift', '', '', '2017-12-24 08:51:19', '2017-12-24 08:51:19', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=140', 0, 'product', '', 0),
(141, 1, '2017-12-24 08:51:13', '2017-12-24 08:51:13', '', '7- Liftman', '', 'inherit', 'open', 'closed', '', '7-liftman', '', '', '2017-12-24 08:51:13', '2017-12-24 08:51:13', '', 140, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/7-Liftman-.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2017-12-24 08:51:19', '2017-12-24 08:51:19', '', 'Manlift', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2017-12-24 08:51:19', '2017-12-24 08:51:19', '', 140, 'http://localhost/psolvingegypt/primestore/2017/12/24/140-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2017-12-24 08:52:01', '2017-12-24 08:52:01', '', 'رافعة صيانة', '', 'publish', 'closed', 'open', '', '%d8%b1%d8%a7%d9%81%d8%b9%d8%a9-%d8%b5%d9%8a%d8%a7%d9%86%d8%a9', '', '', '2017-12-24 08:52:01', '2017-12-24 08:52:01', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=143', 0, 'product', '', 0),
(144, 1, '2017-12-24 08:52:01', '2017-12-24 08:52:01', '', 'رافعة صيانة', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2017-12-24 08:52:01', '2017-12-24 08:52:01', '', 143, 'http://localhost/psolvingegypt/primestore/2017/12/24/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2017-12-24 08:52:45', '2017-12-24 08:52:45', '', 'Scissor Lift', '', 'publish', 'closed', 'open', '', 'scissor-lift', '', '', '2017-12-24 08:52:45', '2017-12-24 08:52:45', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, '2017-12-24 08:52:37', '2017-12-24 08:52:37', '', '8- scissor lift', '', 'inherit', 'open', 'closed', '', '8-scissor-lift', '', '', '2017-12-24 08:52:37', '2017-12-24 08:52:37', '', 145, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/8-scissor-lift-.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2017-12-24 08:52:45', '2017-12-24 08:52:45', '', 'Scissor Lift', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-12-24 08:52:45', '2017-12-24 08:52:45', '', 145, 'http://localhost/psolvingegypt/primestore/2017/12/24/145-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2017-12-24 08:53:01', '2017-12-24 08:53:01', '', 'رافعة عمودية', '', 'publish', 'closed', 'open', '', '%d8%b1%d8%a7%d9%81%d8%b9%d8%a9-%d8%b9%d9%85%d9%88%d8%af%d9%8a%d8%a9', '', '', '2017-12-24 08:53:01', '2017-12-24 08:53:01', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2017-12-24 08:53:01', '2017-12-24 08:53:01', '', 'رافعة عمودية', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2017-12-24 08:53:01', '2017-12-24 08:53:01', '', 148, 'http://localhost/psolvingegypt/primestore/2017/12/24/148-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2017-12-24 08:53:31', '2017-12-24 08:53:31', '', 'Milling & Paver', '', 'publish', 'closed', 'open', '', 'milling-paver', '', '', '2017-12-24 08:54:16', '2017-12-24 08:54:16', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=150', 0, 'product', '', 0),
(151, 1, '2017-12-24 08:53:24', '2017-12-24 08:53:24', '', '9- milling and paver', '', 'inherit', 'open', 'closed', '', '9-milling-and-paver', '', '', '2017-12-24 08:53:24', '2017-12-24 08:53:24', '', 150, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/9-milling-and-paver-.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2017-12-24 08:53:31', '2017-12-24 08:53:31', '', 'Milling & Paver', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2017-12-24 08:53:31', '2017-12-24 08:53:31', '', 150, 'http://localhost/psolvingegypt/primestore/2017/12/24/150-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2017-12-24 08:54:45', '2017-12-24 08:54:45', '', 'كاشطة وتسوية أسفلت', '', 'publish', 'closed', 'open', '', '%d9%83%d8%a7%d8%b4%d8%b7%d8%a9-%d9%88%d8%aa%d8%b3%d9%88%d9%8a%d8%a9-%d8%a3%d8%b3%d9%81%d9%84%d8%aa', '', '', '2017-12-24 08:54:45', '2017-12-24 08:54:45', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=153', 0, 'product', '', 0),
(154, 1, '2017-12-24 08:54:45', '2017-12-24 08:54:45', '', 'كاشطة وتسوية أسفلت', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-12-24 08:54:45', '2017-12-24 08:54:45', '', 153, 'http://localhost/psolvingegypt/primestore/2017/12/24/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2017-12-24 08:57:06', '2017-12-24 08:57:06', '', 'Pilling & Drilling', '', 'publish', 'closed', 'open', '', 'pilling-drilling', '', '', '2017-12-24 08:57:06', '2017-12-24 08:57:06', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 1, '2017-12-24 08:56:50', '2017-12-24 08:56:50', '', '10- pilling and drilling', '', 'inherit', 'open', 'closed', '', '10-pilling-and-drilling', '', '', '2017-12-24 08:56:50', '2017-12-24 08:56:50', '', 155, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/10-pilling-and-drilling-.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2017-12-24 08:57:06', '2017-12-24 08:57:06', '', 'Pilling & Drilling', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-12-24 08:57:06', '2017-12-24 08:57:06', '', 155, 'http://localhost/psolvingegypt/primestore/2017/12/24/155-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2017-12-24 08:57:26', '2017-12-24 08:57:26', '', 'حفر وتثبيت الخوازيق', '', 'publish', 'closed', 'open', '', '%d8%ad%d9%81%d8%b1-%d9%88%d8%aa%d8%ab%d8%a8%d9%8a%d8%aa-%d8%a7%d9%84%d8%ae%d9%88%d8%a7%d8%b2%d9%8a%d9%82', '', '', '2017-12-24 08:57:26', '2017-12-24 08:57:26', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=158', 0, 'product', '', 0),
(159, 1, '2017-12-24 08:57:26', '2017-12-24 08:57:26', '', 'حفر وتثبيت الخوازيق', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2017-12-24 08:57:26', '2017-12-24 08:57:26', '', 158, 'http://localhost/psolvingegypt/primestore/2017/12/24/158-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2017-12-24 08:58:08', '2017-12-24 08:58:08', '', 'Trencher', '', 'publish', 'closed', 'open', '', 'trencher', '', '', '2017-12-24 09:00:46', '2017-12-24 09:00:46', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=160', 0, 'product', '', 0),
(161, 1, '2017-12-24 08:58:03', '2017-12-24 08:58:03', '', '11- trencher', '', 'inherit', 'open', 'closed', '', '11-trencher', '', '', '2017-12-24 08:58:03', '2017-12-24 08:58:03', '', 160, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/11-trencher-.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2017-12-24 08:58:08', '2017-12-24 08:58:08', '', 'Trencher', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2017-12-24 08:58:08', '2017-12-24 08:58:08', '', 160, 'http://localhost/psolvingegypt/primestore/2017/12/24/160-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2017-12-24 09:06:30', '2017-12-24 09:06:30', '', 'حفارة قناة', '', 'publish', 'closed', 'open', '', '%d8%ad%d9%81%d8%a7%d8%b1%d8%a9-%d9%82%d9%86%d8%a7%d8%a9', '', '', '2017-12-24 09:06:30', '2017-12-24 09:06:30', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=163', 0, 'product', '', 0),
(164, 1, '2017-12-24 09:06:30', '2017-12-24 09:06:30', '', 'حفارة قناة', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2017-12-24 09:06:30', '2017-12-24 09:06:30', '', 163, 'http://localhost/psolvingegypt/primestore/2017/12/24/163-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2017-12-24 09:08:12', '2017-12-24 09:08:12', '', 'Motor Grader', '', 'publish', 'closed', 'open', '', 'motor-grader', '', '', '2017-12-24 09:08:12', '2017-12-24 09:08:12', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=165', 0, 'product', '', 0),
(166, 1, '2017-12-24 09:08:04', '2017-12-24 09:08:04', '', '12- motor grader', '', 'inherit', 'open', 'closed', '', '12-motor-grader', '', '', '2017-12-24 09:08:04', '2017-12-24 09:08:04', '', 165, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/12-motor-grader-.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2017-12-24 09:08:12', '2017-12-24 09:08:12', '', 'Motor Grader', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2017-12-24 09:08:12', '2017-12-24 09:08:12', '', 165, 'http://localhost/psolvingegypt/primestore/2017/12/24/165-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2017-12-24 09:08:25', '2017-12-24 09:08:25', '', 'جريدر تسوية', '', 'publish', 'closed', 'open', '', '%d8%ac%d8%b1%d9%8a%d8%af%d8%b1-%d8%aa%d8%b3%d9%88%d9%8a%d8%a9', '', '', '2017-12-24 09:08:25', '2017-12-24 09:08:25', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=168', 0, 'product', '', 0),
(169, 1, '2017-12-24 09:08:25', '2017-12-24 09:08:25', '', 'جريدر تسوية', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2017-12-24 09:08:25', '2017-12-24 09:08:25', '', 168, 'http://localhost/psolvingegypt/primestore/2017/12/24/168-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2017-12-24 09:24:12', '2017-12-24 09:24:12', '', 'Screen & crushing', '', 'publish', 'closed', 'open', '', 'screen-crushing', '', '', '2017-12-24 09:24:12', '2017-12-24 09:24:12', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=170', 0, 'product', '', 0),
(171, 1, '2017-12-24 09:24:06', '2017-12-24 09:24:06', '', '13- Screen and crushing', '', 'inherit', 'open', 'closed', '', '13-screen-and-crushing', '', '', '2017-12-24 09:24:06', '2017-12-24 09:24:06', '', 170, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/13-Screen-and-crushing-.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2017-12-24 09:24:12', '2017-12-24 09:24:12', '', 'Screen & crushing', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2017-12-24 09:24:12', '2017-12-24 09:24:12', '', 170, 'http://localhost/psolvingegypt/primestore/2017/12/24/170-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2017-12-24 09:24:53', '2017-12-24 09:24:53', '', 'كسارة مع غربال', '', 'publish', 'closed', 'open', '', '%d9%83%d8%b3%d8%a7%d8%b1%d8%a9-%d9%85%d8%b9-%d8%ba%d8%b1%d8%a8%d8%a7%d9%84', '', '', '2017-12-24 09:24:53', '2017-12-24 09:24:53', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=173', 0, 'product', '', 0),
(174, 1, '2017-12-24 09:24:53', '2017-12-24 09:24:53', '', 'كسارة مع غربال', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2017-12-24 09:24:53', '2017-12-24 09:24:53', '', 173, 'http://localhost/psolvingegypt/primestore/2017/12/24/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2017-12-24 09:25:34', '2017-12-24 09:25:34', '', 'Attachment', '', 'publish', 'closed', 'open', '', 'attachment', '', '', '2017-12-24 09:25:34', '2017-12-24 09:25:34', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=175', 0, 'product', '', 0),
(176, 1, '2017-12-24 09:25:23', '2017-12-24 09:25:23', '', '14- attachments', '', 'inherit', 'open', 'closed', '', '14-attachments', '', '', '2017-12-24 09:25:23', '2017-12-24 09:25:23', '', 175, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/14-attachments-.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2017-12-24 09:25:34', '2017-12-24 09:25:34', '', 'Attachment', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-12-24 09:25:34', '2017-12-24 09:25:34', '', 175, 'http://localhost/psolvingegypt/primestore/2017/12/24/175-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2017-12-24 09:25:47', '2017-12-24 09:25:47', '', 'ملحقات', '', 'publish', 'closed', 'open', '', '%d9%85%d9%84%d8%ad%d9%82%d8%a7%d8%aa', '', '', '2017-12-24 09:25:47', '2017-12-24 09:25:47', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=178', 0, 'product', '', 0),
(179, 1, '2017-12-24 09:25:47', '2017-12-24 09:25:47', '', 'ملحقات', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2017-12-24 09:25:47', '2017-12-24 09:25:47', '', 178, 'http://localhost/psolvingegypt/primestore/2017/12/24/178-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2017-12-24 10:59:27', '2017-12-24 10:59:27', '', 'Generator / Compressor / Tools', '', 'publish', 'closed', 'open', '', 'generator-compressor-tools', '', '', '2017-12-24 10:59:27', '2017-12-24 10:59:27', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=181', 0, 'product', '', 0),
(182, 1, '2017-12-24 10:59:19', '2017-12-24 10:59:19', '', '15- generator', '', 'inherit', 'open', 'closed', '', '15-generator', '', '', '2017-12-24 10:59:19', '2017-12-24 10:59:19', '', 181, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/15-generator-.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2017-12-24 10:59:27', '2017-12-24 10:59:27', '', 'Generator / Compressor / Tools', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2017-12-24 10:59:27', '2017-12-24 10:59:27', '', 181, 'http://localhost/psolvingegypt/primestore/2017/12/24/181-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2017-12-24 11:00:08', '2017-12-24 11:00:08', '', 'مولد كهرباء، ماكينات لحام وأدوات', '', 'publish', 'closed', 'open', '', '%d9%85%d9%88%d9%84%d8%af-%d9%83%d9%87%d8%b1%d8%a8%d8%a7%d8%a1%d8%8c-%d9%85%d8%a7%d9%83%d9%8a%d9%86%d8%a7%d8%aa-%d9%84%d8%ad%d8%a7%d9%85-%d9%88%d8%a3%d8%af%d9%88%d8%a7%d8%aa', '', '', '2017-12-24 11:00:08', '2017-12-24 11:00:08', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=184', 0, 'product', '', 0),
(185, 1, '2017-12-24 11:00:08', '2017-12-24 11:00:08', '', 'مولد كهرباء، ماكينات لحام وأدوات', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2017-12-24 11:00:08', '2017-12-24 11:00:08', '', 184, 'http://localhost/psolvingegypt/primestore/2017/12/24/184-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2017-12-24 11:00:46', '2017-12-24 11:00:46', '', 'Construction machinery parts', '', 'publish', 'closed', 'open', '', 'construction-machinery-parts', '', '', '2017-12-24 11:00:46', '2017-12-24 11:00:46', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=186', 0, 'product', '', 0),
(187, 1, '2017-12-24 11:00:38', '2017-12-24 11:00:38', '', '16- construction machinery parts', '', 'inherit', 'open', 'closed', '', '16-construction-machinery-parts', '', '', '2017-12-24 11:00:38', '2017-12-24 11:00:38', '', 186, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/16-construction-machinery-parts-.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2017-12-24 11:00:46', '2017-12-24 11:00:46', '', 'Construction machinery parts', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2017-12-24 11:00:46', '2017-12-24 11:00:46', '', 186, 'http://localhost/psolvingegypt/primestore/2017/12/24/186-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2017-12-24 11:01:00', '2017-12-24 11:01:00', '', 'قطع غيار للمعدات', '', 'publish', 'closed', 'open', '', '%d9%82%d8%b7%d8%b9-%d8%ba%d9%8a%d8%a7%d8%b1-%d9%84%d9%84%d9%85%d8%b9%d8%af%d8%a7%d8%aa', '', '', '2017-12-24 11:01:00', '2017-12-24 11:01:00', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=189', 0, 'product', '', 0),
(190, 1, '2017-12-24 11:01:00', '2017-12-24 11:01:00', '', 'قطع غيار للمعدات', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-12-24 11:01:00', '2017-12-24 11:01:00', '', 189, 'http://localhost/psolvingegypt/primestore/2017/12/24/189-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2017-12-24 11:02:21', '2017-12-24 11:02:21', '', 'Tractors and attachments', '', 'publish', 'closed', 'open', '', 'tractors-and-attachments', '', '', '2017-12-24 11:02:21', '2017-12-24 11:02:21', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=191', 0, 'product', '', 0),
(192, 1, '2017-12-24 11:02:11', '2017-12-24 11:02:11', '', '17- tractor and attachment', '', 'inherit', 'open', 'closed', '', '17-tractor-and-attachment', '', '', '2017-12-24 11:02:11', '2017-12-24 11:02:11', '', 191, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/17-tractor-and-attachment-.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2017-12-24 11:02:21', '2017-12-24 11:02:21', '', 'Tractors and attachments', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2017-12-24 11:02:21', '2017-12-24 11:02:21', '', 191, 'http://localhost/psolvingegypt/primestore/2017/12/24/191-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2017-12-24 11:02:36', '2017-12-24 11:02:36', '', 'جرارات زراعية ومشتقاته', '', 'publish', 'closed', 'open', '', '%d8%ac%d8%b1%d8%a7%d8%b1%d8%a7%d8%aa-%d8%b2%d8%b1%d8%a7%d8%b9%d9%8a%d8%a9-%d9%88%d9%85%d8%b4%d8%aa%d9%82%d8%a7%d8%aa%d9%87', '', '', '2017-12-24 11:02:36', '2017-12-24 11:02:36', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=194', 0, 'product', '', 0),
(195, 1, '2017-12-24 11:02:36', '2017-12-24 11:02:36', '', 'جرارات زراعية ومشتقاته', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-12-24 11:02:36', '2017-12-24 11:02:36', '', 194, 'http://localhost/psolvingegypt/primestore/2017/12/24/194-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2017-12-24 11:04:52', '2017-12-24 11:04:52', '', 'Combines', '', 'publish', 'closed', 'open', '', 'combines', '', '', '2017-12-24 11:04:52', '2017-12-24 11:04:52', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=196', 0, 'product', '', 0),
(197, 1, '2017-12-24 11:04:44', '2017-12-24 11:04:44', '', '18- combines', '', 'inherit', 'open', 'closed', '', '18-combines', '', '', '2017-12-24 11:04:44', '2017-12-24 11:04:44', '', 196, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/18-combines-.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2017-12-24 11:04:52', '2017-12-24 11:04:52', '', 'Combines', '', 'inherit', 'closed', 'closed', '', '196-revision-v1', '', '', '2017-12-24 11:04:52', '2017-12-24 11:04:52', '', 196, 'http://localhost/psolvingegypt/primestore/2017/12/24/196-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2017-12-24 11:05:14', '2017-12-24 11:05:14', '', 'حصادة زراعية', '', 'publish', 'closed', 'open', '', '%d8%ad%d8%b5%d8%a7%d8%af%d8%a9-%d8%b2%d8%b1%d8%a7%d8%b9%d9%8a%d8%a9', '', '', '2017-12-24 11:05:14', '2017-12-24 11:05:14', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=199', 0, 'product', '', 0),
(200, 1, '2017-12-24 11:05:14', '2017-12-24 11:05:14', '', 'حصادة زراعية', '', 'inherit', 'closed', 'closed', '', '199-revision-v1', '', '', '2017-12-24 11:05:14', '2017-12-24 11:05:14', '', 199, 'http://localhost/psolvingegypt/primestore/2017/12/24/199-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2017-12-24 11:05:56', '2017-12-24 11:05:56', '', 'Trucks', '', 'publish', 'closed', 'open', '', 'trucks', '', '', '2017-12-24 11:05:56', '2017-12-24 11:05:56', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=201', 0, 'product', '', 0),
(202, 1, '2017-12-24 11:05:49', '2017-12-24 11:05:49', '', '19- trucks', '', 'inherit', 'open', 'closed', '', '19-trucks', '', '', '2017-12-24 11:05:49', '2017-12-24 11:05:49', '', 201, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/19-trucks-.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2017-12-24 11:05:56', '2017-12-24 11:05:56', '', 'Trucks', '', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2017-12-24 11:05:56', '2017-12-24 11:05:56', '', 201, 'http://localhost/psolvingegypt/primestore/2017/12/24/201-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2017-12-24 11:06:14', '2017-12-24 11:06:14', '', 'الشاحنات / مركبات نقل', '', 'publish', 'closed', 'open', '', '%d8%a7%d9%84%d8%b4%d8%a7%d8%ad%d9%86%d8%a7%d8%aa-%d9%85%d8%b1%d9%83%d8%a8%d8%a7%d8%aa-%d9%86%d9%82%d9%84', '', '', '2017-12-24 11:06:14', '2017-12-24 11:06:14', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=204', 0, 'product', '', 0),
(205, 1, '2017-12-24 11:06:14', '2017-12-24 11:06:14', '', 'الشاحنات / مركبات نقل', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2017-12-24 11:06:14', '2017-12-24 11:06:14', '', 204, 'http://localhost/psolvingegypt/primestore/2017/12/24/204-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2017-12-24 11:06:48', '2017-12-24 11:06:48', '', 'Concrete Pump', '', 'publish', 'closed', 'open', '', 'concrete-pump', '', '', '2017-12-24 11:06:48', '2017-12-24 11:06:48', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=206', 0, 'product', '', 0),
(207, 1, '2017-12-24 11:06:42', '2017-12-24 11:06:42', '', '20- concrete pump', '', 'inherit', 'open', 'closed', '', '20-concrete-pump', '', '', '2017-12-24 11:06:42', '2017-12-24 11:06:42', '', 206, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/20-concrete-pump-.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, '2017-12-24 11:06:48', '2017-12-24 11:06:48', '', 'Concrete Pump', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2017-12-24 11:06:48', '2017-12-24 11:06:48', '', 206, 'http://localhost/psolvingegypt/primestore/2017/12/24/206-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2017-12-24 11:07:14', '2017-12-24 11:07:14', '', 'مضخة أسمنت', '', 'publish', 'closed', 'open', '', '%d9%85%d8%b6%d8%ae%d8%a9-%d8%a3%d8%b3%d9%85%d9%86%d8%aa', '', '', '2017-12-24 11:07:14', '2017-12-24 11:07:14', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=209', 0, 'product', '', 0),
(210, 1, '2017-12-24 11:07:14', '2017-12-24 11:07:14', '', 'مضخة أسمنت', '', 'inherit', 'closed', 'closed', '', '209-revision-v1', '', '', '2017-12-24 11:07:14', '2017-12-24 11:07:14', '', 209, 'http://localhost/psolvingegypt/primestore/2017/12/24/209-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2017-12-24 11:07:53', '2017-12-24 11:07:53', '', 'Concrete Mixer', '', 'publish', 'closed', 'open', '', 'concrete-mixer', '', '', '2017-12-24 11:07:53', '2017-12-24 11:07:53', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=211', 0, 'product', '', 0),
(212, 1, '2017-12-24 11:07:47', '2017-12-24 11:07:47', '', '21- conceret mixer', '', 'inherit', 'open', 'closed', '', '21-conceret-mixer', '', '', '2017-12-24 11:07:47', '2017-12-24 11:07:47', '', 211, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/21-conceret-mixer-.jpeg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2017-12-24 11:07:53', '2017-12-24 11:07:53', '', 'Concrete Mixer', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2017-12-24 11:07:53', '2017-12-24 11:07:53', '', 211, 'http://localhost/psolvingegypt/primestore/2017/12/24/211-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2017-12-24 11:08:38', '2017-12-24 11:08:38', '', 'خلاطة أسمنت', '', 'publish', 'closed', 'open', '', '%d8%ae%d9%84%d8%a7%d8%b7%d8%a9-%d8%a3%d8%b3%d9%85%d9%86%d8%aa', '', '', '2017-12-24 11:08:38', '2017-12-24 11:08:38', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=214', 0, 'product', '', 0),
(215, 1, '2017-12-24 11:08:38', '2017-12-24 11:08:38', '', 'خلاطة أسمنت', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2017-12-24 11:08:38', '2017-12-24 11:08:38', '', 214, 'http://localhost/psolvingegypt/primestore/2017/12/24/214-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2017-12-24 11:10:48', '2017-12-24 11:10:48', '', 'Used Cars', '', 'publish', 'closed', 'open', '', 'used-cars', '', '', '2017-12-24 11:10:48', '2017-12-24 11:10:48', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=216', 0, 'product', '', 0),
(217, 1, '2017-12-24 11:10:26', '2017-12-24 11:10:26', '', '22- used car', '', 'inherit', 'open', 'closed', '', '22-used-car', '', '', '2017-12-24 11:10:26', '2017-12-24 11:10:26', '', 216, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/22-used-car-.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2017-12-24 11:10:48', '2017-12-24 11:10:48', '', 'Used Cars', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2017-12-24 11:10:48', '2017-12-24 11:10:48', '', 216, 'http://localhost/psolvingegypt/primestore/2017/12/24/216-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2017-12-24 11:11:04', '2017-12-24 11:11:04', '', 'سيارات مستعملة', '', 'publish', 'closed', 'open', '', '%d8%b3%d9%8a%d8%a7%d8%b1%d8%a7%d8%aa-%d9%85%d8%b3%d8%aa%d8%b9%d9%85%d9%84%d8%a9', '', '', '2017-12-24 11:11:04', '2017-12-24 11:11:04', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=219', 0, 'product', '', 0),
(220, 1, '2017-12-24 11:11:04', '2017-12-24 11:11:04', '', 'سيارات مستعملة', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2017-12-24 11:11:04', '2017-12-24 11:11:04', '', 219, 'http://localhost/psolvingegypt/primestore/2017/12/24/219-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2017-12-24 11:12:09', '2017-12-24 11:12:09', '', 'Used car parts & engines', '', 'publish', 'closed', 'open', '', 'used-car-parts-engines', '', '', '2017-12-24 11:12:09', '2017-12-24 11:12:09', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=221', 0, 'product', '', 0),
(222, 1, '2017-12-24 11:12:02', '2017-12-24 11:12:02', '', '23- used car parts and engines', '', 'inherit', 'open', 'closed', '', '23-used-car-parts-and-engines', '', '', '2017-12-24 11:12:02', '2017-12-24 11:12:02', '', 221, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/23-used-car-parts-and-engines-.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2017-12-24 11:12:09', '2017-12-24 11:12:09', '', 'Used car parts & engines', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2017-12-24 11:12:09', '2017-12-24 11:12:09', '', 221, 'http://localhost/psolvingegypt/primestore/2017/12/24/221-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2017-12-24 11:14:04', '2017-12-24 11:14:04', '', 'قطع غيار واجزاء السيارات مستعملة', '', 'publish', 'closed', 'open', '', '%d9%82%d8%b7%d8%b9-%d8%ba%d9%8a%d8%a7%d8%b1-%d9%88%d8%a7%d8%ac%d8%b2%d8%a7%d8%a1-%d8%a7%d9%84%d8%b3%d9%8a%d8%a7%d8%b1%d8%a7%d8%aa-%d9%85%d8%b3%d8%aa%d8%b9%d9%85%d9%84%d8%a9', '', '', '2017-12-24 11:14:04', '2017-12-24 11:14:04', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=product&#038;p=224', 0, 'product', '', 0),
(225, 1, '2017-12-24 11:14:04', '2017-12-24 11:14:04', '', 'قطع غيار واجزاء السيارات مستعملة', '', 'inherit', 'closed', 'closed', '', '224-revision-v1', '', '', '2017-12-24 11:14:04', '2017-12-24 11:14:04', '', 224, 'http://localhost/psolvingegypt/primestore/2017/12/24/224-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2017-12-24 11:24:22', '2017-12-24 11:24:22', '<strong>Company Profile</strong>\r\n\r\nTahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\r\n\r\n<strong>Background :</strong> The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.\r\n\r\n<strong>Shipping :</strong> we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\r\n<strong>Vision :</strong>\r\n\r\nContribute to growth :\r\nReliable and affordable heavy machinery is an economic driver for projects all around the world. To ensure a steady supply, the Tahawy Global Bridge Group has a global network to source some of the best new and used machinery, and to be an Excellent Company which is always a model to benchmark not by its size but its Excellence of Operations. We believe that being the best employer will contribute to sustainable growth and translate to satisfied clients with whom we have long term, trustful relationships.\r\n\r\n<strong>MISSION :</strong>\r\n\r\nTo become a company that :\r\n\r\nAspires to assist our customer to become successful by utilizing our comprehensive understanding through continuous interaction\r\nWe want to be acknowledged by our clients, our people and other stakeholders for delivering what we promise; a competitive edge through high-quality solutions.\r\nTo grow business and trade through enabling excellent international trade services.\r\n\r\n<strong>Values</strong>\r\n<ul style=\"line-height: 30px;\">\r\n 	<li><strong>Integrity</strong> : Ethics and integrity are the foundation of our brand and the guiding principles for all we do.</li>\r\n 	<li><strong>Safety </strong>: Priority number one. We are focused on our own personal safety as well as the safety of others.</li>\r\n 	<li><strong>Collaboration </strong>: We work together with customers and understand that everyone has a role in providing the best solution.</li>\r\n 	<li><strong>Competition</strong> : We compete to win. We know that competition makes everyone stronger.</li>\r\n 	<li><strong>Creativity</strong> : We are resourceful. We are innovative and strive to apply the right technology and solution every time.</li>\r\n 	<li><strong>Respect</strong> : We are honest with ourselves and each other. We value our diverse skills and talents, and know we are stronger together as one family.</li>\r\n</ul>', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-24 11:24:22', '2017-12-24 11:24:22', '', 37, 'http://localhost/psolvingegypt/primestore/2017/12/24/37-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2017-12-24 11:25:29', '2017-12-24 11:25:29', '', 'profile 2', '', 'inherit', 'open', 'closed', '', 'profile-2', '', '', '2017-12-24 11:25:29', '2017-12-24 11:25:29', '', 37, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-2-.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2017-12-24 11:25:48', '2017-12-24 11:25:48', '', 'profile 5', '', 'inherit', 'open', 'closed', '', 'profile-5', '', '', '2017-12-24 11:25:48', '2017-12-24 11:25:48', '', 37, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-5-.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2017-12-24 11:35:24', '2017-12-24 11:35:24', 'asdasdasd', 'sdasd', 'asdasdasd', 'publish', 'closed', 'closed', '', 'sdasd', '', '', '2017-12-24 11:35:24', '2017-12-24 11:35:24', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=news&#038;p=229', 0, 'news', '', 0),
(230, 1, '2017-12-24 11:35:24', '2017-12-24 11:35:24', 'asdasdasd', 'sdasd', 'asdasdasd', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2017-12-24 11:35:24', '2017-12-24 11:35:24', '', 229, 'http://localhost/psolvingegypt/primestore/2017/12/24/229-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2017-12-24 11:38:54', '2017-12-24 11:38:54', '', 'News', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2017-12-24 11:38:54', '2017-12-24 11:38:54', '', 102, 'http://localhost/psolvingegypt/primestore/2017/12/24/102-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2017-12-24 11:39:26', '2017-12-24 11:39:26', '', 'الاخبار', '', 'publish', 'closed', 'closed', '', 'news-2', '', '', '2017-12-24 11:40:18', '2017-12-24 11:40:18', '', 0, 'http://localhost/psolvingegypt/primestore/?page_id=232', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(233, 1, '2017-12-24 11:39:26', '2017-12-24 11:39:26', '', 'الاخبار', '', 'inherit', 'closed', 'closed', '', '232-revision-v1', '', '', '2017-12-24 11:39:26', '2017-12-24 11:39:26', '', 232, 'http://localhost/psolvingegypt/primestore/2017/12/24/232-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2017-12-24 12:05:34', '2017-12-24 12:05:34', 'asdsdasdasd', 'dddsad', 'asdasdasdasdasdas', 'publish', 'closed', 'closed', '', 'dddsad', '', '', '2017-12-24 14:59:36', '2017-12-24 14:59:36', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=news&#038;p=234', 0, 'news', '', 0),
(235, 1, '2017-12-24 12:05:34', '2017-12-24 12:05:34', 'asdsdasdasd', 'dddsad', 'asdasdasdasdasdas', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2017-12-24 12:05:34', '2017-12-24 12:05:34', '', 234, 'http://localhost/psolvingegypt/primestore/2017/12/24/234-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2017-12-24 12:16:27', '2017-12-24 12:16:27', '', 'profile 2', '', 'inherit', 'open', 'closed', '', 'profile-2-2', '', '', '2017-12-24 12:16:27', '2017-12-24 12:16:27', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-2-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2017-12-24 12:21:22', '2017-12-24 12:21:22', '', 'profile 3', '', 'inherit', 'open', 'closed', '', 'profile-3', '', '', '2017-12-24 12:21:22', '2017-12-24 12:21:22', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-3-.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2017-12-24 12:25:53', '2017-12-24 12:25:53', '', 'profile 4', '', 'inherit', 'open', 'closed', '', 'profile-4', '', '', '2017-12-24 12:25:53', '2017-12-24 12:25:53', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-4-.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2017-12-24 12:25:56', '2017-12-24 12:25:56', '', 'Slider 17 - image', '', 'publish', 'closed', 'closed', '', 'slider-17-image-4', '', '', '2018-01-09 08:48:11', '2018-01-09 08:48:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=ml-slide&#038;p=239', 3, 'ml-slide', '', 0),
(240, 1, '2017-12-24 12:26:07', '2017-12-24 12:26:07', '', 'profile 6', '37843', 'inherit', 'open', 'closed', '', 'profile-6', '', '', '2017-12-24 12:26:07', '2017-12-24 12:26:07', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-6-.jpg', 0, 'attachment', 'image/jpeg', 0),
(241, 1, '2017-12-24 12:26:12', '2017-12-24 12:26:12', '', 'Slider 17 - image', '', 'publish', 'closed', 'closed', '', 'slider-17-image-5', '', '', '2018-01-09 08:48:11', '2018-01-09 08:48:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=ml-slide&#038;p=241', 4, 'ml-slide', '', 0),
(242, 1, '2017-12-24 14:39:44', '2017-12-24 14:39:44', '', 'profile-5-', '', 'inherit', 'open', 'closed', '', 'profile-5-2', '', '', '2017-12-24 14:39:44', '2017-12-24 14:39:44', '', 39, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-5-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 1, '2017-12-24 14:47:46', '2017-12-24 14:47:46', '', 'المنتجات', '', 'publish', 'closed', 'closed', '', '2products', '', '', '2017-12-27 08:58:28', '2017-12-27 08:58:28', '', 0, 'http://localhost/psolvingegypt/primestore/?page_id=243', 0, 'page', '', 0),
(244, 1, '2017-12-24 14:47:46', '2017-12-24 14:47:46', '', 'المنتجات', '', 'inherit', 'closed', 'closed', '', '243-revision-v1', '', '', '2017-12-24 14:47:46', '2017-12-24 14:47:46', '', 243, 'http://localhost/psolvingegypt/primestore/2017/12/24/243-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2018-01-09 08:36:16', '2018-01-09 08:36:16', '', 'profile-1-', '', 'inherit', 'open', 'closed', '', 'profile-1', '', '', '2018-01-09 08:36:16', '2018-01-09 08:36:16', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/profile-1-.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2018-01-09 08:36:20', '2018-01-09 08:36:20', '', 'Slider 17 - image', '', 'publish', 'closed', 'closed', '', 'slider-17-image-6', '', '', '2018-01-09 08:48:11', '2018-01-09 08:48:11', '', 0, 'http://localhost/psolvingegypt/primestore/?post_type=ml-slide&#038;p=248', 5, 'ml-slide', '', 0),
(249, 1, '2018-01-09 08:44:39', '2018-01-09 08:44:39', '<strong>Company Profile</strong>\r\n\r\nTahawy Bridge is a global supplier of used heavy machinery for infrastructure construction. From single machines to complete fleets, the Tahawy Global Bridge Group is able to meet all your heavy machinery requirements, including farm machinery, used trucks and used cars, also our company find your spare- and wear parts that our customers required. Tahawy Global Bridge is a full-service supplier that takes care of transportation to any destination in the world, strip down for container loading, shipping, manuals and spare parts.\r\n\r\n<strong>Background :</strong> The company was founded in 2017 and is based in Tochigi prefecture, japan. exporting and importing of heavy machinery, farm machinery, used trucks - used cars and parts.\r\n\r\n<strong>Shipping :</strong> we have full export capabilities from containerizing equipment, we can handle any delivery anywhere in the world in a timely and cost efficient manner.\r\n\r\n<strong>Vision :</strong>\r\n\r\nContribute to growth :\r\nReliable and affordable heavy machinery is an economic driver for projects all around the world. To ensure a steady supply, the Tahawy Global Bridge Group has a global network to source some of the best new and used machinery, and to be an Excellent Company which is always a model to benchmark not by its size but its Excellence of Operations. We believe that being the best employer will contribute to sustainable growth and translate to satisfied clients with whom we have long term, trustful relationships.\r\n\r\n<strong>MISSION :</strong>\r\n\r\nTo become a company that :\r\n\r\nAspires to assist our customer to become successful by utilizing our comprehensive understanding through continuous interaction\r\nWe want to be acknowledged by our clients, our people and other stakeholders for delivering what we promise; a competitive edge through high-quality solutions.\r\nTo grow business and trade through enabling excellent international trade services.\r\n\r\n<strong>Values</strong>\r\n<ul style=\"line-height: 30px;\">\r\n 	<li><strong>Integrity</strong> : Ethics and integrity are the foundation of our brand and the guiding principles for all we do.</li>\r\n 	<li><strong>Safety </strong>: Priority number one. We are focused on our own personal safety as well as the safety of others.</li>\r\n 	<li><strong>Collaboration </strong>: We work together with customers and understand that everyone has a role in providing the best solution.</li>\r\n 	<li><strong>Competition</strong> : We compete to win. We know that competition makes everyone stronger.</li>\r\n 	<li><strong>Creativity</strong> : We are resourceful. We are innovative and strive to apply the right technology and solution every time.</li>\r\n 	<li><strong>Respect</strong> : We are honest with ourselves and each other. We value our diverse skills and talents, and know we are stronger together as one family.</li>\r\n</ul>', 'Tahawy', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-01-09 08:44:39', '2018-01-09 08:44:39', '', 37, 'http://localhost/psolvingegypt/primestore/2018/01/09/37-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2018-01-09 08:48:04', '2018-01-09 08:48:04', '', 'c', '', 'inherit', 'open', 'closed', '', 'c', '', '', '2018-01-09 08:48:04', '2018-01-09 08:48:04', '', 7, 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/c.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_spidercatalog_id`
--

CREATE TABLE `wp_spidercatalog_id` (
  `id1` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `cateid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_spidercatalog_id`
--

INSERT INTO `wp_spidercatalog_id` (`id1`, `proid`, `cateid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_spidercatalog_params`
--

CREATE TABLE `wp_spidercatalog_params` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_spidercatalog_params`
--

INSERT INTO `wp_spidercatalog_params` (`id`, `name`, `title`, `description`, `value`) VALUES
(89, 'price', 'Price', 'Show or hide Price', '1'),
(90, 'market_price', 'Market Price', 'Show or hide market Price', '1'),
(91, 'currency_symbol', 'Currency Symbol', 'Currency Symbol', '$'),
(92, 'currency_symbol_position', 'Currency Symbol Position', 'Currency Symbol Position (after or before number )', '0'),
(93, 'enable_rating', 'Enable/Disable Product Ratings', 'Enable/Disable Product Ratings', '1'),
(94, 'enable_review', 'Enable/Disable Customer Reviews', 'Enable/Disable Customer Reviews', '1'),
(95, 'choose_category', 'Choose category', 'Search product on frontend by category', '1'),
(96, 'search_by_name', 'Search by name', 'Search product on frontend by name', '1'),
(97, 'single_background_color', 'Background color', 'Product page background color', '#F4F4F4'),
(98, 'single_params_background_color1', 'Parameters Background color 1', 'Product page background color of odd parameters', '#F4F2F2'),
(99, 'single_params_background_color2', 'Parameters Background color 2', 'Product page background color of odd parameters', '#F4F2F2'),
(100, 'single_border_style', 'Border Style', 'Border Style', 'ridge'),
(101, 'single_border_width', 'Border Width', 'Border Width', '0'),
(102, 'single_border_color', 'Border Color', 'Border Color', '#00AEEF'),
(103, 'single_text_color', 'Text Color', 'Text Color', '#636363'),
(104, 'single_params_color', 'Color of Parameter Values', 'Color of Parameter Values', '#2F699E'),
(105, 'single_price_color', 'Price Color', 'Price Color', '#FFFFFF'),
(106, 'market_price_size_big', 'Market Price Size', 'Market Price Size', '12'),
(107, 'single_market_price_color', 'Market Price Color', 'Market Price Color', '#FFFFFF'),
(108, 'single_title_color', 'Title Color', 'Title Color', '#004372'),
(109, 'single_title_background_color', 'Title Background color', 'Title Background color', '#F4F4F4'),
(110, 'single_rating_star', 'Rating Star Design', 'Rating Star Design', '3'),
(111, 'product_big_title_size', 'Title Size', 'Product Big Title Size', '28'),
(112, 'large_picture_width', 'Picture Width', 'Picture Width', '300'),
(113, 'large_picture_height', 'Picture Height', 'Picture Height', '200'),
(114, 'text_size_big', 'Text Size', 'Text Size', ''),
(115, 'price_size_big', 'Price Size', 'Price Size', '20'),
(116, 'title_size_big', 'Title Size', 'Title Size', '16'),
(117, 'review_background_color', 'Background Color of \'Add your review here\' block', 'Background Color of \'Add your review here\' block', '#F4F4F4'),
(118, 'review_color', 'Color of Review Texts', 'Color of Review Texts', '#2F699E'),
(119, 'review_author_background_color', 'Background Color of Review Author block', 'Background Color of Review Author block', '#C9EFFE'),
(120, 'review_text_background_color', 'Background Color of Author block', 'Background Color of Review text', '#EFF9FD'),
(121, 'reviews_perpage', 'Number of reviews per page', 'Number of reviews per page', '10'),
(122, 'product_color_add_your_review_here', 'Product color Add your review here', 'Product color Add your review here', '#ffffff'),
(123, 'product_back_add_your_review_here', 'Product back Add your review here', 'Product back Add your review here', '#004372'),
(124, 'product_price_background_color', 'Product Price Background color', 'Product Price Background color', '#004372'),
(125, 'list_background_color', 'Background color', 'Background color', '#FFFFFF'),
(126, 'list_border_color', 'Border Color', 'Border Color', '#00AEEF'),
(127, 'list_list_border_color', 'Border Color', 'Border Color', '#E8E8E8'),
(128, 'list_border_width', 'Border Width', 'Border Width', '0'),
(129, 'list_border_style', 'Border Style', 'Border Style', 'ridge'),
(130, 'list_text_color', 'Text Color', 'Text Color', '#636363'),
(131, 'list_button_color', 'Buttons Text color', 'Color of text of buttons', '#FFFFFF'),
(132, 'list_button_background_color', 'Buttons Background color', 'Background Color of buttons', '#004372'),
(133, 'list_category_title_size', 'Category title size', 'Category title size', '22'),
(134, 'list_category_picture_width', 'Category picture width', 'Category picture width', '300'),
(135, 'list_category_picture_height', 'Category picture height', 'Category picture height', '200'),
(136, 'list_list_picture_width', 'Picture Width', 'Picture Width', '100'),
(137, 'list_list_picture_height', 'Picture Height', 'Picture Height', '100'),
(138, 'list_hyperlink_color', 'Hyperlink Color', 'Hyperlink Color', '#000000'),
(139, 'list_search_icon_color', 'Search Icon Color', 'Search Icon Color', '#004372'),
(140, 'list_reset_icon_color', 'Reset Icon Color', 'Reset Icon Color', '#004372'),
(141, 'list_select_icon_color', 'Select icon color', 'Select icon color', '#004372'),
(142, 'list_rating_star', 'Rating Star Design', 'Rating Star Design', '3'),
(143, 'list_count_of_products_in_the_page', 'Count of Products in the page', 'Count of Products in the page', '10'),
(144, 'list_categories_row_color1', 'Categories row color 1', 'Categories row color 1', '#F4F2F2'),
(145, 'list_categories_row_color2', 'Categories row color 2', 'Categories row color 2', '#F4F2F2'),
(146, 'list_categories_header_background_color', 'Categories header background color', 'Categories header background color', '#E2E2E2'),
(147, 'list_categories_header_color', 'Categories text color', 'Categories header text color', '#3D3D3D'),
(148, 'cells1_background_color', 'Background color', 'Background color', '#FFFFFF'),
(149, 'cells1_border_color', 'Border Color', 'Border Color', '#00AEEF'),
(150, 'cells1_border_width', 'Border Width', 'Border Width', '0'),
(151, 'cells1_border_style', 'Border Style', 'Border Style', 'ridge'),
(152, 'cells1_text_color', 'Text Color', 'Text Color', '#636363'),
(153, 'cells1_button_color', 'Buttons Text color', 'Color of text of buttons', '#FFFFFF'),
(154, 'cells1_button_background_color', 'Buttons Background color', 'Background Color of buttons', '#004372'),
(155, 'cells1_category_title_size', 'Category title size', 'Category title size', '22'),
(156, 'cells1_category_picture_width', 'Category picture width', 'Category picture width', '300'),
(157, 'cells1_category_picture_height', 'Category picture height', 'Category picture height', '200'),
(158, 'cells1_list_picture_width', 'Picture Width', 'Picture Width', '100'),
(159, 'cells1_list_picture_height', 'Picture Height', 'Picture Height', '100'),
(160, 'cells1_large_picture_width', 'Picture Width', 'Picture Width', '300'),
(161, 'cells1_large_picture_height', 'Picture Height', 'Picture Height', '200'),
(162, 'cells1_small_picture_width', 'Picture Width', 'Picture Width', '210'),
(163, 'cells1_small_picture_height', 'Picture Height', 'Picture Height', '140'),
(164, 'cells1_hyperlink_color', 'Hyperlink Color', 'Hyperlink Color', '#000000'),
(165, 'cells1_search_icon_color', 'Search Icon Color', 'Search Icon Color', '#004372'),
(166, 'cells1_reset_icon_color', 'Reset Icon Color', 'Reset Icon Color', '#004372'),
(167, 'cells1_select_icon_color', 'Select icon color', 'Select icon color', '#004372'),
(168, 'cells1_rating_star', 'Rating Star Design', 'Rating Star Design', '3'),
(169, 'cells1_params_background_color1', 'Parameters Background color 1', 'Background Color of odd parameters', '#F4F2F2'),
(170, 'cells1_params_background_color2', 'Parameters Background color 2', 'Background Color of odd parameters', '#F4F2F2'),
(171, 'cells1_price_color', 'Price Color', 'Price Color', '#FFFFFF'),
(172, 'cells1_market_price_color', 'Market Price Color', 'Market Price Color', '#FFFFFF'),
(173, 'cells1_title_color', 'Title Color', 'Title Color', '#004372'),
(174, 'cells1_title_background_color', 'Title Background color', 'Title Background color', '#F4F2F2'),
(175, 'cells1_count_of_product_in_the_row', 'Count of Products in the Row', 'Count of Products in the Row', '2'),
(176, 'cells1_count_of_rows_in_the_page', 'Count of Rows in the Page', 'Count of Rows in the Page', '3'),
(177, 'cells1_categories_row_color1', 'Categories row color 1', 'Categories row color 1', '#F4F2F2'),
(178, 'cells1_categories_row_color2', 'Categories row color 2', 'Categories row color 2', '#F4F2F2'),
(179, 'cells1_categories_header_background_color', 'Categories header background color', 'Categories header background color', '#E2E2E2'),
(180, 'cells1_categories_header_color', 'Categories text color', 'Categories header text color', '#3D3D3D'),
(181, 'cells2_background_color', 'Background color', 'Background color', '#FFFFFF'),
(182, 'cells2_cell_background_color', 'Background color', 'Background color', '#FFFFFF'),
(183, 'cells2_border_color', 'Border Color', 'Border Color', '#00AEEF'),
(184, 'cells2_border_width', 'Border Width', 'Border Width', '0'),
(185, 'cells2_border_style', 'Border Style', 'Border Style', 'ridge'),
(186, 'cells2_text_color', 'Text Color', 'Text Color', '#636363'),
(187, 'cells2_button_color', 'Buttons Text color', 'Color of text of buttons', '#FFFFFF'),
(188, 'cells2_button_background_color', 'Buttons Background color', 'Background Color of buttons', '#004372'),
(189, 'cells2_category_title_size', 'Category title size', 'Category title size', '22'),
(190, 'cells2_category_picture_width', 'Category picture width', 'Category picture width', '300'),
(191, 'cells2_category_picture_height', 'Category picture height', 'Category picture height', '200'),
(192, 'cells2_list_picture_width', 'Picture Width', 'Picture Width', '100'),
(193, 'cells2_list_picture_height', 'Picture Height', 'Picture Height', '100'),
(194, 'cells2_hyperlink_color', 'Hyperlink Color', 'Hyperlink Color', '#000000'),
(195, 'cells2_search_icon_color', 'Search Icon Color', 'Search Icon Color', '#004372'),
(196, 'cells2_reset_icon_color', 'Reset Icon Color', 'Reset Icon Color', '#004372'),
(197, 'cells2_select_icon_color', 'Select icon color', 'Select icon color', '#004372'),
(198, 'cells2_rating_star', 'Rating Star Design', 'Rating Star Design', '3'),
(199, 'cells2_count_of_product_in_the_row', 'Count of Products in the Row', 'Count of Products in the Row', '2'),
(200, 'cells2_count_of_rows_in_the_page', 'Count of Rows in the Page', 'Count of Rows in the Page', '3'),
(201, 'cells2_categories_row_color1', 'Categories row color 1', 'Categories row color 1', '#F4F2F2'),
(202, 'cells2_categories_row_color2', 'Categories row color 2', 'Categories row color 2', '#F4F2F2'),
(203, 'cells2_categories_header_background_color', 'Categories header background color', 'Categories header background color', '#E2E2E2'),
(204, 'cells2_categories_header_color', 'Categories text color', 'Categories header text color', '#3D3D3D'),
(205, 'cells2_price_color', 'Price color', 'Price color', '#d80303'),
(206, 'cells2_market_price_color', 'Market price color', 'Market price color', '#d80303'),
(207, 'cells3_background_color', 'Background color', 'Background color', '#FFFFFF'),
(208, 'cells3_cell_background_color', 'Background color', 'Background color', '#F5F5F5'),
(209, 'cells3_border_color', 'Border Color', 'Border Color', '#00AEEF'),
(210, 'cells3_border_width', 'Border Width', 'Border Width', '0'),
(211, 'cells3_border_style', 'Border Style', 'Border Style', 'ridge'),
(212, 'cells3_text_color', 'Text Color', 'Text Color', '#636363'),
(213, 'cells3_button_color', 'Buttons Text color', 'Color of text of buttons', '#FFFFFF'),
(214, 'cells3_button_background_color', 'Buttons Background color', 'Background Color of buttons', '#004372'),
(215, 'cells3_category_title_size', 'Category title size', 'Category title size', '22'),
(216, 'cells3_category_picture_width', 'Category picture width', 'Category picture width', '300'),
(217, 'cells3_category_picture_height', 'Category picture height', 'Category picture height', '200'),
(218, 'cells3_list_picture_width', 'Picture Width', 'Picture Width', '100'),
(219, 'cells3_list_picture_height', 'Picture Height', 'Picture Height', '100'),
(220, 'cells3_hyperlink_color', 'Hyperlink Color', 'Hyperlink Color', '#000000'),
(221, 'cells3_search_icon_color', 'Search Icon Color', 'Search Icon Color', '#004372'),
(222, 'cells3_reset_icon_color', 'Reset Icon Color', 'Reset Icon Color', '#004372'),
(223, 'cells3_select_icon_color', 'Select icon color', 'Select icon color', '#004372'),
(224, 'cells3_rating_star', 'Rating Star Design', 'Rating Star Design', '3'),
(225, 'cells3_count_of_product_in_the_row', 'Count of Products in the Row', 'Count of Products in the Row', '2'),
(226, 'cells3_count_of_rows_in_the_page', 'Count of Rows in the Page', 'Count of Rows in the Page', '3'),
(227, 'cells3_categories_row_color1', 'Categories row color 1', 'Categories row color 1', '#F4F2F2'),
(228, 'cells3_categories_row_color2', 'Categories row color 2', 'Categories row color 2', '#F4F2F2'),
(229, 'cells3_categories_header_background_color', 'Categories header background color', 'Categories header background color', '#E2E2E2'),
(230, 'cells3_categories_header_color', 'Categories text color', 'Categories header text color', '#3D3D3D'),
(231, 'wcells_background_color', 'Background color', 'Background color', '#FFFFFF'),
(232, 'wcells_cell_background_color', 'Background color', 'Background color', '#F5F5F5'),
(233, 'wcells_border_color', 'Border Color', 'Border Color', '#00AEEF'),
(234, 'wcells_border_width', 'Border Width', 'Border Width', '0'),
(235, 'wcells_border_style', 'Border Style', 'Border Style', 'ridge'),
(236, 'wcells_text_color', 'Text Color', 'Text Color', '#636363'),
(237, 'wcells_button_color', 'Buttons Text color', 'Color of text of buttons', '#FFFFFF'),
(238, 'wcells_button_background_color', 'Buttons Background color', 'Background Color of buttons', '#004372'),
(239, 'wcells_category_title_size', 'Category title size', 'Category title size', '22'),
(240, 'wcells_category_picture_width', 'Category picture width', 'Category picture width', '300'),
(241, 'wcells_category_picture_height', 'Category picture height', 'Category picture height', '200'),
(242, 'wcells_list_picture_width', 'Picture Width', 'Picture Width', '100'),
(243, 'wcells_list_picture_height', 'Picture Height', 'Picture Height', '100'),
(244, 'wcells_hyperlink_color', 'Hyperlink Color', 'Hyperlink Color', '#000000'),
(245, 'wcells_search_icon_color', 'Search Icon Color', 'Search Icon Color', '#004372'),
(246, 'wcells_reset_icon_color', 'Reset Icon Color', 'Reset Icon Color', '#004372'),
(247, 'wcells_select_icon_color', 'Select icon color', 'Select icon color', '#004372'),
(248, 'wcells_rating_star', 'Rating Star Design', 'Rating Star Design', '3'),
(249, 'wcells_count_of_products_in_the_page', 'Count of Products in the page', 'Count of Products in the page', '10'),
(250, 'wcells_categories_row_color1', 'Categories row color 1', 'Categories row color 1', '#F4F2F2'),
(251, 'wcells_categories_row_color2', 'Categories row color 2', 'Categories row color 2', '#F4F2F2'),
(252, 'wcells_categories_header_background_color', 'Categories header background color', 'Categories header background color', '#E2E2E2'),
(253, 'wcells_categories_header_color', 'Categories text color', 'Categories header text color', '#3D3D3D'),
(254, 'wcells_price_size', 'Price Size', 'Price Size', '16'),
(255, 'wcells_price_color', 'Price Color', 'Price Color', '#004372'),
(256, 'wcells_more_font_color', 'More text color', 'More text color', '#ffffff'),
(257, 'wcells_more_background_color', 'More background color', 'More background color', '#004372'),
(258, 'thumb_background_color', 'Background color', 'Background color', '#FFFFFF'),
(259, 'thumb_cell_background_color', 'Background color', 'Background color', '#F5F5F5'),
(260, 'thumb_border_color', 'Border Color', 'Border Color', '#00AEEF'),
(261, 'thumb_border_width', 'Border Width', 'Border Width', '0'),
(262, 'thumb_border_style', 'Border Style', 'Border Style', 'ridge'),
(263, 'thumb_text_color', 'Text Color', 'Text Color', '#636363'),
(264, 'thumb_button_color', 'Buttons Text color', 'Color of text of buttons', '#FFFFFF'),
(265, 'thumb_button_background_color', 'Buttons Background color', 'Background Color of buttons', '#004372'),
(266, 'thumb_category_title_size', 'Category title size', 'Category title size', '22'),
(267, 'thumb_category_picture_width', 'Category picture width', 'Category picture width', '300'),
(268, 'thumb_category_picture_height', 'Category picture height', 'Category picture height', '200'),
(269, 'thumb_list_picture_width', 'Picture Width', 'Picture Width', '100'),
(270, 'thumb_list_picture_height', 'Picture Height', 'Picture Height', '100'),
(271, 'thumb_hyperlink_color', 'Hyperlink Color', 'Hyperlink Color', '#000000'),
(272, 'thumb_search_icon_color', 'Search Icon Color', 'Search Icon Color', '#004372'),
(273, 'thumb_reset_icon_color', 'Reset Icon Color', 'Reset Icon Color', '#004372'),
(274, 'thumb_select_icon_color', 'Select icon color', 'Select icon color', '#004372'),
(275, 'thumb_rating_star', 'Rating Star Design', 'Rating Star Design', '3'),
(276, 'thumb_count_of_product_in_the_row', 'Count of Products in the Row', 'Count of Products in the Row', '2'),
(277, 'thumb_count_of_rows_in_the_page', 'Count of Rows in the Page', 'Count of Rows in the Page', '3'),
(278, 'thumb_categories_row_color1', 'Categories row color 1', 'Categories row color 1', '#F4F2F2'),
(279, 'thumb_categories_row_color2', 'Categories row color 2', 'Categories row color 2', '#F4F2F2'),
(280, 'thumb_categories_header_background_color', 'Categories header background color', 'Categories header background color', '#E2E2E2'),
(281, 'thumb_categories_header_color', 'Categories text color', 'Categories header text color', '#3D3D3D'),
(282, 'parameters_select_box_width', 'Parameters Select Box Width', 'Parameters Select Box Width', '104'),
(283, 'params_color', 'Color of Parameter Values', 'Color of Parameter Values', '#2F699E'),
(284, 'product_cell_width', 'Product Cell Width', 'Product Cell Width', '270'),
(285, 'product_cell_height', 'Product Cell Height', 'Product Cell Height', '750'),
(286, 'price_size_small', 'Price Size', 'Price Size', '20'),
(287, 'market_price_size_small', 'Market Price Size', 'Market Price Size', '12'),
(288, 'title_size_small', 'Title Size', 'Title Size', '16'),
(289, 'text_size_list', 'List text size', 'List text size', '14'),
(290, 'price_size_list', 'List price size', 'List price size', '18'),
(291, 'market_price_size_list', 'List Market price size', 'List Market price size', '11'),
(292, 'cell_show_category', 'Show Category', 'Show Category', '1'),
(293, 'list_show_category', 'Show Category', 'Show Category', '1'),
(294, 'cell_show_parameters', 'Show Parameters', 'Show Parameters', '1'),
(295, 'list_show_parameters', 'Show Parameters', 'Show Parameters', '1'),
(296, 'list_show_description', 'Show Description', 'Show Description', '1'),
(297, 'width_spider_main_table_lists', 'Product List  Width', 'Product List  Width', '620'),
(298, 'category_details_width', 'Category Details Width', 'Category Details Width', '600'),
(299, 'spider_catalog_product_page_width', 'Product Page Width', 'Product Page Width', '600'),
(300, 'description_size_list', 'Description Text Size', 'Description Text Size', '12'),
(301, 'name_price_size_list', 'Name Price List Text Size', 'Name Price List Text Size', '12'),
(302, 'Parameters_size_list', 'Parameters List Text Size', 'Parameters List Text Size', '12'),
(303, 'cell_big_title_size', 'Cell Big Title Size', 'Cell Big Title Size', '34'),
(304, 'cell_price_background_color', 'Cell Price Background Color', 'Cell Price Background Color', '#004372'),
(305, 'cell_small_image_backround_color', 'Cell Small Image Backround Color', 'Cell Small Image Backround Color', '#F4F2F2'),
(306, 'cell_parameters_left_size', 'Cell Parameters Left Size', 'Cell Parameters Left Size', '13'),
(307, 'cell_more_font_size', 'Cell More Font size', 'Cell More Font size', '15'),
(308, 'cell_more_font_color', 'Cell More Font Color', 'Cell More Font Color', '#FFFFFF'),
(309, 'cell_more_background_color', 'Cell More Background Color', 'Cell More Background Color', '#004372'),
(310, 'cell_params_text_color', 'Cell Params Text Color', 'Cell Params Text Color', '#3E3E3E'),
(311, 'cell_new_big_title_size', 'Cell New Big Title Size', 'Cell New Big Title Size', '28'),
(312, 'cell_new_title_size', 'Cell New Title Size', 'Cell New Title Size', '13'),
(313, 'cell_new_price_size', 'Cell New Price Size', 'Cell New Price Size', '20'),
(314, 'cell_new_market_price_size', 'Cell New Market Price Size', 'Cell New Market Price Size', '12'),
(315, 'cell_new_picture_width', 'Cell New Picture Width', 'Cell New Picture Width', '110'),
(316, 'cell_new_picture_height', 'Cell New Picture Height', 'Cell New Picture Height', '95'),
(317, 'cell_new_title_color', 'Cell New Title Color', 'Cell New Title Color', '#004372'),
(318, 'new_cell_all_width', 'New Cell Width', 'New Cell Width', '270'),
(319, 'new_cell_all_height', 'New Cell All Height', 'New Cell All Height', '580'),
(320, 'cell_new_text_size', 'Cell New Text Size', 'Cell New Text Size', '12'),
(321, 'cell_new_text_back_color_1', 'Cell New Text Background Color 1', 'Cell New Text Background Color 1', '#F6F6F6'),
(322, 'cell_new_text_back_color_2', 'Cell New Text Background Color 2', 'Cell New Text Background Color 2', '#F0EDED'),
(323, 'cell_new_text_color', 'Cell New Text Color', 'Cell New Text Color', '#3D3D3D'),
(324, 'new_cell_more_font_size', 'New Cell More Font Size', 'New Cell More Font Size', '17'),
(325, 'cell_new_more_font_color', 'More Font Color', 'More Font Color', '#FFFFFF'),
(326, 'cell_new_more_background_color', 'More Background Color', 'More Background Color', '#004372'),
(327, 'cell_tumble_title_size', 'Title Size', 'Title Size', '14'),
(328, 'cell_tumble_title_font_color', 'Title Font Color', 'Title Font Color', '#004372'),
(329, 'cell_tumble_price_size', 'Price Size', 'Price Size', '14'),
(330, 'cell_tumble_price_text_color', 'Price Text Color', 'Price Text Color', '#FFFFFF'),
(331, 'cell_tumble_picture_width', 'Picture Width', 'Picture Width', '120'),
(332, 'cell_tumble_picture_height', 'Picture Height', 'Picture Height', '120'),
(333, 'cell_tumble_text_size', 'Text Size', 'Text Size', '12'),
(334, 'cell_tumble_text_color', 'Text Color', 'Text Color', '#434242'),
(335, 'cell_tumble_all_width', 'All Width', 'All Width', '270'),
(336, 'cell_tumble_all_height', 'All Height', 'All Height', '225'),
(337, 'all_cell_title_size', 'Title Size', 'Title Sizes', '18'),
(338, 'all_cell_title_color', 'Title Color', 'Title Color', '#004372'),
(339, 'all_cell_price_size', 'Price Size', 'Price Size', '18'),
(340, 'all_cell_price_text_color', 'Price Text Color', 'Price Text Color', '#FFFFFF'),
(341, 'all_cell_picture_width', 'Picture Width', 'Picture Width', '285'),
(342, 'all_cell_picture_height', 'Picture Height', 'Picture Height', '200'),
(343, 'all_cell_text_size', 'Text Size', 'Text Size', '15'),
(344, 'all_cell_text_color', 'Text Color', 'Text Color', '#434242'),
(345, 'all_cell_all_width', 'All Width', 'All Width', '270'),
(346, 'all_cell_all_height', 'All Height', 'All Height', '470'),
(347, 'single_cell_title_size', 'Title Size', 'Title Size', '18'),
(348, 'single_cell_title_color', 'Title Color', 'Title Color', '#004372'),
(349, 'single_cell_font_1_size', 'Font 1 Size', 'Font 1 Size', '14'),
(350, 'single_cell_font_2_size', 'Font 2 Size', 'Font 2 Size', '12'),
(351, 'single_cell_background_color_1', 'Background Color 1', 'Background Color 1', '#F5F4F4'),
(352, 'single_cell_background_color_2', 'Background Color 2', 'Background Color 2', '#FFFFFF'),
(353, 'single_cell_text_color_1', 'Text Color 1', 'Text Color 1', '#004372'),
(354, 'single_cell_text_color_2', 'Text Color 2', 'Text Color 2', '#636363'),
(355, 'single_cell_picture_width', 'Picture Width', 'Picture Width', '215'),
(356, 'single_cell_picture_height', 'Picture Height', 'Picture Height', '200'),
(357, 'list_page_up_names_text_color', 'List Page Up Names Text Color', 'List Page Up Names Text Color', '#3D3D3D'),
(358, 'list_page_up_names_background_color', 'List Page Up names Background Color', 'List Page Up names Background Color', '#E2E2E2'),
(359, 'list_page_background_color_1', 'List Page Background Color 1', 'List Page Background Color 1', '#F6F6F6'),
(360, 'list_page_background_color_2', 'List Page Background Color 2', 'List Page Background Color 2', '#FFFFFF'),
(361, 'list_cell_price_color', 'List Cell Price Color', 'List Cell Price Color', '#B02E2E'),
(362, 'list_cell_market_price_color', 'List Cell Market Price Color', 'List Cell Market Price Color', '#3C6680'),
(363, 'list_page_text_color_1', 'Text Color 1', 'Text Color 1', '#3E3E3E'),
(364, 'list_page_text_color_2', 'Text Color 2', 'Text Color 2', '#235775');

-- --------------------------------------------------------

--
-- Table structure for table `wp_spidercatalog_products`
--

CREATE TABLE `wp_spidercatalog_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `cost` varchar(128) DEFAULT NULL,
  `market_cost` varchar(128) DEFAULT NULL,
  `param` text,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) UNSIGNED DEFAULT NULL,
  `published_in_parent` tinyint(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_spidercatalog_products`
--

INSERT INTO `wp_spidercatalog_products` (`id`, `name`, `category_id`, `description`, `image_url`, `cost`, `market_cost`, `param`, `ordering`, `published`, `published_in_parent`) VALUES
(1, 'Panasonic Television TX-PR50U30', '1,', '<p>50&quot; / 127 cm, Full-HD Plasma Display Panel,\r\n\r\n600 Hz Sub Field Drive , DVB-T, DVB-C, RCA, RGB, VGA, HDMI x2, Scart, SD card</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/7_19977_1324390185.jpg******0;;;http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/11448_2.jpg******0;;;http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/panasonictx_pr50u30.jpg', '950.00', '1000.00', 'par_TV\r\n\r\nSystem@@:@@DVB-T	DVB-C		par_Diagonal@@:@@50&quot; / 127 cm		par_Interface@@:@@RCA, RGB, VGA, HDMI \r\n\r\nx2, Scart, SD card		par_Refresh Rate@@:@@600 Hz Sub Field Drive		', 2, 1, 0),
(2, 'Sony KDL-46EX710AEP ', '1,', '<p><b>Sony Television KDL-46EX710AEP</b></p><p>46&quot; / 117 cm, MotionFlow 100Hz, Bravia Engine 3, Analog, DVB-T, DVB-\r\n\r\nC, 4xHDMI, VGA, RGB, RCA, USB, 2xSCART </p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/7_7557_1298400832.jpg******0;;;http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/r1.jpg******0;;;http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/sony_kdl32ex700aep_3.jpg', '1450.00', '1700.00', 'par_TV\r\n\r\nSystem@@:@@Analog	DVB-T	DVB-C		par_Diagonal@@:@@46&quot; / 117 cm		par_Interface@@:@@4xHDMI, \r\n\r\nVGA, RGB, RCA, USB, 2xSCART		par_Refresh Rate@@:@@MotionFlow 100Hz		', 3, 1, 0),
(3, 'Samsung UE46D6100S', '1,', '<p><strong>Samsung Television UE46D6100S </strong></p><p>46&quot; / 117 cm, 200Hz , 6 Series, 3D, SMART TV ,Smarthub, 3D \r\n\r\nHyperReal Engine, Samsung Apps, Social TV, WiFi Ready</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/7_19644_1323935170.jpg', '1630.00', '1900.00', 'par_TV System@@:@@DTV\r\n\r\nDVB-T/C		par_Diagonal@@:@@46&quot; / 117 cm		par_Interface@@:@@4xHDMI,3xUSB, RGB, RCA, D-SUB,1xSCART, \r\n\r\nEthernet (LAN)		par_Refresh Rate@@:@@200Hz		', 1, 1, 0),
(4, 'Sony KDL-32EX421BAEP ', '1,', '<p><strong>Sony\r\n\r\nTelevision KDL-32EX421BAEP </strong></p><p>32&quot; / 80 cm, 50 Hz, Analog, DVB-T/T2/C, AV, SCART, RGB, VGA, HDMI x4, USB x2, \r\n\r\nEthernet (RJ-45),24p True Cinema, X-Reality, DLNA, WiFi Ready, Internet Video, Internet Widgets, Web Browser, Skype, USB HDD \r\n\r\nRecording</p>', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/7_20107_1324712747.jpg', '950.00', '0.00', 'par_TV\r\n\r\nSystem@@:@@	par_Diagonal@@:@@32&quot; / 80 cm		par_Interface@@:@@AV, VGA, HDMI, USB, Ethernet 		\r\n\r\npar_Refresh Rate@@:@@	', 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_spidercatalog_product_categories`
--

CREATE TABLE `wp_spidercatalog_product_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `parent` int(11) UNSIGNED DEFAULT NULL,
  `category_image_url` text,
  `description` text,
  `param` text,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_spidercatalog_product_categories`
--

INSERT INTO `wp_spidercatalog_product_categories` (`id`, `name`, `parent`, `category_image_url`, `description`, `param`, `ordering`, `published`) VALUES
(1, 'Televisions', 0, 'http://localhost/psolvingegypt/primestore/wp-content/plugins/catalog/Front_images/sampleimages/category242.jpg', 'Television (TV) is a telecommunication medium for\r\n\r\ntransmitting and receiving moving images that can be monochrome (black-and-white) or colored, with or without accompanying \r\n\r\nsound. &quot;Television&quot; may also refer specifically to a television set, television programming, or television \r\n\r\ntransmission.The etymology of the word has a mixed Latin and Greek origin, meaning &quot;far sight&quot;: Greek tele, far, \r\n\r\nand Latin visio, sight (from video, vis- to see, or to view in the first person).', 'TV System	Diagonal	Interface	Refresh Rate		', 2, 1),
(2, 'ahmed', 0, '******0', 'dfgdfgdfg', 'dfgdfg		', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_spidercatalog_product_reviews`
--

CREATE TABLE `wp_spidercatalog_product_reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_spidercatalog_product_reviews`
--

INSERT INTO `wp_spidercatalog_product_reviews` (`id`, `name`, `content`, `product_id`, `remote_ip`) VALUES
(2, 'A Customer', 'A Good TV', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_spidercatalog_product_votes`
--

CREATE TABLE `wp_spidercatalog_product_votes` (
  `id` int(11) UNSIGNED NOT NULL,
  `remote_ip` varchar(15) NOT NULL,
  `vote_value` int(3) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_spidercatalog_product_votes`
--

INSERT INTO `wp_spidercatalog_product_votes` (`id`, `remote_ip`, `vote_value`, `product_id`) VALUES
(6, '127.0.0.1', 4, 1),
(7, '127.0.0.1', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 51, 'order', '0'),
(2, 51, 'product_count_product_cat', '1'),
(3, 53, 'order', '0'),
(4, 53, 'product_count_product_cat', '1'),
(5, 55, 'order', '0'),
(6, 55, 'display_type', 'products'),
(7, 55, 'thumbnail_id', '0'),
(8, 55, 'product_count_product_cat', '2'),
(9, 53, 'display_type', 'products'),
(10, 53, 'thumbnail_id', '0'),
(11, 57, 'order', '0'),
(12, 57, 'display_type', 'products'),
(13, 57, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'العربية', 'ar', 0),
(3, 'العربية', 'pll_ar', 0),
(4, 'pll_5a22b4f5d93f5', 'pll_5a22b4f5d93f5', 0),
(5, 'English', 'en', 0),
(6, 'English', 'pll_en', 0),
(7, 'Uncategorized', 'uncategorized-en', 0),
(8, '17', '17', 0),
(9, 'pll_5a2be2d8a5113', 'pll_5a2be2d8a5113', 0),
(10, 'pll_5a2be68a4fa3b', 'pll_5a2be68a4fa3b', 0),
(11, 'pll_5a2be6e75b315', 'pll_5a2be6e75b315', 0),
(12, 'pll_5a2bf3a49955a', 'pll_5a2bf3a49955a', 0),
(13, 'pll_5a2bf8894f464', 'pll_5a2bf8894f464', 0),
(14, 'Two Tap Products', 'twotap-product', 0),
(15, 'Two Tap Orders', 'twotap-order', 0),
(16, 'ahmed', 'ahmed', 0),
(17, 'Color', 'color', 0),
(18, 'White', 'white', 0),
(19, 'Size', 'size', 0),
(20, 'Big', 'big', 0),
(21, 'Weight', 'weight', 0),
(22, '130', '130', 0),
(23, 'fsdfsd', 'fsdfsd', 0),
(24, 'aas', 'aas', 0),
(25, 'ahmed', 'ahmed', 0),
(26, 'aas', 'aas-en', 0),
(27, 'pll_5a2d4c8d373aa', 'pll_5a2d4c8d373aa', 0),
(28, 'ahmed', 'ahmed-en', 0),
(29, 'pll_5a2d4c8fb1559', 'pll_5a2d4c8fb1559', 0),
(30, 'لاب توب', '%d9%84%d8%a7%d8%a8-%d8%aa%d9%88%d8%a8', 0),
(31, 'pll_5a2e3c080d8ac', 'pll_5a2e3c080d8ac', 0),
(32, 'لاب توب', '%d9%84%d8%a7%d8%a8-%d8%aa%d9%88%d8%a8', 0),
(33, 'pll_5a2e3c0d181c5', 'pll_5a2e3c0d181c5', 0),
(34, 'pll_5a2e3c141a296', 'pll_5a2e3c141a296', 0),
(35, 'kljhjkh', 'kljhjkh', 0),
(36, 'pll_5a2e5e20486f3', 'pll_5a2e5e20486f3', 0),
(37, 'simple', 'simple', 0),
(38, 'grouped', 'grouped', 0),
(39, 'variable', 'variable', 0),
(40, 'external', 'external', 0),
(41, 'exclude-from-search', 'exclude-from-search', 0),
(42, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(43, 'featured', 'featured', 0),
(44, 'outofstock', 'outofstock', 0),
(45, 'rated-1', 'rated-1', 0),
(46, 'rated-2', 'rated-2', 0),
(47, 'rated-3', 'rated-3', 0),
(48, 'rated-4', 'rated-4', 0),
(49, 'rated-5', 'rated-5', 0),
(50, 'pll_5a2e76df1e08f', 'pll_5a2e76df1e08f', 0),
(51, 'لاب توب', '%d9%84%d8%a7%d8%a8-%d8%aa%d9%88%d8%a8', 0),
(52, 'pll_5a2e7a3844dc1', 'pll_5a2e7a3844dc1', 0),
(53, 'fgdfg', 'fgdfg', 0),
(54, 'pll_5a2e7c7f1af31', 'pll_5a2e7c7f1af31', 0),
(55, 'dasd', 'asda', 0),
(56, 'pll_5a2e98caafb50', 'pll_5a2e98caafb50', 0),
(57, 'ddddddddd', 'ddddddddd', 0),
(58, 'pll_5a2e9b7ce6c17', 'pll_5a2e9b7ce6c17', 0),
(59, 'ahmed', 'ahmed', 0),
(60, 'pll_5a36300c531f3', 'pll_5a36300c531f3', 0),
(61, 'saasdasd', 'saasdasd', 0),
(62, 'pll_5a36aa062a260', 'pll_5a36aa062a260', 0),
(63, 'pll_5a3f5e2876841', 'pll_5a3f5e2876841', 0),
(64, 'pll_5a3f5ecc67b71', 'pll_5a3f5ecc67b71', 0),
(65, 'pll_5a3f5f3831116', 'pll_5a3f5f3831116', 0),
(66, 'pll_5a3f64938b434', 'pll_5a3f64938b434', 0),
(67, 'pll_5a3f69c38a851', 'pll_5a3f69c38a851', 0),
(68, 'pll_5a3f6a065ec67', 'pll_5a3f6a065ec67', 0),
(69, 'pll_5a3f6ab36af51', 'pll_5a3f6ab36af51', 0),
(70, 'pll_5a3f6aee3b31c', 'pll_5a3f6aee3b31c', 0),
(71, 'pll_5a3f6b56a5a21', 'pll_5a3f6b56a5a21', 0),
(72, 'pll_5a3f6bf790715', 'pll_5a3f6bf790715', 0),
(73, 'pll_5a3f6e181b4a6', 'pll_5a3f6e181b4a6', 0),
(74, 'pll_5a3f6e8b92173', 'pll_5a3f6e8b92173', 0),
(75, 'pll_5a3f7266ac91f', 'pll_5a3f7266ac91f', 0),
(76, 'pll_5a3f729c917d9', 'pll_5a3f729c917d9', 0),
(77, 'pll_5a3f88b9aa517', 'pll_5a3f88b9aa517', 0),
(78, 'pll_5a3f88ed71e99', 'pll_5a3f88ed71e99', 0),
(79, 'pll_5a3f894d9c06d', 'pll_5a3f894d9c06d', 0),
(80, 'pll_5a3f89eb8498d', 'pll_5a3f89eb8498d', 0),
(81, 'pll_5a3f8a279f50b', 'pll_5a3f8a279f50b', 0),
(82, 'pll_5a3f8a633c89c', 'pll_5a3f8a633c89c', 0),
(83, 'pll_5a3f8ab711466', 'pll_5a3f8ab711466', 0),
(84, 'pll_5a3f8b4918ede', 'pll_5a3f8b4918ede', 0),
(85, 'pll_5a3f8bfd45700', 'pll_5a3f8bfd45700', 0),
(86, 'pll_5a3f91ef92d90', 'pll_5a3f91ef92d90', 0),
(87, 'pll_5a3fbe137429c', 'pll_5a3fbe137429c', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(7, 4, 0),
(7, 6, 0),
(8, 5, 0),
(10, 5, 0),
(13, 5, 0),
(13, 10, 0),
(14, 5, 0),
(15, 5, 0),
(18, 5, 0),
(19, 5, 0),
(20, 5, 0),
(21, 8, 0),
(22, 8, 0),
(23, 8, 0),
(24, 5, 0),
(24, 9, 0),
(25, 5, 0),
(26, 6, 0),
(26, 27, 0),
(27, 2, 0),
(27, 9, 0),
(28, 6, 0),
(28, 29, 0),
(29, 2, 0),
(29, 10, 0),
(30, 3, 0),
(30, 5, 0),
(30, 11, 0),
(30, 31, 0),
(31, 5, 0),
(32, 3, 0),
(32, 33, 0),
(33, 2, 0),
(33, 11, 0),
(35, 6, 0),
(35, 36, 0),
(37, 5, 0),
(37, 12, 0),
(39, 2, 0),
(39, 12, 0),
(41, 5, 0),
(41, 13, 0),
(43, 2, 0),
(43, 13, 0),
(46, 5, 0),
(47, 5, 0),
(51, 3, 0),
(51, 5, 0),
(51, 52, 0),
(52, 5, 0),
(53, 6, 0),
(53, 54, 0),
(55, 5, 0),
(55, 6, 0),
(55, 56, 0),
(55, 87, 0),
(56, 5, 0),
(56, 16, 0),
(56, 17, 0),
(56, 18, 0),
(56, 19, 0),
(56, 20, 0),
(56, 21, 0),
(56, 22, 0),
(57, 6, 0),
(57, 16, 0),
(57, 58, 0),
(58, 5, 0),
(59, 5, 0),
(59, 6, 0),
(59, 60, 0),
(61, 6, 0),
(61, 62, 0),
(65, 5, 0),
(65, 26, 0),
(65, 28, 0),
(65, 34, 0),
(70, 2, 0),
(70, 30, 0),
(70, 32, 0),
(70, 34, 0),
(71, 5, 0),
(74, 5, 0),
(74, 37, 0),
(74, 50, 0),
(74, 53, 0),
(74, 55, 0),
(80, 2, 0),
(80, 37, 0),
(80, 48, 0),
(80, 50, 0),
(80, 51, 0),
(88, 5, 0),
(88, 37, 0),
(88, 55, 0),
(92, 5, 0),
(92, 59, 0),
(102, 5, 0),
(102, 86, 0),
(104, 5, 0),
(104, 59, 0),
(104, 61, 0),
(110, 5, 0),
(110, 63, 0),
(111, 5, 0),
(113, 2, 0),
(113, 63, 0),
(115, 5, 0),
(115, 64, 0),
(116, 5, 0),
(118, 2, 0),
(118, 64, 0),
(120, 5, 0),
(120, 65, 0),
(121, 5, 0),
(123, 2, 0),
(123, 65, 0),
(125, 5, 0),
(125, 66, 0),
(126, 5, 0),
(128, 2, 0),
(128, 66, 0),
(130, 5, 0),
(130, 67, 0),
(131, 5, 0),
(133, 2, 0),
(133, 67, 0),
(135, 5, 0),
(135, 68, 0),
(136, 5, 0),
(138, 2, 0),
(138, 68, 0),
(140, 5, 0),
(140, 69, 0),
(141, 5, 0),
(143, 2, 0),
(143, 69, 0),
(145, 5, 0),
(145, 70, 0),
(146, 5, 0),
(148, 2, 0),
(148, 70, 0),
(150, 5, 0),
(150, 71, 0),
(151, 5, 0),
(153, 2, 0),
(153, 71, 0),
(155, 5, 0),
(155, 72, 0),
(156, 5, 0),
(158, 2, 0),
(158, 72, 0),
(160, 5, 0),
(160, 73, 0),
(161, 5, 0),
(163, 2, 0),
(163, 73, 0),
(165, 5, 0),
(165, 74, 0),
(166, 5, 0),
(168, 2, 0),
(168, 74, 0),
(170, 5, 0),
(170, 75, 0),
(171, 5, 0),
(173, 2, 0),
(173, 75, 0),
(175, 5, 0),
(175, 76, 0),
(176, 5, 0),
(178, 2, 0),
(178, 76, 0),
(181, 5, 0),
(181, 77, 0),
(182, 5, 0),
(184, 2, 0),
(184, 77, 0),
(186, 5, 0),
(186, 78, 0),
(187, 5, 0),
(189, 2, 0),
(189, 78, 0),
(191, 5, 0),
(191, 79, 0),
(192, 5, 0),
(194, 2, 0),
(194, 79, 0),
(196, 5, 0),
(196, 80, 0),
(197, 5, 0),
(199, 2, 0),
(199, 80, 0),
(201, 5, 0),
(201, 81, 0),
(202, 5, 0),
(204, 2, 0),
(204, 81, 0),
(206, 5, 0),
(206, 82, 0),
(207, 5, 0),
(209, 2, 0),
(209, 82, 0),
(211, 5, 0),
(211, 83, 0),
(212, 5, 0),
(214, 2, 0),
(214, 83, 0),
(216, 5, 0),
(216, 84, 0),
(217, 5, 0),
(219, 2, 0),
(219, 84, 0),
(221, 5, 0),
(221, 85, 0),
(222, 5, 0),
(224, 2, 0),
(224, 85, 0),
(227, 5, 0),
(228, 5, 0),
(232, 2, 0),
(232, 86, 0),
(234, 5, 0),
(236, 5, 0),
(237, 5, 0),
(238, 5, 0),
(239, 8, 0),
(240, 5, 0),
(241, 8, 0),
(242, 2, 0),
(243, 2, 0),
(243, 87, 0),
(247, 5, 0),
(248, 8, 0),
(250, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:3:{s:6:\"locale\";s:2:\"ar\";s:3:\"rtl\";i:1;s:9:\"flag_code\";s:2:\"eg\";}', 0, 29),
(3, 3, 'term_language', '', 0, 4),
(4, 4, 'term_translations', 'a:2:{s:2:\"ar\";i:1;s:2:\"en\";i:7;}', 0, 2),
(5, 5, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 58),
(6, 6, 'term_language', '', 0, 9),
(7, 7, 'category', '', 0, 0),
(8, 8, 'ml-slider', '', 0, 6),
(9, 9, 'post_translations', 'a:2:{s:2:\"en\";i:24;s:2:\"ar\";i:27;}', 0, 2),
(10, 10, 'post_translations', 'a:2:{s:2:\"ar\";i:29;s:2:\"en\";i:13;}', 0, 2),
(11, 11, 'post_translations', 'a:2:{s:2:\"ar\";i:33;s:2:\"en\";i:30;}', 0, 2),
(12, 12, 'post_translations', 'a:2:{s:2:\"en\";i:37;s:2:\"ar\";i:39;}', 0, 2),
(13, 13, 'post_translations', 'a:2:{s:2:\"ar\";i:43;s:2:\"en\";i:41;}', 0, 2),
(14, 14, 'twotap_products', 'Two Tap Products', 0, 0),
(15, 15, 'twotap_orders', 'Two Tap Orders', 0, 0),
(16, 16, 'al_product-cat', '', 0, 2),
(17, 17, 'al_product-attributes', '', 0, 1),
(18, 18, 'al_product-attributes', '', 17, 1),
(19, 19, 'al_product-attributes', '', 0, 1),
(20, 20, 'al_product-attributes', '', 19, 1),
(21, 21, 'al_product-attributes', '', 0, 1),
(22, 22, 'al_product-attributes', '', 21, 1),
(23, 23, 'tcpc_catalog', '', 0, 0),
(24, 24, 'tcpc_catalog', '', 0, 0),
(25, 25, 'tcpc_category', '', 0, 0),
(26, 26, 'tcpc_catalog', '', 0, 1),
(27, 27, 'term_translations', 'a:1:{s:2:\"en\";i:26;}', 0, 1),
(28, 28, 'tcpc_category', '', 0, 1),
(29, 29, 'term_translations', 'a:1:{s:2:\"en\";i:28;}', 0, 1),
(30, 30, 'tcpc_catalog', '', 0, 1),
(31, 31, 'term_translations', 'a:1:{s:2:\"ar\";i:30;}', 0, 1),
(32, 32, 'tcpc_category', '', 0, 1),
(33, 33, 'term_translations', 'a:1:{s:2:\"ar\";i:32;}', 0, 1),
(34, 34, 'post_translations', 'a:2:{s:2:\"ar\";i:70;s:2:\"en\";i:65;}', 0, 2),
(35, 35, 'tcpc_catalog', '', 0, 0),
(36, 36, 'term_translations', 'a:1:{s:2:\"en\";i:35;}', 0, 1),
(37, 37, 'product_type', '', 0, 3),
(38, 38, 'product_type', '', 0, 0),
(39, 39, 'product_type', '', 0, 0),
(40, 40, 'product_type', '', 0, 0),
(41, 41, 'product_visibility', '', 0, 0),
(42, 42, 'product_visibility', '', 0, 0),
(43, 43, 'product_visibility', '', 0, 0),
(44, 44, 'product_visibility', '', 0, 0),
(45, 45, 'product_visibility', '', 0, 0),
(46, 46, 'product_visibility', '', 0, 0),
(47, 47, 'product_visibility', '', 0, 0),
(48, 48, 'product_visibility', '', 0, 1),
(49, 49, 'product_visibility', '', 0, 0),
(50, 50, 'post_translations', 'a:2:{s:2:\"en\";i:74;s:2:\"ar\";i:80;}', 0, 2),
(51, 51, 'product_cat', '', 0, 1),
(52, 52, 'term_translations', 'a:1:{s:2:\"ar\";i:51;}', 0, 1),
(53, 53, 'product_cat', 'dsrfas', 0, 1),
(54, 54, 'term_translations', 'a:1:{s:2:\"en\";i:53;}', 0, 1),
(55, 55, 'product_cat', 'adsdasd', 0, 2),
(56, 56, 'term_translations', 'a:1:{s:2:\"en\";i:55;}', 0, 1),
(57, 57, 'product_cat', 'dddddddd', 0, 0),
(58, 58, 'term_translations', 'a:1:{s:2:\"en\";i:57;}', 0, 1),
(59, 59, 'category', '', 0, 0),
(60, 60, 'term_translations', 'a:1:{s:2:\"en\";i:59;}', 0, 1),
(61, 61, 'category', '', 0, 0),
(62, 62, 'term_translations', 'a:1:{s:2:\"en\";i:61;}', 0, 1),
(63, 63, 'post_translations', 'a:2:{s:2:\"ar\";i:113;s:2:\"en\";i:110;}', 0, 2),
(64, 64, 'post_translations', 'a:2:{s:2:\"ar\";i:118;s:2:\"en\";i:115;}', 0, 2),
(65, 65, 'post_translations', 'a:2:{s:2:\"ar\";i:123;s:2:\"en\";i:120;}', 0, 2),
(66, 66, 'post_translations', 'a:2:{s:2:\"ar\";i:128;s:2:\"en\";i:125;}', 0, 2),
(67, 67, 'post_translations', 'a:2:{s:2:\"ar\";i:133;s:2:\"en\";i:130;}', 0, 2),
(68, 68, 'post_translations', 'a:2:{s:2:\"ar\";i:138;s:2:\"en\";i:135;}', 0, 2),
(69, 69, 'post_translations', 'a:2:{s:2:\"ar\";i:143;s:2:\"en\";i:140;}', 0, 2),
(70, 70, 'post_translations', 'a:2:{s:2:\"ar\";i:148;s:2:\"en\";i:145;}', 0, 2),
(71, 71, 'post_translations', 'a:2:{s:2:\"ar\";i:153;s:2:\"en\";i:150;}', 0, 2),
(72, 72, 'post_translations', 'a:2:{s:2:\"ar\";i:158;s:2:\"en\";i:155;}', 0, 2),
(73, 73, 'post_translations', 'a:2:{s:2:\"ar\";i:163;s:2:\"en\";i:160;}', 0, 2),
(74, 74, 'post_translations', 'a:2:{s:2:\"ar\";i:168;s:2:\"en\";i:165;}', 0, 2),
(75, 75, 'post_translations', 'a:2:{s:2:\"ar\";i:173;s:2:\"en\";i:170;}', 0, 2),
(76, 76, 'post_translations', 'a:2:{s:2:\"ar\";i:178;s:2:\"en\";i:175;}', 0, 2),
(77, 77, 'post_translations', 'a:2:{s:2:\"ar\";i:184;s:2:\"en\";i:181;}', 0, 2),
(78, 78, 'post_translations', 'a:2:{s:2:\"ar\";i:189;s:2:\"en\";i:186;}', 0, 2),
(79, 79, 'post_translations', 'a:2:{s:2:\"ar\";i:194;s:2:\"en\";i:191;}', 0, 2),
(80, 80, 'post_translations', 'a:2:{s:2:\"ar\";i:199;s:2:\"en\";i:196;}', 0, 2),
(81, 81, 'post_translations', 'a:2:{s:2:\"ar\";i:204;s:2:\"en\";i:201;}', 0, 2),
(82, 82, 'post_translations', 'a:2:{s:2:\"ar\";i:209;s:2:\"en\";i:206;}', 0, 2),
(83, 83, 'post_translations', 'a:2:{s:2:\"ar\";i:214;s:2:\"en\";i:211;}', 0, 2),
(84, 84, 'post_translations', 'a:2:{s:2:\"ar\";i:219;s:2:\"en\";i:216;}', 0, 2),
(85, 85, 'post_translations', 'a:2:{s:2:\"ar\";i:224;s:2:\"en\";i:221;}', 0, 2),
(86, 86, 'post_translations', 'a:2:{s:2:\"ar\";i:232;s:2:\"en\";i:102;}', 0, 2),
(87, 87, 'post_translations', 'a:2:{s:2:\"ar\";i:243;s:2:\"en\";i:55;}', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_catalogues`
--

CREATE TABLE `wp_upcp_catalogues` (
  `Catalogue_ID` mediumint(9) NOT NULL,
  `Catalogue_Name` text NOT NULL,
  `Catalogue_Description` text NOT NULL,
  `Catalogue_Layout_Format` text NOT NULL,
  `Catalogue_Custom_CSS` text NOT NULL,
  `Catalogue_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `Catalogue_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_catalogues`
--

INSERT INTO `wp_upcp_catalogues` (`Catalogue_ID`, `Catalogue_Name`, `Catalogue_Description`, `Catalogue_Layout_Format`, `Catalogue_Custom_CSS`, `Catalogue_Item_Count`, `Catalogue_Date_Created`) VALUES
(1, 'Sample Catalogue', 'This is where your description of this catalogue would go.', '', '', 0, '0000-00-00 00:00:00'),
(2, 'sasd', 'sdasd', '', '', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_catalogue_items`
--

CREATE TABLE `wp_upcp_catalogue_items` (
  `Catalogue_Item_ID` mediumint(9) NOT NULL,
  `Catalogue_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Category_ID` mediumint(9) DEFAULT '0',
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `Position` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_catalogue_items`
--

INSERT INTO `wp_upcp_catalogue_items` (`Catalogue_Item_ID`, `Catalogue_ID`, `Item_ID`, `Category_ID`, `SubCategory_ID`, `Position`) VALUES
(3, 2, 2, 0, 0, 3),
(4, 2, 1, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_categories`
--

CREATE TABLE `wp_upcp_categories` (
  `Category_ID` mediumint(9) NOT NULL,
  `Category_Name` text NOT NULL,
  `Category_Description` text NOT NULL,
  `Category_Image` text NOT NULL,
  `Category_Item_Count` mediumint(9) DEFAULT '0',
  `Category_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Category_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Category_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_categories`
--

INSERT INTO `wp_upcp_categories` (`Category_ID`, `Category_Name`, `Category_Description`, `Category_Image`, `Category_Item_Count`, `Category_Sidebar_Order`, `Category_Date_Created`, `Category_WC_ID`) VALUES
(1, 'Sample Category', 'This is where your description of this category would go.', '', 1, 9999, '0000-00-00 00:00:00', 0),
(2, 'sdadasd', 'asdasd', 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/pic6.jpg', 1, 9999, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_custom_fields`
--

CREATE TABLE `wp_upcp_custom_fields` (
  `Field_ID` mediumint(9) NOT NULL,
  `Field_Name` text NOT NULL,
  `Field_Slug` text NOT NULL,
  `Field_Type` text NOT NULL,
  `Field_Description` text NOT NULL,
  `Field_Values` text NOT NULL,
  `Field_Displays` text NOT NULL,
  `Field_Searchable` text NOT NULL,
  `Field_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Field_Display_Tabbed` text NOT NULL,
  `Field_Control_Type` text NOT NULL,
  `Field_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Field_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_fields_meta`
--

CREATE TABLE `wp_upcp_fields_meta` (
  `Meta_ID` mediumint(9) NOT NULL,
  `Field_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Meta_Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_items`
--

CREATE TABLE `wp_upcp_items` (
  `Item_ID` mediumint(9) NOT NULL,
  `Item_Name` text NOT NULL,
  `Item_Slug` text NOT NULL,
  `Item_Description` text,
  `Item_Price` text NOT NULL,
  `Item_Sale_Price` text NOT NULL,
  `Item_Sale_Mode` text NOT NULL,
  `Item_Link` text,
  `Item_Photo_URL` text,
  `Category_ID` mediumint(9) DEFAULT '0',
  `Category_Name` text,
  `Global_Item_ID` mediumint(9) DEFAULT '0',
  `Item_Special_Attr` text,
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `SubCategory_Name` text,
  `Item_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Item_Views` mediumint(9) DEFAULT '0',
  `Item_Display_Status` text,
  `Item_Related_Products` text,
  `Item_Next_Previous` text,
  `Item_SEO_Description` text,
  `Item_Category_Product_Order` mediumint(9) DEFAULT '9999',
  `Item_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_items`
--

INSERT INTO `wp_upcp_items` (`Item_ID`, `Item_Name`, `Item_Slug`, `Item_Description`, `Item_Price`, `Item_Sale_Price`, `Item_Sale_Mode`, `Item_Link`, `Item_Photo_URL`, `Category_ID`, `Category_Name`, `Global_Item_ID`, `Item_Special_Attr`, `SubCategory_ID`, `SubCategory_Name`, `Item_Date_Created`, `Item_Views`, `Item_Display_Status`, `Item_Related_Products`, `Item_Next_Previous`, `Item_SEO_Description`, `Item_Category_Product_Order`, `Item_WC_ID`) VALUES
(1, 'Sample Item', '', '<p>This is where your description of this product would go.</p>\n', '9.99', '', 'No', '', 'http://localhost/psolvingegypt/primestore/wp-content/plugins/ultimate-product-catalogue/images/sample_image.jpg', 1, 'Sample Category', 0, '', 0, '', '0000-00-00 00:00:00', 2, 'Show', '', '', '', 9999, 0),
(2, 'gvfg', 'gvfgd', '<p>asdasdasd</p>\n', 'sasd', 'asdas', 'Yes', 'asdsd', 'http://localhost/psolvingegypt/primestore/wp-content/uploads/2017/12/pic6-1.jpg', 2, 'sdadasd', 0, '', 0, '', '2017-12-10 11:44:13', 1, 'Show', '', '', 'sadas', 9999, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_item_images`
--

CREATE TABLE `wp_upcp_item_images` (
  `Item_Image_ID` mediumint(9) NOT NULL,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Image_URL` text,
  `Item_Image_Description` text,
  `Item_Image_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_subcategories`
--

CREATE TABLE `wp_upcp_subcategories` (
  `SubCategory_ID` mediumint(9) NOT NULL,
  `Category_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Category_Name` text NOT NULL,
  `SubCategory_Name` text NOT NULL,
  `SubCategory_Description` text NOT NULL,
  `SubCategory_Image` text NOT NULL,
  `SubCategory_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `SubCategory_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `SubCategory_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SubCategory_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_tagged_items`
--

CREATE TABLE `wp_upcp_tagged_items` (
  `Tagged_Item_ID` mediumint(9) NOT NULL,
  `Tag_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_tags`
--

CREATE TABLE `wp_upcp_tags` (
  `Tag_ID` mediumint(9) NOT NULL,
  `Tag_Name` text NOT NULL,
  `Tag_Description` text NOT NULL,
  `Tag_Item_Count` text NOT NULL,
  `Tag_Group_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Tag_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Tag_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Tag_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_tag_groups`
--

CREATE TABLE `wp_upcp_tag_groups` (
  `Tag_Group_ID` mediumint(9) NOT NULL,
  `Tag_Group_Name` text NOT NULL,
  `Tag_Group_Description` text NOT NULL,
  `Display_Tag_Group` text NOT NULL,
  `Tag_Group_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_videos`
--

CREATE TABLE `wp_upcp_videos` (
  `Item_Video_ID` mediumint(9) NOT NULL,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Video_URL` text,
  `Item_Video_Type` text,
  `Item_Video_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'master'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'pll_lgt,upcp_admin_pointers_tutorial-one,upcp_admin_pointers_tutorial-two,upcp_admin_pointers_tutorial-three,upcp_admin_pointers_tutorial-four,upcp_admin_pointers_tutorial-five,upcp_admin_pointers_tutorial-six'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a44374fefa2cf2a0faeb422e20c4c40603f1ca0c23f5af22576dabc751d81fd5\";a:4:{s:10:\"expiration\";i:1516008903;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1515836103;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '1'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1514118088'),
(21, 1, 'meta-box-order_tcpc', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:55:\"submitdiv,tcpc_catalogdiv,tcpc_categorydiv,postimagediv\";s:6:\"normal\";s:31:\"slugdiv,tcpc_fields-tcpc-fields\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_tcpc', '2'),
(23, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:0:{}'),
(26, 1, 'closedpostboxes_news', 'a:0:{}'),
(27, 1, 'metaboxhidden_news', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'master', '$P$B027BNi5LwvFHIxMdphRnv0RvKerlM.', 'master', 'me@ahmedelsayed.me', '', '2017-11-20 12:09:17', '', 0, 'master');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_alm`
--
ALTER TABLE `wp_alm`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_huge_it_catalogs`
--
ALTER TABLE `wp_huge_it_catalogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_huge_it_catalog_albums`
--
ALTER TABLE `wp_huge_it_catalog_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_catalog_album_catalog_contact`
--
ALTER TABLE `wp_huge_it_catalog_album_catalog_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_catalog_asc_seller`
--
ALTER TABLE `wp_huge_it_catalog_asc_seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_catalog_general_params`
--
ALTER TABLE `wp_huge_it_catalog_general_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_catalog_products`
--
ALTER TABLE `wp_huge_it_catalog_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_huge_it_catalog_rating`
--
ALTER TABLE `wp_huge_it_catalog_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_catalog_reviews`
--
ALTER TABLE `wp_huge_it_catalog_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_spidercatalog_id`
--
ALTER TABLE `wp_spidercatalog_id`
  ADD PRIMARY KEY (`id1`);

--
-- Indexes for table `wp_spidercatalog_params`
--
ALTER TABLE `wp_spidercatalog_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_spidercatalog_products`
--
ALTER TABLE `wp_spidercatalog_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_spidercatalog_product_categories`
--
ALTER TABLE `wp_spidercatalog_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_spidercatalog_product_reviews`
--
ALTER TABLE `wp_spidercatalog_product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_spidercatalog_product_votes`
--
ALTER TABLE `wp_spidercatalog_product_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_upcp_catalogues`
--
ALTER TABLE `wp_upcp_catalogues`
  ADD UNIQUE KEY `id` (`Catalogue_ID`);

--
-- Indexes for table `wp_upcp_catalogue_items`
--
ALTER TABLE `wp_upcp_catalogue_items`
  ADD UNIQUE KEY `id` (`Catalogue_Item_ID`);

--
-- Indexes for table `wp_upcp_categories`
--
ALTER TABLE `wp_upcp_categories`
  ADD UNIQUE KEY `id` (`Category_ID`);

--
-- Indexes for table `wp_upcp_custom_fields`
--
ALTER TABLE `wp_upcp_custom_fields`
  ADD UNIQUE KEY `id` (`Field_ID`);

--
-- Indexes for table `wp_upcp_fields_meta`
--
ALTER TABLE `wp_upcp_fields_meta`
  ADD UNIQUE KEY `id` (`Meta_ID`);

--
-- Indexes for table `wp_upcp_items`
--
ALTER TABLE `wp_upcp_items`
  ADD UNIQUE KEY `id` (`Item_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
