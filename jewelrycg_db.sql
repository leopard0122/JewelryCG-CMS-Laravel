-- -------------------------------------------------------------
-- TablePlus 4.8.7(448)
--
-- https://tableplus.com/
--
-- Database: jewelrycg_db
-- Generation Time: 2022-11-26 20:04:01.1980
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `attribute_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `blog_categories_relationships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_post` int NOT NULL,
  `id_category` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `blog_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` int DEFAULT NULL,
  `post` text COLLATE utf8mb4_unicode_ci,
  `tags_id` int DEFAULT NULL,
  `categorie_id` int NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `blog_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `blog_tags_relationships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_post` int NOT NULL,
  `id_tag` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeric_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tld` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(8,2) NOT NULL,
  `longitude` double(8,2) NOT NULL,
  `emoji` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint NOT NULL,
  `emojiU` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `amount` int NOT NULL,
  `limit` int NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `coupons_usage_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal_cart` int NOT NULL,
  `subtotal_discount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `course_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `course_lesson_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `course_lessons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL,
  `category_id` int NOT NULL,
  `thumbnail` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `current_rate` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `base` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `USD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `XAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `XAU` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `XPT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `24k` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `22k` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `18k` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `14k` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `10k` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `silver_gram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `platinum_gram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `material_type_diamonds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `material_id` int NOT NULL,
  `material_type_id` int NOT NULL,
  `mm_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xy_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carat_weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `material_type_diamonds_clarity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letters` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `material_type_diamonds_color` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letters` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `material_type_diamonds_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `diamond_id` int NOT NULL,
  `color` int NOT NULL,
  `clarity` int NOT NULL,
  `natural_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lab_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `material_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `material_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `materials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `memberships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` int NOT NULL,
  `price` int NOT NULL,
  `price_monthly` int NOT NULL,
  `included_downloads` int NOT NULL,
  `included_downloads_monthly` int NOT NULL,
  `unlimited_downloads` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `is_seen` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` smallint NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL,
  `thumb` int unsigned NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `order_courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `course_id` bigint unsigned NOT NULL,
  `price` int unsigned NOT NULL,
  `payment_intent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status_payment` smallint NOT NULL DEFAULT '1',
  `status_payment_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int DEFAULT NULL,
  `product_isdigital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_isvirtual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_variant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_variant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_digital_download_assets` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` tinyint unsigned NOT NULL,
  `price` int unsigned NOT NULL,
  `status_fulfillment` smallint NOT NULL DEFAULT '1',
  `status_tracking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `order_service_deliveries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `delivered_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `order_service_requirements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `requirement_id` bigint unsigned NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `order_service_revision_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `delivery_id` int unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `total` int NOT NULL DEFAULT '0',
  `discount` int NOT NULL DEFAULT '0',
  `tax_total` int NOT NULL DEFAULT '0',
  `shipping_total` int NOT NULL DEFAULT '0',
  `grand_total` int NOT NULL DEFAULT '0',
  `shipping_option_id` int NOT NULL DEFAULT '0',
  `tax_option_id` int NOT NULL DEFAULT '0',
  `payment_intent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status_payment` smallint NOT NULL DEFAULT '1',
  `status_payment_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `orders_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_delivery_time` int NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_delivery_time` datetime NOT NULL,
  `extended_delivery_time` datetime NOT NULL,
  `payment_intent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status_payment` smallint NOT NULL DEFAULT '1',
  `status_payment_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_id` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `product_materials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `material_id` int NOT NULL,
  `material_type_id` int NOT NULL,
  `material_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_diamond` int DEFAULT NULL,
  `diamond_id` int DEFAULT NULL,
  `diamond_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `product_tags_relationships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_tag` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `vendor` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL,
  `quantity` smallint DEFAULT NULL,
  `category` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_discount` int DEFAULT NULL,
  `price_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_discount_start` datetime DEFAULT NULL,
  `price_discount_end` datetime DEFAULT NULL,
  `shipping_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int DEFAULT NULL,
  `is_digital` int DEFAULT NULL,
  `is_virtual` int DEFAULT NULL,
  `is_trackingquantity` int DEFAULT NULL,
  `is_backorder` int DEFAULT NULL,
  `is_madetoorder` int DEFAULT NULL,
  `tax_option_id` int NOT NULL DEFAULT '0',
  `product_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_images` text COLLATE utf8mb4_unicode_ci,
  `product_3dpreview` text COLLATE utf8mb4_unicode_ci,
  `digital_download_assets` text COLLATE utf8mb4_unicode_ci,
  `digital_download_assets_count` int DEFAULT NULL,
  `digital_download_assets_limit` int DEFAULT NULL,
  `product_attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_attribute_values` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `step_type` int NOT NULL DEFAULT '0',
  `step_group` int DEFAULT '0',
  `steps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `products_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `products_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `rating` int NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `products_tax_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` enum('flat','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `products_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant_name` text COLLATE utf8mb4_unicode_ci,
  `variant_attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_price` int NOT NULL,
  `variant_sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_thumbnail` text COLLATE utf8mb4_unicode_ci,
  `variant_quantity` int DEFAULT NULL,
  `variant_assets` text COLLATE utf8mb4_unicode_ci,
  `digital_download_assets` text COLLATE utf8mb4_unicode_ci,
  `digital_download_assets_count` int DEFAULT NULL,
  `digital_download_assets_limit` int DEFAULT NULL,
  `price_discount` int DEFAULT NULL,
  `price_discount_type` double(8,2) DEFAULT NULL,
  `price_discount_start` datetime DEFAULT NULL,
  `price_discount_end` datetime DEFAULT NULL,
  `shipping_type` double(8,2) DEFAULT NULL,
  `shipping_cost` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `seller_payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `seller_wallet_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `amount` int unsigned NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `payment_method_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sellers_profile` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `wallet` int DEFAULT '0',
  `sales_commission_rate` int DEFAULT NULL,
  `slogan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sellers_wallet_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `amount` int NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sale_type` tinyint DEFAULT NULL COMMENT '0: product sale, 1: service sale, 2: course sale',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add' COMMENT 'add, withdraw',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0: pending, 1: balanced',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_categories_relationships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_post` int NOT NULL,
  `id_category` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_requirement_choices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `requirement_id` bigint unsigned NOT NULL,
  `choice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_requirements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint unsigned NOT NULL,
  `type` smallint NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `service_tags_relationships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_service` int NOT NULL,
  `id_tag` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_notes` text COLLATE utf8mb4_unicode_ci,
  `reviewer_notes_private` text COLLATE utf8mb4_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `settings_general` (
  `sitename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_mailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_from_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_checkout` tinyint DEFAULT NULL,
  `default_sales_commission_rate` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `shipping_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `step_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `steps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `steps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `uploads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `file_original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` int DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection_id` int NOT NULL,
  `user_status` enum('Offline','Online') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user_searches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_billing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `attribute_values` (`id`, `attribute_id`, `name`, `value`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, '6', 'US Ring Size', '6', '2022-09-08 20:07:03', '2022-09-08 20:07:03'),
(2, 1, '7', 'US Ring Size', '7', '2022-09-08 20:07:05', '2022-09-08 20:07:05'),
(3, 1, '8', 'US Ring Size', '8', '2022-09-08 20:07:06', '2022-09-08 20:07:06'),
(4, 2, '12mm', 'Width', '12mm', '2022-10-24 09:17:25', '2022-10-24 09:17:25'),
(5, 2, '14mm', 'Width', '14mm', '2022-10-24 09:17:28', '2022-10-24 09:17:28');

INSERT INTO `attributes` (`id`, `name`, `type`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'US Ring Size', 0, 'us-ring-size', '2022-09-08 20:06:59', '2022-09-08 20:06:59'),
(2, 'Width', 0, 'width', '2022-10-24 09:17:18', '2022-10-24 09:17:18');

INSERT INTO `blog_categories` (`id`, `parent_id`, `category_name`, `category_excerpt`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Uncategorized', NULL, 'uncategorized', NULL, NULL, '2022-08-12 07:45:39', '2022-08-12 07:45:52'),
(2, NULL, 'Knowledge Base', NULL, 'knowledge-base', NULL, NULL, '2022-08-12 07:45:58', '2022-08-12 07:45:58');

INSERT INTO `blog_categories_relationships` (`id`, `id_post`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-08-12 07:46:04', '2022-08-12 07:46:04'),
(2, 2, 1, '2022-08-12 07:46:55', '2022-08-12 07:46:55'),
(3, 3, 1, '2022-08-12 07:47:06', '2022-08-12 07:47:06'),
(5, 5, 1, '2022-08-12 07:47:23', '2022-08-12 07:47:23'),
(20, 4, 1, '2022-09-04 18:58:59', '2022-09-04 18:58:59'),
(22, 6, 1, '2022-09-04 18:59:09', '2022-09-04 18:59:09'),
(23, 7, 1, '2022-11-09 13:23:34', '2022-11-09 13:23:34');

INSERT INTO `blog_posts` (`id`, `status`, `author_id`, `name`, `slug`, `post_excerpt`, `thumbnail`, `post`, `tags_id`, `categorie_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'How 3D Printing is Disrupting the Jewelry Industry', 'how-3d-printing-is-disrupting-the-jewelry-industry', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-12 07:46:04', '2022-08-12 07:46:04', NULL),
(2, 1, 1, 'What are Melee Diamonds?', 'what-are-melee-diamonds', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-12 07:46:55', '2022-08-12 07:46:55', NULL),
(3, 1, 1, 'Guide To Buying Gold/Diamond Jewelry', 'guide-to-buying-gold-diamond-jewelry', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-12 07:47:06', '2022-08-12 07:47:06', NULL),
(4, 1, 1, 'What CAD Software Does Jewelry Designers Use?', 'what-cad-software-does-jewelry-designers-use', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-12 07:47:14', '2022-09-04 18:58:59', NULL),
(5, 1, 1, 'What Is A CAD & How Is It Used To Create Jewelry?', 'what-is-a-cad-how-is-it-used-to-create-jewelry', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-12 07:47:23', '2022-08-12 07:47:23', NULL),
(6, 1, 1, 'Glt bow', 'glt-bow', NULL, NULL, NULL, NULL, 0, 'glt bow title', 'glt bow', '2022-08-14 01:38:13', '2022-08-14 01:38:13', NULL),
(7, 1, 1, 'another one', 'another-one-1', NULL, 113, NULL, NULL, 0, 'testing meta title', 'testing meta description', '2022-08-14 01:39:02', '2022-11-09 13:23:34', NULL);

INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `code`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `latitude`, `longitude`, `emoji`, `status`, `emojiU`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AFG', '004', 'AF', '93', 'Kabul', 'AFN', '؋', '.af', 'افغانستان', 'Asia', 'Southern Asia', 33.00, 65.00, '🇦🇫', 1, 'U+1F1E6 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(2, 'Aland Islands', 'ALA', '248', 'AX', '+358-18', 'Mariehamn', 'EUR', '€', '.ax', 'Åland', 'Europe', 'Northern Europe', 60.12, 19.90, '🇦🇽', 1, 'U+1F1E6 U+1F1FD', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(3, 'Albania', 'ALB', '008', 'AL', '355', 'Tirana', 'ALL', 'Lek', '.al', 'Shqipëria', 'Europe', 'Southern Europe', 41.00, 20.00, '🇦🇱', 1, 'U+1F1E6 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(4, 'Algeria', 'DZA', '012', 'DZ', '213', 'Algiers', 'DZD', 'دج', '.dz', 'الجزائر', 'Africa', 'Northern Africa', 28.00, 3.00, '🇩🇿', 1, 'U+1F1E9 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(5, 'American Samoa', 'ASM', '016', 'AS', '+1-684', 'Pago Pago', 'USD', '$', '.as', 'American Samoa', 'Oceania', 'Polynesia', -14.33, -170.00, '🇦🇸', 1, 'U+1F1E6 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(6, 'Andorra', 'AND', '020', 'AD', '376', 'Andorra la Vella', 'EUR', '€', '.ad', 'Andorra', 'Europe', 'Southern Europe', 42.50, 1.50, '🇦🇩', 1, 'U+1F1E6 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(7, 'Angola', 'AGO', '024', 'AO', '244', 'Luanda', 'AOA', 'Kz', '.ao', 'Angola', 'Africa', 'Middle Africa', -12.50, 18.50, '🇦🇴', 1, 'U+1F1E6 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(8, 'Anguilla', 'AIA', '660', 'AI', '+1-264', 'The Valley', 'XCD', '$', '.ai', 'Anguilla', 'Americas', 'Caribbean', 18.25, -63.17, '🇦🇮', 1, 'U+1F1E6 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(9, 'Antarctica', 'ATA', '010', 'AQ', '672', '', 'AAD', '$', '.aq', 'Antarctica', 'Polar', '', -74.65, 4.48, '🇦🇶', 1, 'U+1F1E6 U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(10, 'Antigua And Barbuda', 'ATG', '028', 'AG', '+1-268', 'St. John\'s', 'XCD', '$', '.ag', 'Antigua and Barbuda', 'Americas', 'Caribbean', 17.05, -61.80, '🇦🇬', 1, 'U+1F1E6 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(11, 'Argentina', 'ARG', '032', 'AR', '54', 'Buenos Aires', 'ARS', '$', '.ar', 'Argentina', 'Americas', 'South America', -34.00, -64.00, '🇦🇷', 1, 'U+1F1E6 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(12, 'Armenia', 'ARM', '051', 'AM', '374', 'Yerevan', 'AMD', '֏', '.am', 'Հայաստան', 'Asia', 'Western Asia', 40.00, 45.00, '🇦🇲', 1, 'U+1F1E6 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(13, 'Aruba', 'ABW', '533', 'AW', '297', 'Oranjestad', 'AWG', 'ƒ', '.aw', 'Aruba', 'Americas', 'Caribbean', 12.50, -69.97, '🇦🇼', 1, 'U+1F1E6 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(14, 'Australia', 'AUS', '036', 'AU', '61', 'Canberra', 'AUD', '$', '.au', 'Australia', 'Oceania', 'Australia and New Zealand', -27.00, 133.00, '🇦🇺', 1, 'U+1F1E6 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(15, 'Austria', 'AUT', '040', 'AT', '43', 'Vienna', 'EUR', '€', '.at', 'Österreich', 'Europe', 'Western Europe', 47.33, 13.33, '🇦🇹', 1, 'U+1F1E6 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(16, 'Azerbaijan', 'AZE', '031', 'AZ', '994', 'Baku', 'AZN', 'm', '.az', 'Azərbaycan', 'Asia', 'Western Asia', 40.50, 47.50, '🇦🇿', 1, 'U+1F1E6 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(17, 'Bahamas The', 'BHS', '044', 'BS', '+1-242', 'Nassau', 'BSD', 'B$', '.bs', 'Bahamas', 'Americas', 'Caribbean', 24.25, -76.00, '🇧🇸', 1, 'U+1F1E7 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(18, 'Bahrain', 'BHR', '048', 'BH', '973', 'Manama', 'BHD', '.د.ب', '.bh', '‏البحرين', 'Asia', 'Western Asia', 26.00, 50.55, '🇧🇭', 1, 'U+1F1E7 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(19, 'Bangladesh', 'BGD', '050', 'BD', '880', 'Dhaka', 'BDT', '৳', '.bd', 'Bangladesh', 'Asia', 'Southern Asia', 24.00, 90.00, '🇧🇩', 1, 'U+1F1E7 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(20, 'Barbados', 'BRB', '052', 'BB', '+1-246', 'Bridgetown', 'BBD', 'Bds$', '.bb', 'Barbados', 'Americas', 'Caribbean', 13.17, -59.53, '🇧🇧', 1, 'U+1F1E7 U+1F1E7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(21, 'Belarus', 'BLR', '112', 'BY', '375', 'Minsk', 'BYN', 'Br', '.by', 'Белару́сь', 'Europe', 'Eastern Europe', 53.00, 28.00, '🇧🇾', 1, 'U+1F1E7 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(22, 'Belgium', 'BEL', '056', 'BE', '32', 'Brussels', 'EUR', '€', '.be', 'België', 'Europe', 'Western Europe', 50.83, 4.00, '🇧🇪', 1, 'U+1F1E7 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(23, 'Belize', 'BLZ', '084', 'BZ', '501', 'Belmopan', 'BZD', '$', '.bz', 'Belize', 'Americas', 'Central America', 17.25, -88.75, '🇧🇿', 1, 'U+1F1E7 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(24, 'Benin', 'BEN', '204', 'BJ', '229', 'Porto-Novo', 'XOF', 'CFA', '.bj', 'Bénin', 'Africa', 'Western Africa', 9.50, 2.25, '🇧🇯', 1, 'U+1F1E7 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(25, 'Bermuda', 'BMU', '060', 'BM', '+1-441', 'Hamilton', 'BMD', '$', '.bm', 'Bermuda', 'Americas', 'Northern America', 32.33, -64.75, '🇧🇲', 1, 'U+1F1E7 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(26, 'Bhutan', 'BTN', '064', 'BT', '975', 'Thimphu', 'BTN', 'Nu.', '.bt', 'ʼbrug-yul', 'Asia', 'Southern Asia', 27.50, 90.50, '🇧🇹', 1, 'U+1F1E7 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(27, 'Bolivia', 'BOL', '068', 'BO', '591', 'Sucre', 'BOB', 'Bs.', '.bo', 'Bolivia', 'Americas', 'South America', -17.00, -65.00, '🇧🇴', 1, 'U+1F1E7 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(28, 'Bosnia and Herzegovina', 'BIH', '070', 'BA', '387', 'Sarajevo', 'BAM', 'KM', '.ba', 'Bosna i Hercegovina', 'Europe', 'Southern Europe', 44.00, 18.00, '🇧🇦', 1, 'U+1F1E7 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(29, 'Botswana', 'BWA', '072', 'BW', '267', 'Gaborone', 'BWP', 'P', '.bw', 'Botswana', 'Africa', 'Southern Africa', -22.00, 24.00, '🇧🇼', 1, 'U+1F1E7 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(30, 'Bouvet Island', 'BVT', '074', 'BV', '0055', '', 'NOK', 'kr', '.bv', 'Bouvetøya', '', '', -54.43, 3.40, '🇧🇻', 1, 'U+1F1E7 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(31, 'Brazil', 'BRA', '076', 'BR', '55', 'Brasilia', 'BRL', 'R$', '.br', 'Brasil', 'Americas', 'South America', -10.00, -55.00, '🇧🇷', 1, 'U+1F1E7 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(32, 'British Indian Ocean Territory', 'IOT', '086', 'IO', '246', 'Diego Garcia', 'USD', '$', '.io', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', -6.00, 71.50, '🇮🇴', 1, 'U+1F1EE U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(33, 'Brunei', 'BRN', '096', 'BN', '673', 'Bandar Seri Begawan', 'BND', 'B$', '.bn', 'Negara Brunei Darussalam', 'Asia', 'South-Eastern Asia', 4.50, 114.67, '🇧🇳', 1, 'U+1F1E7 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(34, 'Bulgaria', 'BGR', '100', 'BG', '359', 'Sofia', 'BGN', 'Лв.', '.bg', 'България', 'Europe', 'Eastern Europe', 43.00, 25.00, '🇧🇬', 1, 'U+1F1E7 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(35, 'Burkina Faso', 'BFA', '854', 'BF', '226', 'Ouagadougou', 'XOF', 'CFA', '.bf', 'Burkina Faso', 'Africa', 'Western Africa', 13.00, -2.00, '🇧🇫', 1, 'U+1F1E7 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(36, 'Burundi', 'BDI', '108', 'BI', '257', 'Bujumbura', 'BIF', 'FBu', '.bi', 'Burundi', 'Africa', 'Eastern Africa', -3.50, 30.00, '🇧🇮', 1, 'U+1F1E7 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(37, 'Cambodia', 'KHM', '116', 'KH', '855', 'Phnom Penh', 'KHR', 'KHR', '.kh', 'Kâmpŭchéa', 'Asia', 'South-Eastern Asia', 13.00, 105.00, '🇰🇭', 1, 'U+1F1F0 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(38, 'Cameroon', 'CMR', '120', 'CM', '237', 'Yaounde', 'XAF', 'FCFA', '.cm', 'Cameroon', 'Africa', 'Middle Africa', 6.00, 12.00, '🇨🇲', 1, 'U+1F1E8 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(39, 'Canada', 'CAN', '124', 'CA', '1', 'Ottawa', 'CAD', '$', '.ca', 'Canada', 'Americas', 'Northern America', 60.00, -95.00, '🇨🇦', 1, 'U+1F1E8 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(40, 'Cape Verde', 'CPV', '132', 'CV', '238', 'Praia', 'CVE', '$', '.cv', 'Cabo Verde', 'Africa', 'Western Africa', 16.00, -24.00, '🇨🇻', 1, 'U+1F1E8 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(41, 'Cayman Islands', 'CYM', '136', 'KY', '+1-345', 'George Town', 'KYD', '$', '.ky', 'Cayman Islands', 'Americas', 'Caribbean', 19.50, -80.50, '🇰🇾', 1, 'U+1F1F0 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(42, 'Central African Republic', 'CAF', '140', 'CF', '236', 'Bangui', 'XAF', 'FCFA', '.cf', 'Ködörösêse tî Bêafrîka', 'Africa', 'Middle Africa', 7.00, 21.00, '🇨🇫', 1, 'U+1F1E8 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(43, 'Chad', 'TCD', '148', 'TD', '235', 'N\'Djamena', 'XAF', 'FCFA', '.td', 'Tchad', 'Africa', 'Middle Africa', 15.00, 19.00, '🇹🇩', 1, 'U+1F1F9 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(44, 'Chile', 'CHL', '152', 'CL', '56', 'Santiago', 'CLP', '$', '.cl', 'Chile', 'Americas', 'South America', -30.00, -71.00, '🇨🇱', 1, 'U+1F1E8 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(45, 'China', 'CHN', '156', 'CN', '86', 'Beijing', 'CNY', '¥', '.cn', '中国', 'Asia', 'Eastern Asia', 35.00, 105.00, '🇨🇳', 1, 'U+1F1E8 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(46, 'Christmas Island', 'CXR', '162', 'CX', '61', 'Flying Fish Cove', 'AUD', '$', '.cx', 'Christmas Island', 'Oceania', 'Australia and New Zealand', -10.50, 105.67, '🇨🇽', 1, 'U+1F1E8 U+1F1FD', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(47, 'Cocos (Keeling) Islands', 'CCK', '166', 'CC', '61', 'West Island', 'AUD', '$', '.cc', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', -12.50, 96.83, '🇨🇨', 1, 'U+1F1E8 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(48, 'Colombia', 'COL', '170', 'CO', '57', 'Bogota', 'COP', '$', '.co', 'Colombia', 'Americas', 'South America', 4.00, -72.00, '🇨🇴', 1, 'U+1F1E8 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(49, 'Comoros', 'COM', '174', 'KM', '269', 'Moroni', 'KMF', 'CF', '.km', 'Komori', 'Africa', 'Eastern Africa', -12.17, 44.25, '🇰🇲', 1, 'U+1F1F0 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(50, 'Congo', 'COG', '178', 'CG', '242', 'Brazzaville', 'XAF', 'FC', '.cg', 'République du Congo', 'Africa', 'Middle Africa', -1.00, 15.00, '🇨🇬', 1, 'U+1F1E8 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(51, 'Democratic Republic of the Congo', 'COD', '180', 'CD', '243', 'Kinshasa', 'CDF', 'FC', '.cd', 'République démocratique du Congo', 'Africa', 'Middle Africa', 0.00, 25.00, '🇨🇩', 1, 'U+1F1E8 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(52, 'Cook Islands', 'COK', '184', 'CK', '682', 'Avarua', 'NZD', '$', '.ck', 'Cook Islands', 'Oceania', 'Polynesia', -21.23, -159.77, '🇨🇰', 1, 'U+1F1E8 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(53, 'Costa Rica', 'CRI', '188', 'CR', '506', 'San Jose', 'CRC', '₡', '.cr', 'Costa Rica', 'Americas', 'Central America', 10.00, -84.00, '🇨🇷', 1, 'U+1F1E8 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', '384', 'CI', '225', 'Yamoussoukro', 'XOF', 'CFA', '.ci', '', 'Africa', 'Western Africa', 8.00, -5.00, '🇨🇮', 1, 'U+1F1E8 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(55, 'Croatia', 'HRV', '191', 'HR', '385', 'Zagreb', 'HRK', 'kn', '.hr', 'Hrvatska', 'Europe', 'Southern Europe', 45.17, 15.50, '🇭🇷', 1, 'U+1F1ED U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(56, 'Cuba', 'CUB', '192', 'CU', '53', 'Havana', 'CUP', '$', '.cu', 'Cuba', 'Americas', 'Caribbean', 21.50, -80.00, '🇨🇺', 1, 'U+1F1E8 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(57, 'Cyprus', 'CYP', '196', 'CY', '357', 'Nicosia', 'EUR', '€', '.cy', 'Κύπρος', 'Europe', 'Southern Europe', 35.00, 33.00, '🇨🇾', 1, 'U+1F1E8 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(58, 'Czech Republic', 'CZE', '203', 'CZ', '420', 'Prague', 'CZK', 'Kč', '.cz', 'Česká republika', 'Europe', 'Eastern Europe', 49.75, 15.50, '🇨🇿', 1, 'U+1F1E8 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(59, 'Denmark', 'DNK', '208', 'DK', '45', 'Copenhagen', 'DKK', 'Kr.', '.dk', 'Danmark', 'Europe', 'Northern Europe', 56.00, 10.00, '🇩🇰', 1, 'U+1F1E9 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(60, 'Djibouti', 'DJI', '262', 'DJ', '253', 'Djibouti', 'DJF', 'Fdj', '.dj', 'Djibouti', 'Africa', 'Eastern Africa', 11.50, 43.00, '🇩🇯', 1, 'U+1F1E9 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(61, 'Dominica', 'DMA', '212', 'DM', '+1-767', 'Roseau', 'XCD', '$', '.dm', 'Dominica', 'Americas', 'Caribbean', 15.42, -61.33, '🇩🇲', 1, 'U+1F1E9 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(62, 'Dominican Republic', 'DOM', '214', 'DO', '+1-809 and 1-829', 'Santo Domingo', 'DOP', '$', '.do', 'República Dominicana', 'Americas', 'Caribbean', 19.00, -70.67, '🇩🇴', 1, 'U+1F1E9 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(63, 'East Timor', 'TLS', '626', 'TL', '670', 'Dili', 'USD', '$', '.tl', 'Timor-Leste', 'Asia', 'South-Eastern Asia', -8.83, 125.92, '🇹🇱', 1, 'U+1F1F9 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(64, 'Ecuador', 'ECU', '218', 'EC', '593', 'Quito', 'USD', '$', '.ec', 'Ecuador', 'Americas', 'South America', -2.00, -77.50, '🇪🇨', 1, 'U+1F1EA U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(65, 'Egypt', 'EGY', '818', 'EG', '20', 'Cairo', 'EGP', 'ج.م', '.eg', 'مصر‎', 'Africa', 'Northern Africa', 27.00, 30.00, '🇪🇬', 1, 'U+1F1EA U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(66, 'El Salvador', 'SLV', '222', 'SV', '503', 'San Salvador', 'USD', '$', '.sv', 'El Salvador', 'Americas', 'Central America', 13.83, -88.92, '🇸🇻', 1, 'U+1F1F8 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(67, 'Equatorial Guinea', 'GNQ', '226', 'GQ', '240', 'Malabo', 'XAF', 'FCFA', '.gq', 'Guinea Ecuatorial', 'Africa', 'Middle Africa', 2.00, 10.00, '🇬🇶', 1, 'U+1F1EC U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(68, 'Eritrea', 'ERI', '232', 'ER', '291', 'Asmara', 'ERN', 'Nfk', '.er', 'ኤርትራ', 'Africa', 'Eastern Africa', 15.00, 39.00, '🇪🇷', 1, 'U+1F1EA U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(69, 'Estonia', 'EST', '233', 'EE', '372', 'Tallinn', 'EUR', '€', '.ee', 'Eesti', 'Europe', 'Northern Europe', 59.00, 26.00, '🇪🇪', 1, 'U+1F1EA U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(70, 'Ethiopia', 'ETH', '231', 'ET', '251', 'Addis Ababa', 'ETB', 'Nkf', '.et', 'ኢትዮጵያ', 'Africa', 'Eastern Africa', 8.00, 38.00, '🇪🇹', 1, 'U+1F1EA U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(71, 'Falkland Islands', 'FLK', '238', 'FK', '500', 'Stanley', 'FKP', '£', '.fk', 'Falkland Islands', 'Americas', 'South America', -51.75, -59.00, '🇫🇰', 1, 'U+1F1EB U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(72, 'Faroe Islands', 'FRO', '234', 'FO', '298', 'Torshavn', 'DKK', 'Kr.', '.fo', 'Føroyar', 'Europe', 'Northern Europe', 62.00, -7.00, '🇫🇴', 1, 'U+1F1EB U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(73, 'Fiji Islands', 'FJI', '242', 'FJ', '679', 'Suva', 'FJD', 'FJ$', '.fj', 'Fiji', 'Oceania', 'Melanesia', -18.00, 175.00, '🇫🇯', 1, 'U+1F1EB U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(74, 'Finland', 'FIN', '246', 'FI', '358', 'Helsinki', 'EUR', '€', '.fi', 'Suomi', 'Europe', 'Northern Europe', 64.00, 26.00, '🇫🇮', 1, 'U+1F1EB U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(75, 'France', 'FRA', '250', 'FR', '33', 'Paris', 'EUR', '€', '.fr', 'France', 'Europe', 'Western Europe', 46.00, 2.00, '🇫🇷', 1, 'U+1F1EB U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(76, 'French Guiana', 'GUF', '254', 'GF', '594', 'Cayenne', 'EUR', '€', '.gf', 'Guyane française', 'Americas', 'South America', 4.00, -53.00, '🇬🇫', 1, 'U+1F1EC U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(77, 'French Polynesia', 'PYF', '258', 'PF', '689', 'Papeete', 'XPF', '₣', '.pf', 'Polynésie française', 'Oceania', 'Polynesia', -15.00, -140.00, '🇵🇫', 1, 'U+1F1F5 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(78, 'French Southern Territories', 'ATF', '260', 'TF', '262', 'Port-aux-Francais', 'EUR', '€', '.tf', 'Territoire des Terres australes et antarctiques fr', 'Africa', 'Southern Africa', -49.25, 69.17, '🇹🇫', 1, 'U+1F1F9 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(79, 'Gabon', 'GAB', '266', 'GA', '241', 'Libreville', 'XAF', 'FCFA', '.ga', 'Gabon', 'Africa', 'Middle Africa', -1.00, 11.75, '🇬🇦', 1, 'U+1F1EC U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(80, 'Gambia The', 'GMB', '270', 'GM', '220', 'Banjul', 'GMD', 'D', '.gm', 'Gambia', 'Africa', 'Western Africa', 13.47, -16.57, '🇬🇲', 1, 'U+1F1EC U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(81, 'Georgia', 'GEO', '268', 'GE', '995', 'Tbilisi', 'GEL', 'ლ', '.ge', 'საქართველო', 'Asia', 'Western Asia', 42.00, 43.50, '🇬🇪', 1, 'U+1F1EC U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(82, 'Germany', 'DEU', '276', 'DE', '49', 'Berlin', 'EUR', '€', '.de', 'Deutschland', 'Europe', 'Western Europe', 51.00, 9.00, '🇩🇪', 1, 'U+1F1E9 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(83, 'Ghana', 'GHA', '288', 'GH', '233', 'Accra', 'GHS', 'GH₵', '.gh', 'Ghana', 'Africa', 'Western Africa', 8.00, -2.00, '🇬🇭', 1, 'U+1F1EC U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(84, 'Gibraltar', 'GIB', '292', 'GI', '350', 'Gibraltar', 'GIP', '£', '.gi', 'Gibraltar', 'Europe', 'Southern Europe', 36.13, -5.35, '🇬🇮', 1, 'U+1F1EC U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(85, 'Greece', 'GRC', '300', 'GR', '30', 'Athens', 'EUR', '€', '.gr', 'Ελλάδα', 'Europe', 'Southern Europe', 39.00, 22.00, '🇬🇷', 1, 'U+1F1EC U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(86, 'Greenland', 'GRL', '304', 'GL', '299', 'Nuuk', 'DKK', 'Kr.', '.gl', 'Kalaallit Nunaat', 'Americas', 'Northern America', 72.00, -40.00, '🇬🇱', 1, 'U+1F1EC U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(87, 'Grenada', 'GRD', '308', 'GD', '+1-473', 'St. George\'s', 'XCD', '$', '.gd', 'Grenada', 'Americas', 'Caribbean', 12.12, -61.67, '🇬🇩', 1, 'U+1F1EC U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(88, 'Guadeloupe', 'GLP', '312', 'GP', '590', 'Basse-Terre', 'EUR', '€', '.gp', 'Guadeloupe', 'Americas', 'Caribbean', 16.25, -61.58, '🇬🇵', 1, 'U+1F1EC U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(89, 'Guam', 'GUM', '316', 'GU', '+1-671', 'Hagatna', 'USD', '$', '.gu', 'Guam', 'Oceania', 'Micronesia', 13.47, 144.78, '🇬🇺', 1, 'U+1F1EC U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(90, 'Guatemala', 'GTM', '320', 'GT', '502', 'Guatemala City', 'GTQ', 'Q', '.gt', 'Guatemala', 'Americas', 'Central America', 15.50, -90.25, '🇬🇹', 1, 'U+1F1EC U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(91, 'Guernsey and Alderney', 'GGY', '831', 'GG', '+44-1481', 'St Peter Port', 'GBP', '£', '.gg', 'Guernsey', 'Europe', 'Northern Europe', 49.47, -2.58, '🇬🇬', 1, 'U+1F1EC U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(92, 'Guinea', 'GIN', '324', 'GN', '224', 'Conakry', 'GNF', 'FG', '.gn', 'Guinée', 'Africa', 'Western Africa', 11.00, -10.00, '🇬🇳', 1, 'U+1F1EC U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(93, 'Guinea-Bissau', 'GNB', '624', 'GW', '245', 'Bissau', 'XOF', 'CFA', '.gw', 'Guiné-Bissau', 'Africa', 'Western Africa', 12.00, -15.00, '🇬🇼', 1, 'U+1F1EC U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(94, 'Guyana', 'GUY', '328', 'GY', '592', 'Georgetown', 'GYD', '$', '.gy', 'Guyana', 'Americas', 'South America', 5.00, -59.00, '🇬🇾', 1, 'U+1F1EC U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(95, 'Haiti', 'HTI', '332', 'HT', '509', 'Port-au-Prince', 'HTG', 'G', '.ht', 'Haïti', 'Americas', 'Caribbean', 19.00, -72.42, '🇭🇹', 1, 'U+1F1ED U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(96, 'Heard Island and McDonald Islands', 'HMD', '334', 'HM', '672', '', 'AUD', '$', '.hm', 'Heard Island and McDonald Islands', '', '', -53.10, 72.52, '🇭🇲', 1, 'U+1F1ED U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(97, 'Honduras', 'HND', '340', 'HN', '504', 'Tegucigalpa', 'HNL', 'L', '.hn', 'Honduras', 'Americas', 'Central America', 15.00, -86.50, '🇭🇳', 1, 'U+1F1ED U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(98, 'Hong Kong S.A.R.', 'HKG', '344', 'HK', '852', 'Hong Kong', 'HKD', '$', '.hk', '香港', 'Asia', 'Eastern Asia', 22.25, 114.17, '🇭🇰', 1, 'U+1F1ED U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(99, 'Hungary', 'HUN', '348', 'HU', '36', 'Budapest', 'HUF', 'Ft', '.hu', 'Magyarország', 'Europe', 'Eastern Europe', 47.00, 20.00, '🇭🇺', 1, 'U+1F1ED U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(100, 'Iceland', 'ISL', '352', 'IS', '354', 'Reykjavik', 'ISK', 'kr', '.is', 'Ísland', 'Europe', 'Northern Europe', 65.00, -18.00, '🇮🇸', 1, 'U+1F1EE U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(101, 'India', 'IND', '356', 'IN', '91', 'New Delhi', 'INR', '₹', '.in', 'भारत', 'Asia', 'Southern Asia', 20.00, 77.00, '🇮🇳', 1, 'U+1F1EE U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(102, 'Indonesia', 'IDN', '360', 'ID', '62', 'Jakarta', 'IDR', 'Rp', '.id', 'Indonesia', 'Asia', 'South-Eastern Asia', -5.00, 120.00, '🇮🇩', 1, 'U+1F1EE U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(103, 'Iran', 'IRN', '364', 'IR', '98', 'Tehran', 'IRR', '﷼', '.ir', 'ایران', 'Asia', 'Southern Asia', 32.00, 53.00, '🇮🇷', 1, 'U+1F1EE U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(104, 'Iraq', 'IRQ', '368', 'IQ', '964', 'Baghdad', 'IQD', 'د.ع', '.iq', 'العراق', 'Asia', 'Western Asia', 33.00, 44.00, '🇮🇶', 1, 'U+1F1EE U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(105, 'Ireland', 'IRL', '372', 'IE', '353', 'Dublin', 'EUR', '€', '.ie', 'Éire', 'Europe', 'Northern Europe', 53.00, -8.00, '🇮🇪', 1, 'U+1F1EE U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(106, 'Israel', 'ISR', '376', 'IL', '972', 'Jerusalem', 'ILS', '₪', '.il', 'יִשְׂרָאֵל', 'Asia', 'Western Asia', 31.50, 34.75, '🇮🇱', 1, 'U+1F1EE U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(107, 'Italy', 'ITA', '380', 'IT', '39', 'Rome', 'EUR', '€', '.it', 'Italia', 'Europe', 'Southern Europe', 42.83, 12.83, '🇮🇹', 1, 'U+1F1EE U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(108, 'Jamaica', 'JAM', '388', 'JM', '+1-876', 'Kingston', 'JMD', 'J$', '.jm', 'Jamaica', 'Americas', 'Caribbean', 18.25, -77.50, '🇯🇲', 1, 'U+1F1EF U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(109, 'Japan', 'JPN', '392', 'JP', '81', 'Tokyo', 'JPY', '¥', '.jp', '日本', 'Asia', 'Eastern Asia', 36.00, 138.00, '🇯🇵', 1, 'U+1F1EF U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(110, 'Jersey', 'JEY', '832', 'JE', '+44-1534', 'Saint Helier', 'GBP', '£', '.je', 'Jersey', 'Europe', 'Northern Europe', 49.25, -2.17, '🇯🇪', 1, 'U+1F1EF U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(111, 'Jordan', 'JOR', '400', 'JO', '962', 'Amman', 'JOD', 'ا.د', '.jo', 'الأردن', 'Asia', 'Western Asia', 31.00, 36.00, '🇯🇴', 1, 'U+1F1EF U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(112, 'Kazakhstan', 'KAZ', '398', 'KZ', '7', 'Astana', 'KZT', 'лв', '.kz', 'Қазақстан', 'Asia', 'Central Asia', 48.00, 68.00, '🇰🇿', 1, 'U+1F1F0 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(113, 'Kenya', 'KEN', '404', 'KE', '254', 'Nairobi', 'KES', 'KSh', '.ke', 'Kenya', 'Africa', 'Eastern Africa', 1.00, 38.00, '🇰🇪', 1, 'U+1F1F0 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(114, 'Kiribati', 'KIR', '296', 'KI', '686', 'Tarawa', 'AUD', '$', '.ki', 'Kiribati', 'Oceania', 'Micronesia', 1.42, 173.00, '🇰🇮', 1, 'U+1F1F0 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(115, 'North Korea', 'PRK', '408', 'KP', '850', 'Pyongyang', 'KPW', '₩', '.kp', '북한', 'Asia', 'Eastern Asia', 40.00, 127.00, '🇰🇵', 1, 'U+1F1F0 U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(116, 'South Korea', 'KOR', '410', 'KR', '82', 'Seoul', 'KRW', '₩', '.kr', '대한민국', 'Asia', 'Eastern Asia', 37.00, 127.50, '🇰🇷', 1, 'U+1F1F0 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(117, 'Kuwait', 'KWT', '414', 'KW', '965', 'Kuwait City', 'KWD', 'ك.د', '.kw', 'الكويت', 'Asia', 'Western Asia', 29.50, 45.75, '🇰🇼', 1, 'U+1F1F0 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(118, 'Kyrgyzstan', 'KGZ', '417', 'KG', '996', 'Bishkek', 'KGS', 'лв', '.kg', 'Кыргызстан', 'Asia', 'Central Asia', 41.00, 75.00, '🇰🇬', 1, 'U+1F1F0 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(119, 'Laos', 'LAO', '418', 'LA', '856', 'Vientiane', 'LAK', '₭', '.la', 'ສປປລາວ', 'Asia', 'South-Eastern Asia', 18.00, 105.00, '🇱🇦', 1, 'U+1F1F1 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(120, 'Latvia', 'LVA', '428', 'LV', '371', 'Riga', 'EUR', '€', '.lv', 'Latvija', 'Europe', 'Northern Europe', 57.00, 25.00, '🇱🇻', 1, 'U+1F1F1 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(121, 'Lebanon', 'LBN', '422', 'LB', '961', 'Beirut', 'LBP', '£', '.lb', 'لبنان', 'Asia', 'Western Asia', 33.83, 35.83, '🇱🇧', 1, 'U+1F1F1 U+1F1E7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(122, 'Lesotho', 'LSO', '426', 'LS', '266', 'Maseru', 'LSL', 'L', '.ls', 'Lesotho', 'Africa', 'Southern Africa', -29.50, 28.50, '🇱🇸', 1, 'U+1F1F1 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(123, 'Liberia', 'LBR', '430', 'LR', '231', 'Monrovia', 'LRD', '$', '.lr', 'Liberia', 'Africa', 'Western Africa', 6.50, -9.50, '🇱🇷', 1, 'U+1F1F1 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(124, 'Libya', 'LBY', '434', 'LY', '218', 'Tripolis', 'LYD', 'د.ل', '.ly', '‏ليبيا', 'Africa', 'Northern Africa', 25.00, 17.00, '🇱🇾', 1, 'U+1F1F1 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(125, 'Liechtenstein', 'LIE', '438', 'LI', '423', 'Vaduz', 'CHF', 'CHf', '.li', 'Liechtenstein', 'Europe', 'Western Europe', 47.27, 9.53, '🇱🇮', 1, 'U+1F1F1 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(126, 'Lithuania', 'LTU', '440', 'LT', '370', 'Vilnius', 'EUR', '€', '.lt', 'Lietuva', 'Europe', 'Northern Europe', 56.00, 24.00, '🇱🇹', 1, 'U+1F1F1 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(127, 'Luxembourg', 'LUX', '442', 'LU', '352', 'Luxembourg', 'EUR', '€', '.lu', 'Luxembourg', 'Europe', 'Western Europe', 49.75, 6.17, '🇱🇺', 1, 'U+1F1F1 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(128, 'Macau S.A.R.', 'MAC', '446', 'MO', '853', 'Macao', 'MOP', '$', '.mo', '澳門', 'Asia', 'Eastern Asia', 22.17, 113.55, '🇲🇴', 1, 'U+1F1F2 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(129, 'Macedonia', 'MKD', '807', 'MK', '389', 'Skopje', 'MKD', 'ден', '.mk', 'Северна Македонија', 'Europe', 'Southern Europe', 41.83, 22.00, '🇲🇰', 1, 'U+1F1F2 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(130, 'Madagascar', 'MDG', '450', 'MG', '261', 'Antananarivo', 'MGA', 'Ar', '.mg', 'Madagasikara', 'Africa', 'Eastern Africa', -20.00, 47.00, '🇲🇬', 1, 'U+1F1F2 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(131, 'Malawi', 'MWI', '454', 'MW', '265', 'Lilongwe', 'MWK', 'MK', '.mw', 'Malawi', 'Africa', 'Eastern Africa', -13.50, 34.00, '🇲🇼', 1, 'U+1F1F2 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(132, 'Malaysia', 'MYS', '458', 'MY', '60', 'Kuala Lumpur', 'MYR', 'RM', '.my', 'Malaysia', 'Asia', 'South-Eastern Asia', 2.50, 112.50, '🇲🇾', 1, 'U+1F1F2 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(133, 'Maldives', 'MDV', '462', 'MV', '960', 'Male', 'MVR', 'Rf', '.mv', 'Maldives', 'Asia', 'Southern Asia', 3.25, 73.00, '🇲🇻', 1, 'U+1F1F2 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(134, 'Mali', 'MLI', '466', 'ML', '223', 'Bamako', 'XOF', 'CFA', '.ml', 'Mali', 'Africa', 'Western Africa', 17.00, -4.00, '🇲🇱', 1, 'U+1F1F2 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(135, 'Malta', 'MLT', '470', 'MT', '356', 'Valletta', 'EUR', '€', '.mt', 'Malta', 'Europe', 'Southern Europe', 35.83, 14.58, '🇲🇹', 1, 'U+1F1F2 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(136, 'Man (Isle of)', 'IMN', '833', 'IM', '+44-1624', 'Douglas, Isle of Man', 'GBP', '£', '.im', 'Isle of Man', 'Europe', 'Northern Europe', 54.25, -4.50, '🇮🇲', 1, 'U+1F1EE U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(137, 'Marshall Islands', 'MHL', '584', 'MH', '692', 'Majuro', 'USD', '$', '.mh', 'M̧ajeļ', 'Oceania', 'Micronesia', 9.00, 168.00, '🇲🇭', 1, 'U+1F1F2 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(138, 'Martinique', 'MTQ', '474', 'MQ', '596', 'Fort-de-France', 'EUR', '€', '.mq', 'Martinique', 'Americas', 'Caribbean', 14.67, -61.00, '🇲🇶', 1, 'U+1F1F2 U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(139, 'Mauritania', 'MRT', '478', 'MR', '222', 'Nouakchott', 'MRO', 'MRU', '.mr', 'موريتانيا', 'Africa', 'Western Africa', 20.00, -12.00, '🇲🇷', 1, 'U+1F1F2 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(140, 'Mauritius', 'MUS', '480', 'MU', '230', 'Port Louis', 'MUR', '₨', '.mu', 'Maurice', 'Africa', 'Eastern Africa', -20.28, 57.55, '🇲🇺', 1, 'U+1F1F2 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(141, 'Mayotte', 'MYT', '175', 'YT', '262', 'Mamoudzou', 'EUR', '€', '.yt', 'Mayotte', 'Africa', 'Eastern Africa', -12.83, 45.17, '🇾🇹', 1, 'U+1F1FE U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(142, 'Mexico', 'MEX', '484', 'MX', '52', 'Mexico City', 'MXN', '$', '.mx', 'México', 'Americas', 'Central America', 23.00, -102.00, '🇲🇽', 1, 'U+1F1F2 U+1F1FD', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(143, 'Micronesia', 'FSM', '583', 'FM', '691', 'Palikir', 'USD', '$', '.fm', 'Micronesia', 'Oceania', 'Micronesia', 6.92, 158.25, '🇫🇲', 1, 'U+1F1EB U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(144, 'Moldova', 'MDA', '498', 'MD', '373', 'Chisinau', 'MDL', 'L', '.md', 'Moldova', 'Europe', 'Eastern Europe', 47.00, 29.00, '🇲🇩', 1, 'U+1F1F2 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(145, 'Monaco', 'MCO', '492', 'MC', '377', 'Monaco', 'EUR', '€', '.mc', 'Monaco', 'Europe', 'Western Europe', 43.73, 7.40, '🇲🇨', 1, 'U+1F1F2 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(146, 'Mongolia', 'MNG', '496', 'MN', '976', 'Ulan Bator', 'MNT', '₮', '.mn', 'Монгол улс', 'Asia', 'Eastern Asia', 46.00, 105.00, '🇲🇳', 1, 'U+1F1F2 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(147, 'Montenegro', 'MNE', '499', 'ME', '382', 'Podgorica', 'EUR', '€', '.me', 'Црна Гора', 'Europe', 'Southern Europe', 42.50, 19.30, '🇲🇪', 1, 'U+1F1F2 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(148, 'Montserrat', 'MSR', '500', 'MS', '+1-664', 'Plymouth', 'XCD', '$', '.ms', 'Montserrat', 'Americas', 'Caribbean', 16.75, -62.20, '🇲🇸', 1, 'U+1F1F2 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(149, 'Morocco', 'MAR', '504', 'MA', '212', 'Rabat', 'MAD', 'DH', '.ma', 'المغرب', 'Africa', 'Northern Africa', 32.00, -5.00, '🇲🇦', 1, 'U+1F1F2 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(150, 'Mozambique', 'MOZ', '508', 'MZ', '258', 'Maputo', 'MZN', 'MT', '.mz', 'Moçambique', 'Africa', 'Eastern Africa', -18.25, 35.00, '🇲🇿', 1, 'U+1F1F2 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(151, 'Myanmar', 'MMR', '104', 'MM', '95', 'Nay Pyi Taw', 'MMK', 'K', '.mm', 'မြန်မာ', 'Asia', 'South-Eastern Asia', 22.00, 98.00, '🇲🇲', 1, 'U+1F1F2 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(152, 'Namibia', 'NAM', '516', 'NA', '264', 'Windhoek', 'NAD', '$', '.na', 'Namibia', 'Africa', 'Southern Africa', -22.00, 17.00, '🇳🇦', 1, 'U+1F1F3 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(153, 'Nauru', 'NRU', '520', 'NR', '674', 'Yaren', 'AUD', '$', '.nr', 'Nauru', 'Oceania', 'Micronesia', -0.53, 166.92, '🇳🇷', 1, 'U+1F1F3 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(154, 'Nepal', 'NPL', '524', 'NP', '977', 'Kathmandu', 'NPR', '₨', '.np', 'नपल', 'Asia', 'Southern Asia', 28.00, 84.00, '🇳🇵', 1, 'U+1F1F3 U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(155, 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'BQ', '599', 'Kralendijk', 'USD', '$', '.an', 'Caribisch Nederland', 'Americas', 'Caribbean', 12.15, -68.27, '🇧🇶', 1, 'U+1F1E7 U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(156, 'Netherlands', 'NLD', '528', 'NL', '31', 'Amsterdam', 'EUR', '€', '.nl', 'Nederland', 'Europe', 'Western Europe', 52.50, 5.75, '🇳🇱', 1, 'U+1F1F3 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(157, 'New Caledonia', 'NCL', '540', 'NC', '687', 'Noumea', 'XPF', '₣', '.nc', 'Nouvelle-Calédonie', 'Oceania', 'Melanesia', -21.50, 165.50, '🇳🇨', 1, 'U+1F1F3 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(158, 'New Zealand', 'NZL', '554', 'NZ', '64', 'Wellington', 'NZD', '$', '.nz', 'New Zealand', 'Oceania', 'Australia and New Zealand', -41.00, 174.00, '🇳🇿', 1, 'U+1F1F3 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(159, 'Nicaragua', 'NIC', '558', 'NI', '505', 'Managua', 'NIO', 'C$', '.ni', 'Nicaragua', 'Americas', 'Central America', 13.00, -85.00, '🇳🇮', 1, 'U+1F1F3 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(160, 'Niger', 'NER', '562', 'NE', '227', 'Niamey', 'XOF', 'CFA', '.ne', 'Niger', 'Africa', 'Western Africa', 16.00, 8.00, '🇳🇪', 1, 'U+1F1F3 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(161, 'Nigeria', 'NGA', '566', 'NG', '234', 'Abuja', 'NGN', '₦', '.ng', 'Nigeria', 'Africa', 'Western Africa', 10.00, 8.00, '🇳🇬', 1, 'U+1F1F3 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(162, 'Niue', 'NIU', '570', 'NU', '683', 'Alofi', 'NZD', '$', '.nu', 'Niuē', 'Oceania', 'Polynesia', -19.03, -169.87, '🇳🇺', 1, 'U+1F1F3 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(163, 'Norfolk Island', 'NFK', '574', 'NF', '672', 'Kingston', 'AUD', '$', '.nf', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', -29.03, 167.95, '🇳🇫', 1, 'U+1F1F3 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(164, 'Northern Mariana Islands', 'MNP', '580', 'MP', '+1-670', 'Saipan', 'USD', '$', '.mp', 'Northern Mariana Islands', 'Oceania', 'Micronesia', 15.20, 145.75, '🇲🇵', 1, 'U+1F1F2 U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(165, 'Norway', 'NOR', '578', 'NO', '47', 'Oslo', 'NOK', 'kr', '.no', 'Norge', 'Europe', 'Northern Europe', 62.00, 10.00, '🇳🇴', 1, 'U+1F1F3 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(166, 'Oman', 'OMN', '512', 'OM', '968', 'Muscat', 'OMR', '.ع.ر', '.om', 'عمان', 'Asia', 'Western Asia', 21.00, 57.00, '🇴🇲', 1, 'U+1F1F4 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(167, 'Pakistan', 'PAK', '586', 'PK', '92', 'Islamabad', 'PKR', '₨', '.pk', 'Pakistan', 'Asia', 'Southern Asia', 30.00, 70.00, '🇵🇰', 1, 'U+1F1F5 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(168, 'Palau', 'PLW', '585', 'PW', '680', 'Melekeok', 'USD', '$', '.pw', 'Palau', 'Oceania', 'Micronesia', 7.50, 134.50, '🇵🇼', 1, 'U+1F1F5 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(169, 'Palestinian Territory Occupied', 'PSE', '275', 'PS', '970', 'East Jerusalem', 'ILS', '₪', '.ps', 'فلسطين', 'Asia', 'Western Asia', 31.90, 35.20, '🇵🇸', 1, 'U+1F1F5 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(170, 'Panama', 'PAN', '591', 'PA', '507', 'Panama City', 'PAB', 'B/.', '.pa', 'Panamá', 'Americas', 'Central America', 9.00, -80.00, '🇵🇦', 1, 'U+1F1F5 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(171, 'Papua new Guinea', 'PNG', '598', 'PG', '675', 'Port Moresby', 'PGK', 'K', '.pg', 'Papua Niugini', 'Oceania', 'Melanesia', -6.00, 147.00, '🇵🇬', 1, 'U+1F1F5 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(172, 'Paraguay', 'PRY', '600', 'PY', '595', 'Asuncion', 'PYG', '₲', '.py', 'Paraguay', 'Americas', 'South America', -23.00, -58.00, '🇵🇾', 1, 'U+1F1F5 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(173, 'Peru', 'PER', '604', 'PE', '51', 'Lima', 'PEN', 'S/.', '.pe', 'Perú', 'Americas', 'South America', -10.00, -76.00, '🇵🇪', 1, 'U+1F1F5 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(174, 'Philippines', 'PHL', '608', 'PH', '63', 'Manila', 'PHP', '₱', '.ph', 'Pilipinas', 'Asia', 'South-Eastern Asia', 13.00, 122.00, '🇵🇭', 1, 'U+1F1F5 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(175, 'Pitcairn Island', 'PCN', '612', 'PN', '870', 'Adamstown', 'NZD', '$', '.pn', 'Pitcairn Islands', 'Oceania', 'Polynesia', -25.07, -130.10, '🇵🇳', 1, 'U+1F1F5 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(176, 'Poland', 'POL', '616', 'PL', '48', 'Warsaw', 'PLN', 'zł', '.pl', 'Polska', 'Europe', 'Eastern Europe', 52.00, 20.00, '🇵🇱', 1, 'U+1F1F5 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(177, 'Portugal', 'PRT', '620', 'PT', '351', 'Lisbon', 'EUR', '€', '.pt', 'Portugal', 'Europe', 'Southern Europe', 39.50, -8.00, '🇵🇹', 1, 'U+1F1F5 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(178, 'Puerto Rico', 'PRI', '630', 'PR', '+1-787 and 1-939', 'San Juan', 'USD', '$', '.pr', 'Puerto Rico', 'Americas', 'Caribbean', 18.25, -66.50, '🇵🇷', 1, 'U+1F1F5 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(179, 'Qatar', 'QAT', '634', 'QA', '974', 'Doha', 'QAR', 'ق.ر', '.qa', 'قطر', 'Asia', 'Western Asia', 25.50, 51.25, '🇶🇦', 1, 'U+1F1F6 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(180, 'Reunion', 'REU', '638', 'RE', '262', 'Saint-Denis', 'EUR', '€', '.re', 'La Réunion', 'Africa', 'Eastern Africa', -21.15, 55.50, '🇷🇪', 1, 'U+1F1F7 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(181, 'Romania', 'ROU', '642', 'RO', '40', 'Bucharest', 'RON', 'lei', '.ro', 'România', 'Europe', 'Eastern Europe', 46.00, 25.00, '🇷🇴', 1, 'U+1F1F7 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(182, 'Russia', 'RUS', '643', 'RU', '7', 'Moscow', 'RUB', '₽', '.ru', 'Россия', 'Europe', 'Eastern Europe', 60.00, 100.00, '🇷🇺', 1, 'U+1F1F7 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(183, 'Rwanda', 'RWA', '646', 'RW', '250', 'Kigali', 'RWF', 'FRw', '.rw', 'Rwanda', 'Africa', 'Eastern Africa', -2.00, 30.00, '🇷🇼', 1, 'U+1F1F7 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(184, 'Saint Helena', 'SHN', '654', 'SH', '290', 'Jamestown', 'SHP', '£', '.sh', 'Saint Helena', 'Africa', 'Western Africa', -15.95, -5.70, '🇸🇭', 1, 'U+1F1F8 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(185, 'Saint Kitts And Nevis', 'KNA', '659', 'KN', '+1-869', 'Basseterre', 'XCD', '$', '.kn', 'Saint Kitts and Nevis', 'Americas', 'Caribbean', 17.33, -62.75, '🇰🇳', 1, 'U+1F1F0 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(186, 'Saint Lucia', 'LCA', '662', 'LC', '+1-758', 'Castries', 'XCD', '$', '.lc', 'Saint Lucia', 'Americas', 'Caribbean', 13.88, -60.97, '🇱🇨', 1, 'U+1F1F1 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(187, 'Saint Pierre and Miquelon', 'SPM', '666', 'PM', '508', 'Saint-Pierre', 'EUR', '€', '.pm', 'Saint-Pierre-et-Miquelon', 'Americas', 'Northern America', 46.83, -56.33, '🇵🇲', 1, 'U+1F1F5 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(188, 'Saint Vincent And The Grenadines', 'VCT', '670', 'VC', '+1-784', 'Kingstown', 'XCD', '$', '.vc', 'Saint Vincent and the Grenadines', 'Americas', 'Caribbean', 13.25, -61.20, '🇻🇨', 1, 'U+1F1FB U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(189, 'Saint-Barthelemy', 'BLM', '652', 'BL', '590', 'Gustavia', 'EUR', '€', '.bl', 'Saint-Barthélemy', 'Americas', 'Caribbean', 18.50, -63.42, '🇧🇱', 1, 'U+1F1E7 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(190, 'Saint-Martin (French part)', 'MAF', '663', 'MF', '590', 'Marigot', 'EUR', '€', '.mf', 'Saint-Martin', 'Americas', 'Caribbean', 18.08, -63.95, '🇲🇫', 1, 'U+1F1F2 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(191, 'Samoa', 'WSM', '882', 'WS', '685', 'Apia', 'WST', 'SAT', '.ws', 'Samoa', 'Oceania', 'Polynesia', -13.58, -172.33, '🇼🇸', 1, 'U+1F1FC U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(192, 'San Marino', 'SMR', '674', 'SM', '378', 'San Marino', 'EUR', '€', '.sm', 'San Marino', 'Europe', 'Southern Europe', 43.77, 12.42, '🇸🇲', 1, 'U+1F1F8 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(193, 'Sao Tome and Principe', 'STP', '678', 'ST', '239', 'Sao Tome', 'STD', 'Db', '.st', 'São Tomé e Príncipe', 'Africa', 'Middle Africa', 1.00, 7.00, '🇸🇹', 1, 'U+1F1F8 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(194, 'Saudi Arabia', 'SAU', '682', 'SA', '966', 'Riyadh', 'SAR', '﷼', '.sa', 'المملكة العربية السعودية', 'Asia', 'Western Asia', 25.00, 45.00, '🇸🇦', 1, 'U+1F1F8 U+1F1E6', '2018-07-20 20:11:03', '2021-09-26 13:09:09'),
(195, 'Senegal', 'SEN', '686', 'SN', '221', 'Dakar', 'XOF', 'CFA', '.sn', 'Sénégal', 'Africa', 'Western Africa', 14.00, -14.00, '🇸🇳', 1, 'U+1F1F8 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(196, 'Serbia', 'SRB', '688', 'RS', '381', 'Belgrade', 'RSD', 'din', '.rs', 'Србија', 'Europe', 'Southern Europe', 44.00, 21.00, '🇷🇸', 1, 'U+1F1F7 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(197, 'Seychelles', 'SYC', '690', 'SC', '248', 'Victoria', 'SCR', 'SRe', '.sc', 'Seychelles', 'Africa', 'Eastern Africa', -4.58, 55.67, '🇸🇨', 1, 'U+1F1F8 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(198, 'Sierra Leone', 'SLE', '694', 'SL', '232', 'Freetown', 'SLL', 'Le', '.sl', 'Sierra Leone', 'Africa', 'Western Africa', 8.50, -11.50, '🇸🇱', 1, 'U+1F1F8 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(199, 'Singapore', 'SGP', '702', 'SG', '65', 'Singapur', 'SGD', '$', '.sg', 'Singapore', 'Asia', 'South-Eastern Asia', 1.37, 103.80, '🇸🇬', 1, 'U+1F1F8 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(200, 'Slovakia', 'SVK', '703', 'SK', '421', 'Bratislava', 'EUR', '€', '.sk', 'Slovensko', 'Europe', 'Eastern Europe', 48.67, 19.50, '🇸🇰', 1, 'U+1F1F8 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(201, 'Slovenia', 'SVN', '705', 'SI', '386', 'Ljubljana', 'EUR', '€', '.si', 'Slovenija', 'Europe', 'Southern Europe', 46.12, 14.82, '🇸🇮', 1, 'U+1F1F8 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(202, 'Solomon Islands', 'SLB', '090', 'SB', '677', 'Honiara', 'SBD', 'Si$', '.sb', 'Solomon Islands', 'Oceania', 'Melanesia', -8.00, 159.00, '🇸🇧', 1, 'U+1F1F8 U+1F1E7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(203, 'Somalia', 'SOM', '706', 'SO', '252', 'Mogadishu', 'SOS', 'Sh.so.', '.so', 'Soomaaliya', 'Africa', 'Eastern Africa', 10.00, 49.00, '🇸🇴', 1, 'U+1F1F8 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(204, 'South Africa', 'ZAF', '710', 'ZA', '27', 'Pretoria', 'ZAR', 'R', '.za', 'South Africa', 'Africa', 'Southern Africa', -29.00, 24.00, '🇿🇦', 1, 'U+1F1FF U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(205, 'South Georgia', 'SGS', '239', 'GS', '500', 'Grytviken', 'GBP', '£', '.gs', 'South Georgia', 'Americas', 'South America', -54.50, -37.00, '🇬🇸', 1, 'U+1F1EC U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(206, 'South Sudan', 'SSD', '728', 'SS', '211', 'Juba', 'SSP', '£', '.ss', 'South Sudan', 'Africa', 'Middle Africa', 7.00, 30.00, '🇸🇸', 1, 'U+1F1F8 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(207, 'Spain', 'ESP', '724', 'ES', '34', 'Madrid', 'EUR', '€', '.es', 'España', 'Europe', 'Southern Europe', 40.00, -4.00, '🇪🇸', 1, 'U+1F1EA U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(208, 'Sri Lanka', 'LKA', '144', 'LK', '94', 'Colombo', 'LKR', 'Rs', '.lk', 'śrī laṃkāva', 'Asia', 'Southern Asia', 7.00, 81.00, '🇱🇰', 1, 'U+1F1F1 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(209, 'Sudan', 'SDN', '729', 'SD', '249', 'Khartoum', 'SDG', '.س.ج', '.sd', 'السودان', 'Africa', 'Northern Africa', 15.00, 30.00, '🇸🇩', 1, 'U+1F1F8 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(210, 'Suriname', 'SUR', '740', 'SR', '597', 'Paramaribo', 'SRD', '$', '.sr', 'Suriname', 'Americas', 'South America', 4.00, -56.00, '🇸🇷', 1, 'U+1F1F8 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(211, 'Svalbard And Jan Mayen Islands', 'SJM', '744', 'SJ', '47', 'Longyearbyen', 'NOK', 'kr', '.sj', 'Svalbard og Jan Mayen', 'Europe', 'Northern Europe', 78.00, 20.00, '🇸🇯', 1, 'U+1F1F8 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(212, 'Swaziland', 'SWZ', '748', 'SZ', '268', 'Mbabane', 'SZL', 'E', '.sz', 'Swaziland', 'Africa', 'Southern Africa', -26.50, 31.50, '🇸🇿', 1, 'U+1F1F8 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(213, 'Sweden', 'SWE', '752', 'SE', '46', 'Stockholm', 'SEK', 'kr', '.se', 'Sverige', 'Europe', 'Northern Europe', 62.00, 15.00, '🇸🇪', 1, 'U+1F1F8 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(214, 'Switzerland', 'CHE', '756', 'CH', '41', 'Bern', 'CHF', 'CHf', '.ch', 'Schweiz', 'Europe', 'Western Europe', 47.00, 8.00, '🇨🇭', 1, 'U+1F1E8 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(215, 'Syria', 'SYR', '760', 'SY', '963', 'Damascus', 'SYP', 'LS', '.sy', 'سوريا', 'Asia', 'Western Asia', 35.00, 38.00, '🇸🇾', 1, 'U+1F1F8 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(216, 'Taiwan', 'TWN', '158', 'TW', '886', 'Taipei', 'TWD', '$', '.tw', '臺灣', 'Asia', 'Eastern Asia', 23.50, 121.00, '🇹🇼', 1, 'U+1F1F9 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(217, 'Tajikistan', 'TJK', '762', 'TJ', '992', 'Dushanbe', 'TJS', 'SM', '.tj', 'Тоҷикистон', 'Asia', 'Central Asia', 39.00, 71.00, '🇹🇯', 1, 'U+1F1F9 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(218, 'Tanzania', 'TZA', '834', 'TZ', '255', 'Dodoma', 'TZS', 'TSh', '.tz', 'Tanzania', 'Africa', 'Eastern Africa', -6.00, 35.00, '🇹🇿', 1, 'U+1F1F9 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(219, 'Thailand', 'THA', '764', 'TH', '66', 'Bangkok', 'THB', '฿', '.th', 'ประเทศไทย', 'Asia', 'South-Eastern Asia', 15.00, 100.00, '🇹🇭', 1, 'U+1F1F9 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(220, 'Togo', 'TGO', '768', 'TG', '228', 'Lome', 'XOF', 'CFA', '.tg', 'Togo', 'Africa', 'Western Africa', 8.00, 1.17, '🇹🇬', 1, 'U+1F1F9 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(221, 'Tokelau', 'TKL', '772', 'TK', '690', '', 'NZD', '$', '.tk', 'Tokelau', 'Oceania', 'Polynesia', -9.00, -172.00, '🇹🇰', 1, 'U+1F1F9 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(222, 'Tonga', 'TON', '776', 'TO', '676', 'Nuku\'alofa', 'TOP', '$', '.to', 'Tonga', 'Oceania', 'Polynesia', -20.00, -175.00, '🇹🇴', 1, 'U+1F1F9 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(223, 'Trinidad And Tobago', 'TTO', '780', 'TT', '+1-868', 'Port of Spain', 'TTD', '$', '.tt', 'Trinidad and Tobago', 'Americas', 'Caribbean', 11.00, -61.00, '🇹🇹', 1, 'U+1F1F9 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(224, 'Tunisia', 'TUN', '788', 'TN', '216', 'Tunis', 'TND', 'ت.د', '.tn', 'تونس', 'Africa', 'Northern Africa', 34.00, 9.00, '🇹🇳', 1, 'U+1F1F9 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(225, 'Turkey', 'TUR', '792', 'TR', '90', 'Ankara', 'TRY', '₺', '.tr', 'Türkiye', 'Asia', 'Western Asia', 39.00, 35.00, '🇹🇷', 1, 'U+1F1F9 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(226, 'Turkmenistan', 'TKM', '795', 'TM', '993', 'Ashgabat', 'TMT', 'T', '.tm', 'Türkmenistan', 'Asia', 'Central Asia', 40.00, 60.00, '🇹🇲', 1, 'U+1F1F9 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(227, 'Turks And Caicos Islands', 'TCA', '796', 'TC', '+1-649', 'Cockburn Town', 'USD', '$', '.tc', 'Turks and Caicos Islands', 'Americas', 'Caribbean', 21.75, -71.58, '🇹🇨', 1, 'U+1F1F9 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(228, 'Tuvalu', 'TUV', '798', 'TV', '688', 'Funafuti', 'AUD', '$', '.tv', 'Tuvalu', 'Oceania', 'Polynesia', -8.00, 178.00, '🇹🇻', 1, 'U+1F1F9 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(229, 'Uganda', 'UGA', '800', 'UG', '256', 'Kampala', 'UGX', 'USh', '.ug', 'Uganda', 'Africa', 'Eastern Africa', 1.00, 32.00, '🇺🇬', 1, 'U+1F1FA U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(230, 'Ukraine', 'UKR', '804', 'UA', '380', 'Kiev', 'UAH', '₴', '.ua', 'Україна', 'Europe', 'Eastern Europe', 49.00, 32.00, '🇺🇦', 1, 'U+1F1FA U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(231, 'United Arab Emirates', 'ARE', '784', 'AE', '971', 'Abu Dhabi', 'AED', 'إ.د', '.ae', 'دولة الإمارات العربية المتحدة', 'Asia', 'Western Asia', 24.00, 54.00, '🇦🇪', 1, 'U+1F1E6 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(232, 'United Kingdom', 'GBR', '826', 'GB', '44', 'London', 'GBP', '£', '.uk', 'United Kingdom', 'Europe', 'Northern Europe', 54.00, -2.00, '🇬🇧', 1, 'U+1F1EC U+1F1E7', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(233, 'United States', 'USA', '840', 'US', '1', 'Washington', 'USD', '$', '.us', 'United States', 'Americas', 'Northern America', 38.00, -97.00, '🇺🇸', 1, 'U+1F1FA U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(234, 'United States Minor Outlying Islands', 'UMI', '581', 'UM', '1', '', 'USD', '$', '.us', 'United States Minor Outlying Islands', 'Americas', 'Northern America', 0.00, 0.00, '🇺🇲', 1, 'U+1F1FA U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(235, 'Uruguay', 'URY', '858', 'UY', '598', 'Montevideo', 'UYU', '$', '.uy', 'Uruguay', 'Americas', 'South America', -33.00, -56.00, '🇺🇾', 1, 'U+1F1FA U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(236, 'Uzbekistan', 'UZB', '860', 'UZ', '998', 'Tashkent', 'UZS', 'лв', '.uz', 'O‘zbekiston', 'Asia', 'Central Asia', 41.00, 64.00, '🇺🇿', 1, 'U+1F1FA U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(237, 'Vanuatu', 'VUT', '548', 'VU', '678', 'Port Vila', 'VUV', 'VT', '.vu', 'Vanuatu', 'Oceania', 'Melanesia', -16.00, 167.00, '🇻🇺', 1, 'U+1F1FB U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(238, 'Vatican City State (Holy See)', 'VAT', '336', 'VA', '379', 'Vatican City', 'EUR', '€', '.va', 'Vaticano', 'Europe', 'Southern Europe', 41.90, 12.45, '🇻🇦', 1, 'U+1F1FB U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(239, 'Venezuela', 'VEN', '862', 'VE', '58', 'Caracas', 'VEF', 'Bs', '.ve', 'Venezuela', 'Americas', 'South America', 8.00, -66.00, '🇻🇪', 1, 'U+1F1FB U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(240, 'Vietnam', 'VNM', '704', 'VN', '84', 'Hanoi', 'VND', '₫', '.vn', 'Việt Nam', 'Asia', 'South-Eastern Asia', 16.17, 107.83, '🇻🇳', 1, 'U+1F1FB U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(241, 'Virgin Islands (British)', 'VGB', '092', 'VG', '+1-284', 'Road Town', 'USD', '$', '.vg', 'British Virgin Islands', 'Americas', 'Caribbean', 18.43, -64.62, '🇻🇬', 1, 'U+1F1FB U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(242, 'Virgin Islands (US)', 'VIR', '850', 'VI', '+1-340', 'Charlotte Amalie', 'USD', '$', '.vi', 'United States Virgin Islands', 'Americas', 'Caribbean', 18.34, -64.93, '🇻🇮', 1, 'U+1F1FB U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(243, 'Wallis And Futuna Islands', 'WLF', '876', 'WF', '681', 'Mata Utu', 'XPF', '₣', '.wf', 'Wallis et Futuna', 'Oceania', 'Polynesia', -13.30, -176.20, '🇼🇫', 1, 'U+1F1FC U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(244, 'Western Sahara', 'ESH', '732', 'EH', '212', 'El-Aaiun', 'MAD', 'MAD', '.eh', 'الصحراء الغربية', 'Africa', 'Northern Africa', 24.50, -13.00, '🇪🇭', 1, 'U+1F1EA U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(245, 'Yemen', 'YEM', '887', 'YE', '967', 'Sanaa', 'YER', '﷼', '.ye', 'اليَمَن', 'Asia', 'Western Asia', 15.00, 48.00, '🇾🇪', 1, 'U+1F1FE U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(246, 'Zambia', 'ZMB', '894', 'ZM', '260', 'Lusaka', 'ZMW', 'ZK', '.zm', 'Zambia', 'Africa', 'Eastern Africa', -15.00, 30.00, '🇿🇲', 1, 'U+1F1FF U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(247, 'Zimbabwe', 'ZWE', '716', 'ZW', '263', 'Harare', 'ZWL', '$', '.zw', 'Zimbabwe', 'Africa', 'Eastern Africa', -20.00, 30.00, '🇿🇼', 1, 'U+1F1FF U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27'),
(248, 'Kosovo', 'XKX', '926', 'XK', '383', 'Pristina', 'EUR', '€', '.xk', 'Republika e Kosovës', 'Europe', 'Eastern Europe', 42.56, 20.34, '🇽🇰', 1, 'U+1F1FD U+1F1F0', '2020-08-15 15:33:50', '2021-08-01 14:37:57'),
(249, 'Curaçao', 'CUW', '531', 'CW', '599', 'Willemstad', 'ANG', 'ƒ', '.cw', 'Curaçao', 'Americas', 'Caribbean', 12.12, -68.93, '🇨🇼', 1, 'U+1F1E8 U+1F1FC', '2020-10-25 14:54:20', '2021-08-01 14:37:27'),
(250, 'Sint Maarten (Dutch part)', 'SXM', '534', 'SX', '1721', 'Philipsburg', 'ANG', 'ƒ', '.sx', 'Sint Maarten', 'Americas', 'Caribbean', 18.03, -63.05, '🇸🇽', 1, 'U+1F1F8 U+1F1FD', '2020-12-05 13:03:39', '2021-08-01 14:37:27');

INSERT INTO `coupons` (`id`, `name`, `type`, `amount`, `limit`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'DIOR100', 1, 100, 1, '2022-10-27', '2022-09-27 10:05:09', '2022-10-01 15:27:45'),
(2, 'TESTCOUPON', 1, 20, 1, '2023-02-18', '2022-09-29 12:41:00', '2022-11-21 14:43:01');

INSERT INTO `coupons_usage_history` (`id`, `coupon_id`, `user_id`, `order_id`, `subtotal_cart`, `subtotal_discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '21', 749999, 749999, '2022-10-01 16:58:42', '2022-10-01 16:58:42');

INSERT INTO `course_categories` (`id`, `parent_id`, `category_name`, `category_excerpt`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Uncategorized', NULL, 'uncategorized', NULL, NULL, '2022-09-19 17:22:34', '2022-09-19 17:22:48');

INSERT INTO `course_lesson_contents` (`id`, `lesson_id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Buy cad from fiverr', 'you can order from fiverr', '2022-09-20 23:00:06', '2022-09-20 23:00:06'),
(2, 2, 'Lesson 1 making site', '<p><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px; background-color: rgb(85, 98, 113);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', '2022-11-08 09:27:18', '2022-11-08 09:27:29'),
(3, 2, 'Lesson 2', '<p><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px; background-color: rgb(85, 98, 113);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', '2022-11-08 09:27:49', '2022-11-08 09:27:49'),
(4, 1, 'lesson 4', '<p><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px; background-color: rgb(85, 98, 113);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-11-08 09:28:45', '2022-11-08 09:28:45');

INSERT INTO `course_lessons` (`id`, `course_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'How to get a CAD', '2022-09-20 22:58:52', '2022-09-20 22:58:52'),
(2, 1, 'How to setup website', '2022-09-20 23:01:48', '2022-09-20 23:01:48');

INSERT INTO `courses` (`id`, `user_id`, `name`, `slug`, `description`, `video_url`, `price`, `category_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 1, 'How To Be a Jeweler', 'how-to-be-a-jeweler', '<p><span style=\"color: rgb(45, 45, 45); font-family: Montserrat, Helvetica, sans-serif; font-size: 18px; text-align: center; background-color: rgba(255, 255, 255, 0.93);\">We teach you how to manufacture hip hop and fashion jewelry such as gold grillz and custom jewelry.</span></p>', NULL, 4999, 1, 118, '2022-11-11 08:03:48', '2022-11-13 07:43:20'),
(2, 1, 'New Course', 'new-course', NULL, NULL, 49999, 1, NULL, '2022-11-11 08:10:17', '2022-11-12 12:30:53');

INSERT INTO `current_rate` (`id`, `base`, `USD`, `unit`, `XAG`, `XAU`, `XPT`, `24k`, `22k`, `18k`, `14k`, `10k`, `silver_gram`, `platinum_gram`, `created_at`, `updated_at`) VALUES
(1, 'USD', '1', 'Troy Ounce', '20.657467539202', '1713.9271455998', '920.00000000003', '55.104037295271', '50.530402199763', '41.328027971453', '32.125653743143', '22.978383552128', '0.66415300360253', '29.578686843139', '2022-10-06 16:14:19', '2022-10-06 16:14:19');

INSERT INTO `material_type_diamonds` (`id`, `material_id`, `material_type_id`, `mm_size`, `xy_size`, `carat_weight`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0.8', NULL, '0.0024 ', NULL, NULL),
(2, 1, 1, '1', NULL, '0.0045', NULL, NULL),
(3, 1, 1, '1.10', NULL, '0.0062', NULL, NULL),
(4, 1, 1, '1.15', NULL, '0.0070', NULL, NULL),
(5, 1, 1, '1.25', NULL, '0.01', NULL, NULL),
(6, 1, 1, '1.3', NULL, '0.01', NULL, NULL),
(7, 1, 1, '1.5', NULL, '0.02', NULL, NULL),
(8, 1, 1, '1.75', NULL, '0.02', NULL, NULL),
(9, 1, 1, '1.8', NULL, '0.02', NULL, NULL),
(10, 1, 1, '2', NULL, '0.03', NULL, NULL),
(11, 1, 1, '2.25', NULL, '0.04', NULL, NULL),
(12, 1, 1, '2.5', NULL, '0.06', NULL, NULL),
(13, 1, 1, '2.75', NULL, '0.08', NULL, NULL),
(14, 1, 1, '3', NULL, '0.11', NULL, NULL),
(15, 1, 1, '3.25', NULL, '0.14', NULL, NULL),
(16, 1, 1, '3.5', NULL, '0.17', NULL, NULL),
(17, 1, 1, '3.75', NULL, '0.21', NULL, NULL),
(18, 1, 1, '4', NULL, '0.25', NULL, NULL),
(19, 1, 1, '4.25', NULL, '0.28', NULL, NULL),
(20, 1, 1, '4.5', NULL, '0.36', NULL, NULL),
(21, 1, 1, '4.75', NULL, '0.44', NULL, NULL),
(22, 1, 1, '5', NULL, '0.46', NULL, NULL),
(23, 1, 1, '5.25', NULL, '0.56', NULL, NULL),
(24, 1, 1, '5.5', NULL, '0.66', NULL, NULL),
(25, 1, 1, '5.75', NULL, '0.76', NULL, NULL),
(26, 1, 1, '6', NULL, '0.84', NULL, NULL),
(27, 1, 1, '6.25', NULL, '0.93', NULL, NULL),
(28, 1, 1, '6.5', NULL, '1.03', NULL, NULL),
(29, 1, 1, '6.75', NULL, '1.24', NULL, NULL),
(30, 1, 1, '7', NULL, '1.28', NULL, NULL),
(31, 1, 1, '7.25', NULL, '1.49', NULL, NULL),
(32, 1, 1, '7.5', NULL, '1.67', NULL, NULL),
(33, 1, 1, '7.75', NULL, '1.75', NULL, NULL),
(34, 1, 1, '8', NULL, '2.04', NULL, NULL),
(35, 1, 1, '8.25', NULL, '2.11', NULL, NULL),
(36, 1, 1, '8.5', NULL, '2.43', NULL, NULL),
(37, 1, 1, '8.75', NULL, '2.55', NULL, NULL),
(38, 1, 1, '9', NULL, '2.75', NULL, NULL),
(39, 1, 1, '9.25', NULL, '3.05', NULL, NULL),
(40, 1, 1, '9.5', NULL, '3.35', NULL, NULL),
(41, 1, 1, '9.75', NULL, '3.61', NULL, NULL),
(42, 1, 1, '10', NULL, '3.87', NULL, NULL),
(43, 1, 1, '10.25', NULL, '4.16', NULL, NULL),
(44, 1, 1, '10.5', NULL, '4.41', NULL, NULL),
(45, 1, 1, '10.75', NULL, '4.57', NULL, NULL),
(46, 1, 1, '11', NULL, '4.91', NULL, NULL),
(47, 1, 1, '11.25', NULL, '5.49', NULL, NULL),
(48, 1, 1, '11.5', NULL, '5.85', NULL, NULL),
(49, 1, 1, '12', NULL, '6.84', NULL, NULL),
(50, 1, 1, '12.25', NULL, '7.26', NULL, NULL),
(51, 1, 1, '12.5', NULL, '7.36', NULL, NULL),
(52, 1, 1, '12.75', NULL, '7.52', NULL, NULL),
(53, 1, 1, '13', NULL, '8.51', NULL, NULL),
(54, 1, 1, '13.5', NULL, '9.53', NULL, NULL),
(55, 1, 1, '14', NULL, '10.49', NULL, NULL),
(56, 1, 1, '15', NULL, '12.89', NULL, NULL),
(57, 1, 1, '16', NULL, '16.06', NULL, NULL),
(58, 1, 3, '0.80', NULL, '0.0024', '2022-10-24 13:34:33', '2022-11-15 13:47:56');

INSERT INTO `material_type_diamonds_clarity` (`id`, `name`, `letters`, `created_at`, `updated_at`) VALUES
(1, 'Flawless', 'F', '2022-10-26 14:31:34', '2022-10-26 14:31:34'),
(2, 'Very Very Slightly Included', 'VVS1, VVS2', '2022-10-26 14:32:12', '2022-10-26 14:32:12'),
(3, 'Very Slightly Included', 'VS1, VS2', '2022-10-26 14:32:52', '2022-10-26 14:32:52');

INSERT INTO `material_type_diamonds_color` (`id`, `name`, `letters`, `created_at`, `updated_at`) VALUES
(1, 'Colorless', 'D, E, F', '2022-10-26 14:34:09', '2022-10-26 14:34:09');

INSERT INTO `material_type_diamonds_prices` (`id`, `user_id`, `diamond_id`, `color`, `clarity`, `natural_price`, `lab_price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 3, '250', '200', '2022-10-26 19:18:40', '2022-10-26 19:18:40'),
(2, 1, 5, 1, 3, '200', '180', '2022-10-26 19:18:40', '2022-10-26 19:18:40'),
(3, 1, 58, 1, 3, '180', '160', '2022-10-26 19:18:40', '2022-10-26 19:18:40');

INSERT INTO `material_types` (`id`, `material_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Round', '2021-11-20 17:20:49', '2021-11-20 17:20:49'),
(2, 1, 'Pear', '2021-11-20 17:20:59', '2021-11-20 17:20:59'),
(3, 1, 'Emerald', '2021-11-20 17:21:08', '2021-11-20 17:21:08'),
(4, 1, 'Heart', '2021-11-20 17:21:12', '2021-11-20 17:21:12'),
(5, 1, 'Oval', '2021-11-20 17:21:23', '2021-11-20 17:21:23'),
(6, 1, 'Princess', '2021-11-20 17:21:29', '2021-11-20 17:21:29'),
(7, 1, 'Baguette', '2021-11-20 17:21:46', '2021-11-20 17:21:46'),
(8, 1, 'Radiant', '2021-11-20 17:22:04', '2021-11-20 17:22:04'),
(9, 1, 'Cushion', '2021-11-20 17:22:22', '2021-11-20 17:22:22'),
(10, 1, 'Marquise', '2021-11-20 17:23:41', '2021-11-20 17:23:41'),
(11, 2, '10K Yellow Gold', '2021-11-20 17:24:37', '2021-11-28 14:53:55'),
(12, 2, '14K Yellow Gold', '2021-11-20 17:24:46', '2021-11-28 14:54:05'),
(13, 2, '18K Yellow Gold', '2021-11-20 17:24:54', '2021-11-28 14:54:12'),
(14, 2, 'Silver 925', '2021-11-20 17:25:07', '2021-11-20 17:25:07');

INSERT INTO `materials` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Diamond', '2021-11-20 17:09:29', '2021-11-20 17:09:29'),
(2, 'Metal', '2021-11-20 17:11:01', '2021-11-20 17:11:01');

INSERT INTO `memberships` (`id`, `name`, `slug`, `thumbnail`, `price`, `price_monthly`, `included_downloads`, `included_downloads_monthly`, `unlimited_downloads`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Starter', 'starter', 75, 49999, 4499, 30, 10, 0, '2022-09-23 16:03:14', '2022-11-04 11:12:44', NULL),
(2, 'Professional', 'professional', 0, 99999, 8999, 90, 30, 0, '2022-09-23 16:14:27', '2022-09-23 16:14:27', NULL),
(3, 'Premium', 'premium-1-1', 80, 149999, 12999, 0, 0, 1, '2022-09-23 16:15:00', '2022-09-23 16:42:30', NULL);

INSERT INTO `messages` (`id`, `user_id`, `conversation_id`, `message`, `is_seen`, `created_at`, `updated_at`) VALUES
(1, 1, 120, NULL, 0, '2022-11-18 20:15:20', '2022-11-18 20:15:20'),
(2, 1, 120, 'eh', 0, '2022-11-18 20:15:23', '2022-11-18 20:15:23'),
(3, 120, 1, NULL, 0, '2022-11-18 20:15:44', '2022-11-18 20:15:44'),
(4, 120, 1, 'it works ?', 0, '2022-11-18 20:15:50', '2022-11-18 20:15:50'),
(5, 120, 1, 'it looks like it works', 0, '2022-11-18 20:16:10', '2022-11-18 20:16:10'),
(6, 1, 120, 'oh shitt', 0, '2022-11-18 20:16:21', '2022-11-18 20:16:21'),
(7, 120, 1, 'yes', 0, '2022-11-18 20:22:14', '2022-11-18 20:22:14'),
(8, 120, 1, 'yes', 0, '2022-11-18 20:22:17', '2022-11-18 20:22:17'),
(9, 2, 120, NULL, 0, '2022-11-18 20:38:47', '2022-11-18 20:38:47'),
(10, 2, 120, 'hey', 0, '2022-11-18 20:38:51', '2022-11-18 20:38:51'),
(11, 120, 2, NULL, 0, '2022-11-18 20:39:06', '2022-11-18 20:39:06'),
(12, 120, 2, 'hi', 0, '2022-11-18 20:41:06', '2022-11-18 20:41:06'),
(13, 132, 1, NULL, 0, '2022-11-18 21:11:26', '2022-11-18 21:11:26'),
(14, 132, 1, 'sdfsdf', 0, '2022-11-18 21:11:32', '2022-11-18 21:11:32'),
(15, 132, 1, 'dfdf', 0, '2022-11-18 21:11:33', '2022-11-18 21:11:33'),
(16, 132, 1, 'dfdf', 0, '2022-11-18 21:11:34', '2022-11-18 21:11:34'),
(17, 132, 1, 'd', 0, '2022-11-18 21:11:34', '2022-11-18 21:11:34'),
(18, 132, 1, 'd', 0, '2022-11-18 21:11:34', '2022-11-18 21:11:34'),
(19, 132, 1, 'd\nd', 0, '2022-11-18 21:11:34', '2022-11-18 21:11:34'),
(20, 132, 1, 'd', 0, '2022-11-18 21:11:35', '2022-11-18 21:11:35'),
(21, 132, 1, 'd', 0, '2022-11-18 21:11:35', '2022-11-18 21:11:35'),
(22, 132, 1, 'dfdf', 0, '2022-11-18 21:11:36', '2022-11-18 21:11:36'),
(23, 132, 1, 'dfdf', 0, '2022-11-18 21:11:37', '2022-11-18 21:11:37'),
(24, 132, 1, 'dfdf', 0, '2022-11-18 21:11:37', '2022-11-18 21:11:37'),
(25, 1, 132, NULL, 0, '2022-11-18 22:22:52', '2022-11-18 22:22:52'),
(26, 120, 2, 'ok', 0, '2022-11-18 22:27:59', '2022-11-18 22:27:59'),
(27, 1, 120, 'hey', 0, '2022-11-19 11:05:05', '2022-11-19 11:05:05'),
(28, 1, 120, 'hey', 0, '2022-11-19 11:05:07', '2022-11-19 11:05:07'),
(29, 1, 120, 'hey', 0, '2022-11-19 11:05:08', '2022-11-19 11:05:08'),
(30, 1, 120, 'hey', 0, '2022-11-19 11:05:09', '2022-11-19 11:05:09'),
(31, 129, 1, NULL, 0, '2022-11-22 19:28:44', '2022-11-22 19:28:44'),
(32, 129, 1, 'dfgdg', 0, '2022-11-22 19:29:01', '2022-11-22 19:29:01'),
(33, 129, 0, NULL, 0, '2022-11-22 19:30:30', '2022-11-22 19:30:30'),
(34, 129, 120, NULL, 0, '2022-11-22 19:31:14', '2022-11-22 19:31:14'),
(35, 1, 129, NULL, 0, '2022-11-24 06:07:34', '2022-11-24 06:07:34');

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_07_19_1658197754_create_attributes_table', 1),
(5, '2022_07_19_1658197771_create_attribute_values_table', 1),
(6, '2022_07_19_1658197791_create_blog_categories_table', 1),
(7, '2022_07_19_1658197811_create_blog_categories_relationships_table', 1),
(8, '2022_07_19_1658197821_create_blog_posts_table', 1),
(9, '2022_07_19_1658197834_create_blog_tags_table', 1),
(10, '2022_07_19_1658197843_create_blog_tags_relationships_table', 1),
(11, '2022_07_19_1658197858_create_failed_jobs_table', 1),
(12, '2022_07_19_1658197871_create_jobs_table', 1),
(13, '2022_07_19_1658197911_create_password_resets_table', 1),
(14, '2022_07_19_1658197930_create_product_tags_table', 1),
(15, '2022_07_19_1658197941_create_product_tags_relationships_table', 1),
(16, '2022_07_19_1658197995_create_products_table', 1),
(17, '2022_07_19_1658198037_create_products_categories_table', 1),
(18, '2022_07_19_1658198074_create_products_variants_table', 1),
(19, '2022_07_19_1658198083_create_shoppingcart_table', 1),
(20, '2022_07_19_1658198092_create_uploads_table', 1),
(21, '2022_07_19_1658198114_create_user_searches_table', 1),
(22, '2022_07_19_1658198125_create_users_table', 1),
(24, '2022_07_24_194116_create_countries_table', 1),
(25, '2022_07_26_024555_create_shipping_options_table', 1),
(26, '2022_07_26_174836_create_products_tax_options_table', 1),
(27, '2022_08_06_024504_create_pages_table', 1),
(40, '2022_07_19_1658197930_create_settings_general_table', 6),
(41, '2022_07_21_134105_create_user_addresses_table', 7),
(44, '2022_06_07_204455_create_orders_table', 8),
(46, '2022_09_09_164147_create_sellers_profiles_table', 9),
(53, '2022_09_15_100333_create_course_lessons_table', 12),
(55, '2022_07_19_1658197791_create_course_categories_table', 13),
(56, '2022_09_15_101354_create_course_lesson_contents_table', 14),
(58, '2022_09_22_030448_create_products_reviews', 16),
(60, '2022_09_23_104546_create_memberships', 17),
(63, '2022_09_27_041112_create_coupons_usage_history', 19),
(64, '2022_09_25_171906_create_coupons', 20),
(65, '2022_09_29_140200_create_steps_table', 21),
(66, '2022_09_30_092326_alter_order_add_coupon_discount', 21),
(67, '2022_09_30_133526_create_step_groups', 22),
(68, '2022_10_01_061422_alter_product_steps', 23),
(69, '2022_10_02_131517_create_current_rate', 23),
(70, '2022_10_02_132238_create_materials', 23),
(71, '2022_10_02_133229_create_material_types', 23),
(72, '2022_10_03_193103_create_product_materials', 24),
(73, '2022_10_06_172000_create_material_type_diamonds', 25),
(74, '2022_10_26_083615_create_material_type_diamonds_prices', 26),
(75, '2022_10_26_095648_create_material_type_diamonds_clarity', 26),
(76, '2022_10_26_095707_create_material_type_diamonds_color', 26),
(88, '2022_10_28_063813_create_service_categories', 27),
(102, '2022_07_19_1658197811_create_service_categories_relationships_table', 28),
(105, '2022_10_28_094559_create_service_tags', 28),
(106, '2022_10_28_110051_create_service_tags_relationships', 28),
(127, '2022_11_08_105556_create_order_courses_table', 38),
(128, '2022_10_28_092154_create_services', 39),
(129, '2022_10_28_092442_create_service_packages', 39),
(130, '2022_11_04_184051_create_orders_services', 40),
(132, '2022_11_06_104207_create_service_requirements_table', 42),
(133, '2022_11_06_104710_create_service_requirement_choices_table', 42),
(134, '2022_11_07_075514_create_order_service_requirements_table', 42),
(135, '2022_11_09_130341_create_order_service_deliveries_table', 43),
(137, '2022_11_10_194805_create_order_service_revision_requests_table', 44),
(138, '2022_09_15_100021_create_courses_table', 45),
(140, '2022_11_12_160812_create_notifications_table', 46),
(141, '2022_09_14_012844_create_sellers_wallet_histories_table', 47),
(142, '2022_11_13_161354_create_seller_payment_methods_table', 48),
(145, '2022_11_13_161553_create_seller_wallet_withdrawals_table', 49),
(146, '2022_11_04_184458_create_service_reviews', 50),
(153, '2022_11_15_045411_create_messages_table', 51),
(154, '2022_06_07_205807_create_order_items_table', 52);

INSERT INTO `notifications` (`id`, `status`, `user_id`, `thumb`, `message`, `link`, `created_at`, `updated_at`) VALUES
(1, 0, 128, 1, 'Please confirm your email', '/verify-email', '2022-11-12 18:03:08', '2022-11-12 18:03:37'),
(2, 1, 129, 0, 'Please verify your email address', '/verify-email', '2022-11-13 20:08:02', '2022-11-13 20:08:12'),
(3, 0, 130, 0, 'Please verify your email address', '/verify-email', '2022-11-17 17:50:02', '2022-11-17 17:50:02'),
(4, 1, 131, 0, 'Please verify your email address', '/verify-email', '2022-11-18 11:27:07', '2022-11-18 11:27:53'),
(5, 1, 132, 0, 'Please verify your email address', '/verify-email', '2022-11-18 21:09:36', '2022-11-18 21:09:58'),
(6, 1, 1, 0, 'You have purchase product 2', '', '2022-11-20 12:07:26', '2022-11-26 19:48:53');

INSERT INTO `order_courses` (`id`, `order_id`, `user_id`, `course_id`, `price`, `payment_intent`, `status_payment`, `status_payment_reason`, `created_at`, `updated_at`) VALUES
(1, '1636A7E933FD7A', 1, 1, 4999, 'pi_3M1uJrDNgrti9hIt1tY77Dut', 2, '', '2022-11-08 11:06:43', '2022-11-08 11:06:45'),
(2, '1636A7F764BC97', 1, 1, 4999, 'pi_3M1uNRDNgrti9hIt0TOlAlDQ', 2, '', '2022-11-08 11:10:30', '2022-11-08 11:10:32'),
(3, '1636A83A380B4A', 1, 1, 4999, 'pi_3M1uekDNgrti9hIt2m9vv3I7', 2, '', '2022-11-08 11:28:19', '2022-11-08 11:28:21');

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_isdigital`, `product_isvirtual`, `product_name`, `product_variant`, `product_variant_name`, `product_digital_download_assets`, `product_thumbnail`, `quantity`, `price`, `status_fulfillment`, `status_tracking`, `created_at`, `updated_at`) VALUES
(1, '1637BDC383B7B3', 34, '1', '0', 'New product test', '18', '6', NULL, '69', 1, 2200, 1, NULL, '2022-11-21 15:14:55', '2022-11-21 15:14:55'),
(2, '1637BDD2BDB19B', 28, '1', '0', 'Plain Shooting Star Bracelet', '0', '', '0', '63', 1, 4999, 1, NULL, '2022-11-21 15:19:00', '2022-11-21 15:19:00'),
(3, '14637D875457517', 31, '0', '0', 'physical Metal Prices', '0', '', NULL, '69', 1, 12999, 1, NULL, '2022-11-22 21:37:19', '2022-11-22 21:37:19'),
(4, '1637E8EBAD2C9B', 30, '1', '1', 'Jagged Edge Cross Pendant', '16', '6', '75', '67', 1, 102499, 1, NULL, '2022-11-23 16:21:28', '2022-11-23 16:21:28'),
(5, '1638217DD37D8A', 28, '1', '0', 'Plain Shooting Star Bracelet', '0', '', '0', '63', 1, 4999, 1, NULL, '2022-11-26 08:43:06', '2022-11-26 08:43:06');

INSERT INTO `order_service_deliveries` (`id`, `order_id`, `message`, `attachment`, `delivered_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'thanks', '141', '0000-00-00 00:00:00', '2022-11-20 09:08:56', '2022-11-20 09:08:56'),
(2, 2, 'here you go', '143', '0000-00-00 00:00:00', '2022-11-20 09:12:50', '2022-11-20 09:12:50'),
(3, 3, 'thanks for order', '144', '0000-00-00 00:00:00', '2022-11-20 09:51:05', '2022-11-20 09:51:05');

INSERT INTO `order_service_requirements` (`id`, `order_id`, `requirement_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '140', '2022-11-20 09:08:16', '2022-11-20 09:08:16'),
(2, 1, 6, 'No', '2022-11-20 09:08:16', '2022-11-20 09:08:16'),
(3, 1, 7, 'yes', '2022-11-20 09:08:16', '2022-11-20 09:08:16'),
(4, 2, 5, '142', '2022-11-20 09:12:08', '2022-11-20 09:12:08'),
(5, 2, 6, 'Yes', '2022-11-20 09:12:08', '2022-11-20 09:12:08'),
(6, 2, 7, 'yes', '2022-11-20 09:12:08', '2022-11-20 09:12:08'),
(7, 3, 6, 'Yes', '2022-11-20 09:50:42', '2022-11-20 09:50:42'),
(8, 3, 7, 'yes', '2022-11-20 09:50:42', '2022-11-20 09:50:42');

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `email`, `shipping_first_name`, `shipping_last_name`, `shipping_address1`, `shipping_address2`, `shipping_city`, `shipping_state`, `shipping_zipcode`, `shipping_country`, `shipping_phonenumber`, `billing_first_name`, `billing_last_name`, `billing_address1`, `billing_address2`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_country`, `billing_phonenumber`, `coupon_code`, `total`, `discount`, `tax_total`, `shipping_total`, `grand_total`, `shipping_option_id`, `tax_option_id`, `payment_intent`, `status_payment`, `status_payment_reason`, `created_at`, `updated_at`) VALUES
(1, 1, '1637BDC383B7B3', 'tevarjohnson@gmail.com', 'Tevar', 'Johnson', '447 s 3rd Ave', NULL, 'Mount Vernon', 'NY', '10550', 'US', '9292880079', 'Tevar', 'Johnson', '447 s 3rd Ave', NULL, 'Mount Vernon', 'NY', '10550', 'US', '9292880079', '', 2200, 0, 0, 0, 2200, 0, 0, 'pi_3M6gOCDNgrti9hIt2uWoiNSY', 2, '', '2022-11-21 15:14:55', '2022-11-21 15:14:58'),
(2, 1, '1637BDD2BDB19B', 'tevarjohnson@gmail.com', 'Tevar', 'Johnson', '447 s 3rd Ave', NULL, 'Mount Vernon', 'NY', '10550', 'US', '9292880079', 'Tevar', 'Johnson', '447 s 3rd Ave', NULL, 'Mount Vernon', 'NY', '10550', 'US', '9292880079', '', 4999, 0, 0, 0, 4999, 0, 0, 'pi_3M6gS8DNgrti9hIt1FwRVEQR', 2, '', '2022-11-21 15:19:00', '2022-11-21 15:19:03'),
(3, 14, '14637D875457517', 'admin@test.com', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'ny', '10550', 'QA', NULL, 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'NY', '10550', 'QA', '9292880079', '', 12999, 0, 1137, 999, 13998, 1, 0, 'pi_3M78pkDNgrti9hIt2ezA6JuO', 2, '', '2022-11-22 21:37:19', '2022-11-22 21:37:21'),
(4, 1, '1637E8EBAD2C9B', 'tevarjohnson@gmail.com', NULL, NULL, '', '', '', '', '', '', '', 'Tevar', 'Johnson', '447 s 3rd Ave', NULL, 'Mount Vernon', 'NY', '10550', 'US', '9292880079', '', 102499, 0, 0, 0, 102499, 0, 0, 'pi_3M7QNLDNgrti9hIt2cX9EuKw', 2, 'card_declined', '2022-11-23 16:21:28', '2022-11-23 16:23:07'),
(5, 1, '1638217DD37D8A', 'tevarjohnson@gmail.com', NULL, NULL, '', '', '', '', '', '', '', 'Tevar', 'Johnson', '447 s 3rd Ave', NULL, 'Mount Vernon', 'NY', '10550', 'US', '9292880079', '', 4999, 0, 0, 0, 4999, 0, 0, 'pi_3M8OefDNgrti9hIt0a2WYeTt', 2, '', '2022-11-26 08:43:06', '2022-11-26 08:43:09');

INSERT INTO `orders_services` (`id`, `status`, `order_id`, `user_id`, `service_id`, `package_name`, `package_description`, `package_price`, `package_delivery_time`, `revisions`, `original_delivery_time`, `extended_delivery_time`, `payment_intent`, `status_payment`, `status_payment_reason`, `created_at`, `updated_at`) VALUES
(1, 5, 'S1637A34B73E75E', 1, 1, 'Pack 2', 'pack 2 details', '10000', 3, '2', '2022-11-23 09:08:16', '0000-00-00 00:00:00', 'pi_3M6EBPDNgrti9hIt28Vlu1FT', 2, '', '2022-11-20 09:07:51', '2022-11-20 09:09:04'),
(2, 5, 'S1637A35AC35528', 1, 1, 'Pack 2', 'pack 2 details', '10000', 3, '2', '2022-11-23 09:12:08', '0000-00-00 00:00:00', 'pi_3M6EFMDNgrti9hIt26UVpE6s', 2, '', '2022-11-20 09:11:56', '2022-11-20 09:13:15'),
(3, 5, 'S2637A3EBB510E0', 2, 1, 'Pack 2', 'pack 2 details', '10000', 3, '2', '2022-11-23 09:50:42', '0000-00-00 00:00:00', 'pi_3M6EqjDNgrti9hIt0nUxhqXW', 2, '', '2022-11-20 09:50:35', '2022-11-20 09:51:10');

INSERT INTO `pages` (`id`, `name`, `author_id`, `slug`, `url`, `post`, `status`, `parent_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms', 1, 'terms', 'terms', '<p style=\"\\&quot;margin-bottom:\" 1.25rem;=\"\" color:=\"\" rgb(72,=\"\" 79,=\"\" 86);=\"\" font-family:=\"\" lato__,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\\\"=\"\"><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">OVERVIEW</span><br>This website is operated by Jewelry CAD Market. Throughout the site, the terms “we”, “us” and “our” refer to Jewelry CAD Market. Jewelry CAD Market offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.<br><br>By visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.<br><br>Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.<br><br>Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.<br><br>Our store is hosted on Shopify Inc. They provide us with the online e-commerce platform that allows us to sell our products and services to you.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 1 – ONLINE STORE TERMS</span><br>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.<br>You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).<br>You must not transmit any worms or viruses or any code of a destructive nature.<br>A breach or violation of any of the Terms will result in an immediate termination of your Services.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 2 – GENERAL CONDITIONS</span><br>We reserve the right to refuse service to anyone for any reason at any time.<br>You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.<br>You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.<br>The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 3 – ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</span><br>We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.<br>This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 4 – MODIFICATIONS TO THE SERVICE AND PRICES</span><br>Prices for our products are subject to change without notice.<br>We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.<br>We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 5 – PRODUCTS OR SERVICES (if applicable)</span><br>Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.<br>We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor’s display of any color will be accurate.<br>We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.<br>We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 6 – ACCURACY OF BILLING AND ACCOUNT INFORMATION</span><br>We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e‑mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.<br><br>You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.<br><br>For more detail, please review our Returns Policy.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 7 – OPTIONAL TOOLS</span><br>We may provide you with access to third-party tools over which we neither monitor nor have any control nor input.<br>You acknowledge and agree that we provide access to such tools ”as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.<br>Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).<br>We may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 8 – THIRD-PARTY LINKS</span><br>Certain content, products and services available via our Service may include materials from third-parties.<br>Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.<br>We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party’s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 9 – USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</span><br>If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, ‘comments’), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.<br>We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service.<br>You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e‑mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 10 – PERSONAL INFORMATION</span><br>Your submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 11 – ERRORS, INACCURACIES AND OMISSIONS</span><br>Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).<br>We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 12 – PROHIBITED USES</span><br>In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 13 – DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</span><br>We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.<br>We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.<br>You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.<br>You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided ‘as is’ and ‘as available’ for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.<br>In no case shall Jewelry CAD Market, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 14 – INDEMNIFICATION</span><br>You agree to indemnify, defend and hold harmless Jewelry CAD Market and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 15 – SEVERABILITY</span><br>In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 16 – TERMINATION</span><br>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.<br>These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.<br>If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 17 – ENTIRE AGREEMENT</span><br>The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.<br>These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).<br>Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 18 – GOVERNING LAW</span><br>These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of United States.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 19 – CHANGES TO TERMS OF SERVICE</span><br>You can review the most current version of the Terms of Service at any time at this page.<br>We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.<br><br><span style=\"\\&quot;font-weight:\" 700;\\\"=\"\">SECTION 20 – CONTACT INFORMATION</span></p><p style=\"\\&quot;margin-bottom:\" 1.25rem;=\"\" color:=\"\" rgb(72,=\"\" 79,=\"\" 86);=\"\" font-family:=\"\" lato__,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\\\"=\"\">Questions about the Terms of Service should be sent to us at support@jewelrycg.com.</p>', 1, 0, NULL, NULL, '2022-08-12 00:14:18', '2022-08-12 00:15:32'),
(2, 'Privacy Policy', 1, 'privacy-policy', 'privacy-policy', '<p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">This Privacy Policy describes how jewelrycadmarket.com (the “Site” or “we”) collects, uses, and discloses your Personal Information when you visit or make a purchase from the Site.</p><h1 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h1-font-size);\\\">COLLECTING PERSONAL INFORMATION</h1><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">When you visit the Site, we collect certain information about your device, your interaction with the Site, and information necessary to process your purchases. We may also collect additional information if you contact us for customer support. In this Privacy Policy, we refer to any information that can uniquely identify an individual (including the information below) as “Personal Information”. See the list below for more information about what Personal Information we collect and why.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Device information</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li><span style=\\\"font-weight: 700;\\\">Examples of Personal Information collected:</span> version of web browser, IP address, time zone, cookie information, what sites or products you view, search terms, and how you interact with the Site.</li><li><span style=\\\"font-weight: 700;\\\">Purpose of collection:</span> to load the Site accurately for you, and to perform analytics on Site usage to optimize our Site.</li><li><span style=\\\"font-weight: 700;\\\">Source of collection:</span> Collected automatically when you access our Site using cookies, log files, web beacons, tags, or pixels <em>[ADD OR SUBTRACT ANY OTHER TRACKING TECHNOLOGIES USED]</em>.</li><li><span style=\\\"font-weight: 700;\\\">Disclosure for a business purpose:</span> shared with our processor Shopify <em>[ADD ANY OTHER VENDORS WITH WHOM YOU SHARE THIS INFORMATION]</em>.</li></ul><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Order information</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li><span style=\\\"font-weight: 700;\\\">Examples of Personal Information collected:</span> name, billing address, shipping address, payment information (including credit card numbers <em>[INSERT ANY OTHER PAYMENT TYPES ACCEPTED]</em>), email address, and phone number.</li><li><span style=\\\"font-weight: 700;\\\">Purpose of collection:</span> to provide products or services to you to fulfill our contract, to process your payment information, arrange for shipping, and provide you with invoices and/or order confirmations, communicate with you, screen our orders for potential risk or fraud, and when in line with the preferences you have shared with us, provide you with information or advertising relating to our products or services.</li><li><span style=\\\"font-weight: 700;\\\">Source of collection:</span> collected from you.</li><li><span style=\\\"font-weight: 700;\\\">Disclosure for a business purpose:</span> shared with our processor Shopify <em>[ADD ANY OTHER VENDORS WITH WHOM YOU SHARE THIS INFORMATION. FOR EXAMPLE, SALES CHANNELS, PAYMENT GATEWAYS, SHIPPING AND FULFILLMENT APPS]</em>.</li></ul><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Customer support information</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li><span style=\\\"font-weight: 700;\\\">Examples of Personal Information collected:</span> <em>[MODIFICATIONS TO THE INFORMATION LISTED ABOVE OR ADDITIONAL INFORMATION AS NEEDED]</em></li><li><span style=\\\"font-weight: 700;\\\">Purpose of collection:</span> to provide customer support.</li><li><span style=\\\"font-weight: 700;\\\">Source of collection:</span> collected from you.</li><li><span style=\\\"font-weight: 700;\\\">Disclosure for a business purpose:</span> <em>[ADD ANY VENDORS USED TO PROVIDE CUSTOMER SUPPORT]</em></li></ul><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">MINORS</h2><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">The Site is not intended for individuals under the age of <em>[INSERT AGE]</em>. We do not intentionally collect Personal Information from children. If you are the parent or guardian and believe your child has provided us with Personal Information, please contact us at the address below to request deletion.</p><h1 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h1-font-size);\\\">SHARING PERSONAL INFORMATION</h1><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">We share your Personal Information with service providers to help us provide our services and fulfill our contracts with you, as described above. For example:</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li>We use Shopify to power our online store. You can read more about how Shopify uses your Personal Information here: <a href=\\\"https://www.shopify.com/legal/privacy\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://www.shopify.com/legal/privacy</a>.</li><li>We may share your Personal Information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to otherwise protect our rights.</li><li><em>[INSERT INFORMATION ABOUT OTHER SERVICE PROVIDERS]</em></li></ul><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><em>[INCLUDE FOLLOWING SECTION IF USING REMARKETING OR TARGETED ADVERTISING]</em></p><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">BEHAVIOURAL ADVERTISING</h2><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">As described above, we use your Personal Information to provide you with targeted advertisements or marketing communications we believe may be of interest to you. For example:</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li>We use Google Analytics to help us understand how our customers use the Site. You can read more about how Google uses your Personal Information here: <a href=\\\"https://policies.google.com/privacy?hl=en\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://policies.google.com/privacy?hl=en</a>.You can also opt-out of Google Analytics here: <a href=\\\"https://tools.google.com/dlpage/gaoptout\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://tools.google.com/dlpage/gaoptout</a>.</li><li>We share information about your use of the Site, your purchases, and your interaction with our ads on other websites with our advertising partners. We collect and share some of this information directly with our advertising partners, and in some cases through the use of cookies or other similar technologies (which you may consent to, depending on your location).</li><li><em>[OTHER ADVERTISING SERVICES USED]</em></li></ul><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">For more information about how targeted advertising works, you can visit the Network Advertising Initiative’s (“NAI”) educational page at <a href=\\\"http://www.networkadvertising.org/understanding-online-advertising/how-does-it-work\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">http://www.networkadvertising.org/understanding-online-advertising/how-does-it-work</a>.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">You can opt out of targeted advertising by:</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li><em>FACEBOOK – </em><a href=\\\"https://www.facebook.com/settings/?tab=ads\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://www.facebook.com/settings/?tab=ads</a></li><li><em>GOOGLE – </em><a href=\\\"https://www.google.com/settings/ads/anonymous\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://www.google.com/settings/ads/anonymous</a></li><li><em>BING – </em><a href=\\\"https://advertise.bingads.microsoft.com/en-us/resources/policies/personalized-ads\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://advertise.bingads.microsoft.com/en-us/resources/policies/personalized-ads</a><em>]</em></li></ul><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Additionally, you can opt out of some of these services by visiting the Digital Advertising Alliance’s opt-out portal at: <a href=\\\"http://optout.aboutads.info/\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">http://optout.aboutads.info/</a>.</p><h1 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h1-font-size);\\\">USING PERSONAL INFORMATION</h1><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">We use your personal Information to provide our services to you, which includes: offering products for sale, processing payments, shipping and fulfillment of your order, and keeping you up to date on new products, services, and offers.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><em>[INCLUDE THE FOLLOWING SECTION IF YOUR STORE IS LOCATED IN OR IF YOU HAVE CUSTOMERS IN EUROPE]</em></p><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">LAWFUL BASIS</h2><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Pursuant to the General Data Protection Regulation (“GDPR”), if you are a resident of the European Economic Area (“EEA”), we process your personal information under the following lawful bases:</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li>Your consent;</li><li>The performance of the contract between you and the Site;</li><li>Compliance with our legal obligations;</li><li>To protect your vital interests;</li><li>To perform a task carried out in the public interest;</li><li>For our legitimate interests, which do not override your fundamental rights and freedoms.</li></ul><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">RETENTION</h2><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">When you place an order through the Site, we will retain your Personal Information for our records unless and until you ask us to erase this information. For more information on your right of erasure, please see the ‘Your rights’ section below.</p><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">AUTOMATIC DECISION-MAKING</h2><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">If you are a resident of the EEA, you have the right to object to processing based solely on automated decision-making (which includes profiling), when that decision-making has a legal effect on you or otherwise significantly affects you.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">We <em>[DO/DO NOT]</em> engage in fully automated decision-making that has a legal or otherwise significant effect using customer data.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Our processor Shopify uses limited automated decision-making to prevent fraud that does not have a legal or otherwise significant effect on you.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Services that include elements of automated decision-making include:</p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li>Temporary denylist of IP addresses associated with repeated failed transactions. This denylist persists for a small number of hours.</li><li>Temporary denylist of credit cards associated with denylisted IP addresses. This denylist persists for a small number of days.</li></ul><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><em>[INCLUDE THE FOLLOWING SECTION ONLY IF YOU SELL PERSONAL INFORMATION, AS DEFINED BY THE CALIFORNIA CONSUMER PRIVACY ACT]</em></p><h1 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h1-font-size);\\\">SELLING PERSONAL INFORMATION</h1><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Our Site sells Personal Information, as defined by the California Consumer Privacy Act of 2018 (“CCPA”).</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><em>[INSERT:</em></p><ul style=\\\"margin: 1.25rem 0px; padding: 0px 0px 0px 1.875rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><li><em>CATEGORIES OF INFORMATION SOLD;</em></li><li><em>INSTRUCTIONS ON HOW TO OPT-OUT OF SALE;</em></li><li><em>WHETHER YOUR BUSINESS SELLS INFORMATION OF MINORS (UNDER 16) AND WHETHER YOU OBTAIN AFFIRMATIVE AUTHORIZATION;</em></li><li><em>IF YOU PROVIDE A FINANCIAL INCENTIVE TO NOT SELL INFORMATION, PROVIDE INFORMATION ABOUT WHAT THAT INCENTIVE IS.]</em></li></ul><h1 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h1-font-size);\\\">YOUR RIGHTS</h1><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><em>[INCLUDE FOLLOWING SECTION IF YOUR STORE IS LOCATED IN OR IF YOU HAVE CUSTOMERS IN EUROPE]</em></p><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">GDPR</h2><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">If you are a resident of the EEA, you have the right to access the Personal Information we hold about you, to port it to a new service, and to ask that your Personal Information be corrected, updated, or erased. If you would like to exercise these rights, please contact us through the contact information below <em>[OR INSERT ALTERNATIVE INSTRUCTIONS FOR SENDING ACCESS, ERASURE, CORRECTION, AND PORTABILITY REQUESTS].</em></p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Your Personal Information will be initially processed in Ireland and then will be transferred outside of Europe for storage and further processing, including to Canada and the United States. For more information on how data transfers comply with the GDPR, see Shopify’s GDPR Whitepaper: <a href=\\\"https://help.shopify.com/en/manual/your-account/privacy/GDPR\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://help.shopify.com/en/manual/your-account/privacy/GDPR</a>.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><em>[INCLUDE FOLLOWING SECTION IF YOUR BUSINESS IS SUBJECT TO THE CALIFORNIA CONSUMER PRIVACY ACT]</em></p><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">CCPA</h2><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">If you are a resident of California, you have the right to access the Personal Information we hold about you (also known as the ‘Right to Know’), to port it to a new service, and to ask that your Personal Information be corrected, updated, or erased. If you would like to exercise these rights, please contact us through the contact information below <em>[OR INSERT ALTERNATIVE INSTRUCTIONS FOR SENDING ACCESS, ERASURE, CORRECTION, AND PORTABILITY REQUESTS]</em>.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">If you would like to designate an authorized agent to submit these requests on your behalf, please contact us at the address below.</p><h1 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h1-font-size);\\\">COOKIES</h1><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">A cookie is a small amount of information that’s downloaded to your computer or device when you visit our Site. We use a number of different cookies, including functional, performance, advertising, and social media or content cookies. Cookies make your browsing experience better by allowing the website to remember your actions and preferences (such as login and region selection). This means you don’t have to re-enter this information each time you return to the site or browse from one page to another. Cookies also provide information on how people use the website, for instance whether it’s their first time visiting or if they are a frequent visitor.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">We use the following cookies to optimize your experience on our Site and to provide our services.</p><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">COOKIES NECESSARY FOR THE FUNCTIONING OF THE STORE</h2><figure class=\\\"wp-block-table\\\" style=\\\"color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><table style=\\\"border-spacing: 0px; vertical-align: middle; width: 1635px; margin: 0px 0px 1.5625rem;\\\"><thead><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><th style=\\\"border: 0px; padding: 0.5rem 0.625rem;\\\">Name</th><th style=\\\"border: 0px; padding: 0.5rem 0.625rem;\\\">Function</th></tr></thead><tbody><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_ab</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with access to admin.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_secure_session_id</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with navigation through a storefront.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>cart</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with shopping cart.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>cart_sig</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with checkout.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>cart_ts</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with checkout.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>checkout_token</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with checkout.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>secret</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with checkout.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>secure_customer_sig</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with customer login.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>storefront_digest</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used in connection with customer login.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_shopify_u</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Used to facilitate updating customer account information.</td></tr></tbody></table></figure><h2 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h2-font-size);\\\">REPORTING AND ANALYTICS</h2><figure class=\\\"wp-block-table\\\" style=\\\"color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><table style=\\\"border-spacing: 0px; vertical-align: middle; width: 1635px; margin: 0px 0px 1.5625rem;\\\"><tbody><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><th style=\\\"border-top: 0px; border-right: 1px solid HSL(var(--neutral-2)); border-bottom: 0px; border-left: 0px; border-image: initial; padding: 0.5rem 0.625rem; background: HSL(var(--neutral-1));\\\">Name</th><th style=\\\"border-top: 0px; border-right: 1px solid HSL(var(--neutral-2)); border-bottom: 0px; border-left: 0px; border-image: initial; padding: 0.5rem 0.625rem; background: HSL(var(--neutral-1));\\\">Function</th></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_tracking_consent</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Tracking preferences.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_landing_page</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Track landing pages</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_orig_referrer</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Track landing pages</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_s</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Shopify analytics.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_shopify_fs</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Shopify analytics.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_shopify_s</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Shopify analytics.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_shopify_sa_p</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Shopify analytics relating to marketing & referrals.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_shopify_sa_t</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Shopify analytics relating to marketing & referrals.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_shopify_y</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Shopify analytics.</td></tr><tr style=\\\"border: 1px solid HSL(var(--neutral-2));\\\"><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\"><em>_y</em></td><td style=\\\"padding: 0.5rem 0.75rem; border-right: 1px solid HSL(var(--neutral-2));\\\">Shopify analytics.</td></tr></tbody></table></figure><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\"><em>[INSERT OTHER COOKIES OR TRACKING TECHNOLOGIES THAT YOU USE]</em></p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">The length of time that a cookie remains on your computer or mobile device depends on whether it is a “persistent” or “session” cookie. Session cookies last until you stop browsing and persistent cookies last until they expire or are deleted. Most of the cookies we use are persistent and will expire between 30 minutes and two years from the date they are downloaded to your device.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">You can control and manage cookies in various ways. Please keep in mind that removing or blocking cookies can negatively impact your user experience and parts of our website may no longer be fully accessible.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Most browsers automatically accept cookies, but you can choose whether or not to accept cookies through your browser controls, often found in your browser’s “Tools” or “Preferences” menu. For more information on how to modify your browser settings or how to block, manage or filter cookies can be found in your browser’s help file or through such sites as <a href=\\\"https://jewelrycadmarket-com.myshopify.com/admin/settings/www.allaboutcookies.org\\\">www.allaboutcookies.org</a>.</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Additionally, please note that blocking cookies may not completely prevent how we share information with third parties such as our advertising partners. To exercise your rights or opt-out of certain uses of your information by these parties, please follow the instructions in the “Behavioural Advertising” section above.</p><h4 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h4-font-size);\\\">DO NOT TRACK</h4><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">Please note that because there is no consistent industry understanding of how to respond to “Do Not Track” signals, we do not alter our data collection and usage practices when we detect such a signal from your browser.</p><h4 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h4-font-size);\\\">CHANGES</h4><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">We may update this Privacy Policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal, or regulatory reasons.</p><h4 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--h4-font-size);\\\">CONTACT</h4><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">For more information about our privacy practices, if you have questions, or if you would like to make a complaint, please contact us by e-mail at [email address] or by mail using the details provided below:</p><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">99 Wall Street, Suite #1994, New York NY 10005, United States</p><h6 style=\\\"margin-bottom: 1.375rem; text-rendering: optimizespeed; word-break: break-word; font-family: Lato__, sans-serif; font-weight: var(--font-weight-bold); color: rgb(72, 79, 86); font-size: var(--body-font-size);\\\"><em>LAST UPDATED: APRIL 24, 2021</em></h6><p style=\\\"margin-bottom: 1.25rem; color: rgb(72, 79, 86); font-family: Lato__, sans-serif; font-size: 16px;\\\">If you are not satisfied with our response to your complaint, you have the right to lodge your complaint with the relevant data protection authority. You can contact your local data protection authority, or our supervisory authority here: <a href=\\\"https://ico.org.uk/make-a-complaint/\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">https://ico.org.uk/make-a-complaint/</a><em>]</em></p>', 1, 0, NULL, NULL, '2022-08-12 00:15:46', '2022-08-12 00:15:46');

INSERT INTO `product_materials` (`id`, `product_id`, `material_id`, `material_type_id`, `material_weight`, `is_diamond`, `diamond_id`, `diamond_amount`, `created_at`, `updated_at`) VALUES
(1, 30, 1, 1, '', 1, 2, '34', '2022-10-25 11:02:57', '2022-10-25 11:02:57'),
(2, 30, 1, 1, '', 1, 5, '122', '2022-10-25 11:02:57', '2022-10-25 11:02:57'),
(4, 30, 1, 3, '', 1, 58, '102', '2022-10-25 11:03:10', '2022-10-25 11:03:10'),
(5, 30, 2, 11, '12', 0, 0, '', '2022-10-25 12:53:31', '2022-10-25 12:53:31'),
(6, 30, 2, 12, '16', 0, 0, '', '2022-10-25 12:53:31', '2022-10-25 12:53:31'),
(7, 30, 2, 13, '34', 0, 0, '', '2022-10-25 12:53:31', '2022-10-25 12:53:31');

INSERT INTO `products` (`id`, `status`, `vendor`, `name`, `description`, `price`, `quantity`, `category`, `slug`, `sku`, `price_discount`, `price_discount_type`, `price_discount_start`, `price_discount_end`, `shipping_type`, `shipping_cost`, `is_digital`, `is_virtual`, `is_trackingquantity`, `is_backorder`, `is_madetoorder`, `tax_option_id`, `product_thumbnail`, `product_images`, `product_3dpreview`, `digital_download_assets`, `digital_download_assets_count`, `digital_download_assets_limit`, `product_attributes`, `product_attribute_values`, `meta_title`, `meta_description`, `step_type`, `step_group`, `steps`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '0.81 TCW Round Diamond Cluster Stud Earrings', NULL, 1999, NULL, '10', '0.81-tcw-round-diamond-cluster-stud-earrings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '18', NULL, '17', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 00:18:01', '2022-08-29 16:22:58', NULL),
(2, 1, 1, '3 TCW Diamond Cluster Earrings', NULL, 1999, NULL, '10', '3-tcw-diamond-cluster-earrings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '19', NULL, '20', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 03:21:48', '2022-08-14 05:29:42', NULL),
(3, 1, 1, '2.87 TCW Diamond Cluster Earrings', NULL, 1999, NULL, '10', '2.87-tcw-diamond-cluster-earrings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '23', NULL, '24', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 03:24:34', '2022-08-29 00:01:29', NULL),
(4, 1, 1, '2 TCW Diamond Multi-Layer Cluster Earrings', NULL, 1999, NULL, '10', '2-tcw-diamond-multi-layer-cluster-earrings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '21', NULL, '22', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 03:26:15', '2022-08-14 05:40:23', NULL),
(5, 1, 1, '4.00 TCW Flower Shaped Earrings', NULL, 1999, NULL, '10', '4.00-tcw-flower-shaped-earrings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '15', NULL, '16', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 03:29:33', '2022-08-13 19:58:56', NULL),
(6, 1, 1, '1.5 Inch Picture Pendant With 1.70mm Diamonds', NULL, 2999, NULL, '6', '1.5-inch-picture-pendant-with-1.70mm-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '13', NULL, '14', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 03:31:22', '2022-08-14 19:36:45', NULL),
(7, 1, 1, '1 Inch Picture Pendant With Up Facing Wings', NULL, 4999, NULL, '6', '1-inch-picture-pendant-with-up-facing-wings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '12', NULL, '11', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 03:41:02', '2022-08-13 19:56:48', NULL),
(8, 1, 1, '1 Inch Picture Pendant Downward Facing Wings', NULL, 4999, NULL, '6', '1-inch-picture-pendant-downward-facing-wings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '9', NULL, '10', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 03:45:26', '2022-08-13 19:55:57', NULL),
(9, 1, 1, '1.5 inch Plain Picture Pendant', NULL, 2499, NULL, '6', '1.5-inch-plain-picture-pendant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '7', NULL, '8', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 23:35:19', '2022-08-13 19:54:22', NULL),
(10, 1, 1, '1 inch Picture Pendant With 2.20 Stones', NULL, 2499, NULL, '6', '1-inch-picture-pendant-with-2.20-stones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '5', NULL, '6', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 23:41:47', '2022-08-13 19:43:39', NULL),
(11, 1, 1, '2.5 Inch V Lone Logo Pendant', NULL, 4999, NULL, '5', '2.5-inch-v-lone-logo-pendant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '3', NULL, '4', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-12 23:47:18', '2022-08-13 18:19:25', NULL),
(12, 1, 1, '1.5 Inch Rolex Bezel Picture Pendant', NULL, 2499, NULL, '6', '1.5-inch-rolex-bezel-picture-pendant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '1', NULL, '2', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-13 00:43:56', '2022-08-29 20:07:01', NULL),
(13, 1, 1, '51 MM Jesus Piece Thorn Crown', NULL, 7499, NULL, '5', '51-mm-jesus-piece-thorn-crown', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '25', NULL, '26', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 05:48:33', '2022-08-14 05:48:33', NULL),
(14, 1, 1, 'Small Heart Pendant With Diamonds', NULL, 1999, NULL, '5', 'small-heart-pendant-with-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '27', NULL, '28', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 05:55:47', '2022-08-14 05:55:47', NULL),
(15, 1, 1, 'Small Wavy Heart Pendant', NULL, 1999, NULL, '5', 'small-wavy-heart-pendant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '29', NULL, '30', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 05:57:18', '2022-08-30 19:41:51', NULL),
(16, 1, 1, '2 Inch Diamond Nail Cross Pendant', NULL, 1999, NULL, '5', '2-inch-diamond-nail-cross-pendant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '32', NULL, '31', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 06:03:40', '2022-08-14 06:03:40', NULL),
(17, 1, 1, '1 inch Heart Key Pendant', NULL, 2999, NULL, '5', '1-inch-heart-key-pendant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '33', NULL, NULL, '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 06:06:49', '2022-08-14 06:06:49', NULL),
(18, 1, 1, 'Single Row Diamond Eternity Ring', NULL, 1999, NULL, '2', 'single-row-diamond-eternity-ring', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '34', '36,37,38,39', '35', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 06:10:15', '2022-08-30 21:07:07', NULL),
(19, 1, 1, 'Solid Classic Cuban Ring', NULL, 2499, NULL, '2', 'solid-classic-cuban-ring', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '41', '42,43', '40', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 06:15:38', '2022-08-14 06:15:38', NULL),
(20, 1, 1, 'Solid Cuban Ring With Diamonds', NULL, 2499, NULL, '2', 'solid-cuban-ring-with-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '44', NULL, '45', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 06:23:46', '2022-08-14 06:23:46', NULL),
(21, 1, 1, 'Solid Cuban Ring With Double Row Of Diamonds', NULL, 2999, NULL, '2', 'solid-cuban-ring-with-double-row-of-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '46', NULL, NULL, '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 06:27:09', '2022-09-03 19:10:52', NULL),
(22, 1, 1, 'Solid Straight Cuban Ring', NULL, 2499, NULL, '4', 'solid-straight-cuban-ring', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '47', NULL, '48', '59', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 06:31:40', '2022-11-12 11:43:39', NULL),
(23, 1, 1, 'Love Eternity Ring Plain', NULL, 1999, NULL, '2', 'love-eternity-ring-plain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '49', '51,52,53', '50', '0', NULL, NULL, '1', '1,2,3', NULL, NULL, 0, 0, '', NULL, '2022-08-14 23:03:40', '2022-09-09 15:35:18', NULL),
(24, 1, 1, 'Love Eternity Ring Full Diamonds', NULL, 2999, NULL, '2', 'love-eternity-ring-full-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '54', '56,57', '55', '0', NULL, NULL, '1', '1,2,3', NULL, NULL, 0, 0, '', NULL, '2022-08-14 23:08:51', '2022-09-08 20:07:33', NULL),
(25, 1, 1, 'Love Eternity Ring Screw Diamonds', NULL, 2999, NULL, '2', 'love-eternity-ring-screw-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '58', NULL, '59', '0', NULL, NULL, '', '', NULL, NULL, 0, 1, NULL, NULL, '2022-08-14 23:36:00', '2022-11-01 16:46:02', NULL),
(26, 1, 1, 'Solid Straight Cuban With Diamonds', NULL, 2999, NULL, '2', 'solid-straight-cuban-with-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '60', NULL, NULL, '0', NULL, NULL, '1', '1,2,3', NULL, NULL, 0, 0, '', NULL, '2022-08-14 23:38:38', '2022-09-08 22:18:28', NULL),
(27, 1, 1, 'Solid Straight Double Row Cuban With Diamonds', NULL, 2800, NULL, '2', 'solid-straight-double-row-cuban-with-diamonds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '61', NULL, '62', '72', NULL, NULL, '', '', NULL, NULL, 0, 1, NULL, NULL, '2022-08-14 23:40:06', '2022-11-08 17:45:21', NULL),
(28, 1, 1, 'Plain Shooting Star Bracelet', NULL, 4999, NULL, '3', 'plain-shooting-star-bracelet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '63', NULL, '64', '0', NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-08-14 23:46:13', '2022-08-14 23:46:13', NULL),
(29, 1, 1, 'Shooting Star Bracelet', NULL, 17699, NULL, '3', 'shooting-star-bracelet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '65', NULL, '66', '64', NULL, NULL, '1', '1,2,3', NULL, 'shhotting descrtion', 0, 1, NULL, NULL, '2022-08-14 23:47:12', '2022-11-12 11:46:22', NULL),
(30, 1, 1, 'Jagged Edge Cross Pendant', NULL, 1999, NULL, '5', 'jagged-edge-cross-pendant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, '67', '69,70,71', '68', '121', NULL, NULL, '1', '1,2', 'Jewelry CG | Jewelry 3D Models | Jewelry CAD Files', 'page title descriptio Jagged Edge Cross Pendant', 0, 1, NULL, NULL, '2022-08-14 23:52:55', '2022-11-19 18:53:07', NULL),
(31, 1, 1, 'physical Metal Prices', NULL, 12999, NULL, '1', 'metal-prices2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, '69', NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 1, NULL, NULL, '2022-08-28 19:07:54', '2022-11-26 19:45:24', NULL),
(32, 1, 120, 'Metal Prices', 'test', 310, NULL, '2', 'metal-prices', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '61', NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, 0, 1, NULL, NULL, '2022-09-11 20:15:47', '2022-11-26 19:45:23', NULL),
(33, 2, 120, 'my new product', 'my description', 12999, NULL, '5', 'my-new-product', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '71', NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, '', NULL, '2022-09-14 12:22:39', '2022-11-26 19:49:59', '2022-11-26 19:49:59'),
(34, 1, 1, 'New product test', 'description', 4999, NULL, '2', 'new-product-test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, '69', NULL, NULL, '0', NULL, NULL, '1', '1,2', NULL, NULL, 2, 1, '1', NULL, '2022-11-10 19:46:01', '2022-11-26 19:49:56', '2022-11-26 19:49:56');

INSERT INTO `products_categories` (`id`, `parent_id`, `category_name`, `slug`, `category_excerpt`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, '2022-08-12 00:06:29', '2022-08-12 00:06:55'),
(2, NULL, 'Rings', 'rings', NULL, NULL, NULL, '2022-08-12 00:06:46', '2022-08-12 00:06:46'),
(3, NULL, 'Bracelets', 'bracelets', NULL, NULL, NULL, '2022-08-12 00:06:59', '2022-08-12 00:06:59'),
(4, 2, 'Cuban Rings', 'cuban-rings', NULL, NULL, NULL, '2022-08-12 00:07:12', '2022-08-12 00:07:12'),
(5, NULL, 'Pendants', 'pendants', NULL, NULL, NULL, '2022-08-12 00:07:22', '2022-08-12 00:07:22'),
(6, 5, 'Picture Pendants', 'picture-pendants', NULL, NULL, NULL, '2022-08-12 00:07:28', '2022-08-12 00:07:28'),
(7, 5, 'Religious Pendants', 'religious-pendants', NULL, NULL, NULL, '2022-08-12 00:07:40', '2022-08-12 00:07:40'),
(8, 5, 'Emoji Pendants', 'emoji-pendants', NULL, NULL, NULL, '2022-08-12 00:08:39', '2022-08-12 00:08:39'),
(9, 5, 'Alphanumeric Pendants', 'alphanumeric-pendants', NULL, NULL, NULL, '2022-08-12 00:08:49', '2022-08-12 00:08:49'),
(10, NULL, 'Earrings', 'earrings', NULL, NULL, NULL, '2022-08-12 00:18:10', '2022-08-12 00:18:10');

INSERT INTO `products_reviews` (`id`, `product_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 30, 1, 5, 'love it', '2022-09-22 20:58:38', '2022-11-01 13:10:07', NULL);

INSERT INTO `products_tax_options` (`id`, `name`, `type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'General', 'percent', 875, '2022-08-29 22:56:25', '2022-08-29 22:56:25');

INSERT INTO `products_variants` (`id`, `product_id`, `variant_name`, `variant_attribute_value`, `variant_price`, `variant_sku`, `variant_thumbnail`, `variant_quantity`, `variant_assets`, `digital_download_assets`, `digital_download_assets_count`, `digital_download_assets_limit`, `price_discount`, `price_discount_type`, `price_discount_start`, `price_discount_end`, `shipping_type`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 24, '6', '1', 1000000, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 20:07:33', '2022-09-08 21:03:46'),
(2, 24, '7', '2', 1000000, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 20:07:33', '2022-09-08 21:03:46'),
(3, 24, '8', '3', 99999, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 20:07:33', '2022-09-08 20:07:33'),
(4, 26, '6', '1', 9999999, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 22:18:28', '2022-09-08 22:18:28'),
(5, 26, '7', '2', 949494, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 22:18:28', '2022-09-08 22:18:28'),
(6, 26, '8', '3', 1999, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 22:18:28', '2022-09-08 22:18:28'),
(7, 23, '6', '1', 299, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 15:35:18', '2022-09-09 15:35:18'),
(8, 23, '7', '2', 499, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 15:35:18', '2022-09-09 15:35:18'),
(9, 23, '8', '3', 1299, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09 15:35:18', '2022-11-12 11:27:56'),
(10, 29, '6', '1', 17699, NULL, NULL, 1, NULL, '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 03:09:20', '2022-11-12 13:32:13'),
(11, 29, '7', '2', 17699, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 03:09:20', '2022-09-11 03:09:20'),
(12, 29, '8', '3', 17699, NULL, '67', 1, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 03:09:20', '2022-11-12 12:17:11'),
(15, 32, '6', '1', 2200, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 00:43:12', '2022-10-06 15:56:44'),
(16, 30, '6', '1', 102499, NULL, NULL, 1, NULL, '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 09:21:41', '2022-11-23 16:14:06'),
(17, 30, '7', '2', 1999, NULL, NULL, 1, NULL, '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 09:21:41', '2022-11-12 12:54:33'),
(18, 34, '6', '1', 2200, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 18:17:29', '2022-11-20 18:17:29'),
(19, 34, '7', '2', 2700, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-20 18:17:29', '2022-11-20 18:17:29');

INSERT INTO `seller_payment_methods` (`id`, `name`, `question_1`, `question_2`, `question_3`, `question_4`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'Paypal Email?', NULL, NULL, NULL, '2022-11-13 20:35:02', '2022-11-13 20:35:02'),
(2, 'Check', 'Address', 'City', 'State', 'Zipcode', '2022-11-13 20:36:04', '2022-11-13 20:36:04');

INSERT INTO `seller_wallet_withdrawals` (`id`, `user_id`, `amount`, `status`, `payment_method_name`, `q1`, `q2`, `q3`, `q4`, `created_at`, `updated_at`) VALUES
(1, 120, 3000, 2, 'Paypal', 'fealty-morsel-0x@icloud.com', NULL, NULL, NULL, '2022-11-14 15:29:49', '2022-11-14 15:30:01'),
(2, 120, 4000, 2, 'Paypal', 'fealty-morsel-0x@icloud.com', NULL, NULL, NULL, '2022-11-14 15:30:13', '2022-11-15 09:28:50');

INSERT INTO `sellers_profile` (`id`, `user_id`, `wallet`, `sales_commission_rate`, `slogan`, `about`, `created_at`, `updated_at`) VALUES
(1, 119, 0, NULL, NULL, 'test', '2022-09-09 22:19:29', '2022-09-09 22:19:29'),
(2, 120, 39960, 90, NULL, 'hey', '2022-09-10 19:37:38', '2022-11-21 15:13:46'),
(3, 14, 0, 90, 'hey', 'hey', '2022-11-02 14:08:46', '2022-11-02 14:08:46'),
(4, 125, 0, NULL, NULL, 'the boss', '2022-11-11 16:01:36', '2022-11-11 16:01:36');

INSERT INTO `sellers_wallet_histories` (`id`, `user_id`, `amount`, `order_id`, `sale_type`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 120, 9000, 1, 1, 'add', 0, '2022-11-20 09:06:17', '2022-11-20 09:06:17'),
(2, 120, 9000, 1, 1, 'add', 0, '2022-11-20 09:07:53', '2022-11-20 09:07:53'),
(3, 120, 9000, 2, 1, 'add', 0, '2022-11-20 09:11:58', '2022-11-20 09:11:58'),
(4, 120, 9000, 3, 1, 'add', 0, '2022-11-20 09:50:37', '2022-11-20 09:50:37'),
(5, 120, 1980, 3, 0, 'add', 0, '2022-11-21 09:52:08', '2022-11-21 09:52:08'),
(6, 120, 1980, 6, 0, 'add', 1, '2022-11-21 15:13:46', '2022-11-21 15:13:46');

INSERT INTO `service_categories` (`id`, `parent_id`, `category_name`, `category_excerpt`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Graphic Design', NULL, 'graphic-design', NULL, NULL, '2022-11-01 19:07:06', '2022-11-01 19:07:06'),
(2, 1, 'Jewelry Design', NULL, 'jewelry-design', NULL, NULL, '2022-11-01 19:07:16', '2022-11-01 19:07:16');

INSERT INTO `service_categories_relationships` (`id`, `id_post`, `id_category`, `created_at`, `updated_at`) VALUES
(54, 3, 1, '2022-11-09 15:16:09', '2022-11-09 15:16:09'),
(64, 2, 1, '2022-11-13 07:06:30', '2022-11-13 07:06:30'),
(78, 1, 1, '2022-11-20 09:12:17', '2022-11-20 09:12:17');

INSERT INTO `service_packages` (`id`, `service_id`, `name`, `description`, `price`, `revisions`, `delivery_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Pack 1', 'pack 1 details', '5000', '1', 5, '2022-11-08 13:24:02', '2022-11-20 09:12:19', NULL),
(2, 1, 'Pack 2', 'pack 2 details', '10000', '2', 3, '2022-11-08 13:24:02', '2022-11-20 09:12:19', NULL),
(3, 1, 'Pack 3', 'pack 3 details', '15000', '3', 2, '2022-11-08 13:24:02', '2022-11-20 09:12:19', NULL),
(13, 2, 'Basic', 'Basic pack details', '5000', '2', 4, '2022-11-08 20:58:15', '2022-11-13 07:05:59', NULL),
(14, 3, 'basic', 'basic', '10', '6', 45, '2022-11-09 15:16:29', '2022-11-09 15:16:29', NULL);

INSERT INTO `service_requirement_choices` (`id`, `requirement_id`, `choice`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'Yes', '2022-11-09 18:56:47', '2022-11-20 09:12:22', NULL),
(2, 6, 'No', '2022-11-09 18:56:47', '2022-11-20 09:12:22', NULL),
(3, 6, 'Maybe', '2022-11-09 18:59:18', '2022-11-20 09:12:22', NULL),
(4, 4, 'No', '2022-11-09 18:59:18', '2022-11-09 18:59:36', '2022-11-09 18:59:36');

INSERT INTO `service_requirements` (`id`, `service_id`, `type`, `question`, `required`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Send me a picture', 0, '2022-11-09 18:56:47', '2022-11-09 18:59:18', '2022-11-09 18:59:18'),
(2, 1, 2, 'You love Elon?', 0, '2022-11-09 18:56:47', '2022-11-09 18:59:18', '2022-11-09 18:59:18'),
(3, 1, 1, 'Send me a picture', 0, '2022-11-09 18:59:18', '2022-11-09 18:59:36', '2022-11-09 18:59:36'),
(4, 1, 2, 'You love Elon?', 0, '2022-11-09 18:59:18', '2022-11-09 18:59:36', '2022-11-09 18:59:36'),
(5, 1, 1, 'Send me a picture', 1, '2022-11-09 18:59:36', '2022-11-20 09:12:22', '2022-11-20 09:12:22'),
(6, 1, 2, 'You love Elon?', 1, '2022-11-09 18:59:36', '2022-11-20 09:12:22', NULL),
(7, 1, 0, 'You like Twitter?', 0, '2022-11-09 18:59:36', '2022-11-20 09:12:22', NULL);

INSERT INTO `service_reviews` (`id`, `order_id`, `rating`, `review`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 'thanks, i really loved it', '2022-11-20 09:09:17', '2022-11-20 09:09:17', NULL),
(2, 2, 3, 'thanks bro love it', '2022-11-20 09:13:23', '2022-11-20 09:13:23', NULL),
(3, 2, 5, 'great', '2022-11-20 09:14:58', '2022-11-20 09:14:58', NULL),
(4, 3, 5, 'omg i love it', '2022-11-20 09:51:14', '2022-11-20 09:51:14', NULL);

INSERT INTO `service_tags` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'cad', 'cad', NULL, NULL, NULL, '2022-11-04 18:39:53', '2022-11-04 18:39:53'),
(2, 'jewelry', 'jewelry', NULL, NULL, NULL, '2022-11-04 18:44:52', '2022-11-04 18:44:52'),
(3, 'avatar', 'avatar', NULL, NULL, NULL, '2022-11-09 15:16:09', '2022-11-09 15:16:09');

INSERT INTO `service_tags_relationships` (`id`, `id_service`, `id_tag`, `created_at`, `updated_at`) VALUES
(50, 3, 3, '2022-11-09 15:16:09', '2022-11-09 15:16:09'),
(60, 2, 2, '2022-11-13 07:06:30', '2022-11-13 07:06:30'),
(74, 1, 1, '2022-11-20 09:12:17', '2022-11-20 09:12:17');

INSERT INTO `services` (`id`, `status`, `user_id`, `name`, `slug`, `content`, `thumbnail`, `gallery`, `reviewer_notes`, `reviewer_notes_private`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 120, 'I will design your jewelry', 'i-will-design-your-jewelry', '<span data-tbw=\"\">I will design your jewelry,&nbsp;I will design your jewelry</span>', '109', ',110', NULL, NULL, NULL, '2022-11-08 13:23:21', '2022-11-13 07:55:29', NULL),
(2, 1, 120, 'Service with no questions', 'service-with-no-questions', '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; text-align: justify; widows: 2; text-decoration-thickness: initial;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; text-align: justify; widows: 2; text-decoration-thickness: initial;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '111', ',112', NULL, NULL, NULL, '2022-11-08 15:51:09', '2022-11-13 07:06:30', NULL),
(3, 1, 14, 'Avatar', 'avatar', 'handsome avatar', '114', ',115,116,117', NULL, NULL, NULL, '2022-11-09 15:16:09', '2022-11-09 15:20:01', NULL);

INSERT INTO `settings_general` (`sitename`, `meta_title`, `meta_description`, `twitter`, `facebook`, `instagram`, `youtube`, `stripe_key`, `stripe_secret`, `mail_mailer`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_from_address`, `mail_from_name`, `recaptcha_site_key`, `recaptcha_secret_key`, `guest_checkout`, `default_sales_commission_rate`, `created_at`, `updated_at`) VALUES
('Jewelry CG', 'Jewelry CG | Jewelry 3D Models | Jewelry CAD Files', '3D model marketplace for jewelry and a community for jewelry designing / jewelry creating. Download CADs or get a custom design today.', 'jewelrycg', NULL, 'jewelrycgmodels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-11-21 06:49:46', '2022-11-21 06:49:46');

INSERT INTO `shipping_options` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Ground Shipping', '3-5 Days Delivery', '999', '2022-08-14 01:57:25', '2022-08-14 01:57:25'),
(2, 'Express Delivery', 'The Next Day!', '2999', '2022-11-11 18:14:10', '2022-11-11 18:14:10');

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('1', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"8d87860f768adca0617d79261c6595ab\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"8d87860f768adca0617d79261c6595ab\";s:2:\"id\";i:30;s:3:\"qty\";i:1;s:4:\"name\";s:25:\"Jagged Edge Cross Pendant\";s:5:\"price\";d:7499.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:8:\"wishlist\";}s:32:\"8e5a44b7e8158839b0203ed7b9f2144b\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"8e5a44b7e8158839b0203ed7b9f2144b\";s:2:\"id\";i:28;s:3:\"qty\";i:1;s:4:\"name\";s:28:\"Plain Shooting Star Bracelet\";s:5:\"price\";d:49.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:8:\"wishlist\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-02 21:47:20', '2022-11-12 19:26:52'),
('120', 'default', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"8f2384ceccea98518c879daa38cb38ea\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"8f2384ceccea98518c879daa38cb38ea\";s:2:\"id\";i:29;s:3:\"qty\";i:1;s:4:\"name\";s:22:\"Shooting Star Bracelet\";s:5:\"price\";d:176.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:4:{s:2:\"id\";i:11;s:23:\"variant_attribute_value\";s:1:\"2\";s:4:\"name\";s:1:\"7\";s:5:\"price\";d:176.99;}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:7:\"default\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-09 18:51:08', '2022-11-19 16:28:06'),
('120', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-14 18:52:17', '2022-11-14 18:52:17'),
('122', 'default', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"edc360f903894bcb624e5aa47bed700a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"edc360f903894bcb624e5aa47bed700a\";s:2:\"id\";i:30;s:3:\"qty\";i:1;s:4:\"name\";s:25:\"Jagged Edge Cross Pendant\";s:5:\"price\";d:7499.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:4:{s:2:\"id\";i:13;s:23:\"variant_attribute_value\";s:1:\"1\";s:4:\"name\";s:1:\"6\";s:5:\"price\";d:7499.99;}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:7:\"default\";}s:32:\"18d6934483b994fb9943b43b7d7646bf\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"18d6934483b994fb9943b43b7d7646bf\";s:2:\"id\";i:8;s:3:\"qty\";i:1;s:4:\"name\";s:44:\"1 Inch Picture Pendant Downward Facing Wings\";s:5:\"price\";d:49.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:7:\"default\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-12 13:19:45', '2022-10-20 02:41:42'),
('124', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-02 09:15:58', '2022-11-02 09:15:58'),
('125', 'default', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";s:2:\"id\";i:31;s:3:\"qty\";i:1;s:4:\"name\";s:21:\"physical Metal Prices\";s:5:\"price\";d:129.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:7:\"default\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-11 18:14:22', '2022-11-11 20:30:39'),
('129', 'default', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";s:2:\"id\";i:9;s:3:\"qty\";i:1;s:4:\"name\";s:30:\"1.5 inch Plain Picture Pendant\";s:5:\"price\";d:24.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:7:\"default\";}s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";s:2:\"id\";i:31;s:3:\"qty\";i:1;s:4:\"name\";s:21:\"physical Metal Prices\";s:5:\"price\";d:129.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:7:\"default\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-13 20:08:26', '2022-11-14 21:10:28'),
('129', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";s:2:\"id\";i:9;s:3:\"qty\";i:1;s:4:\"name\";s:30:\"1.5 inch Plain Picture Pendant\";s:5:\"price\";d:24.99;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:8:\"wishlist\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-13 20:13:12', '2022-11-13 20:13:12'),
('133', 'default', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"bf93e0040190e2a2c89570e5152c7ce1\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":11:{s:5:\"rowId\";s:32:\"bf93e0040190e2a2c89570e5152c7ce1\";s:2:\"id\";i:27;s:3:\"qty\";i:1;s:4:\"name\";s:45:\"Solid Straight Double Row Cuban With Diamonds\";s:5:\"price\";i:28;s:6:\"weight\";d:0;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:7:\"taxRate\";i:0;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;s:8:\"instance\";s:7:\"default\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 05:35:59', '2022-11-21 05:43:21');

INSERT INTO `step_groups` (`id`, `name`, `description`, `steps`, `created_at`, `updated_at`) VALUES
(1, 'Gold, No Assembly, No Diamonds', NULL, '1,2,3,4,5,10', '2022-09-30 21:33:39', '2022-09-30 21:33:39');

INSERT INTO `steps` (`id`, `name`, `description`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Design', 'Purchase a 3D model or have a custom one created.', NULL, '2022-04-10 22:18:33', '2022-04-14 00:46:53'),
(2, '3D Printing', 'This process turns your 3d model into a wax model which will be used to make a mold for casting.', 'https://districtties.com/blog/what-is-a-cad-how-is-it-used-to-create-jewelry', '2022-04-10 22:18:48', '2022-04-14 00:47:47'),
(3, 'Casting', NULL, NULL, '2022-04-12 20:41:39', '2022-04-12 20:41:39'),
(4, 'Sprues Removal', NULL, NULL, '2022-04-12 20:41:56', '2022-04-12 20:42:37'),
(5, 'Tumbling', 'Tumble finishing, also known as tumbling or rumbling, is a technique for smoothing and polishing a rough surface on relatively small parts.', NULL, '2022-04-12 20:42:47', '2022-04-13 15:40:00'),
(6, 'Stone Setting', NULL, NULL, '2022-04-12 20:43:04', '2022-04-12 20:43:04'),
(7, 'Enamel', NULL, NULL, '2022-04-12 20:43:08', '2022-04-12 20:43:08'),
(8, 'Soldering', NULL, NULL, '2022-04-12 20:43:24', '2022-04-12 20:43:24'),
(9, 'Pre-Polishing', NULL, NULL, '2022-04-12 20:43:58', '2022-04-12 20:43:58'),
(10, 'Polishing', NULL, NULL, '2022-04-12 20:44:11', '2022-04-12 20:44:11'),
(11, 'Assembly', NULL, NULL, '2022-04-12 20:44:20', '2022-04-12 20:44:20');

INSERT INTO `uploads` (`id`, `user_id`, `file_original_name`, `file_name`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1.5inch rolex', 's7y1Dt54Be8ygP2gfvNWWnn6BnZIbSJbcpSXRRuj.png', 89527, 'png', 'image', '2022-08-13 17:35:49', '2022-08-13 17:35:49', NULL),
(2, 1, 'Rolex Style Flat Picture', 'NzPO1x0RLi8yofco4mHZepXudjkgz5CTqoh1Eu42.glb', 197908, 'glb', 'cad', '2022-08-13 17:36:00', '2022-08-13 17:36:00', NULL),
(3, 1, 'vlone cover', 'navdCxcrCkC8fYi5d6SuXigZMZYz8odHdpiPSaWs.png', 257710, 'png', 'image', '2022-08-13 18:19:01', '2022-08-13 18:19:01', NULL),
(4, 1, 'V with diamonds', 'c2FhI5CgZMymKc03nLU1zlWyvIVZTiJr1QTMYhfW.glb', 1116536, 'glb', 'cad', '2022-08-13 18:19:11', '2022-08-13 18:19:11', NULL),
(5, 1, '1inch Memory Pendant With 2.20 Stonescover new', 'LhXPY4dosqXQ5k1MV93ULdtcSeuNO5AytrHCIAMY.png', 171497, 'png', 'image', '2022-08-13 19:43:23', '2022-08-13 19:43:23', NULL),
(6, 1, 'memory_pendant', 'OeLG2mJTTCuzU028uci1zJTNVMqU3XJE85UJ6iki.glb', 246568, 'glb', 'cad', '2022-08-13 19:43:35', '2022-08-13 19:43:35', NULL),
(7, 1, '1.5 inch Plain Picture Pendant cover', 'zWHVApEREzjThfQn7GTznEjH9XRK5rN51H4nHzCF.png', 50385, 'png', 'image', '2022-08-13 19:54:00', '2022-08-13 19:54:00', NULL),
(8, 1, '1.5 inch Plain Picture Pendant', 'iSHAmFNcEGrNuzqwOZ7taDfF6VmBIRy8OmSILAgA.glb', 217792, 'glb', 'cad', '2022-08-13 19:54:17', '2022-08-13 19:54:17', NULL),
(9, 1, '1 Inch Picture Pendant With Wings cover 2', '3hP9sbNOCbKHMC4kke3zmUoZG6Yj39Tyr2YVbhS1.png', 231342, 'png', 'image', '2022-08-13 19:55:40', '2022-08-13 19:55:40', NULL),
(10, 1, '1 Inch Picture Pendant With Wings', 'dvq1x14xFuR61rdjoC8R7tc4oyDX355A33TM9jZY.glb', 2384928, 'glb', 'cad', '2022-08-13 19:55:53', '2022-08-13 19:55:53', NULL),
(11, 1, '1 Inch Picture Pendant With Up Facing Wings', 'OLd5czCUkaDYy77WkVZMr67trufgsZkCyOwyzPMA.glb', 1284756, 'glb', 'cad', '2022-08-13 19:56:31', '2022-08-13 19:56:31', NULL),
(12, 1, '1 Inch Picture Pendant With Up Facing Wings cover', 'fOnhojJX0F1s2qizYj7kn4tpPB9xHfr4Nowi9ZzM.png', 89418, 'png', 'image', '2022-08-13 19:56:44', '2022-08-13 19:56:44', NULL),
(13, 1, '1.5inch Memory Pendant With 1.70mm Diamonds', 'NhqIaWM03mc1rLcT4keLmcorTIrqvJTQVvf3KTWT.png', 135004, 'png', 'image', '2022-08-13 19:57:41', '2022-08-13 19:57:41', NULL),
(14, 1, '15inch Memory Pendant With 170mm Diamonds Gold N734', 'mtNGiCgzYFjaivTSL47KCegS8dFL8jBxfUx3Ra4p.glb', 1084392, 'glb', 'cad', '2022-08-13 19:57:56', '2022-08-13 19:57:56', NULL),
(15, 1, '4.00 TCW Flower Shaped Earrings', 'VXGhbPs7Nmre3ZbwC89XozDo78HRetlrOdwI5nKC.png', 1171681, 'png', 'image', '2022-08-13 19:58:40', '2022-08-13 19:58:40', NULL),
(16, 1, '400 TCW Flower Shaped Earrings', '31uEvv9ARYabJ7gwMBmxLPpo3xOETX4yX7gqiyq5.glb', 1094372, 'glb', 'cad', '2022-08-13 19:58:52', '2022-08-13 19:58:52', NULL),
(17, 1, '0.81 TCW Round Diamond Cluster Stud Earrings', 'vb5y09fSbjlvhLA3a0Go9K87MtiZmyzml2GnSRVX.glb', 2816560, 'glb', 'cad', '2022-08-14 05:23:17', '2022-08-14 05:23:17', NULL),
(18, 1, '0.84 TCW Round Diamond Cluster Stud Earrings white cover', 'uVkTYzE1JlKuSvECEnbVHzBglLScIwv7ivnAfBqO.png', 781767, 'png', 'image', '2022-08-14 05:23:33', '2022-08-14 05:23:33', NULL),
(19, 1, '3 TCW Diamond Cluster Earrings Cover', 'RIERKOEp6OqKuD7fFCc983reoOJYC2okhpMqEMd3.png', 947968, 'png', 'image', '2022-08-14 05:29:27', '2022-08-14 05:29:27', NULL),
(20, 1, '3 TCW Diamond Cluster Earrings preview', 'qg0XFnA4y6ai4W3f4cnJfkYmGO5But4Iqct4JXFJ.glb', 1295400, 'glb', 'cad', '2022-08-14 05:29:34', '2022-08-14 05:29:34', NULL),
(21, 1, '2 TCW Diamond Multi-Layer Cluster Earrings cover', 'QWfyNe5jpnW8KqzWpoFDwolx5fvlhktg5VR1dHrE.png', 1082568, 'png', 'image', '2022-08-14 05:40:05', '2022-08-14 05:40:05', NULL),
(22, 1, '2 TCW Diamond Multi-Layer Cluster Earrings preview', 'cllwGJ0YtjqdgJc9MAVpbKsvXGpW381WrGCol4NM.glb', 1079552, 'glb', 'cad', '2022-08-14 05:40:16', '2022-08-14 05:40:16', NULL),
(23, 1, '2.87 TCW Diamond Cluster Earrings cover', 'MD8VCXL6AS5FJ5xPgoUwcXd1vEnCX0TYl2d2MG2K.png', 787997, 'png', 'image', '2022-08-14 05:40:57', '2022-08-14 05:40:57', NULL),
(24, 1, '287 TCW Diamond Cluster Earrings preview', 'oAiATFWoZwskE0TD4w4PQThFGcm2ryejQTVYDK0L.glb', 303460, 'glb', 'cad', '2022-08-14 05:41:07', '2022-08-14 05:41:07', NULL),
(25, 1, '51 MM Jesus Piece Thorn Crown', 'CTKaUYq01ZCBkXFZnbmYSuLpG4zApAeTYJ0e6Sl5.png', 1365436, 'png', 'image', '2022-08-14 05:47:53', '2022-08-14 05:47:53', NULL),
(26, 1, 'compress 51 MM Jesus Piece Thorn Crown With Diamonds', 'VgWt2PWX1NenNhACXim5smMRXA4WAjm5dMZwRmbl.glb', 11501988, 'glb', 'cad', '2022-08-14 05:48:19', '2022-08-14 05:48:19', NULL),
(27, 1, 'Small Heart Pendant With Diamonds', 'z0lx9jIdIrvgZIMSV1ly2PKRVJzLoqd7MblK9sqq.png', 193479, 'png', 'image', '2022-08-14 05:55:06', '2022-08-14 05:55:06', NULL),
(28, 1, 'Small Heart Pendant With Diamonds', 'MZtDzhbc2LmXNxCZjeiiDa9m3WXF9UaAmrpdupFq.glb', 399784, 'glb', 'cad', '2022-08-14 05:55:14', '2022-08-14 05:55:14', NULL),
(29, 1, 'Small Wavy Heart Pendant', '84CCQ5ZFIeryYxCt6inm97rnghJJKYHstwPd23IJ.png', 198752, 'png', 'image', '2022-08-14 05:56:51', '2022-08-14 05:56:51', NULL),
(30, 1, 'Small Wavy Heart Pendant', 'iikSoTdz8NkCZiW5Ab18lV8qmPRbUw8Q1x4sFnOo.glb', 221992, 'glb', 'cad', '2022-08-14 05:56:57', '2022-08-14 05:56:57', NULL),
(31, 1, '2 Inch Diamond Nail Cross Pendant', 'NSZ5uXCBrMDgwOnjTngAGLzNE2hRRVhOo9xMbZBA.glb', 503140, 'glb', 'cad', '2022-08-14 06:03:17', '2022-08-14 06:03:17', NULL),
(32, 1, 'diamond nail', '0AiSlCPCepDns8LO4cZYzEqEVMYKvt3GKeSEN6ZZ.png', 104381, 'png', 'image', '2022-08-14 06:03:30', '2022-08-14 06:03:30', NULL),
(33, 1, 'heart key pendant', 'JtjOzspFzn1omrlirIymvyGheOBw8sjZQEFTPxa8.png', 157777, 'png', 'image', '2022-08-14 06:06:42', '2022-08-14 06:06:42', NULL),
(34, 1, 'Single Row Diamond Eternity Ring 1 white', '8xOuZGfNIpWWeVXm7iO68iDypgBH5WdyhTrixNX7.png', 256664, 'png', 'image', '2022-08-14 06:09:09', '2022-08-14 06:09:09', NULL),
(35, 1, 'Single Row Diamond Eternity Ring', 'vZ1mj5XYnE2s0qdUvtob0wozTovCC9kuIBdFPffT.glb', 2801700, 'glb', 'cad', '2022-08-14 06:09:38', '2022-08-14 06:09:38', NULL),
(36, 1, 'Single Row Diamond Eternity Ring 1', 'fC14qNTI9rjtpOoSE5y1biesbEX1rlh82LCq5KeA.jpg', 160668, 'jpg', 'image', '2022-08-14 06:10:27', '2022-08-14 06:10:27', NULL),
(37, 1, 'Single Row Diamond Eternity Ring 2', 'PfRlKG2EjfzHx9w2T85oTuh9JQyUUJTarMiRhVT9.jpg', 80308, 'jpg', 'image', '2022-08-14 06:10:35', '2022-08-14 06:10:35', NULL),
(38, 1, 'Single Row Diamond Eternity Ring 3', 'Kp3kciwmR4OK7kc2XtuvXxeYb7Egj4N9FDKac8RL.jpg', 168400, 'jpg', 'image', '2022-08-14 06:10:43', '2022-08-14 06:10:43', NULL),
(39, 1, 'Single Row Diamond Eternity Ring 4', 'VIV6CiPiZ7lFwL8pTFPzqEfsWa5bwQlpISA3yawJ.jpg', 79836, 'jpg', 'image', '2022-08-14 06:10:50', '2022-08-14 06:10:50', NULL),
(40, 1, 'Solid Classic Cuban Ring', 'RqBCmYhLAUqItKqtQSXwA9wYgzUasmmgYkBW5Sjj.glb', 247076, 'glb', 'cad', '2022-08-14 06:14:39', '2022-08-14 06:14:39', NULL),
(41, 1, 'Solid Classic Cuban Ring', 'iSdsCocV6YTfpnOqKHOtGM7xYvE93QWhAVVIkQM3.png', 270477, 'png', 'image', '2022-08-14 06:14:53', '2022-08-14 06:14:53', NULL),
(42, 1, 'Solid Classic Cuban Ring 1', 'xXYGWMboz635qvUgk358s3chOs1npsVGeULkZWKh.jpg', 148004, 'jpg', 'image', '2022-08-14 06:15:14', '2022-08-14 06:15:14', NULL),
(43, 1, 'Solid Classic Cuban Ring 2', '7yyk7lNzdaVpssQIEeDN05H2qbh53tC6iCwxLHFP.jpg', 78902, 'jpg', 'image', '2022-08-14 06:15:21', '2022-08-14 06:15:21', NULL),
(44, 1, 'Solid Cuban Ring With Diamondswhite', 'uPExiXuc4GXqryMddA6OBlz7s4dJcWh4fkQZicuk.png', 299425, 'png', 'image', '2022-08-14 06:22:56', '2022-08-14 06:22:56', NULL),
(45, 1, 'Solid Cuban Ring With Diamonds', '1tPZq2PPTmLv9ov3Tw9eoR0H6wrWhvYLY15vkfRB.glb', 8442280, 'glb', 'cad', '2022-08-14 06:23:29', '2022-08-14 06:23:29', NULL),
(46, 1, 'Solid Cuban Ring With Double Row Of Diamonds', '8r25F5ZXZ5kSDbRmsHOFQbaOIpoGlUlcwSxGCVY6.png', 559175, 'png', 'image', '2022-08-14 06:24:55', '2022-08-14 06:24:55', NULL),
(47, 1, 'Solid Straight Cuban Ring white', 'dvmISqspYPSwliqUpYAL0RgDwaNCYaYJu8dWODfa.png', 234683, 'png', 'image', '2022-08-14 06:40:45', '2022-08-14 06:40:45', NULL),
(48, 1, 'SOLID STRAIGHT CUBAN RING', 'mP8IeTlNqwTQu8iuCTUKMUp8AC0R7C3J1p8F0Sh5.glb', 3904368, 'glb', 'cad', '2022-08-14 06:43:13', '2022-08-14 06:43:13', NULL),
(49, 1, 'plain cartier ring blank', '1fdGqvffHcAKJ424cBZx4wdTzXvk3ZbHf2V4elMu.png', 86062, 'png', 'image', '2022-08-14 23:03:12', '2022-08-14 23:03:12', NULL),
(50, 1, 'plain cartier', 'WASkp4xj5xALSTxZaebK0MMlCUYAObxyAJIdcDWS.glb', 24260, 'glb', 'cad', '2022-08-14 23:03:20', '2022-08-14 23:03:20', NULL),
(51, 1, 'plain cartier-2021-05-25-09-39-48 2', 'XDbkc4noWqdRf9QwZcA3xuDMFvgyreHLeuI8ylpH.jpg', 72164, 'jpg', 'image', '2022-08-14 23:06:07', '2022-08-14 23:06:07', NULL),
(52, 1, 'plain cartier-2021-05-25-09-39-48', 'P5GnwKCAHSzr0bZ9bxQp1WJJEbZfVNnvwtdS1vTP.jpg', 38143, 'jpg', 'image', '2022-08-14 23:06:19', '2022-08-14 23:06:19', NULL),
(53, 1, 'plain cartier-2021-05-25-09-39-49', 'WukjZRcCQytjUV0UYAq0xAtGMiEcUWuMALbbJnHF.jpg', 31969, 'jpg', 'image', '2022-08-14 23:06:26', '2022-08-14 23:06:26', NULL),
(54, 1, 'Cartier Ring Full Diamonds', 'WtsQKXreZTGNlUjpiveWQkdA7W8vjmF2IXIEYbaQ.png', 395104, 'png', 'image', '2022-08-14 23:07:46', '2022-08-14 23:07:46', NULL),
(55, 1, 'The Love Eternity Ring With Diamonds', 'H22iyXzjdbl5NbztaSJNHO5H8IsBfViHOS9bOah7.glb', 1036796, 'glb', 'cad', '2022-08-14 23:08:13', '2022-08-14 23:08:13', NULL),
(56, 1, 'cartier rings full', 'ZedOKc0jvi6UQCznRg2aQ2x6f2Iaas2L2za6U8cW.jpg', 129918, 'jpg', 'image', '2022-08-14 23:08:32', '2022-08-14 23:08:32', NULL),
(57, 1, 'plain cartier-2021-05-25-09-39-47', 'b6wno1Gvq1L60sjMNQaS8U6YwZ0jg33mbOyeQkdZ.jpg', 88284, 'jpg', 'image', '2022-08-14 23:08:40', '2022-08-14 23:08:40', NULL),
(58, 1, 'Cartier Ring Screw Diamonds', 'rYTRkahshSXDoMqNd74D4fMxd19HbCpx5scoMkRq.png', 673958, 'png', 'image', '2022-08-14 23:35:43', '2022-08-14 23:35:43', NULL),
(59, 1, 'screw diamond video', 'NQ78u8KYNmXjqAS7XGAQ89fjciMfrh7lZ6TmuWIi.glb', 43460, 'glb', 'cad', '2022-08-14 23:35:54', '2022-08-14 23:35:54', NULL),
(60, 1, 'Solid Straight Cuban With Diamonds', 'f6y49elcisGXsatiMme4y1Xmm0cchka0rq0SZMGC.png', 1402049, 'png', 'image', '2022-08-14 23:38:09', '2022-08-14 23:38:09', NULL),
(61, 1, 'Solid Straight Double Row Cuban With Diamonds Gold', 'iefsm6J6S0VTuNIYb4o1v92TvPgRp0KkD5YKbWXA.png', 1461319, 'png', 'image', '2022-08-14 23:39:51', '2022-08-14 23:39:51', NULL),
(62, 1, 'Solid Straight Double Row Cuban With Diamonds', 'cZaUgobNSyZPJepdPYLHtNScaSQA2bD8sWl56TMl.glb', 4511912, 'glb', 'cad', '2022-08-14 23:40:25', '2022-08-14 23:40:25', NULL),
(63, 1, 'Size 17 - 170mm - Plain', 'eZxnHQTTCNe3U7HDiU9tB1TVsFL7hT7ub0Y3Hmk4.png', 67230, 'png', 'image', '2022-08-14 23:45:28', '2022-08-14 23:45:28', NULL),
(64, 1, 'Plain Bracelet AR View', 'eUiyO4VVoQVilPH6Lazyrvd8JqY0MHR3CJcwQtQj.glb', 28080, 'glb', 'cad', '2022-08-14 23:46:05', '2022-08-14 23:46:05', NULL),
(65, 1, 'Shooting Star Bracelet size 17', 'bXBWqN5tPCngsWDfYdCXx58h1tnbPCO5nTn721EU.png', 148581, 'png', 'image', '2022-08-14 23:46:43', '2022-08-14 23:46:43', NULL),
(66, 1, 'Shooting Star Diamond AR View', 'dOqHpxeIO0Chf5GXwcNtTDsSm13QhbtYoKuFW4fr.glb', 4853540, 'glb', 'cad', '2022-08-14 23:46:56', '2022-08-14 23:46:56', NULL),
(67, 1, 'Jagged Edge Cross Pendant profile', 'EWBUjPvSFqB6PklP2G8OJDVXlsm9YgpfYw0KMtMo.png', 160336, 'png', 'image', '2022-08-14 23:51:57', '2022-08-14 23:51:57', NULL),
(68, 1, 'Jagged Edge Cross Pendant', '94hfS5cSvsBmwt5d8NeRYA7zD1qECUOnxaWHXiXe.glb', 1954564, 'glb', 'cad', '2022-08-14 23:52:13', '2022-08-14 23:52:13', NULL),
(69, 1, 'Jagged Edge Cross Pendant front render', 'p79xNIBNioeFHzcIQekL3cCUjBSOMArqsP1NbO3C.jpg', 280480, 'jpg', 'image', '2022-08-14 23:52:28', '2022-08-14 23:52:28', NULL),
(70, 1, 'Jagged Edge Cross Pendant rotate render', 'aNGOncgI3Bf2aJwkjCz8sRGaCrJSS2hPRHzDXbuA.jpg', 357458, 'jpg', 'image', '2022-08-14 23:52:36', '2022-08-14 23:52:36', NULL),
(71, 1, 'd18af3d69445c2e7eebb260f0a39fcbc', 'kSDDaNjEgSqLsako4ug5DOM5u2tP4DBRr1YxAEXo.jpg', 592103, 'jpg', 'image', '2022-08-14 23:52:44', '2022-08-14 23:52:44', NULL),
(72, 1, 'Solid Straight Double Row Cuban With Diamonds', 'bwbSHTBxeRztH2gaJcmhXq0snQDJHylLghTDNGGH.glb', 4511912, 'glb', 'cad', '2022-08-26 15:26:06', '2022-08-26 15:26:06', NULL),
(73, 1, '51 MM Jesus Piece Thorn Crown', 'gTc3ufSiYYoxmIdlKRZr80tv1GGN7d4ksyCd3l2p.zip', 37878816, 'zip', 'archive', '2022-09-04 22:12:37', '2022-09-04 22:12:37', NULL),
(75, 1, 'Screen Shot 2022-09-05 at 12.52.45 PM', 'yn7BLOlKXR6AD8xGqHQroIc1JtCUWZEOiUcgpRZx.png', 84699, 'png', 'image', '2022-09-05 16:52:56', '2022-09-05 16:52:56', NULL),
(77, 1, 'jayz', 'k1mg6GaXhvA33VTThNBfDmxlZEbe7gfxORo1WYjC.png', 2738113, 'png', 'image', '2022-09-22 11:15:46', '2022-09-22 11:15:46', NULL),
(80, 1, 'tiger', 'Z5aJz4BChPbzuHiftBpcvgIlzpxCuIEkMTw1TFQG.jpg', 48198, 'jpg', 'image', '2022-09-23 16:20:59', '2022-09-23 16:20:59', NULL),
(81, 120, 'braclet', 'ZMfdglB0h6UoNUDqWYnGug8K1jGg65etWmP8D7sx.jpg', 164857, 'jpg', 'image', '2022-11-01 09:32:19', '2022-11-01 09:32:19', NULL),
(82, 120, 'Attachment_1617286793', 'Tsyoqbc0q4BImHnusd0QcPJrFZyW8PUiLYUjdofV.jpg', 476360, 'jpg', 'image', '2022-11-01 15:21:20', '2022-11-01 15:21:20', NULL),
(83, 120, 'cuban link bg', '2E8fPegVaTL5SQoqQje9JAaef1POTK6PHjjo7drm.png', 1198861, 'png', 'image', '2022-11-02 20:28:16', '2022-11-02 20:28:16', NULL),
(84, 120, 'braclet', 'jTG8zk9RDxTVXv85T0XRtCXie0FSktH3S3CucSZD.jpg', 164857, 'jpg', 'image', '2022-11-02 20:28:18', '2022-11-02 20:28:18', NULL),
(85, 120, 'IMG_0250', '3TTOjOi0Q8sbHWrG7DICG2ylWeN0B7KEvs2NZ3Nx.png', 666331, 'png', 'image', '2022-11-02 20:28:20', '2022-11-02 20:28:20', NULL),
(86, 120, 'cuban link bg', 'Wc9vM1KxeAc9DrSmhwcfueyLh9p8v8hqoz1iZQiY.png', 1198861, 'png', 'image', '2022-11-02 20:31:47', '2022-11-02 20:31:47', NULL),
(87, 120, 'cuban link bg', 'm1Iz0t5q0rHH8Hd1Q4z18RGcaWQasZWVX5dgJoTe.png', 1198861, 'png', 'image', '2022-11-02 20:31:52', '2022-11-02 20:31:52', NULL),
(88, 120, 'custom work ggm', 'y0sbyiE8quYBf0gDTq91cfNJueAQFkdbaznLOYkD.png', 273412, 'png', 'image', '2022-11-03 13:51:33', '2022-11-03 13:51:33', NULL),
(89, 120, 'braclet', 'zrh81xkTtYj31YW7DDf0UYPBbzu52N8Guyhpva1T.jpg', 164857, 'jpg', 'image', '2022-11-03 13:51:38', '2022-11-03 13:51:38', NULL),
(90, 120, 'custom work ggm', 'D3eCtN833s7zqHgImWsmw4ZQ3Fl4QY0Ylcdwu8Ec.png', 273412, 'png', 'image', '2022-11-03 14:08:48', '2022-11-03 14:08:48', NULL),
(91, 120, 'braclet', '107zfuVHBLoJtueUnMEGJ1U3gTaR4wdlWUwUwTge.jpg', 164857, 'jpg', 'image', '2022-11-03 14:08:52', '2022-11-03 14:08:52', NULL),
(92, 120, 'custom work ggm', 'HhxHO62N9BCOJBVC98fMYNLXXMfaNCaOqsid1f8K.png', 273412, 'png', 'image', '2022-11-03 14:21:29', '2022-11-03 14:21:29', NULL),
(93, 120, 'custom work ggm', 'Ei3e2e5Ob9LfJ568ts8FVrYiBqUUuGYZZm4OvOHH.png', 273412, 'png', 'image', '2022-11-03 14:22:31', '2022-11-03 14:22:31', NULL),
(94, 120, 'braclet', 'gcJ9sU4unYkpRNJkOSsjBE9fBp9EMePOw8l2OmlG.jpg', 164857, 'jpg', 'image', '2022-11-03 14:22:35', '2022-11-03 14:22:35', NULL),
(96, 120, 'braclet', '98wTnsfHmteLrX4xcT4EWSsOOntcejLgCp7XNKpI.jpg', 164857, 'jpg', 'image', '2022-11-03 16:13:19', '2022-11-03 16:13:19', NULL),
(97, 120, 'IMG_0063', 'klHcoUsvzBXETSTu327OvUZGwH32Ih17L4y1Z0v2.png', 1429753, 'png', 'image', '2022-11-04 11:21:32', '2022-11-04 11:21:32', NULL),
(98, 120, 'IMG_0064', '0KLi8f3Zg2sXx2y790UAf4AxK14vU82qvztXCTUD.png', 1395973, 'png', 'image', '2022-11-04 11:21:34', '2022-11-04 11:21:34', NULL),
(99, 120, 'black sqaure', 'Yv8B4BQYzbdcHWUOvwuhHSVpyV6JpBZZQoyGfdMp.png', 6211, 'png', 'image', '2022-11-04 11:48:37', '2022-11-04 11:48:37', NULL),
(100, 120, 'favicon', 'GKYXrknfQmlH9aYOIGTGuorxEma4VGm19o5uN6td.png', 1081, 'png', 'image', '2022-11-04 11:48:46', '2022-11-04 11:48:46', NULL),
(101, 120, 'ff79d5213dcdbeca70f636100caac0799f9ecf69', 'nulubDvnQc0JR6TCc7Vo3vgOWZnJWtXkXIKjqwei.jpg', 61016, 'jpg', 'image', '2022-11-04 14:56:46', '2022-11-04 14:56:46', NULL),
(102, 120, 'ff79d5213dcdbeca70f636100caac0799f9ecf69', 'f4DSWv1SZALAHP2x0IWubNPAdcyJmM9wnRD4RR0U.jpg', 61016, 'jpg', 'image', '2022-11-04 18:28:23', '2022-11-04 18:28:23', NULL),
(103, 120, 'image-jewelry-01', 'O8ETptzOaAZscDygRWzIMj0wL7TMbMvOQt8AAi8R.png', 474659, 'png', 'image', '2022-11-04 18:28:26', '2022-11-04 18:28:26', NULL),
(105, 120, 'custom work ggm', 'u1Te64Z74pEUYJRxkbLdZeO1DmhBVHPPWpjwH1HQ.png', 273412, 'png', 'image', '2022-11-04 18:45:10', '2022-11-04 18:45:10', NULL),
(106, 120, 'custom work ggm', 'WF6AywsGKmzQ7ZgmjJExuHxc1gU8iJCnWSYEahrR.png', 273412, 'png', 'image', '2022-11-04 18:45:16', '2022-11-04 18:45:16', NULL),
(107, 120, 'square ggm', 'eC3smiBFHaRgbkUhyvi81DbWrwzLcSaM7OinvwFs_thumbnail.png', 916934, 'png', 'image', '2022-11-06 18:24:38', '2022-11-06 18:24:38', NULL),
(108, 120, 'square ggm', 'zgfyVstwECOVthZzZ2EuiP60Ndo9TxbW7Vd9sQAA.png', 916934, 'png', 'image', '2022-11-06 18:24:41', '2022-11-06 18:24:41', NULL),
(109, 120, 'Attachment_1617286793-1', '0FjYaENE1ZH8uvEQCGoyqXPFORFClTJZbTHnf5Rx_thumbnail.jpg', 603470, 'jpg', 'image', '2022-11-08 13:24:15', '2022-11-08 13:24:15', NULL),
(110, 120, 'Attachment_1617286793', 'jFssocSo1mTRhvYmzWgaBazVD2wXHJ0EswN6QJw6.jpg', 476360, 'jpg', 'image', '2022-11-08 13:24:23', '2022-11-08 13:24:23', NULL),
(111, 120, 'black sqaure', 'sTDObcniIYdjijpSHMj1S6f4nlhlLvcGjtDYICQK_thumbnail.png', 6211, 'png', 'image', '2022-11-08 15:52:09', '2022-11-08 15:52:09', NULL),
(112, 120, 'black sqaure', 'kArsQM5OTp2EFXgVf1Nab0lGtlgnEh80iqeJiH7M.png', 6211, 'png', 'image', '2022-11-08 15:52:12', '2022-11-08 15:52:12', NULL),
(113, 1, 'a1e645ed1876d98026d9cf0f5baa6a37', 'jthl51Qsmd2nsIqQASFF5gq7isjuqYjPxZ4BVNVM.png', 449408, 'png', 'image', '2022-11-09 13:13:07', '2022-11-09 13:13:07', NULL),
(114, 14, 'mock-image', '9S8EgGWelTqG8o2ixIgo6JRIPsI5D3J0rbJSUKzI_thumbnail.jpg', 87695, 'jpg', 'image', '2022-11-09 15:19:52', '2022-11-09 15:19:52', NULL),
(115, 14, 'mock-image', 'jQqkyWeyU3UYx3RO3mfzIca6X983mdof92kHrh3y.jpg', 87695, 'jpg', 'image', '2022-11-09 15:19:54', '2022-11-09 15:19:54', NULL),
(116, 14, 'mock-image', 'xm5RiZH8nellU8y2bIaiZ5i45SzRsUgcpn8sHjG9.jpg', 87695, 'jpg', 'image', '2022-11-09 15:19:57', '2022-11-09 15:19:57', NULL),
(117, 14, 'mock-image', 'oTSNMAC2h1cNL6fcSfi7cs3zZaaEX4ukxxW9mdGU.jpg', 87695, 'jpg', 'image', '2022-11-09 15:20:00', '2022-11-09 15:20:00', NULL),
(118, 1, 'black sqaure', '1wLYUSmlYCOtVvxTTDjquYIiVZWH1slmmBhrXsbZ.png', 6211, 'png', 'image', '2022-11-09 15:24:26', '2022-11-09 15:24:26', NULL),
(119, 14, 'mock-image', 'mjzjfA9DWSLUD568ASD2qqsDFbOqJ83n7zU1OVWf.jpg', 87695, 'jpg', 'image', '2022-11-09 15:24:33', '2022-11-09 15:24:33', NULL),
(120, 1, 'braclet', 'y6ViOBlw0fH0SFA5y1Wl8CiQUxQmxYU4NaThv6Zn.jpg', 164857, 'jpg', 'image', '2022-11-09 18:57:25', '2022-11-09 18:57:25', NULL),
(121, 1, 'black sqaure', 'rFJmXF1wfzMxsJAvhhRWo5Fc812rEtcdnlpbyHrb.png', 6211, 'png', 'image', '2022-11-09 19:39:33', '2022-11-09 19:39:33', NULL),
(122, 120, 'black sqaure', 'xOiBWdFW813meI6gKGXCkLQibiUQnBjl3SaUdq96.png', 6211, 'png', 'image', '2022-11-10 09:49:37', '2022-11-10 09:49:37', NULL),
(123, 120, 'Screen Shot 2022-11-09 at 12.40.28 PM', 'wIhv6ucK2iY4VDZeu6ULZhCaGD42VrmzpdUuHHHN.png', 109019, 'png', 'image', '2022-11-10 12:06:32', '2022-11-10 12:06:32', NULL),
(124, 120, 'black sqaure', 'QBm7zYOYvr2NRzfqK9x5zGUvKYaR3sksNEkZrVsS.png', 6211, 'png', 'image', '2022-11-10 12:19:14', '2022-11-10 12:19:14', NULL),
(125, 120, 'black sqaure', 'Jiw9NaUcbywWLg3PjnJZaR45ODbb8X788rBk07tf.png', 6211, 'png', 'image', '2022-11-10 18:10:43', '2022-11-10 18:10:43', NULL),
(126, 120, 'black sqaure', '4nUZCQXy6nr1im1bS6lCceOVjCKkt3NSkpwy2HCe.png', 6211, 'png', 'image', '2022-11-10 18:12:18', '2022-11-10 18:12:18', NULL),
(127, 120, 'black sqaure', 'BPTsrwd3Rvx09DuoFx8sZF5ucUw1N8W9tuODzow0.png', 6211, 'png', 'image', '2022-11-10 18:13:12', '2022-11-10 18:13:12', NULL),
(128, 120, 'black sqaure', 's13wAWfBXhjVRC7qyOIwmMmstC8F4QFOLvUpWYDp.png', 6211, 'png', 'image', '2022-11-10 18:24:24', '2022-11-10 18:24:24', NULL),
(129, 120, 'black sqaure', 'SRw4S4qyrKMaBky5ZvcapM1KI72NRGasYmFtEe62.png', 6211, 'png', 'image', '2022-11-10 18:25:46', '2022-11-10 18:25:46', NULL),
(130, 120, 'black sqaure', 'rsN4HgH4IzCSBGdMNYov8FkuWj3IFczZOlAO4vUZ.png', 6211, 'png', 'image', '2022-11-10 18:26:55', '2022-11-10 18:26:55', NULL),
(131, 120, 'black sqaure', 'Hil9gG6QxQn6mLcqZk3xwMTLo97xe6N6CNt147h7.png', 6211, 'png', 'image', '2022-11-10 18:48:11', '2022-11-10 18:48:11', NULL),
(132, 120, 'black sqaure', 'InsoyBjOBYxOmJJ2Pj1JthKQupydkf0q1jBXvFsq.png', 6211, 'png', 'image', '2022-11-10 19:00:40', '2022-11-10 19:00:40', NULL),
(133, 120, 'black sqaure', 'IK57aH9snI083sMjKt1tND9jx6uPv4FsMS3Scaba.png', 6211, 'png', 'image', '2022-11-10 19:01:33', '2022-11-10 19:01:33', NULL),
(134, 1, 'jewelrycg', '2Vk5mbnP2t6aRaF31M2iRJNovWx4lM51zwMaCeG4.png', 62804, 'png', 'image', '2022-11-11 19:28:40', '2022-11-11 19:28:40', NULL),
(135, 1, 'black sqaure', 'Jg4wxF9igiWFMIWpVa62AVux5bQylNZ0UEyTTE7z.png', 6211, 'png', 'image', '2022-11-15 09:19:50', '2022-11-15 09:19:50', NULL),
(136, 120, 'black sqaure', 'RuUHeDUlR5Wwu2BsLynncB4D0DUMMN5Tpa0KHNBn.png', 6211, 'png', 'image', '2022-11-15 09:20:40', '2022-11-15 09:20:40', NULL),
(137, 14, 'mock-image', '4poreqjNnPM8KeE7uou38Sjid7GHbKyQ0oblD9JW_thumbnail.jpg', 87695, 'jpg', 'image', '2022-11-17 18:40:46', '2022-11-17 18:40:46', NULL),
(138, 1, 'braclet', 'aeQefA9ycskQk3fZGJxl4OGjCaJvYmwZIqrV4N1q.jpg', 164857, 'jpg', 'image', '2022-11-19 13:59:16', '2022-11-19 13:59:16', NULL),
(139, 120, 'Zip', 'boh3q1Op0I33R2hzh25nSM9LSDM4Uolus1pFrmZa.txt', 0, 'txt', 'document', '2022-11-19 14:00:00', '2022-11-19 14:00:00', NULL),
(140, 1, 'IMG_0175', '9ZbHWwjHSeH3fQJaTctmBm3o0ct0oaeyI24RM5XC.png', 148045, 'png', 'image', '2022-11-20 09:08:12', '2022-11-20 09:08:12', NULL),
(141, 120, 'dumporders', 'HKpKS7I8XUFn7j6NX4SsXCHdMGtPpLblzgESSOGw.txt', 90, 'txt', 'document', '2022-11-20 09:08:54', '2022-11-20 09:08:54', NULL),
(142, 1, 'model', 'ZmjLJ17mseuieUU1g22s6LwDkWyhfhVW5WNMrUzL.png', 149422, 'png', 'image', '2022-11-20 09:12:05', '2022-11-20 09:12:05', NULL),
(143, 120, 'Zip', 'xAy2CYqG17cIwr8asjQoOonySW3mtCsZmm3ChH9b.txt', 0, 'txt', 'document', '2022-11-20 09:12:49', '2022-11-20 09:12:49', NULL),
(144, 120, 'Zip', 'fgum1zSaXJsWTteJgQQAv1v3KSbhPe1L0rEr30AC.txt', 0, 'txt', 'document', '2022-11-20 09:51:03', '2022-11-20 09:51:03', NULL);

INSERT INTO `user_addresses` (`id`, `user_id`, `first_name`, `last_name`, `address`, `address2`, `city`, `state`, `country`, `postal_code`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tevar', 'Johnson', '447 s 3rd ave', NULL, 'Mount Vernon', 'NY', 'US', 10550, '9292880079', '2022-09-07 23:00:45', '2022-09-19 12:42:38'),
(3, 1, 'Tevar', 'Johnson', '447 s 3rd Ave', NULL, 'Mount Vernon', 'NY', 'US', 10550, '9292880079', '2022-09-07 23:39:06', '2022-11-08 09:20:16'),
(4, 14, NULL, NULL, '447 s 3rd ave', NULL, 'mount vernon', 'ny', 'US', 10550, NULL, '2022-09-09 16:21:33', '2022-09-09 16:21:33'),
(5, 125, 'Test', 'name', '123 e 343th st', NULL, 'new york', 'NY', 'US', 10029, NULL, '2022-11-11 18:59:38', '2022-11-11 18:59:38'),
(6, 2, 'Cory', 'Booker', '212 w 77th st', NULL, 'new york', 'ny', 'US', 10029, NULL, '2022-11-20 09:50:23', '2022-11-20 09:50:23'),
(7, 133, 'Steven', 'Tian', '123', '123123', '12312', '12312', 'AF', 123123, '123123', '2022-11-20 20:53:08', '2022-11-20 20:53:08');

INSERT INTO `user_chats` (`id`, `user_id`, `name`, `token`, `connection_id`, `user_status`, `user_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jewelry CG', '6ac5fd514a87a4344e903824bd2c0908', 0, 'Offline', '2Vk5mbnP2t6aRaF31M2iRJNovWx4lM51zwMaCeG4.png', '2022-11-16 14:30:44', '2022-11-16 14:30:44'),
(2, 120, 'David Sells Johnson', 'f7a9f326ae63cb2f3e769ae3621b50f4', 0, 'Offline', 'Wc9vM1KxeAc9DrSmhwcfueyLh9p8v8hqoz1iZQiY.png', '2022-11-16 15:28:12', '2022-11-16 15:28:12'),
(3, 14, 'Seller Name', '9f6603bc9f4174217e23c705f2eca24d', 0, 'Offline', 'avatar.png', '2022-11-16 16:24:15', '2022-11-16 16:24:15');

INSERT INTO `user_searches` (`id`, `user_id`, `query`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"category\":\"all\",\"query\":\"hey\"}', '2022-09-04 19:00:47', '2022-09-04 19:00:47'),
(2, 122, '{\"category\":\"all\",\"query\":\"Fuck Tevar\"}', '2022-10-12 13:22:17', '2022-10-12 13:22:17'),
(3, 1, '{\"category\":\"all\",\"query\":\"cuban\"}', '2022-11-04 14:05:22', '2022-11-04 14:05:22'),
(4, 1, '{\"category\":\"all\",\"query\":\"cuban\"}', '2022-11-04 14:08:14', '2022-11-04 14:08:14'),
(5, 1, '{\"category\":\"all\",\"query\":\"cuban\"}', '2022-11-04 14:08:27', '2022-11-04 14:08:27'),
(6, 1, '{\"category\":\"all\",\"query\":\"cuban\"}', '2022-11-04 14:09:46', '2022-11-04 14:09:46'),
(7, 1, '{\"category\":\"all\",\"query\":\"glt\"}', '2022-11-04 14:21:43', '2022-11-04 14:21:43'),
(8, 1, '{\"category\":\"all\",\"query\":\"cuban\"}', '2022-11-04 14:21:47', '2022-11-04 14:21:47'),
(9, 1, '{\"category\":\"all\",\"query\":\"cuban ring\"}', '2022-11-04 18:55:50', '2022-11-04 18:55:50'),
(10, 1, '{\"category\":\"all\",\"query\":\"cuban\"}', '2022-11-05 12:51:04', '2022-11-05 12:51:04'),
(11, 120, '{\"category\":\"all\",\"query\":\"Cuban\"}', '2022-11-10 05:19:55', '2022-11-10 05:19:55'),
(12, 129, '{\"category\":\"all\",\"query\":\"Metal Prices\"}', '2022-11-13 20:30:40', '2022-11-13 20:30:40'),
(13, 1, '{\"category\":\"all\",\"query\":\"cuban\"}', '2022-11-16 09:30:34', '2022-11-16 09:30:34'),
(14, 1, '{\"category\":\"all\",\"query\":\"cuban ring\"}', '2022-11-26 11:20:08', '2022-11-26 11:20:08');

INSERT INTO `users` (`id`, `role`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address_shipping`, `address_billing`, `remember_token`, `created_at`, `updated_at`, `username`, `avatar`) VALUES
(1, 1, 'Jewelry', 'CG', 'tevarjohnson@gmail.com', '2022-08-26 18:57:39', '$2y$10$k0Ezl6WaF1Ik4rrqqfu6wuPV7RRbZkBoHU7.WbHl5MMGsH49DLQQa', '3', '3', '14qwWb4I8N0golqUXGfuNF2kJ0CR8ZuMj2xlQd8ihSDjmqod5atBhM37Gklt', '2022-08-26 18:56:56', '2022-11-26 20:03:47', 'jewelrycg', 134),
(2, 0, 'Cory', 'Johnson', 'tevar@ggmandco.com', '2022-08-15 08:20:57', '$2y$10$BOutSVP2fh2pgZcPcCYxcOpn6pxRzYDaGogecgJeOA9GPxDyEIJFK', '', '6', NULL, '2022-08-15 08:19:29', '2022-11-20 09:50:23', NULL, NULL),
(3, 0, 'Dirty', 'Black Man', 'dirtytevarjohnson@gmail.com', NULL, '$2y$10$dOsKtuHII51T8vBtWw6u7uLSf/sZ5cXjBjprFd63mq0oS6lg0j58i', NULL, NULL, NULL, '2022-08-19 05:54:27', '2022-08-19 05:54:27', NULL, NULL),
(4, 0, 'santi', 'malaj', 'ictirana18@gmail.com', NULL, '$2y$10$VSXNQzvMkM3KIxCkVgZF7OknIMpmTOl6Th5tnmsyi8Z7qqzV3cFlq', NULL, NULL, NULL, '2022-08-19 16:47:06', '2022-08-19 16:47:06', NULL, NULL),
(5, 0, 'Lee', 'Jenkins', 'lee.jenkins@gmail.com', NULL, '$2y$10$YdDq5u54e6fHO4G.6dIUqOy0XFA32i4wq4lQaoMU0ec575/EBdezi', NULL, NULL, NULL, '2022-08-20 03:26:32', '2022-08-20 03:26:32', NULL, NULL),
(6, 0, 'Lee', 'Jenkins', 'l.jenkins@gmail.com', NULL, '$2y$10$8OPT7NXb8FhRCmrDH/uQqOBE88voDovsVpf6G/TktmqX1L44Uav3O', NULL, NULL, NULL, '2022-08-20 10:49:44', '2022-08-20 10:49:44', NULL, NULL),
(7, 0, 'Super', 'Beast', 'topdev731@gmail.com', NULL, '$2y$10$O3a0zSFGS/Ukh6KKMYa0PeESzB6lr/a8QF3z2J5o1LIvuSqL/Ko86', NULL, NULL, NULL, '2022-08-20 15:16:06', '2022-08-20 15:16:06', NULL, NULL),
(8, 0, 'asdf', 'asdf', 'asdf@asdfasdf.asdf', NULL, '$2y$10$SZE7/o.ci053HGT3A8kgyuEFg5gszy7Sq2es2H.GD9ovZ/BfLpy9a', NULL, NULL, NULL, '2022-08-20 15:24:18', '2022-08-20 15:24:18', NULL, NULL),
(9, 0, 'Tevar', 'Johnson', '1tevarjohnson@gmail.com', NULL, '$2y$10$UyMuFaZFl.oEuXrRzNNiE.23IwZSLPovuiMM1QPMaTltjTFAD5eMS', NULL, NULL, NULL, '2022-08-20 15:28:51', '2022-08-20 15:28:51', NULL, NULL),
(10, 0, '324234', '23r', 'bigboss.phch@gmail.com', NULL, '$2y$10$w7hzq6CWx7yCiFX4OjQ0wu.oE/25atEc5OJ3V2Aos.SzY0EsT9uru', NULL, NULL, NULL, '2022-08-20 15:29:45', '2022-08-20 15:29:45', NULL, NULL),
(11, 0, 'Harry', 'Potter', 'creativemoderndev0831@gmail.com', '2022-08-21 00:45:45', '$2y$10$0HlSgoFWwvnak1cPXqnqm.y8AAzSlV6fQMLUkzzjmJoKq48OFt6g2', NULL, NULL, NULL, '2022-08-21 00:45:07', '2022-08-21 00:45:45', NULL, NULL),
(12, 0, 'Shantel', 'Anderson', 'andersonshantel279@gmail.com', '2022-08-21 15:20:47', '$2y$10$EIpqweuNzMd7L3bz3Kjz.ei4eaLpwRi1Y/7KO3ID7cq0GRzqzPBTe', NULL, '', NULL, '2022-08-21 15:20:09', '2022-08-21 15:23:37', NULL, NULL),
(13, 0, 'Micael', 'Micael', 'micael@test.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'VhPgGeDkYvcTKzbszEPde5dUMg8EDh8n8WEqxbtQUS9iDYkfxhgm2NUAWPNX', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(14, 2, 'Seller', 'Name', 'admin@test.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', '4', '3', 'AnEkjHUFNVJvihVI6MQTDILHinAaw3sVTIVAOFkkdaO0Y9SZpGuD7Umuzd4s', '2022-08-23 02:00:51', '2022-09-09 16:21:33', NULL, NULL),
(15, 0, 'Prof. Conner Lebsack IV', 'Braxton Rolfson', 'vheller@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'A8jU7BH7sU', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(16, 0, 'Adah Johnston', 'Elwin Goldner', 'heller.allan@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '9SWRUNlzXc', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(17, 0, 'River Hodkiewicz', 'Mia West', 'champlin.golden@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'HnVrSvk6q7', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(18, 0, 'Michael Cormier', 'Mr. Jackson Blick III', 'margarete.koelpin@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'X0LK5kaMJY', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(19, 0, 'Aida Watsica', 'Autumn Beer', 'aurelie.hoeger@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'igeBAH9r08', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(20, 0, 'Lexi Orn', 'Minerva Lang', 'nbaumbach@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'VuQ5aOFn28', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(21, 0, 'Scottie Simonis', 'Abdul Cummerata PhD', 'mkoch@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '1K4ZMShyh8', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(22, 0, 'Mandy Williamson', 'Dr. Jovany Nienow', 'powlowski.sasha@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'YDrqA7mUXh', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(23, 0, 'Mr. Nasir Blick PhD', 'Mr. Sean Abbott II', 'kihn.savannah@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'OKGUvilyWM', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(24, 0, 'Toni Champlin', 'Jenifer Jakubowski', 'kathryne.okeefe@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Qq0cnuKmFF', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(25, 0, 'Zora McDermott', 'Ms. Eve O\'Conner', 'lenny.will@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'JiNHLlGIqP', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(26, 0, 'Mr. Alan Block', 'Jany Rau', 'koepp.kiley@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Lo72R2DEGD', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(27, 0, 'Greyson Hamill', 'Juliet Renner', 'deshawn.connelly@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'A5afMme5cj', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(28, 0, 'Kraig Larkin', 'Porter Langosh V', 'sabryna.waters@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Pesn1flOgL', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(29, 0, 'Prof. Lori McLaughlin V', 'Miss Iliana Fay', 'crist.derrick@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'kmSDEbVZyT', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(30, 0, 'Keven Wiza', 'Jessyca Krajcik Sr.', 'dax02@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'JX0r3BqtW8', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(31, 0, 'Abel Medhurst', 'German Rath', 'rcorwin@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'iic6rhNPog', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(32, 0, 'Clinton Nicolas', 'Taya Stoltenberg', 'rath.norberto@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'wy0DXzY5Vg', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(33, 0, 'Owen Hintz', 'Leonel Rowe PhD', 'peyton.hamill@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '66xh3SUQuI', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(34, 0, 'Prof. Cathrine Boyle', 'Catherine Haley', 'kara.beatty@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'KiKJXAiwLJ', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(35, 0, 'Ms. Dahlia Crist V', 'Adrian Heller', 'maggio.gregorio@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'hI4Dyt8Fvl', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(36, 0, 'Virgil Rowe', 'Maritza Pacocha', 'lew.mcdermott@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'IcJNVl5owt', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(37, 0, 'Jeff Thiel', 'Jamar Zemlak', 'kuhic.anissa@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Bc3VZCUrAK', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(38, 0, 'Berenice Simonis', 'Dr. Adan Runolfsdottir I', 'aric.will@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'HzmYGfONgr', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(39, 0, 'Wiley Predovic', 'Leo Rippin', 'golden25@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'E6ZFqEa8Ey', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(40, 0, 'Jarod Dach', 'Noe Kuvalis', 'jluettgen@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'q25HeCZQNT', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(41, 0, 'Lucy Gerhold', 'Emelie Ziemann', 'zmoen@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '5DFm81rYdb', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(42, 0, 'Flavio Ullrich', 'Dr. Reynold Kunze MD', 'jacques.mante@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'TJIBXVW6mR', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(43, 0, 'Prof. Skye Lang I', 'Ali Schimmel', 'beaulah90@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'OepRiEMFpK', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(44, 0, 'Zachery Ward', 'Augusta Ruecker', 'stuart.stiedemann@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'SN2av1h2Mg', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(45, 0, 'Gaston Fisher', 'Fannie Simonis', 'arno.hettinger@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'cCS8KNUqeH', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(46, 0, 'Eileen Hoeger', 'Miss Rubie Crooks', 'marlon.weimann@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '1cI85VP75W', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(47, 0, 'Dr. Zula Goodwin MD', 'Madisyn Hane', 'ostrosin@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '3a5G3CCdkF', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(48, 0, 'Cooper Luettgen', 'Ms. Elfrieda McCullough', 'pmarvin@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'HbCgvcV4sS', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(49, 0, 'Leila Rippin', 'Devon Beahan', 'hauck.beth@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'B8z3hjImaf', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(50, 0, 'Miss Katrina Yundt', 'Ephraim Botsford', 'mariane37@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'b3mlNftzwq', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(51, 0, 'Prof. Hank Yost II', 'Nikita Hessel Sr.', 'taurean.fisher@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'h8xHcVVLRE', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(52, 0, 'Dr. Ramona Kutch DVM', 'Larue Nicolas', 'vmaggio@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'rPsjM7E4ku', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(53, 0, 'Halle Lesch', 'Valentina Greenholt', 'jhessel@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'YtkukFSBUm', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(54, 0, 'Guillermo Trantow', 'Enola Bernhard', 'lcrooks@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'QZd18jaTZd', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(55, 0, 'Prof. Carlie Ledner', 'Ellie Kiehn', 'goldner.luella@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'nCHO9urmDt', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(56, 0, 'Orville Berge', 'Quincy Schuster', 'gaylord.ryan@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'mzAnVCkBDc', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(57, 0, 'Hailie Collier', 'Walter Cremin', 'pasquale65@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'sBzwCoYnU7', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(58, 0, 'Katherine Barton MD', 'Elenor Gaylord I', 'brekke.wendell@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '0oA1asr8Vt', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(59, 0, 'Gerardo Bechtelar', 'Lynn Braun', 'cooper26@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'UL1elXyGfV', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(60, 0, 'Evans Hagenes', 'Mr. Mario Batz', 'fadel.rosanna@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'In8s5rspuD', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(61, 0, 'Ms. Sadye Skiles', 'Aubrey Pollich', 'omari14@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '4Y5qJOp4sp', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(62, 0, 'Prof. Brooklyn Hoppe IV', 'Marcia Beatty', 'moore.serena@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'CIoIlpBN88', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(63, 0, 'Mr. Erwin Hills II', 'Rosa Ledner', 'kurtis27@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'rFhzGt4vUZ', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(64, 0, 'Dr. Nia Farrell', 'Dr. Abdullah Bernier IV', 'schmitt.dejon@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'HRxlawDmb2', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(65, 0, 'Miss Kenna Jast', 'Prof. Leila Ferry V', 'eunice.lakin@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'c1xhA8drR4', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(66, 0, 'Donnie Cartwright', 'Miss Emily Dooley', 'angelina27@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'caa5WEICR3', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(67, 0, 'Mr. Cleo Friesen', 'Tressie Metz Jr.', 'aoconnell@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Y2LFV1571g', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(68, 0, 'Kelli Cartwright', 'Dr. Hank Pfeffer', 'justus.gutmann@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '3J7k03J7uK', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(69, 0, 'Dr. Stephanie Zulauf', 'Janis Witting', 'xleuschke@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'MwLvfbYO1d', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(70, 0, 'Daryl Beahan', 'Dell Kerluke', 'brown.cremin@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'FigsUzyTeM', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(71, 0, 'Carleton Ward', 'Sincere Armstrong', 'mohammed.waelchi@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'VvYvKHtLLc', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(72, 0, 'Prof. Alexa Hessel', 'Garrett Kulas', 'welch.toni@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'UDj1DU8Aa7', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(73, 0, 'Sylvan Rippin', 'Desmond Lowe', 'shields.kyle@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'GOe1gLt0RQ', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(74, 0, 'Ellie Gerlach', 'Prof. Nasir Veum II', 'viviane92@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'UlcnqxB6Cn', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(75, 0, 'Susanna Murray DVM', 'Ian Greenholt', 'mann.donald@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '5RflIgLZiH', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(76, 0, 'Reyes Brakus', 'Ms. Kiana Schmidt IV', 'pfannerstill.zackary@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '8KS7NQg9in', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(77, 0, 'Jessyca Kuhn', 'Otto Wiza', 'della.sawayn@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Vzi1s1Nrfc', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(78, 0, 'Felton Gibson', 'Layne Lakin', 'kkemmer@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'EC7IN4ydw7', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(79, 0, 'Kitty Ferry', 'Buck Bauch', 'aniya.pfannerstill@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'CaEmiAZlyI', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(80, 0, 'Ruby Wehner', 'Gaetano Keeling DVM', 'green.emmerich@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '52xsp3BGEI', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(81, 0, 'Miss Kaylah Hudson', 'Muriel Greenholt', 'annalise.mueller@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'OP4WNUzAgv', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(82, 0, 'Brisa Altenwerth', 'Dr. Colby Miller PhD', 'paxton.blanda@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'O7vtAenKqY', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(83, 0, 'Elnora Koepp', 'Gus Schulist I', 'howell.ramiro@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'cwjx5ofRok', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(84, 0, 'Faustino Stroman', 'Prof. Shayna Muller DDS', 'luis18@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'ReIkWq3ZW9', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(85, 0, 'Dr. Miles Cremin PhD', 'Leonora Corwin', 'goldner.gia@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'fLktA1VZxE', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(86, 0, 'Viola Frami PhD', 'Breanne Emard DVM', 'dluettgen@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'SiNjKTULD1', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(87, 0, 'Lindsey McLaughlin', 'Mrs. Lavonne Ritchie', 'anderson.will@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'W60ar44gYO', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(88, 0, 'Nathanael Rempel', 'Michale Treutel', 'dbecker@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'sq9LjUUqq3', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(89, 0, 'Zula Turner', 'Ozella Feeney', 'julien.hoppe@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'MeawTy0ISO', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(90, 0, 'Vilma Boehm PhD', 'Cortez Dach', 'sheila08@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'JULX4lI8s2', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(91, 0, 'Aiyana Corkery', 'Guillermo Weber', 'tmitchell@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'DFNt5MRSkN', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(92, 0, 'David Green', 'Florida Feeney', 'maggio.adelbert@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '67UfQQUSba', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(93, 0, 'Dr. Elian Carter I', 'Lane Kessler IV', 'yasmin91@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '1fyqW2lePQ', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(94, 0, 'Rita Wisoky V', 'Krystal Grant', 'claudie48@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '9nUnVFs6nj', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(95, 0, 'Kavon Weimann MD', 'Evans Mueller', 'vkessler@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'N6CBrwNP6S', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(96, 0, 'Ms. Maymie Harber V', 'Edwina Kuhn', 'jaden.streich@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'tOlS6tRmY9', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(97, 0, 'Skyla Cole DVM', 'Kenton Kassulke III', 'alex58@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'W4urtdZ91B', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(98, 0, 'Dr. Damian Wolff', 'Roberto Simonis', 'reggie45@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'd6zbNTGzX3', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(99, 0, 'Alda Towne', 'Dovie Anderson', 'kling.oleta@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'S0v1nIZFH8', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(100, 0, 'Gretchen Rau', 'Dr. Evert Wolf Jr.', 'ejacobi@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'AHP1MrFqEe', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(101, 0, 'Jay Osinski', 'Tyshawn Brown', 'brunolfsdottir@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'N33sTeuNiI', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(102, 0, 'Maryse Schultz', 'Celestino Shields V', 'zschmidt@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'LAEvIcQaqo', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(103, 0, 'Aglae Boyer', 'Mittie Gutkowski', 'iemmerich@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'NU1dJxBVIB', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(104, 0, 'Mariam VonRueden II', 'Mr. Erich Runolfsdottir', 'adams.abagail@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, '0uBuSGnEDt', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(105, 0, 'Anastasia Feeney', 'Fidel Stoltenberg', 'cremin.newell@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'JgZ4blGJ6G', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(106, 0, 'Evans Harris', 'Dr. Nettie Harber', 'eichmann.gaston@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Ac2r21ys7q', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(107, 0, 'Miss Bailee DuBuque V', 'Sofia Barton', 'lupe.mills@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'KoXehB9Vs9', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(108, 0, 'Michel Hill', 'Dr. Dorothea Bosco IV', 'kadams@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'VaQFHMZtmw', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(109, 0, 'Elwin Collins', 'Khalil Mueller Sr.', 'kaley.pacocha@example.net', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'XGxUQNGRT3', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(110, 0, 'Juwan Yundt', 'Ms. Catherine Braun II', 'fabernathy@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'v7hLHET4Xb', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(111, 0, 'Haylie Ward', 'Ms. Alena Ebert MD', 'gabriel32@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'OV5krFiiDn', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(112, 0, 'Jessie Lindgren', 'Shanna Romaguera', 'milford80@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'X4KLA7HGnD', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(113, 0, 'Dr. Zella Romaguera MD', 'Merl Kemmer', 'myles.stroman@example.com', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'r4uPRjTDb7', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(114, 0, 'Abel Goodwin', 'Vickie Wilkinson', 'noah96@example.org', '2022-08-23 02:00:51', '$2y$10$zQQ0OQRzvRbkmZtDE3E2yuLGNKqulZIZtHuL5RCsvYFg3KS3Lpa.i', NULL, NULL, 'Mmgexb9dDU', '2022-08-23 02:00:51', '2022-08-23 02:00:51', NULL, NULL),
(119, 0, 'David', 'Johnson', 'tevar.johnson@gmail.com', NULL, '$2y$10$0mTA5G/PKNtps0GiuV5sgu5FSEUI2N5wknlgBWQUTzJ2N4oN/6z4G', NULL, NULL, NULL, '2022-09-09 22:19:29', '2022-09-09 22:19:29', NULL, NULL),
(120, 2, 'David Sells', 'Johnson', 'tevarjohnson@icloud.com', '2022-11-19 21:28:00', '$2y$10$u4oXtdhOcyhNBYrAurG81edGcUQVmwo0ufQHmIFC7qBzPL5pJvQsK', NULL, NULL, NULL, '2022-09-10 19:37:38', '2022-11-14 18:40:05', 'david', 86),
(121, 0, 'BAM nepeBog 120758 p. www.google.com/mfub NFDAW2288269SVWVELY', 'BAM nepeBog 166492 rub. www.google.com/hchq NFDAW2288269MTGJNFLY', 'jkhagzge@gmailler.ga', NULL, '$2y$10$nEIcWJLEvxRQS6O3PrK2jOv.IgKfPV0x7keWnaYSvhg4nao1xqq4m', NULL, NULL, NULL, '2022-10-05 20:05:37', '2022-10-05 20:05:37', NULL, NULL),
(122, 0, 'Fuck', 'Tevar', 'fuck@tevar.com', NULL, '$2y$10$pZb4g6BK392mk.sqlWZsAeYE9Njod7B1e3FP1XAWjbtSgjNbFi2hm', NULL, NULL, NULL, '2022-10-12 13:17:40', '2022-10-12 13:17:40', NULL, NULL),
(123, 0, 'topsamaraNubtesTE', 'topsamaraNubtesTE', 'getanswer@topsamara.ru', NULL, '$2y$10$pa3RuckSv.sQFN9mHV.sQud7/VysLEshuntTH6SIkI1O0bScOdeyC', NULL, NULL, NULL, '2022-10-22 19:41:47', '2022-10-22 19:41:47', NULL, NULL),
(124, 0, 'Joseph', 'Anderson', 'devanderson0412@gmail.com', '2022-11-02 09:05:31', '$2y$10$7l3L5KVgSDv6os46v.BkZO/hSJuZ5vFrg3fYghZYEhtNFSyupMdDC', NULL, NULL, NULL, '2022-11-02 09:05:15', '2022-11-02 09:05:31', NULL, NULL),
(125, 2, 'David', 'East', 'thebiggenna@icloud.com', NULL, '$2y$10$x5/xdAC9phPd1dGrTX2UVO5fLTWxR4wuSNj//6IkIoYyc56j2PSR.', '5', NULL, NULL, '2022-11-11 16:01:36', '2022-11-11 18:59:38', 'thebiggenna', NULL),
(126, 0, 'Amy', 'Jones', 'statute-gamete-0d@icloud.com', NULL, '$2y$10$w.q/QlSBspWZgOQQ3rbXtuhG8QlBRyjaHJe0poYcyS0a52nf5uWOO', NULL, NULL, NULL, '2022-11-12 17:37:16', '2022-11-12 17:37:16', NULL, NULL),
(127, 0, 'Amy', 'Jones', 'table_wearer.0s@icloud.com', NULL, '$2y$10$c7hcX05ZWrcue64tywvk2OHO/mT7au/37yBT9H6pOe4RAUIySQdJe', NULL, NULL, NULL, '2022-11-12 17:59:40', '2022-11-12 17:59:40', NULL, NULL),
(128, 0, 'Amy', 'Jones', 'fodders.ocarina_0o@icloud.com', NULL, '$2y$10$pMqMn3mmslCh1tP2jvbcpuonUuzIVzYSvS./MvwsDbbp3m4wQFAsa', NULL, NULL, NULL, '2022-11-12 18:03:07', '2022-11-12 18:03:07', NULL, NULL),
(129, 0, 'Narek', 'Turyan', 'nsrtsaturyan95@gmail.com', NULL, '$2y$10$L0tZlQ126gqNYpO5zUb6MulQm6LOjKPU2gyhEtT3dWN1Az4t26PSK', NULL, NULL, NULL, '2022-11-13 20:08:02', '2022-11-13 20:08:02', NULL, NULL),
(130, 0, 'Speedy', 'Ye', 'speedy.ye8@gmail.com', NULL, '$2y$10$dUBxEc/SQsN.mH202LNGK.uDZwaZgLmIZdlMdbO.g6xNz2O5YixDC', NULL, NULL, NULL, '2022-11-17 17:50:02', '2022-11-17 17:50:02', NULL, NULL),
(131, 0, 'test', 'sys', 'syspad000@gmail.com', '2022-11-18 11:28:04', '$2y$10$bitCvIGiWRXNkjKMMyJjIufGkhMfGaxe/K93Ac/EGoC/FXGwuhKne', NULL, NULL, NULL, '2022-11-18 11:27:07', '2022-11-18 11:28:04', NULL, NULL),
(132, 0, 'vvv', 'vvv', 'vvv@gmail.com', NULL, '$2y$10$K8mkr/IOaoFvKr7WUdwEOOXOnOVi87M7F51rmkOglJlh8/I25MhIu', NULL, NULL, NULL, '2022-11-18 21:09:36', '2022-11-18 21:09:36', NULL, NULL),
(133, 0, 'Steven', 'Tian', 'tinyscorpion1101@gmail.com', '2022-11-20 16:08:44', '$2y$10$/EfPddM.ExL7VnXsuJaiPe0UmdSb3iTuWYqkvgbJze3FM6HS0hwG6', NULL, '7', NULL, '2022-11-20 12:07:26', '2022-11-20 20:53:08', NULL, NULL);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;