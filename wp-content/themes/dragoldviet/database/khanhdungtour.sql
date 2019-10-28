-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 07:15 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khanhdungtour`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-22 02:46:43', '2019-10-22 02:46:43', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://localhost/khanhdungtour', 'yes'),
(2, 'home', 'http://localhost/khanhdungtour', 'yes'),
(3, 'blogname', 'Khánh Dung Tour - Công ty TNHH xây dựng thương mại và dịch vụ Khánh Dung', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'khanhdungtour@gmail.com', 'yes'),
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
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:17:\"TestMenu/menu.php\";i:1;s:33:\"nody-tour-kaku/nody-tour-kaku.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'dragoldviet', 'yes'),
(41, 'stylesheet', 'dragoldviet', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1572288404;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572317203;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572317204;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572317218;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572317220;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:1:{s:22:\"ise8Z7eCBvHmzwSLyXh8KY\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BjGOv90higUig1hi/pn4M58MO8U0WU0\";s:10:\"created_at\";i:1572231078;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1572275653;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572275658;s:7:\"checked\";a:2:{s:17:\"TestMenu/menu.php\";s:0:\"\";s:33:\"nody-tour-kaku/nody-tour-kaku.php\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572275658;s:7:\"checked\";a:1:{s:11:\"dragoldviet\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_289d30a4d23579d26a05a8aa808752b5', '1572317219', 'no'),
(121, '_site_transient_browser_289d30a4d23579d26a05a8aa808752b5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"77.0.3865.120\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(122, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1572317220', 'no'),
(123, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(140, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571713232;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(141, 'current_theme', '', 'yes'),
(142, 'theme_mods_dragoldviet', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"global-nav\";i:52;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(159, '_site_transient_timeout_browser_a04d23778112ac8d0f5ac17f82982377', '1572404954', 'no'),
(160, '_site_transient_browser_a04d23778112ac8d0f5ac17f82982377', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"78.0.3904.70\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(183, '_transient_timeout_plugin_slugs', '1572337468', 'no'),
(184, '_transient_plugin_slugs', 'a:2:{i:0;s:17:\"TestMenu/menu.php\";i:1;s:33:\"nody-tour-kaku/nody-tour-kaku.php\";}', 'no'),
(185, 'recently_activated', 'a:0:{}', 'yes'),
(186, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1572240705', 'no'),
(187, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4634;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3715;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2645;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2519;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1942;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1769;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1756;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1473;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1453;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1449;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1438;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1387;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1363;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1296;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1157;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1141;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1109;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1077;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1055;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:959;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:862;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:849;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:845;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:819;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:761;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:753;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:738;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:735;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:734;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:709;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:705;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:689;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:682;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:678;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:671;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:657;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:637;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:632;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:625;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:624;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:612;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:601;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:578;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:564;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:564;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:560;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:547;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:538;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:536;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:530;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:526;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:522;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:521;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:521;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:517;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:507;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:487;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:485;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:482;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:482;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:480;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:461;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:460;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:454;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:450;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:419;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:417;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:413;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:409;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:404;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:403;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:399;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:391;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:387;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:387;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:383;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:379;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:371;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:367;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:365;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:363;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:360;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:359;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:352;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:349;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:348;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:337;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:329;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:329;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:329;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:326;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:321;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:318;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:316;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:316;}}', 'no'),
(192, 'recovery_mode_email_last_sent', '1572231078', 'yes'),
(269, 'mien_children', 'a:0:{}', 'yes'),
(290, 'diem-du-lich_children', 'a:0:{}', 'yes'),
(298, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(304, '_site_transient_timeout_theme_roots', '1572277457', 'no'),
(305, '_site_transient_theme_roots', 'a:1:{s:11:\"dragoldviet\";s:7:\"/themes\";}', 'no'),
(306, '_site_transient_timeout_php_check_b3655adab148a1a6c8391bd3893ea554', '1572880514', 'no'),
(307, '_site_transient_php_check_b3655adab148a1a6c8391bd3893ea554', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(312, 'category_children', 'a:0:{}', 'yes'),
(317, '_site_transient_timeout_available_translations', '1572291586', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(318, '_site_transient_available_translations', 'a:118:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.7\";s:7:\"updated\";s:19:\"2019-10-23 12:40:19\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.7/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 22:33:28\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.12/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-10 16:44:41\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-21 07:55:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 20:23:36\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 06:18:47\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-27 09:56:16\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 10:34:50\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-07-08 20:19:38\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:07:34\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:10:06\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:09:43\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:08:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-06-22 14:40:13\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-24 12:11:04\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 00:26:02\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 14:36:29\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 22:33:08\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 22:32:55\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-07-22 16:47:50\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 23:07:29\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:11:33\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.0.7\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.7/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-23 13:47:59\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-26 11:08:21\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 14:09:21\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 17:54:04\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 19:33:33\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 22:06:57\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-13 18:50:12\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-28 08:31:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-27 08:31:31\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 00:51:33\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-02-21 08:17:32\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-11 02:10:53\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-06 17:43:28\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-27 08:50:23\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 09:24:54\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 09:26:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-24 08:39:27\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-23 19:47:56\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-16 11:33:10\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:13:04\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 09:41:26\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-21 12:45:31\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 14:39:35\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-18 06:59:45\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 12:34:38\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 10:03:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 13:41:32\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-04 19:18:21\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-16 10:31:10\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.3/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-23 07:14:52\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-01 15:59:49\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 15:06:49\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-07-29 00:33:56\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(319, 'WPLANG', '', 'yes'),
(320, 'new_admin_email', 'khanhdungtour@gmail.com', 'yes'),
(334, 'tinh_children', 'a:2:{i:36;a:5:{i:0;i:56;i:1;i:57;i:2;i:58;i:3;i:59;i:4;i:60;}i:37;a:5:{i:0;i:61;i:1;i:62;i:2;i:63;i:3;i:64;i:4;i:65;}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 18, '_edit_last', '1'),
(6, 18, '_edit_lock', '1572253728:1'),
(11, 25, '_edit_last', '1'),
(12, 25, '_edit_lock', '1572278003:1'),
(13, 26, '_edit_last', '1'),
(14, 26, '_edit_lock', '1572253889:1'),
(15, 26, '_wp_trash_meta_status', 'publish'),
(16, 26, '_wp_trash_meta_time', '1572254042'),
(17, 26, '_wp_desired_post_slug', '26'),
(18, 18, '_wp_trash_meta_status', 'draft'),
(19, 18, '_wp_trash_meta_time', '1572254042'),
(20, 18, '_wp_desired_post_slug', ''),
(21, 25, 'tdc_gallery_id', 'a:3:{i:0;s:2:\"33\";i:1;s:2:\"34\";i:2;s:2:\"35\";}'),
(30, 33, '_wp_attached_file', '2019/10/1.jpg'),
(31, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2019/10/1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"1-800x440.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(32, 34, '_wp_attached_file', '2019/10/2.jpg'),
(33, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2019/10/2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"2-800x440.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(34, 35, '_wp_attached_file', '2019/10/3.jpg'),
(35, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2019/10/3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"3-800x440.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(36, 25, '_thumbnail_id', '33'),
(37, 38, '_edit_lock', '1572255599:1'),
(38, 40, '_menu_item_type', 'custom'),
(39, 40, '_menu_item_menu_item_parent', '0'),
(40, 40, '_menu_item_object_id', '40'),
(41, 40, '_menu_item_object', 'custom'),
(42, 40, '_menu_item_target', ''),
(43, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 40, '_menu_item_xfn', ''),
(45, 40, '_menu_item_url', '#'),
(47, 41, '_menu_item_type', 'custom'),
(48, 41, '_menu_item_menu_item_parent', '0'),
(49, 41, '_menu_item_object_id', '41'),
(50, 41, '_menu_item_object', 'custom'),
(51, 41, '_menu_item_target', ''),
(52, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 41, '_menu_item_xfn', ''),
(54, 41, '_menu_item_url', '#'),
(56, 42, '_menu_item_type', 'custom'),
(57, 42, '_menu_item_menu_item_parent', '0'),
(58, 42, '_menu_item_object_id', '42'),
(59, 42, '_menu_item_object', 'custom'),
(60, 42, '_menu_item_target', ''),
(61, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 42, '_menu_item_xfn', ''),
(63, 42, '_menu_item_url', '#'),
(65, 43, '_menu_item_type', 'custom'),
(66, 43, '_menu_item_menu_item_parent', '0'),
(67, 43, '_menu_item_object_id', '43'),
(68, 43, '_menu_item_object', 'custom'),
(69, 43, '_menu_item_target', ''),
(70, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 43, '_menu_item_xfn', ''),
(72, 43, '_menu_item_url', '#'),
(74, 44, '_menu_item_type', 'custom'),
(75, 44, '_menu_item_menu_item_parent', '0'),
(76, 44, '_menu_item_object_id', '44'),
(77, 44, '_menu_item_object', 'custom'),
(78, 44, '_menu_item_target', ''),
(79, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 44, '_menu_item_xfn', ''),
(81, 44, '_menu_item_url', '#'),
(83, 45, '_menu_item_type', 'custom'),
(84, 45, '_menu_item_menu_item_parent', '0'),
(85, 45, '_menu_item_object_id', '45'),
(86, 45, '_menu_item_object', 'custom'),
(87, 45, '_menu_item_target', ''),
(88, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 45, '_menu_item_xfn', ''),
(90, 45, '_menu_item_url', '#'),
(92, 46, '_menu_item_type', 'custom'),
(93, 46, '_menu_item_menu_item_parent', '0'),
(94, 46, '_menu_item_object_id', '46'),
(95, 46, '_menu_item_object', 'custom'),
(96, 46, '_menu_item_target', ''),
(97, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 46, '_menu_item_xfn', ''),
(99, 46, '_menu_item_url', '#'),
(101, 25, '_gia_tour', '1.000.000'),
(102, 25, '_thoi_gian_tour', '3 Ngày 2 đêm'),
(103, 25, '_diem_xuat_phat', 'Bình Định'),
(104, 54, '_edit_last', '1'),
(105, 54, '_edit_lock', '1572276552:1'),
(106, 55, '_edit_last', '1'),
(107, 55, '_edit_lock', '1572278003:1'),
(108, 55, '_thumbnail_id', '34'),
(109, 55, 'tdc_gallery_id', 'a:3:{i:0;s:2:\"35\";i:1;s:2:\"34\";i:2;s:2:\"33\";}'),
(110, 55, '_gia_tour', '5.000.000'),
(111, 55, '_thoi_gian_tour', '5 ngày 4 đêm'),
(112, 55, '_diem_xuat_phat', 'Đà Nẵng'),
(113, 58, '_wp_attached_file', '2019/10/1-1.jpg'),
(114, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:360;s:4:\"file\";s:15:\"2019/10/1-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 59, '_wp_attached_file', '2019/10/hoi-an6.jpg'),
(116, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:360;s:4:\"file\";s:19:\"2019/10/hoi-an6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hoi-an6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hoi-an6-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 60, '_wp_attached_file', '2019/10/tour-du-lich-ba-na-hill-05.jpg'),
(118, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:360;s:4:\"file\";s:38:\"2019/10/tour-du-lich-ba-na-hill-05.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-ba-na-hill-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-ba-na-hill-05-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 61, '_wp_attached_file', '2019/10/tour-du-lich-ba-na-hill-06.jpg'),
(120, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:360;s:4:\"file\";s:38:\"2019/10/tour-du-lich-ba-na-hill-06.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-ba-na-hill-06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-ba-na-hill-06-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 62, '_wp_attached_file', '2019/10/tour-du-lich-ba-na-hill-08.jpg'),
(122, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:360;s:4:\"file\";s:38:\"2019/10/tour-du-lich-ba-na-hill-08.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-ba-na-hill-08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-ba-na-hill-08-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 63, '_wp_attached_file', '2019/10/tour-du-lich-cu-lao-cham-8.jpg'),
(124, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:360;s:4:\"file\";s:38:\"2019/10/tour-du-lich-cu-lao-cham-8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-cu-lao-cham-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"tour-du-lich-cu-lao-cham-8-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 57, '_edit_last', '1'),
(126, 57, '_edit_lock', '1572278003:1'),
(127, 57, '_thumbnail_id', '59'),
(128, 57, 'tdc_gallery_id', 'a:6:{i:0;s:2:\"58\";i:1;s:2:\"59\";i:2;s:2:\"60\";i:3;s:2:\"61\";i:4;s:2:\"62\";i:5;s:2:\"63\";}'),
(129, 57, '_gia_tour', '2.070.000'),
(130, 57, '_thoi_gian_tour', '3 ngày 2 đêm'),
(131, 57, '_diem_xuat_phat', 'Quảng Nam'),
(132, 65, '_edit_last', '1'),
(133, 65, '_edit_lock', '1572286231:1'),
(134, 65, '_thumbnail_id', '62'),
(135, 65, 'tdc_gallery_id', 'a:3:{i:0;s:2:\"62\";i:1;s:2:\"61\";i:2;s:2:\"60\";}'),
(136, 65, '_gia_tour', '1.200.000'),
(137, 65, '_thoi_gian_tour', '1 ngày'),
(138, 65, '_diem_xuat_phat', 'Đà Nẵng'),
(139, 54, '_wp_trash_meta_status', 'draft'),
(140, 54, '_wp_trash_meta_time', '1572276991'),
(141, 54, '_wp_desired_post_slug', ''),
(142, 65, 'diem_den', 'Quảng Nam'),
(143, 65, '_diem_den', 'Quảng Nam'),
(144, 57, '_diem_den', 'Phú Yên'),
(145, 55, '_diem_den', 'Đắc Lắc'),
(146, 25, '_diem_den', 'Đắc Nông'),
(147, 69, '_edit_lock', '1572279372:1'),
(148, 70, '_wp_attached_file', '2019/10/Cau-vang-da-nang.jpg'),
(149, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:514;s:4:\"file\";s:28:\"2019/10/Cau-vang-da-nang.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Cau-vang-da-nang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Cau-vang-da-nang-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Cau-vang-da-nang-768x386.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:386;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Cau-vang-da-nang-1024x514.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:29:\"Cau-vang-da-nang-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 71, '_wp_attached_file', '2019/10/an-thuc-danang.jpg'),
(151, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:560;s:4:\"file\";s:26:\"2019/10/an-thuc-danang.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"an-thuc-danang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"an-thuc-danang-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"an-thuc-danang-768x430.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:27:\"an-thuc-danang-1000x538.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:27:\"an-thuc-danang-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 72, '_wp_attached_file', '2019/10/pho-co-hoian.jpg'),
(153, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:24:\"2019/10/pho-co-hoian.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"pho-co-hoian-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"pho-co-hoian-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"pho-co-hoian-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"pho-co-hoian-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:25:\"pho-co-hoian-1024x538.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:25:\"pho-co-hoian-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 73, '_wp_attached_file', '2019/10/cau-rong1.jpg'),
(155, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:529;s:4:\"file\";s:21:\"2019/10/cau-rong1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cau-rong1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cau-rong1-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cau-rong1-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"cau-rong1-1024x529.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:529;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:22:\"cau-rong1-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 69, '_thumbnail_id', '70'),
(159, 1, '_wp_trash_meta_status', 'publish'),
(160, 1, '_wp_trash_meta_time', '1572279056'),
(161, 1, '_wp_desired_post_slug', 'hello-world'),
(162, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(163, 76, '_edit_lock', '1572279376:1'),
(164, 77, '_wp_attached_file', '2019/10/13-7.jpg'),
(165, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:688;s:6:\"height\";i:457;s:4:\"file\";s:16:\"2019/10/13-7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"13-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"13-7-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:16:\"13-7-688x440.jpg\";s:5:\"width\";i:688;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 78, '_wp_attached_file', '2019/10/images1508511_1.jpg'),
(167, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:980;s:6:\"height\";i:735;s:4:\"file\";s:27:\"2019/10/images1508511_1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"images1508511_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"images1508511_1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"images1508511_1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:27:\"images1508511_1-980x538.jpg\";s:5:\"width\";i:980;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:27:\"images1508511_1-980x440.jpg\";s:5:\"width\";i:980;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:6:\"FC300C\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1553669581\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.61\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0016949152542373\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(170, 76, '_thumbnail_id', '77'),
(171, 80, '_edit_lock', '1572279359:1'),
(172, 81, '_wp_attached_file', '2019/10/cau-rong1-1.jpg'),
(173, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:529;s:4:\"file\";s:23:\"2019/10/cau-rong1-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cau-rong1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cau-rong1-1-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"cau-rong1-1-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"cau-rong1-1-1024x529.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:529;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:24:\"cau-rong1-1-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 80, '_thumbnail_id', '73');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-22 02:46:43', '2019-10-22 02:46:43', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-10-28 16:10:56', '2019-10-28 16:10:56', '', 0, 'http://localhost/khanhdungtour/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-22 02:46:43', '2019-10-22 02:46:43', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/khanhdungtour/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-10-22 02:46:43', '2019-10-22 02:46:43', '', 0, 'http://localhost/khanhdungtour/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-22 02:46:43', '2019-10-22 02:46:43', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/khanhdungtour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-10-22 02:46:43', '2019-10-22 02:46:43', '', 0, 'http://localhost/khanhdungtour/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-22 02:47:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-22 02:47:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?p=4', 0, 'post', '', 0),
(5, 1, '2019-10-28 07:57:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 07:57:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=5', 0, 'post_tours', '', 0),
(6, 1, '2019-10-28 07:58:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 07:58:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=6', 0, 'post_tours', '', 0),
(7, 1, '2019-10-28 07:59:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 07:59:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=7', 0, 'post_tours', '', 0),
(8, 1, '2019-10-28 08:24:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:24:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=8', 0, 'post_tours', '', 0),
(9, 1, '2019-10-28 08:25:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:25:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=9', 0, 'post_tours', '', 0),
(10, 1, '2019-10-28 08:26:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:26:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=10', 0, 'post_tours', '', 0),
(11, 1, '2019-10-28 08:29:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:29:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=11', 0, 'post_tours', '', 0),
(12, 1, '2019-10-28 08:29:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:29:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=12', 0, 'post_tours', '', 0),
(13, 1, '2019-10-28 08:30:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:30:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=13', 0, 'post_tours', '', 0),
(14, 1, '2019-10-28 08:31:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:31:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=14', 0, 'post_tours', '', 0),
(15, 1, '2019-10-28 08:31:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:31:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=15', 0, 'post_tours', '', 0),
(16, 1, '2019-10-28 08:32:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:32:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=16', 0, 'post_tours', '', 0),
(17, 1, '2019-10-28 08:32:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 08:32:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=17', 0, 'post_tours', '', 0),
(18, 1, '2019-10-28 09:14:02', '2019-10-28 09:14:02', '&nbsp;\n\n&nbsp;', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-10-28 09:14:02', '2019-10-28 09:14:02', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&#038;p=18', 0, 'post_tours', '', 0),
(20, 1, '2019-10-28 09:10:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 09:10:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=20', 0, 'post_tours', '', 0),
(21, 1, '2019-10-28 09:11:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 09:11:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=21', 0, 'post_tours', '', 0),
(24, 1, '2019-10-28 09:12:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 09:12:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=24', 0, 'post_tours', '', 0),
(25, 1, '2019-10-28 09:14:09', '2019-10-28 09:14:09', 'Thông tin tour du lịch\r\n\r\n<img class=\"alignnone wp-image-35\" src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/3-300x200.jpg\" alt=\"\" width=\"221\" height=\"147\" />\r\n\r\n&nbsp;', 'Tour du lịch Bà Nà Núi Hills', '', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2019-10-28 15:54:46', '2019-10-28 15:54:46', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&#038;p=25', 0, 'post_tours', '', 0),
(26, 1, '2019-10-28 09:13:53', '2019-10-28 09:13:53', '', '', '', 'trash', 'closed', 'closed', '', '26__trashed', '', '', '2019-10-28 09:14:02', '2019-10-28 09:14:02', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&#038;p=26', 0, 'post_tours', '', 0),
(27, 1, '2019-10-28 09:13:53', '2019-10-28 09:13:53', '', '', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-10-28 09:13:53', '2019-10-28 09:13:53', '', 26, 'http://localhost/khanhdungtour/2019/10/28/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-10-28 09:14:02', '2019-10-28 09:14:02', '&nbsp;\n\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-10-28 09:14:02', '2019-10-28 09:14:02', '', 18, 'http://localhost/khanhdungtour/2019/10/28/18-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-10-28 09:14:09', '2019-10-28 09:14:09', '', 'test 1', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-10-28 09:14:09', '2019-10-28 09:14:09', '', 25, 'http://localhost/khanhdungtour/2019/10/28/25-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-10-28 09:20:26', '2019-10-28 09:20:26', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-10-28 09:20:26', '2019-10-28 09:20:26', '', 25, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-10-28 09:20:26', '2019-10-28 09:20:26', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-10-28 09:20:26', '2019-10-28 09:20:26', '', 25, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-10-28 09:20:27', '2019-10-28 09:20:27', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-10-28 09:20:27', '2019-10-28 09:20:27', '', 25, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-10-28 09:21:14', '2019-10-28 09:21:14', '', 'Tour du lịch Bà Nà Núi Hills', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-10-28 09:21:14', '2019-10-28 09:21:14', '', 25, 'http://localhost/khanhdungtour/2019/10/28/25-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-10-28 09:23:38', '2019-10-28 09:23:38', 'Thông tin tour du lịch', 'Tour du lịch Bà Nà Núi Hills', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-10-28 09:23:38', '2019-10-28 09:23:38', '', 25, 'http://localhost/khanhdungtour/2019/10/28/25-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-10-28 09:42:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-28 09:42:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?p=38', 0, 'post', '', 0),
(40, 1, '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 0, 'http://localhost/khanhdungtour/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 0, 'http://localhost/khanhdungtour/?p=41', 7, 'nav_menu_item', '', 0),
(42, 1, '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 'Menu item', '', 'publish', 'closed', 'closed', '', 'menu-item', '', '', '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 0, 'http://localhost/khanhdungtour/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 'Menu item', '', 'publish', 'closed', 'closed', '', 'menu-item-2', '', '', '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 0, 'http://localhost/khanhdungtour/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 'Menu item', '', 'publish', 'closed', 'closed', '', 'menu-item-3', '', '', '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 0, 'http://localhost/khanhdungtour/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 'Menu item', '', 'publish', 'closed', 'closed', '', 'menu-item-4', '', '', '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 0, 'http://localhost/khanhdungtour/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 'Menu item', '', 'publish', 'closed', 'closed', '', 'menu-item-5', '', '', '2019-10-28 09:47:07', '2019-10-28 09:47:07', '', 0, 'http://localhost/khanhdungtour/?p=46', 6, 'nav_menu_item', '', 0),
(47, 1, '2019-10-28 09:52:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 09:52:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=47', 0, 'post_tours', '', 0),
(48, 1, '2019-10-28 09:58:05', '2019-10-28 09:58:05', 'Thông tin tour du lịch\r\n\r\n<img class=\"alignnone size-medium wp-image-35\" src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/3-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'Tour du lịch Bà Nà Núi Hills', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-10-28 09:58:05', '2019-10-28 09:58:05', '', 25, 'http://localhost/khanhdungtour/2019/10/28/25-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-10-28 09:58:48', '2019-10-28 09:58:48', 'Thông tin tour du lịch\r\n\r\n<img class=\"alignnone  wp-image-35\" src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/3-300x200.jpg\" alt=\"\" width=\"221\" height=\"147\" />\r\n\r\n&nbsp;', 'Tour du lịch Bà Nà Núi Hills', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-10-28 09:58:48', '2019-10-28 09:58:48', '', 25, 'http://localhost/khanhdungtour/2019/10/28/25-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-10-28 10:04:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 10:04:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=50', 0, 'post_tours', '', 0),
(51, 1, '2019-10-28 10:05:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 10:05:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=51', 0, 'post_tours', '', 0),
(52, 1, '2019-10-28 10:05:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 10:05:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=52', 0, 'post_tours', '', 0),
(53, 1, '2019-10-28 10:05:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 10:05:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=53', 0, 'post_tours', '', 0),
(54, 1, '2019-10-28 15:36:31', '2019-10-28 15:36:31', '', 'Tour test', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2019-10-28 15:36:31', '2019-10-28 15:36:31', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&#038;p=54', 0, 'post_tours', '', 0),
(55, 1, '2019-10-28 15:31:32', '2019-10-28 15:31:32', 'Sáng: Hướng dẫn viên đón du khách tại sân bay Tân Sơn Nhất làm thủ tục bay đi Đà Nẵng. Đến Đà Nẵng xe và HDV đón quý khách về nhận phòng nghì ngơi, đến nhà hàng dùng cơm trưa.\r\n\r\nChiều : Khởi hành đi tham quan Bán Đảo Sơn Trà (Monkey Mountain), quay một vòng quanh Bán Đảo để thưởng ngoạn toàn cảnh phố biển Đà Nẵng trên cao, viếng Linh Ứng Tự – nơi có tượng Phật Bà 65m cao nhất Việt Nam, tắm biễn Mỹ Khê , về Đà Nẵng dùng cơm chiều.\r\n\r\nTối: Trãi nghiệm cảm giác với Vòng quay Mặt trời Sun Wheel – Top 10 vòng quay cao nhất Thế Giới, chiêm ngưởng vẻ đẹp Đà Thành về đêm. (Sun Wheel tự túc)', 'ĐÀ NẴNG - SƠN TRÀ - HỘI AN - BÀ NÀ - HUẾ - PHONG NHA 5 NGÀY 4 ĐÊM', '', 'publish', 'closed', 'closed', '', 'da-nang-son-tra-hoi-an-ba-na-hue-phong-nha-5-ngay-4-dem', '', '', '2019-10-28 15:54:41', '2019-10-28 15:54:41', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&#038;p=55', 0, 'post_tours', '', 0),
(56, 1, '2019-10-28 15:31:32', '2019-10-28 15:31:32', 'Sáng: Hướng dẫn viên đón du khách tại sân bay Tân Sơn Nhất làm thủ tục bay đi Đà Nẵng. Đến Đà Nẵng xe và HDV đón quý khách về nhận phòng nghì ngơi, đến nhà hàng dùng cơm trưa.\r\n\r\nChiều : Khởi hành đi tham quan Bán Đảo Sơn Trà (Monkey Mountain), quay một vòng quanh Bán Đảo để thưởng ngoạn toàn cảnh phố biển Đà Nẵng trên cao, viếng Linh Ứng Tự – nơi có tượng Phật Bà 65m cao nhất Việt Nam, tắm biễn Mỹ Khê , về Đà Nẵng dùng cơm chiều.\r\n\r\nTối: Trãi nghiệm cảm giác với Vòng quay Mặt trời Sun Wheel – Top 10 vòng quay cao nhất Thế Giới, chiêm ngưởng vẻ đẹp Đà Thành về đêm. (Sun Wheel tự túc)', 'ĐÀ NẴNG - SƠN TRÀ - HỘI AN - BÀ NÀ - HUẾ - PHONG NHA 5 NGÀY 4 ĐÊM', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-10-28 15:31:32', '2019-10-28 15:31:32', '', 55, 'http://localhost/khanhdungtour/2019/10/28/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-10-28 15:34:56', '2019-10-28 15:34:56', 'Tour du lịch <strong>Đà Nẵng – Cù Lao Chàm – Hội An – CV Ấn Tượng – Bà Nà Hill (3N2Đ). </strong>Quý khách sẽ được trải nghiệm từ lăn biển đến núi cao. Nếu Cù Lao Chàm cho bạn cảm giác đắm chiềm hòa mình với biển cả. Thì Hội An đưa bạn vào nét cổ khính lung linh và huyền ảo. Đến với Bà Nà thì đắm say lòng người giữ đỉnh núi 4 mùa mây trắng ngay giữa lòng thành phố\r\n<h2>Tour Đà Nẵng – Cù Lao Chàm – Hội An – CV Ấn Tượng – Bà Nà Hill (3N2Đ)</h2>\r\n<img src=\"https://vnspace.top/wp-content/uploads/2018/06/da-nang-cu-lao-cham-hoi-an-cv-an-tuong-ba-na-hill-3n2d.jpg\" alt=\"da nang cu lao cham hoi an cv an tuong ba na hill 3n2d - Đà Nẵng - Cù Lao Chàm - Hội An - CV Ấn Tượng - Bà Nà Hill (3N2Đ)\" />\r\n<h3><strong>NGÀY 1: SƠN TRÀ – CHÙA LINH ỨNG – BIỂN MỸ KHÊ</strong></h3>\r\n(Ăn tối)\r\n<ul>\r\n 	<li><strong>Chiều:</strong> Đón khách tại Sân Bay</li>\r\n 	<li>Xe đưa đoàn tham quan <strong>Bán Đảo Sơn Trà, Chùa Linh Ứng </strong>(Ngôi chùa có tượng phật Quán Thế Âm cao nhất Việt Nam cùng 18 vị la hán)</li>\r\n 	<li>Tắm <strong>biển Mỹ Khê</strong> <em>(Tạp chí kinh tế hàng đầu của Mỹ Forbes đã bình chọn là một trong sáu bãi biển quyến rũ nhất hành tinh)</em></li>\r\n 	<li>Nhận phòng khách sạn</li>\r\n 	<li>Ăn Tối (nếu khách muốn tự túc ăn đặc sản thì trừ ra 120k)</li>\r\n 	<li>Tự do dạo thành phố biển về đêm<img src=\"https://vnspace.top/wp-content/uploads/2018/06/da-nang-cu-lao-cham-hoi-an-cv-an-tuong-ba-na-hill-3n2d2.jpg\" alt=\"da nang cu lao cham hoi an cv an tuong ba na hill 3n2d2 - Đà Nẵng - Cù Lao Chàm - Hội An - CV Ấn Tượng - Bà Nà Hill (3N2Đ)\" /></li>\r\n</ul>', 'Đà Nẵng – Cù Lao Chàm – Hội An – CV Ấn Tượng – Bà Nà Hill', '', 'publish', 'closed', 'closed', '', 'da-nang-cu-lao-cham-hoi-an-cv-an-tuong-ba-na-hill', '', '', '2019-10-28 15:54:37', '2019-10-28 15:54:37', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&#038;p=57', 0, 'post_tours', '', 0),
(58, 1, '2019-10-28 15:33:12', '2019-10-28 15:33:12', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-10-28 15:33:12', '2019-10-28 15:33:12', '', 57, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-10-28 15:33:12', '2019-10-28 15:33:12', '', 'hoi-an6', '', 'inherit', 'open', 'closed', '', 'hoi-an6', '', '', '2019-10-28 15:33:12', '2019-10-28 15:33:12', '', 57, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/hoi-an6.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-10-28 15:33:13', '2019-10-28 15:33:13', '', 'tour-du-lich-ba-na-hill-05', '', 'inherit', 'open', 'closed', '', 'tour-du-lich-ba-na-hill-05', '', '', '2019-10-28 15:33:13', '2019-10-28 15:33:13', '', 57, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/tour-du-lich-ba-na-hill-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-10-28 15:33:13', '2019-10-28 15:33:13', '', 'tour-du-lich-ba-na-hill-06', '', 'inherit', 'open', 'closed', '', 'tour-du-lich-ba-na-hill-06', '', '', '2019-10-28 15:33:13', '2019-10-28 15:33:13', '', 57, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/tour-du-lich-ba-na-hill-06.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-10-28 15:33:14', '2019-10-28 15:33:14', '', 'tour-du-lich-ba-na-hill-08', '', 'inherit', 'open', 'closed', '', 'tour-du-lich-ba-na-hill-08', '', '', '2019-10-28 15:33:14', '2019-10-28 15:33:14', '', 57, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/tour-du-lich-ba-na-hill-08.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-10-28 15:33:14', '2019-10-28 15:33:14', '', 'tour-du-lich-cu-lao-cham-8', '', 'inherit', 'open', 'closed', '', 'tour-du-lich-cu-lao-cham-8', '', '', '2019-10-28 15:33:14', '2019-10-28 15:33:14', '', 57, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/tour-du-lich-cu-lao-cham-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-10-28 15:34:56', '2019-10-28 15:34:56', 'Tour du lịch <strong>Đà Nẵng – Cù Lao Chàm – Hội An – CV Ấn Tượng – Bà Nà Hill (3N2Đ). </strong>Quý khách sẽ được trải nghiệm từ lăn biển đến núi cao. Nếu Cù Lao Chàm cho bạn cảm giác đắm chiềm hòa mình với biển cả. Thì Hội An đưa bạn vào nét cổ khính lung linh và huyền ảo. Đến với Bà Nà thì đắm say lòng người giữ đỉnh núi 4 mùa mây trắng ngay giữa lòng thành phố\r\n<h2>Tour Đà Nẵng – Cù Lao Chàm – Hội An – CV Ấn Tượng – Bà Nà Hill (3N2Đ)</h2>\r\n<img src=\"https://vnspace.top/wp-content/uploads/2018/06/da-nang-cu-lao-cham-hoi-an-cv-an-tuong-ba-na-hill-3n2d.jpg\" alt=\"da nang cu lao cham hoi an cv an tuong ba na hill 3n2d - Đà Nẵng - Cù Lao Chàm - Hội An - CV Ấn Tượng - Bà Nà Hill (3N2Đ)\" />\r\n<h3><strong>NGÀY 1: SƠN TRÀ – CHÙA LINH ỨNG – BIỂN MỸ KHÊ</strong></h3>\r\n(Ăn tối)\r\n<ul>\r\n 	<li><strong>Chiều:</strong> Đón khách tại Sân Bay</li>\r\n 	<li>Xe đưa đoàn tham quan <strong>Bán Đảo Sơn Trà, Chùa Linh Ứng </strong>(Ngôi chùa có tượng phật Quán Thế Âm cao nhất Việt Nam cùng 18 vị la hán)</li>\r\n 	<li>Tắm <strong>biển Mỹ Khê</strong> <em>(Tạp chí kinh tế hàng đầu của Mỹ Forbes đã bình chọn là một trong sáu bãi biển quyến rũ nhất hành tinh)</em></li>\r\n 	<li>Nhận phòng khách sạn</li>\r\n 	<li>Ăn Tối (nếu khách muốn tự túc ăn đặc sản thì trừ ra 120k)</li>\r\n 	<li>Tự do dạo thành phố biển về đêm<img src=\"https://vnspace.top/wp-content/uploads/2018/06/da-nang-cu-lao-cham-hoi-an-cv-an-tuong-ba-na-hill-3n2d2.jpg\" alt=\"da nang cu lao cham hoi an cv an tuong ba na hill 3n2d2 - Đà Nẵng - Cù Lao Chàm - Hội An - CV Ấn Tượng - Bà Nà Hill (3N2Đ)\" /></li>\r\n</ul>', 'Đà Nẵng – Cù Lao Chàm – Hội An – CV Ấn Tượng – Bà Nà Hill', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-10-28 15:34:56', '2019-10-28 15:34:56', '', 57, 'http://localhost/khanhdungtour/2019/10/28/57-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-10-28 15:36:25', '2019-10-28 15:36:25', '8:00 Xe và HDV Đà Nẵng Xanh đón du khách tại khách sạn và khởi hành đi Thánh địa Mỹ Sơn, nằm cách trung tâm thành phố Đà Nẵng gần 70km là tổ hợp bao gồm nhiều đền đài Chăm Pa, trong một thung lũng đường kính khoảng 2 km, bao quanh bởi đồi núi.\r\n9:00 Đến nơi, du khách có thể tham quan cũng như tìm hiểu về văn hóa Chăm pa\r\n- Đây từng là nơi tổ chức cúng tế của vương triều Chăm pa cũng như là lăng mộ của các vị vua Chăm pa hay hoàng thân, quốc thích. Thánh địa Mỹ Sơn được coi là một trong những trung tâm đền đài chính của Ấn Độ giáo ở khu vực Đông Nam Á và là di sản duy nhất của thể loại này tại Việt Nam.\r\n10:45 Thưởng thức các tiết mục biểu diễn nghệ thuật văn hóa của người Chăm pa\r\n- Xe đưa đoàn đi ăn trưa tại Bê thui Cầu Mống\r\n13:00 Khởi hành về lại Đà Nẵng, trả khách tại điểm đón ban đầu\r\n\r\n<strong>DỊCH VỤ BAO GỒM:</strong>\r\n1. Xe du lịch chất lượng tốt, lái xe nhiều kinh nghiệm\r\n2. Vé Mỹ Sơn\r\n3. Ăn trưa đặc sản Bê thui Cầu Mống\r\n4. Hướng dẫn viên tiếng Anh\r\n5. Bảo hiểm\r\n6. Lavie 1 chai 500ml/người\r\n\r\n<strong>KHÔNG BAO GỒM:</strong>\r\n1. Ăn uống ngoài chương trình\r\n2. Dịch vụ phát sinh, không đề cập trong chương trình, chi phí tự túc ghi trong chương trình\r\n\r\n<strong>GIÁ TRẺ EM</strong> (căn cứ theo năm sinh):\r\n1. Trẻ em dưới 5 tuổi: miễn phí.\r\n2. Trẻ em từ 5 – 10 tuổi: 50% chi phí người lớn\r\n3. Trẻ em từ 11 tuổi trở lên: tính như người lớn', 'Tour Mỹ Sơn 1 ngày từ Đà Nẵng', '', 'publish', 'closed', 'closed', '', 'tour-my-son-1-ngay-tu-da-nang', '', '', '2019-10-28 15:53:10', '2019-10-28 15:53:10', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&#038;p=65', 0, 'post_tours', '', 0),
(66, 1, '2019-10-28 15:36:25', '2019-10-28 15:36:25', '8:00 Xe và HDV Đà Nẵng Xanh đón du khách tại khách sạn và khởi hành đi Thánh địa Mỹ Sơn, nằm cách trung tâm thành phố Đà Nẵng gần 70km là tổ hợp bao gồm nhiều đền đài Chăm Pa, trong một thung lũng đường kính khoảng 2 km, bao quanh bởi đồi núi.\r\n9:00 Đến nơi, du khách có thể tham quan cũng như tìm hiểu về văn hóa Chăm pa\r\n- Đây từng là nơi tổ chức cúng tế của vương triều Chăm pa cũng như là lăng mộ của các vị vua Chăm pa hay hoàng thân, quốc thích. Thánh địa Mỹ Sơn được coi là một trong những trung tâm đền đài chính của Ấn Độ giáo ở khu vực Đông Nam Á và là di sản duy nhất của thể loại này tại Việt Nam.\r\n10:45 Thưởng thức các tiết mục biểu diễn nghệ thuật văn hóa của người Chăm pa\r\n- Xe đưa đoàn đi ăn trưa tại Bê thui Cầu Mống\r\n13:00 Khởi hành về lại Đà Nẵng, trả khách tại điểm đón ban đầu\r\n\r\n<strong>DỊCH VỤ BAO GỒM:</strong>\r\n1. Xe du lịch chất lượng tốt, lái xe nhiều kinh nghiệm\r\n2. Vé Mỹ Sơn\r\n3. Ăn trưa đặc sản Bê thui Cầu Mống\r\n4. Hướng dẫn viên tiếng Anh\r\n5. Bảo hiểm\r\n6. Lavie 1 chai 500ml/người\r\n\r\n<strong>KHÔNG BAO GỒM:</strong>\r\n1. Ăn uống ngoài chương trình\r\n2. Dịch vụ phát sinh, không đề cập trong chương trình, chi phí tự túc ghi trong chương trình\r\n\r\n<strong>GIÁ TRẺ EM</strong> (căn cứ theo năm sinh):\r\n1. Trẻ em dưới 5 tuổi: miễn phí.\r\n2. Trẻ em từ 5 – 10 tuổi: 50% chi phí người lớn\r\n3. Trẻ em từ 11 tuổi trở lên: tính như người lớn', 'Tour Mỹ Sơn 1 ngày từ Đà Nẵng', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-10-28 15:36:25', '2019-10-28 15:36:25', '', 65, 'http://localhost/khanhdungtour/2019/10/28/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-10-28 15:36:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 15:36:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=67', 0, 'post_tours', '', 0),
(68, 1, '2019-10-28 15:36:31', '2019-10-28 15:36:31', '', 'Tour test', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-10-28 15:36:31', '2019-10-28 15:36:31', '', 54, 'http://localhost/khanhdungtour/2019/10/28/54-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-10-28 16:10:48', '2019-10-28 16:10:48', '<!-- wp:paragraph -->\n<p><strong>Mới đây trang NY Times (Mỹ) công bố danh sách 52 điểm đến du lịch hấp dẫn của năm 2019, trong đó Đà Nẵng của Việt Nam đã lên thứ hạng 15. Trước đó, thành phố Đà Nẵng chỉ từng xếp vị trí 43/52 trong danh sách này năm 2015.</strong><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đà Nẵng mới lên hạng đứng vị trí 15 trong danh sách 52 điểm đến do báo Mỹ bình chọn. Bên cạnh đó là nhiều địa danh nổi tiếng thế giới từ Nhật Bản, Đức và vùng Caribbean nổi tiếng. Ảnh: Elpas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":71} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/an-thuc-danang.jpg\" alt=\"\" class=\"wp-image-71\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>NY Times đề cập nền ẩm thực tuyệt vời tại Đà Nẵng là điểm hấp dẫn hơn cả thu hút du khách đến thành phố biển. Không phải ngẫu nhiên, hình ảnh mì quảng được lựa chọn để giới thiệu về Đà Nẵng. Ảnh: NY Times.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":70} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/Cau-vang-da-nang-1024x514.jpg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Từ Đà Nẵng, thành phố biển lớn thứ 3 của Việt Nam, du khách nước ngoài có thể dễ dàng ghé thăm Di sản Thế giới phố cổ Hội An. Những năm gần dây, thành phố biển ngày càng thu hút nhiều khách du lịch với phong cảnh, bãi biển tuyệt đẹp. Ảnh: Suitcase Magazine.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":72} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/pho-co-hoian-1024x576.jpg\" alt=\"\" class=\"wp-image-72\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Du khách có thể khởi đầu ngày mới tại đây bằng việc bơi thoả thích tại bãi tắm Non Nước. Bãi tắm hình lưỡi liềm nằm kế bên danh thắng Ngũ Hành Sơn, điểm du lịch tâm linh cách trung tâm thành phố khoảng 8 km. Ảnh: Travel Danang.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":73} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/cau-rong1-1024x529.jpg\" alt=\"\" class=\"wp-image-73\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Đêm đến, khách du lịch cũng có thể dạo chơi, check-in tại cầu Rồng rực rỡ ánh đèn, đi bộ dọc sông Hàn thưởng thức mì quảng tại bất kỳ quán ăn đường phố nào với giá khoảng 25.000 đồng/bát. Ảnh: WanderlustMike.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ngoài Đà Nẵng bảng xếp hạng còn vinh danh nhiều điểm khác như: Las Vegas(Mỹ) xếp thứ 13, quần đảo Setouchi (hay Seto) ở Nhật Bản xếp thứ 7, Thành phố Munich(Đức) là điểm đến xếp hạng thứ 5, Đứng đầu danh sách điểm đến năm 2019 của NY Times là vùng quốc hải Puerto Rico…</p>\n<!-- /wp:paragraph -->', 'Đà Nẵng thuộc top điểm đến do báo Mỹ bình chọn năm 2019', '', 'publish', 'open', 'open', '', 'da-nang-thuoc-top-diem-den-do-bao-my-binh-chon-nam-2019', '', '', '2019-10-28 16:18:39', '2019-10-28 16:18:39', '', 0, 'http://localhost/khanhdungtour/?p=69', 0, 'post', '', 0),
(70, 1, '2019-10-28 16:05:50', '2019-10-28 16:05:50', '', 'Cau-vang-da-nang', '', 'inherit', 'open', 'closed', '', 'cau-vang-da-nang', '', '', '2019-10-28 16:05:50', '2019-10-28 16:05:50', '', 69, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/Cau-vang-da-nang.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-10-28 16:06:07', '2019-10-28 16:06:07', '', 'an-thuc-danang', '', 'inherit', 'open', 'closed', '', 'an-thuc-danang', '', '', '2019-10-28 16:06:07', '2019-10-28 16:06:07', '', 69, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/an-thuc-danang.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-10-28 16:06:16', '2019-10-28 16:06:16', '', 'pho-co-hoian', '', 'inherit', 'open', 'closed', '', 'pho-co-hoian', '', '', '2019-10-28 16:06:16', '2019-10-28 16:06:16', '', 69, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/pho-co-hoian.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-10-28 16:06:24', '2019-10-28 16:06:24', '', 'cau-rong1', '', 'inherit', 'open', 'closed', '', 'cau-rong1', '', '', '2019-10-28 16:06:24', '2019-10-28 16:06:24', '', 69, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/cau-rong1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-10-28 16:10:48', '2019-10-28 16:10:48', '<!-- wp:paragraph -->\n<p><strong>Mới đây trang NY Times (Mỹ) công bố danh sách 52 điểm đến du lịch hấp dẫn của năm 2019, trong đó Đà Nẵng của Việt Nam đã lên thứ hạng 15. Trước đó, thành phố Đà Nẵng chỉ từng xếp vị trí 43/52 trong danh sách này năm 2015.</strong><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đà Nẵng mới lên hạng đứng vị trí 15 trong danh sách 52 điểm đến do báo Mỹ bình chọn. Bên cạnh đó là nhiều địa danh nổi tiếng thế giới từ Nhật Bản, Đức và vùng Caribbean nổi tiếng. Ảnh: Elpas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":71} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/an-thuc-danang.jpg\" alt=\"\" class=\"wp-image-71\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>NY Times đề cập nền ẩm thực tuyệt vời tại Đà Nẵng là điểm hấp dẫn hơn cả thu hút du khách đến thành phố biển. Không phải ngẫu nhiên, hình ảnh mì quảng được lựa chọn để giới thiệu về Đà Nẵng. Ảnh: NY Times.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":70} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/Cau-vang-da-nang-1024x514.jpg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Từ Đà Nẵng, thành phố biển lớn thứ 3 của Việt Nam, du khách nước ngoài có thể dễ dàng ghé thăm Di sản Thế giới phố cổ Hội An. Những năm gần dây, thành phố biển ngày càng thu hút nhiều khách du lịch với phong cảnh, bãi biển tuyệt đẹp. Ảnh: Suitcase Magazine.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":72} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/pho-co-hoian-1024x576.jpg\" alt=\"\" class=\"wp-image-72\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Du khách có thể khởi đầu ngày mới tại đây bằng việc bơi thoả thích tại bãi tắm Non Nước. Bãi tắm hình lưỡi liềm nằm kế bên danh thắng Ngũ Hành Sơn, điểm du lịch tâm linh cách trung tâm thành phố khoảng 8 km. Ảnh: Travel Danang.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":73} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/cau-rong1-1024x529.jpg\" alt=\"\" class=\"wp-image-73\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Đêm đến, khách du lịch cũng có thể dạo chơi, check-in tại cầu Rồng rực rỡ ánh đèn, đi bộ dọc sông Hàn thưởng thức mì quảng tại bất kỳ quán ăn đường phố nào với giá khoảng 25.000 đồng/bát. Ảnh: WanderlustMike.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ngoài Đà Nẵng bảng xếp hạng còn vinh danh nhiều điểm khác như: Las Vegas(Mỹ) xếp thứ 13, quần đảo Setouchi (hay Seto) ở Nhật Bản xếp thứ 7, Thành phố Munich(Đức) là điểm đến xếp hạng thứ 5, Đứng đầu danh sách điểm đến năm 2019 của NY Times là vùng quốc hải Puerto Rico…</p>\n<!-- /wp:paragraph -->', 'Đà Nẵng thuộc top điểm đến do báo Mỹ bình chọn năm 2019', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2019-10-28 16:10:48', '2019-10-28 16:10:48', '', 69, 'http://localhost/khanhdungtour/2019/10/28/69-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-10-28 16:10:56', '2019-10-28 16:10:56', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-28 16:10:56', '2019-10-28 16:10:56', '', 1, 'http://localhost/khanhdungtour/2019/10/28/1-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-10-28 16:13:17', '2019-10-28 16:13:17', '<!-- wp:paragraph -->\n<p>Chùa Linh Ứng nằm trên bán đảo Sơn Trà (Đà Nẵng) đã được chính quyền Đà Nẵng công nhận là điểm du lịch địa phương. UBND TP Đà Nẵng vừa ban hành quyết định công nhận chính thức Chùa Linh Ứng (Bán đảo Sơn Trà) là điểm du lịch địa phương trên địa bàn TP Đà Nẵng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo đó, tên điểm du lịch là “Điểm du lịch chùa Linh Ứng – Bán đảo Sơn Trà”, tên tiếng Anh là Tourist Site Linh Ung Pagoda- Son Tra. Chùa Linh Ứng Bãi Bụt từ lâu đã là một trong những điểm đến ưa thích của du khách, phật tử trong và ngoai nước khi đến tham quan Đà Nẵng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":77} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/13-7.jpg\" alt=\"\" class=\"wp-image-77\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chùa Linh Ứng nằm cách trung tâm TP Đà Nẵng 10km về hướng Đông Bắc, được khánh thành ngày 30/07/2010 trên địa hình một bên núi, một bên biển mang vẻ đẹp tâm linh hiếm thấy ngôi chùa nào có được.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chùa ở độ cao 693m so với mực nước biển, với diện tích 20 héc ta (gồm: Chánh điện – Hậu tổ, thánh điện Bồ tát Quan Thế Âm, Tăng đường, Giảng đường, Trai đường, khách đường, Phương trượng, thư viện, tháp thờ xá lợi… và các hạng mục nhỏ: Vườn Lâm Tỳ ni, Lộc uyển, Bồ Đề đạo tràng, tượng Phật Niết bàn…).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Điểm độc đáo và nổi bật nhất trong quần thể kiến trúc Chùa là bức tượng Quan Thế Âm. Đây là công trình kiến trúc mỹ thuật tâm linh độc đáo nhất, thu hút, tập trung nhiều tâm lực, trí lực, tài lực nhất.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":78} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/images1508511_1.jpg\" alt=\"\" class=\"wp-image-78\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Dự định kích thước thiết kế ban đầu của tượng là 32m nhưng khi hoàn thành đã cao 67m với đường kính tòa sen 35m, chính vì vậy tượng Quan Thế Âm được xem là tượng đá cao nhất Việt Nam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bên trong lòng tượng có 17 tầng, mỗi tầng đều có bệ thờ 21 bức tượng Phật với hình dáng, vẻ mặt, tư thế khác nhau, gọi là “Phật trung hữu Phật”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Từ năm 2013, Chùa Linh Ứng Sơn Trà trở thành địa điểm thu hút du khách trong ngoài nước đến thăm viếng cảnh chùa. Lượng khách du lịch đến Chùa Linh Ứng Sơn Trà tăng lên hàng năm với tốc độ tăng trưởng năm 2016 (1,798,180 lượt khách) tăng 3,9 lần so với năm 2013 (464,100 lượt khách) và dự kiến tiếp tục tăng trong những năm tiếp theo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nguồn: Vietnam Tourism</p>\n<!-- /wp:paragraph -->', 'Chùa Linh Ứng – Đà Nẵng thành điểm du lịch địa phương', '', 'publish', 'open', 'open', '', 'chua-linh-ung-da-nang-thanh-diem-du-lich-dia-phuong', '', '', '2019-10-28 16:18:32', '2019-10-28 16:18:32', '', 0, 'http://localhost/khanhdungtour/?p=76', 0, 'post', '', 0),
(77, 1, '2019-10-28 16:12:27', '2019-10-28 16:12:27', '', '13-7', '', 'inherit', 'open', 'closed', '', '13-7', '', '', '2019-10-28 16:12:27', '2019-10-28 16:12:27', '', 76, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/13-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-10-28 16:13:12', '2019-10-28 16:13:12', '', 'images1508511_1', '', 'inherit', 'open', 'closed', '', 'images1508511_1', '', '', '2019-10-28 16:13:12', '2019-10-28 16:13:12', '', 76, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/images1508511_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-10-28 16:13:17', '2019-10-28 16:13:17', '<!-- wp:paragraph -->\n<p>Chùa Linh Ứng nằm trên bán đảo Sơn Trà (Đà Nẵng) đã được chính quyền Đà Nẵng công nhận là điểm du lịch địa phương. UBND TP Đà Nẵng vừa ban hành quyết định công nhận chính thức Chùa Linh Ứng (Bán đảo Sơn Trà) là điểm du lịch địa phương trên địa bàn TP Đà Nẵng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo đó, tên điểm du lịch là “Điểm du lịch chùa Linh Ứng – Bán đảo Sơn Trà”, tên tiếng Anh là Tourist Site Linh Ung Pagoda- Son Tra. Chùa Linh Ứng Bãi Bụt từ lâu đã là một trong những điểm đến ưa thích của du khách, phật tử trong và ngoai nước khi đến tham quan Đà Nẵng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":77} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/13-7.jpg\" alt=\"\" class=\"wp-image-77\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Chùa Linh Ứng nằm cách trung tâm TP Đà Nẵng 10km về hướng Đông Bắc, được khánh thành ngày 30/07/2010 trên địa hình một bên núi, một bên biển mang vẻ đẹp tâm linh hiếm thấy ngôi chùa nào có được.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chùa ở độ cao 693m so với mực nước biển, với diện tích 20 héc ta (gồm: Chánh điện – Hậu tổ, thánh điện Bồ tát Quan Thế Âm, Tăng đường, Giảng đường, Trai đường, khách đường, Phương trượng, thư viện, tháp thờ xá lợi… và các hạng mục nhỏ: Vườn Lâm Tỳ ni, Lộc uyển, Bồ Đề đạo tràng, tượng Phật Niết bàn…).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Điểm độc đáo và nổi bật nhất trong quần thể kiến trúc Chùa là bức tượng Quan Thế Âm. Đây là công trình kiến trúc mỹ thuật tâm linh độc đáo nhất, thu hút, tập trung nhiều tâm lực, trí lực, tài lực nhất.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":78} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/images1508511_1.jpg\" alt=\"\" class=\"wp-image-78\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Dự định kích thước thiết kế ban đầu của tượng là 32m nhưng khi hoàn thành đã cao 67m với đường kính tòa sen 35m, chính vì vậy tượng Quan Thế Âm được xem là tượng đá cao nhất Việt Nam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bên trong lòng tượng có 17 tầng, mỗi tầng đều có bệ thờ 21 bức tượng Phật với hình dáng, vẻ mặt, tư thế khác nhau, gọi là “Phật trung hữu Phật”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Từ năm 2013, Chùa Linh Ứng Sơn Trà trở thành địa điểm thu hút du khách trong ngoài nước đến thăm viếng cảnh chùa. Lượng khách du lịch đến Chùa Linh Ứng Sơn Trà tăng lên hàng năm với tốc độ tăng trưởng năm 2016 (1,798,180 lượt khách) tăng 3,9 lần so với năm 2013 (464,100 lượt khách) và dự kiến tiếp tục tăng trong những năm tiếp theo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nguồn: Vietnam Tourism</p>\n<!-- /wp:paragraph -->', 'Chùa Linh Ứng – Đà Nẵng thành điểm du lịch địa phương', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-10-28 16:13:17', '2019-10-28 16:13:17', '', 76, 'http://localhost/khanhdungtour/2019/10/28/76-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(80, 1, '2019-10-28 16:16:33', '2019-10-28 16:16:33', '<!-- wp:paragraph -->\n<p>Ngày 22/9/2015, Phó Chủ tịch UBND thành phố Đặng Việt Dũng chủ trì buổi họp góp ý kiến cho Đề án “Điểm nhấn âm thanh khi biểu diễn phun lửa, phun nước cho cầu Rồng”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo báo cáo của đơn vị tư vấn là Công ty Pro Light &amp; Sound, hiện có 3 kịch bản sử dụng hiệu ứng âm thanh và nhạc khi cầu Rồng phun lửa, phun nước là Hào khí Việt Nam, Huyền thoại Rồng-Tiên và Nhịp sống thành phố.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cau rong Da Nang<br>\nCầu Rồng phun lửa – Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo đó, kịch bản Hào khí Việt Nam là sự phối hợp giữa âm thanh mô phỏng tiếng của Rồng, tiếng nước chảy và âm nhạc để kể về những chiến tích lẫy lừng của dân tộc Việt Nam chống giặc ngoại xâm. Khi đất nước hòa bình mọi người chung tay xây dựng đất nước phát triển sánh ngang với bạn bè năm châu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kịch bản Huyền thoại Rồng-Tiên là biến tấu giữa âm thanh và ánh sáng tạo nên một không gian ấn tượng dẫn dắt mọi người về sử thoại con Rồng, cháu Tiên của dân tộc Việt; vượt qua gian khó trong chiến tranh giờ đây cùng nhau chung tay xây dựng đất nước, quê hương an bình hạnh phúc. Kịch bản Nhịp điệu thành phố là bản hòa tấu của những âm thanh sôi động, tràn đầy sức sống của một thành phố trẻ đang chuyển mình mạnh mẽ đi lên. Mỗi kịch bản có 3 phân đoạn: Khởi đầu, có dẫn dắt nội dung và kết thúc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thời lượng cho các kịch bản đều dao động từ 10-12 phút. Phương án lắp đặt hệ thống loa theo cụm và chia đều chiều dài thân cầu với điểm nhấn ở đầu và đuôi cầu Rồng. Hệ thống loa sẽ được lắp đặt trên các trụ có chiều cao từ 6-8m, với công suất mỗi loa từ 100-400W. Tổng kinh phí cho đề án là 6,4 tỷ đồng; kinh phí bảo trì, bảo dưỡng hàng năm 640 triệu đồng và kinh phí vận hành 480 triệu đồng/năm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":81} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/cau-rong1-1-1024x529.jpg\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Các ý kiến tham gia cho rằng, 3 kịch bản được đầu tư khá kỹ về âm thanh và âm nhạc. Tuy nhiên cần chỉnh sửa thêm, trong đó lưu ý lời thuyết minh về huyền sử con cháu Rồng-Tiên của dân tộc Việt cũng như lời giới thiệu về lịch sử danh thắng Ngũ Hành Sơn cần tham khảo các nhà chuyên môn để đảm bảo sự chính xác và cô đọng hơn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu tại cuộc họp, Phó Chủ tịch UBND thành phố Đặng Việt Dũng biểu dương sự cố gắng của các cơ quan chuyên môn đã phối hợp tốt với đơn vị tư vấn để hoàn thành những kịch bản trên. Tuy nhiên, do đây là việc làm mới và khó, chưa có tiền lệ nên cần có thời gian chỉnh sửa và hoàn thiện thêm. Đầu tiên, kịch bản phải sát với vùng đất và con người Đà Nẵng hơn, làm sao khi âm thanh cất lên mọi người nhận ngay ra rằng mình đang đứng bên dòng sông Hàn của thành phố Đà Nẵng năng động. Về nội dung từng phân đoạn trong các kịch bản cần có sự tham gia của các ngành chuyên môn thành phố như Sở Văn hóa, Thể thao và Du lịch, Sở Thông tin – Truyền thông… Đặc biệt phân đoạn kết của các kịch bản phải là sự gợi mở một tương lai tươi sáng của thành phố Đà Nẵng. Bên cạnh đó cũng cần chú ý đến sự phối hợp nhuần nhuyễn các phân đoạn trong một kịch bản cũng như sự chuyển đổi giữa phun nước, phun lửa và đan xen của âm thanh và âm nhạc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Riêng về các bài hát lồng trong chương trình cũng cần phong phú, có thể luân phiên thay đổi để phù hợp với từng mùa, thời điểm đặc biệt trong một năm. Việc bố trí hệ thống loa phải đảm bảo âm lượng vừa đủ không ảnh hưởng đến khu vực nhà dân gần cầu, nhưng vẫn đủ sức thu hút, lôi cuốn mọi người ở một không gian rộng mở là sông Hàn. Các trụ loa không ảnh hưởng tầm nhìn tại đây. Ngoài ra cũng cần hoàn chỉnh chi tiết quy trình vận hành, bảo trì bảo dưỡng cho công trình được hoạt động tốt nhất và bền nhất. Để công trình có thể đưa vào sử dụng đầu năm 2016, chậm nhất đến ngày 15-10-2015, đơn vị tư vấn phải hoàn chỉnh kịch bản chi tiết trình lãnh đạo thành phố xem xét và triển khai các bước tiếp theo nhanh nhất.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nguồn: Báo Đà Nẵng</p>\n<!-- /wp:paragraph -->', 'Cầu Rồng sẽ có thêm hiệu ứng âm thanh', '', 'publish', 'open', 'open', '', 'cau-rong-se-co-them-hieu-ung-am-thanh', '', '', '2019-10-28 16:18:17', '2019-10-28 16:18:17', '', 0, 'http://localhost/khanhdungtour/?p=80', 0, 'post', '', 0),
(81, 1, '2019-10-28 16:16:25', '2019-10-28 16:16:25', '', 'cau-rong1-1', '', 'inherit', 'open', 'closed', '', 'cau-rong1-1', '', '', '2019-10-28 16:16:25', '2019-10-28 16:16:25', '', 80, 'http://localhost/khanhdungtour/wp-content/uploads/2019/10/cau-rong1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-10-28 16:16:33', '2019-10-28 16:16:33', '<!-- wp:paragraph -->\n<p>Ngày 22/9/2015, Phó Chủ tịch UBND thành phố Đặng Việt Dũng chủ trì buổi họp góp ý kiến cho Đề án “Điểm nhấn âm thanh khi biểu diễn phun lửa, phun nước cho cầu Rồng”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo báo cáo của đơn vị tư vấn là Công ty Pro Light &amp; Sound, hiện có 3 kịch bản sử dụng hiệu ứng âm thanh và nhạc khi cầu Rồng phun lửa, phun nước là Hào khí Việt Nam, Huyền thoại Rồng-Tiên và Nhịp sống thành phố.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cau rong Da Nang<br>\nCầu Rồng phun lửa – Đà Nẵng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo đó, kịch bản Hào khí Việt Nam là sự phối hợp giữa âm thanh mô phỏng tiếng của Rồng, tiếng nước chảy và âm nhạc để kể về những chiến tích lẫy lừng của dân tộc Việt Nam chống giặc ngoại xâm. Khi đất nước hòa bình mọi người chung tay xây dựng đất nước phát triển sánh ngang với bạn bè năm châu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kịch bản Huyền thoại Rồng-Tiên là biến tấu giữa âm thanh và ánh sáng tạo nên một không gian ấn tượng dẫn dắt mọi người về sử thoại con Rồng, cháu Tiên của dân tộc Việt; vượt qua gian khó trong chiến tranh giờ đây cùng nhau chung tay xây dựng đất nước, quê hương an bình hạnh phúc. Kịch bản Nhịp điệu thành phố là bản hòa tấu của những âm thanh sôi động, tràn đầy sức sống của một thành phố trẻ đang chuyển mình mạnh mẽ đi lên. Mỗi kịch bản có 3 phân đoạn: Khởi đầu, có dẫn dắt nội dung và kết thúc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thời lượng cho các kịch bản đều dao động từ 10-12 phút. Phương án lắp đặt hệ thống loa theo cụm và chia đều chiều dài thân cầu với điểm nhấn ở đầu và đuôi cầu Rồng. Hệ thống loa sẽ được lắp đặt trên các trụ có chiều cao từ 6-8m, với công suất mỗi loa từ 100-400W. Tổng kinh phí cho đề án là 6,4 tỷ đồng; kinh phí bảo trì, bảo dưỡng hàng năm 640 triệu đồng và kinh phí vận hành 480 triệu đồng/năm.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":81} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/khanhdungtour/wp-content/uploads/2019/10/cau-rong1-1-1024x529.jpg\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Các ý kiến tham gia cho rằng, 3 kịch bản được đầu tư khá kỹ về âm thanh và âm nhạc. Tuy nhiên cần chỉnh sửa thêm, trong đó lưu ý lời thuyết minh về huyền sử con cháu Rồng-Tiên của dân tộc Việt cũng như lời giới thiệu về lịch sử danh thắng Ngũ Hành Sơn cần tham khảo các nhà chuyên môn để đảm bảo sự chính xác và cô đọng hơn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu tại cuộc họp, Phó Chủ tịch UBND thành phố Đặng Việt Dũng biểu dương sự cố gắng của các cơ quan chuyên môn đã phối hợp tốt với đơn vị tư vấn để hoàn thành những kịch bản trên. Tuy nhiên, do đây là việc làm mới và khó, chưa có tiền lệ nên cần có thời gian chỉnh sửa và hoàn thiện thêm. Đầu tiên, kịch bản phải sát với vùng đất và con người Đà Nẵng hơn, làm sao khi âm thanh cất lên mọi người nhận ngay ra rằng mình đang đứng bên dòng sông Hàn của thành phố Đà Nẵng năng động. Về nội dung từng phân đoạn trong các kịch bản cần có sự tham gia của các ngành chuyên môn thành phố như Sở Văn hóa, Thể thao và Du lịch, Sở Thông tin – Truyền thông… Đặc biệt phân đoạn kết của các kịch bản phải là sự gợi mở một tương lai tươi sáng của thành phố Đà Nẵng. Bên cạnh đó cũng cần chú ý đến sự phối hợp nhuần nhuyễn các phân đoạn trong một kịch bản cũng như sự chuyển đổi giữa phun nước, phun lửa và đan xen của âm thanh và âm nhạc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Riêng về các bài hát lồng trong chương trình cũng cần phong phú, có thể luân phiên thay đổi để phù hợp với từng mùa, thời điểm đặc biệt trong một năm. Việc bố trí hệ thống loa phải đảm bảo âm lượng vừa đủ không ảnh hưởng đến khu vực nhà dân gần cầu, nhưng vẫn đủ sức thu hút, lôi cuốn mọi người ở một không gian rộng mở là sông Hàn. Các trụ loa không ảnh hưởng tầm nhìn tại đây. Ngoài ra cũng cần hoàn chỉnh chi tiết quy trình vận hành, bảo trì bảo dưỡng cho công trình được hoạt động tốt nhất và bền nhất. Để công trình có thể đưa vào sử dụng đầu năm 2016, chậm nhất đến ngày 15-10-2015, đơn vị tư vấn phải hoàn chỉnh kịch bản chi tiết trình lãnh đạo thành phố xem xét và triển khai các bước tiếp theo nhanh nhất.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nguồn: Báo Đà Nẵng</p>\n<!-- /wp:paragraph -->', 'Cầu Rồng sẽ có thêm hiệu ứng âm thanh', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-10-28 16:16:33', '2019-10-28 16:16:33', '', 80, 'http://localhost/khanhdungtour/2019/10/28/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-10-28 17:04:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:04:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=83', 0, 'post_tours', '', 0),
(84, 1, '2019-10-28 17:05:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:05:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=84', 0, 'post_tours', '', 0),
(85, 1, '2019-10-28 17:07:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:07:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=85', 0, 'post_tours', '', 0),
(86, 1, '2019-10-28 17:08:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:08:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=86', 0, 'post_tours', '', 0),
(87, 1, '2019-10-28 17:11:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:11:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=87', 0, 'post_tours', '', 0),
(88, 1, '2019-10-28 17:12:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:12:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=88', 0, 'post_tours', '', 0),
(89, 1, '2019-10-28 17:12:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:12:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=89', 0, 'post_tours', '', 0),
(90, 1, '2019-10-28 17:12:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:12:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=90', 0, 'post_tours', '', 0),
(91, 1, '2019-10-28 17:13:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:13:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=91', 0, 'post_tours', '', 0),
(92, 1, '2019-10-28 17:27:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:27:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=92', 0, 'post_tours', '', 0),
(93, 1, '2019-10-28 17:27:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:27:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=93', 0, 'post_tours', '', 0),
(94, 1, '2019-10-28 17:28:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:28:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=94', 0, 'post_tours', '', 0),
(95, 1, '2019-10-28 17:28:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:28:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=95', 0, 'post_tours', '', 0),
(96, 1, '2019-10-28 17:35:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:35:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=96', 0, 'post_tours', '', 0),
(97, 1, '2019-10-28 17:35:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:35:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=97', 0, 'post_tours', '', 0),
(98, 1, '2019-10-28 17:38:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:38:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=98', 0, 'post_tours', '', 0),
(99, 1, '2019-10-28 17:39:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:39:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=99', 0, 'post_tours', '', 0),
(100, 1, '2019-10-28 17:40:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:40:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=100', 0, 'post_tours', '', 0),
(101, 1, '2019-10-28 17:41:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:41:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=101', 0, 'post_tours', '', 0),
(102, 1, '2019-10-28 17:43:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:43:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=102', 0, 'post_tours', '', 0),
(103, 1, '2019-10-28 17:46:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:46:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=103', 0, 'post_tours', '', 0),
(104, 1, '2019-10-28 17:46:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:46:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=104', 0, 'post_tours', '', 0),
(105, 1, '2019-10-28 17:47:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:47:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=105', 0, 'post_tours', '', 0),
(106, 1, '2019-10-28 17:47:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:47:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=106', 0, 'post_tours', '', 0),
(107, 1, '2019-10-28 17:47:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:47:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=107', 0, 'post_tours', '', 0),
(108, 1, '2019-10-28 17:51:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:51:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=108', 0, 'post_tours', '', 0),
(109, 1, '2019-10-28 17:52:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:52:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=109', 0, 'post_tours', '', 0),
(110, 1, '2019-10-28 17:54:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:54:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=110', 0, 'post_tours', '', 0),
(111, 1, '2019-10-28 17:55:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:55:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=111', 0, 'post_tours', '', 0),
(112, 1, '2019-10-28 17:55:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:55:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=112', 0, 'post_tours', '', 0),
(113, 1, '2019-10-28 17:56:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 17:56:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=113', 0, 'post_tours', '', 0),
(114, 1, '2019-10-28 18:10:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 18:10:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=114', 0, 'post_tours', '', 0),
(115, 1, '2019-10-28 18:12:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-28 18:12:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/khanhdungtour/?post_type=post_tours&p=115', 0, 'post_tours', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tour trong nước', 'tour-trong-nuoc', 0),
(5, 'Nghệ An', 'nghe-an', 0),
(23, 'Bắc Trung Bộ', 'bac-trung-bo', 0),
(24, 'Nam Trung Bộ', 'nam-trung-bo', 0),
(25, 'Tây Nguyên', 'tay-nguyen', 0),
(26, 'Đông Nam Bộ', 'dong-nam-bo', 0),
(27, 'Miền Tây', 'mien-tay', 0),
(28, 'Tây Bắc Bộ', 'tay-bac-bo', 0),
(29, 'Đông Bắc Bộ', 'dong-bac-bo', 0),
(30, 'Đồng Bằng Sông Hồng', 'dong-bang-song-hong', 0),
(31, 'Thanh Hóa', 'thanh-hoa', 0),
(32, 'Hà Tĩnh', 'ha-tinh', 0),
(33, 'Quảng Bình', 'quang-binh', 0),
(34, 'Quảng Trị', 'quang-tri', 0),
(35, 'Huế', 'hue', 0),
(36, 'Đà Nẵng', 'da-nang', 0),
(37, 'Quảng Nam', 'quang-nam', 0),
(38, 'Quảng Ngãi', 'quang-ngai', 0),
(39, 'Bình Định', 'binh-dinh', 0),
(40, 'Phú Yên', 'phu-yen', 0),
(41, 'Khánh Hòa', 'khanh-hoa', 0),
(42, 'Ninh Thuận', 'ninh-thuan', 0),
(43, 'Bình Thuận', 'binh-thuan', 0),
(44, 'Kon Tum', 'kon-tum', 0),
(45, 'Gia Lai', 'gia-lai', 0),
(46, 'Đắc Lắc', 'dac-lac', 0),
(47, 'Đắc Nông', 'dac-nong', 0),
(48, 'Lâm Đồng', 'lam-dong', 0),
(49, 'Bà Nà Hills', 'ba-na-hills', 0),
(50, 'Mỹ Sơn', 'my-son', 0),
(51, 'Cổ Viện Chàm', 'co-vien-cham', 0),
(52, 'Primary_menu', 'primary_menu', 0),
(53, 'Tour quốc tế', 'tour-quoc-te', 0),
(54, 'Sổ tay du lịch', 'so-tay-du-lich', 0),
(55, 'Khuyến mãi', 'khuyen-mai', 0),
(56, 'Bà Nà Hills', 'ba-na-hills', 0),
(57, 'Asia Park', 'asia-park', 0),
(58, 'Suối thần tài', 'suoi-than-tai', 0),
(59, 'Hòa Phú Thành', 'hoa-phu-thanh', 0),
(60, 'Bảo tàng 3D TrickEye', 'bao-tang-3d-trickeye', 0),
(61, 'Làng bích họa Tam Thanh', 'lang-bich-hoa-tam-thanh', 0),
(62, 'Biển An Bàng', 'bien-an-bang', 0),
(63, 'Phố cổ Hội An', 'pho-co-hoi-an', 0),
(64, 'Vinpearl Nam Hội An', 'vinpearl-nam-hoi-an', 0),
(65, 'Ký Ức Hội An Show', 'ky-uc-hoi-an-show', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 1, 0),
(25, 24, 0),
(25, 36, 0),
(25, 49, 0),
(40, 52, 0),
(41, 52, 0),
(42, 52, 0),
(43, 52, 0),
(44, 52, 0),
(45, 52, 0),
(46, 52, 0),
(55, 1, 0),
(55, 23, 0),
(55, 35, 0),
(55, 51, 0),
(57, 1, 0),
(57, 23, 0),
(57, 36, 0),
(57, 50, 0),
(65, 1, 0),
(65, 23, 0),
(65, 36, 0),
(65, 50, 0),
(69, 54, 0),
(76, 54, 0),
(80, 54, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(5, 5, 'tinh', '', 0, 0),
(23, 23, 'mien', '', 0, 3),
(24, 24, 'mien', '', 0, 1),
(25, 25, 'mien', '', 0, 0),
(26, 26, 'mien', '', 0, 0),
(27, 27, 'mien', '', 0, 0),
(28, 28, 'mien', '', 0, 0),
(29, 29, 'mien', '', 0, 0),
(30, 30, 'mien', '', 0, 0),
(31, 31, 'tinh', '', 0, 0),
(32, 32, 'tinh', '', 0, 0),
(33, 33, 'tinh', '', 0, 0),
(34, 34, 'tinh', '', 0, 0),
(35, 35, 'tinh', '', 0, 1),
(36, 36, 'tinh', '', 0, 3),
(37, 37, 'tinh', '', 0, 0),
(38, 38, 'tinh', '', 0, 0),
(39, 39, 'tinh', '', 0, 0),
(40, 40, 'tinh', '', 0, 0),
(41, 41, 'tinh', '', 0, 0),
(42, 42, 'tinh', '', 0, 0),
(43, 43, 'tinh', '', 0, 0),
(44, 44, 'tinh', '', 0, 0),
(45, 45, 'tinh', '', 0, 0),
(46, 46, 'tinh', '', 0, 0),
(47, 47, 'tinh', '', 0, 0),
(48, 48, 'tinh', '', 0, 0),
(49, 49, 'diem-du-lich', '', 0, 1),
(50, 50, 'diem-du-lich', '', 0, 2),
(51, 51, 'diem-du-lich', '', 0, 1),
(52, 52, 'nav_menu', '', 0, 7),
(53, 53, 'category', '', 0, 0),
(54, 54, 'category', '', 0, 3),
(55, 55, 'category', '', 0, 0),
(56, 56, 'tinh', '', 36, 0),
(57, 57, 'tinh', '', 36, 0),
(58, 58, 'tinh', '', 36, 0),
(59, 59, 'tinh', '', 36, 0),
(60, 60, 'tinh', '', 36, 0),
(61, 61, 'tinh', '', 37, 0),
(62, 62, 'tinh', '', 37, 0),
(63, 63, 'tinh', '', 37, 0),
(64, 64, 'tinh', '', 37, 0),
(65, 65, 'tinh', '', 37, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'khanhdungtour'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(20, 1, 'session_tokens', 'a:4:{s:64:\"6cde59312401f63de3722f7a8ddb4d1d651c929fe238487aae8d711a0c89b36b\";a:4:{s:10:\"expiration\";i:1573009752;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36\";s:5:\"login\";i:1571800152;}s:64:\"8cef763ec0ba1b02468f97d41e86b998f8ead42ab99f875b271693f059d37f29\";a:4:{s:10:\"expiration\";i:1573437296;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36\";s:5:\"login\";i:1572227696;}s:64:\"5034fef55f9f8e793144877c5e6ce4e1537c5ab01e3dc4a745559c78fbc80171\";a:4:{s:10:\"expiration\";i:1572448512;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572275712;}s:64:\"4e9bc8db8dfc47ca98e231eed2b29f047c8d5bae8144b80d3933df426c292e2a\";a:4:{s:10:\"expiration\";i:1573485314;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1572275714;}}'),
(21, 1, 'closedpostboxes_post_tours', 'a:2:{i:0;s:16:\"tagsdiv-post_tag\";i:1;s:10:\"postcustom\";}'),
(22, 1, 'metaboxhidden_post_tours', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(23, 1, 'meta-box-order_post_tours', 'a:3:{s:4:\"side\";s:83:\"submitdiv,categorydiv,tagsdiv-post_tag,miendiv,tinhdiv,diem-du-lichdiv,postimagediv\";s:6:\"normal\";s:71:\"gallery-metabox,postcustom,slugdiv,info_tour_metabox_input,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_post_tours', '2'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(26, 1, 'wp_user-settings-time', '1572254614'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:24:\"add-post-type-post_tours\";i:1;s:12:\"add-post_tag\";i:2;s:8:\"add-mien\";i:3;s:8:\"add-tinh\";i:4;s:16:\"add-diem-du-lich\";}');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'khanhdungtour', '$P$BHysgI9kpNy2MknMUxbX3p6Usl.LuW/', 'khanhdungtour', 'khanhdungtour@gmail.com', '', '2019-10-22 02:46:43', '', 0, 'khanhdungtour');

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
