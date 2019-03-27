/*

SQLyog Ultimate v8.55 
MySQL - 5.7.19 : Database - bokordb

*********************************************************************

*/



/*!40101 SET NAMES utf8 */;



/*!40101 SET SQL_MODE=''*/;



/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `migrations` */



DROP TABLE IF EXISTS `migrations`;



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `migrations` */



/*Table structure for table `oc_order` */



DROP TABLE IF EXISTS `oc_order`;



CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) DEFAULT '0',
  `invoice_prefix` varchar(26) DEFAULT NULL,
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
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `oc_order` */



insert  into `oc_order`(`order_id`,`invoice_no`,`invoice_prefix`,`store_id`,`store_name`,`store_url`,`customer_id`,`customer_group_id`,`firstname`,`lastname`,`email`,`telephone`,`fax`,`custom_field`,`payment_firstname`,`payment_lastname`,`payment_company`,`payment_address_1`,`payment_address_2`,`payment_city`,`payment_postcode`,`payment_country`,`payment_country_id`,`payment_zone`,`payment_zone_id`,`payment_address_format`,`payment_custom_field`,`payment_method`,`payment_code`,`shipping_firstname`,`shipping_lastname`,`shipping_company`,`shipping_address_1`,`shipping_address_2`,`shipping_city`,`shipping_postcode`,`shipping_country`,`shipping_country_id`,`shipping_zone`,`shipping_zone_id`,`shipping_address_format`,`shipping_custom_field`,`shipping_method`,`shipping_code`,`comment`,`total`,`order_status_id`,`affiliate_id`,`commission`,`marketing_id`,`tracking`,`language_id`,`currency_id`,`currency_code`,`currency_value`,`ip`,`forwarded_ip`,`user_agent`,`accept_language`,`date_added`,`date_modified`) values (1,0,'INV-2013-00',0,'Your Store','http://localhost:81/open_cart/upload/',2,1,'sim','longdy','longdy@gamil.com','081396171','619','','sim','longdy','sg_khmer','Phnom Penh','','Phnom Penh','619','Cambodia',36,'Kampong Speu',575,'','[]','Cash On Delivery','cod','sim','longdy','sg_khmer','Phnom Penh','','Phnom Penh','619','Cambodia',36,'Kampong Speu',575,'','[]','Flat Shipping Rate','flat.flat','','105.0000',1,0,'0.0000',0,'',1,2,'USD','1.00000000','::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','en-US,en;q=0.9','2018-01-02 20:49:42','2018-01-02 20:49:44');



/*Table structure for table `oc_product_reward` */



DROP TABLE IF EXISTS `oc_product_reward`;



CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;



/*Data for the table `oc_product_reward` */



insert  into `oc_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values (515,42,1,100),(519,47,1,300),(379,28,1,400),(329,43,1,600),(339,29,1,0),(343,48,1,0),(335,40,1,0),(539,30,1,200),(331,44,1,700),(333,45,1,800),(337,31,1,0),(425,35,1,0),(345,33,1,0),(347,46,1,0),(545,41,1,0),(351,36,1,0),(353,34,1,0),(355,32,1,0),(521,49,1,1000);



/*Table structure for table `sg_address` */



DROP TABLE IF EXISTS `sg_address`;



CREATE TABLE `sg_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `custom_field` text,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;



/*Data for the table `sg_address` */



insert  into `sg_address`(`address_id`,`customer_id`,`firstname`,`lastname`,`company`,`address_1`,`address_2`,`city`,`postcode`,`country`,`zone`,`custom_field`) values (48,29,'12312','222','222','13','sfd','12','123','American Samoa','Balkh','Normal Customer'),(47,29,'23432','33','asdf','asf','asfd','Phnom Penh','3243','Algeria','Badghis','Normal Customer'),(51,30,'sineth12','sim23','cambodia12','address12','address222','cambodia12`','code12','Afghanistan','Badghis','Normal Customer'),(52,34,'asfd','asdf','asf','234','234','234','234','American Samoa','Badakhshan',NULL),(54,35,'asdf','asdf','asdf','243','24','234','234','American Samoa','Badghis','Normal Customer');



/*Table structure for table `sg_api` */



DROP TABLE IF EXISTS `sg_api`;



CREATE TABLE `sg_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `sg_api` */



insert  into `sg_api`(`api_id`,`username`,`key`,`status`,`date_added`,`date_modified`) values (1,'Default','Lfj1UTuFJlW68uUT6wMLBDkgXDGRDJupIbOG2ufuRjlJyPUD2NPzMTkcZkBbL2yBbPMITgbQVDHajOTcuWeNVD3lzPlSC9dwgefa1K1qUW2iZehhhWlbeHVEgaPoLl51prafYQgPU6udrUZx1pFHiYl14va3wov4iw8OTGtuqXYtQBTTPHPWiiFnwdp20D06WONz2qSBUFHIdey6vujwH8KaKHHqqBd4PSCbhA4V7xZceES5vfXon2VlXCh4UIyP',1,'2017-11-20 14:03:44','2017-11-20 14:03:44');



/*Table structure for table `sg_api_ip` */



DROP TABLE IF EXISTS `sg_api_ip`;



CREATE TABLE `sg_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_api_ip` */



/*Table structure for table `sg_api_session` */



DROP TABLE IF EXISTS `sg_api_session`;



CREATE TABLE `sg_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_api_session` */



/*Table structure for table `sg_attribute` */



DROP TABLE IF EXISTS `sg_attribute`;



CREATE TABLE `sg_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `sg_attribute` */



insert  into `sg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (1,3,1);



/*Table structure for table `sg_attribute_description` */



DROP TABLE IF EXISTS `sg_attribute_description`;



CREATE TABLE `sg_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_attribute_description` */



insert  into `sg_attribute_description`(`attribute_id`,`language_id`,`name`) values (1,1,'Phone Memory');



/*Table structure for table `sg_attribute_group` */



DROP TABLE IF EXISTS `sg_attribute_group`;



CREATE TABLE `sg_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



/*Data for the table `sg_attribute_group` */



insert  into `sg_attribute_group`(`attribute_group_id`,`sort_order`) values (3,2),(4,1),(5,3),(6,4);



/*Table structure for table `sg_attribute_group_description` */



DROP TABLE IF EXISTS `sg_attribute_group_description`;



CREATE TABLE `sg_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_attribute_group_description` */



insert  into `sg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor');



/*Table structure for table `sg_banner` */



DROP TABLE IF EXISTS `sg_banner`;



CREATE TABLE `sg_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



/*Data for the table `sg_banner` */



insert  into `sg_banner`(`banner_id`,`name`,`status`) values (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);



/*Table structure for table `sg_banner_image` */



DROP TABLE IF EXISTS `sg_banner_image`;



CREATE TABLE `sg_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;



/*Data for the table `sg_banner_image` */



insert  into `sg_banner_image`(`banner_image_id`,`banner_id`,`language_id`,`title`,`link`,`image`,`sort_order`) values (79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);



/*Table structure for table `sg_carrier` */



DROP TABLE IF EXISTS `sg_carrier`;



CREATE TABLE `sg_carrier` (
  `carrier_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int(10) unsigned DEFAULT '0',
  `tax_rule_id` int(10) unsigned DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `delay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mean when will carrier pickup',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`carrier_id`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`tax_rule_id`),
  KEY `reference` (`reference_id`,`deleted`,`active`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_carrier` */



insert  into `sg_carrier`(`carrier_id`,`reference_id`,`tax_rule_id`,`image`,`name`,`url`,`active`,`deleted`,`shipping_handling`,`range_behavior`,`delay`,`is_module`,`is_free`,`shipping_external`,`need_range`,`external_module_name`,`shipping_method`,`position`,`max_width`,`max_height`,`max_depth`,`max_weight`,`grade`) values (3,1,0,NULL,'DHL','none',1,0,0,0,'3 days arrivals',0,0,0,0,'',1,0,0,0,0,'0.000000','0'),(4,6,0,NULL,'ORCL','none',1,0,1,0,'2 days arrival',0,0,0,0,NULL,0,0,0,0,0,'0.000000','A'),(21,0,0,'image','CLAir','http://www.google.com',1,0,1,0,'2',0,0,0,0,NULL,0,0,1,2,3,'4.000000','A'),(22,0,0,'image','2','asf',1,1,1,0,'asdf',0,0,0,0,NULL,0,0,234,234,234,'234.000000','asf'),(23,0,0,'image','2','asf',1,1,1,0,'asdf',0,0,0,0,NULL,0,0,234,234,234,'234.000000','asf'),(24,0,0,'image','2','asf',1,1,1,0,'asf',0,0,0,0,NULL,0,0,243,23,234,'234.000000','as'),(25,0,0,'image','2','asdf',1,1,1,0,'asf',0,0,0,0,NULL,0,0,234,2342,2343,'4.000000','asdf');



/*Table structure for table `sg_carrier_to_store` */



DROP TABLE IF EXISTS `sg_carrier_to_store`;



CREATE TABLE `sg_carrier_to_store` (
  `carrier_id` int(11) unsigned NOT NULL,
  `store_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`carrier_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_carrier_to_store` */



insert  into `sg_carrier_to_store`(`carrier_id`,`store_id`) values (21,1),(21,2),(22,1),(22,2),(23,1),(24,2),(25,1);



/*Table structure for table `sg_carrier_zone` */



DROP TABLE IF EXISTS `sg_carrier_zone`;



CREATE TABLE `sg_carrier_zone` (
  `carrier_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`carrier_id`,`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_carrier_zone` */



insert  into `sg_carrier_zone`(`carrier_id`,`zone_id`) values (21,1),(21,2),(21,3),(21,4),(22,4),(22,5),(23,4),(23,5),(24,1),(24,2),(25,5);



/*Table structure for table `sg_cart` */



DROP TABLE IF EXISTS `sg_cart`;



CREATE TABLE `sg_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(224) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



/*Data for the table `sg_cart` */



insert  into `sg_cart`(`cart_id`,`customer_id`,`session_id`,`product_id`,`option`,`quantity`,`date_added`) values (3,0,'2ZlJr0VQ8ZjRLsCJLw9gZJSB57yMiGNb',5,'',1,'2018-10-10 11:19:57'),(4,0,'2ZlJr0VQ8ZjRLsCJLw9gZJSB57yMiGNb',15,'',1,'2018-10-11 19:52:43');



/*Table structure for table `sg_category` */



DROP TABLE IF EXISTS `sg_category`;



CREATE TABLE `sg_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_type_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `top` tinyint(1) DEFAULT NULL,
  `column` int(3) DEFAULT NULL,
  `sort_order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



/*Data for the table `sg_category` */



insert  into `sg_category`(`category_id`,`category_type_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values (1,NULL,'http://localhost:8000/images/uploads/20-Oct-2018/KJEiEQb4pp.jpg',NULL,1,1,1,1,NULL,NULL),(2,NULL,'http://localhost:8000/images/uploads/20-Oct-2018/x10tfGLSPK.png',1,1,1,1,1,NULL,NULL);



/*Table structure for table `sg_category_description` */



DROP TABLE IF EXISTS `sg_category_description`;



CREATE TABLE `sg_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_category_description` */



insert  into `sg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (1,1,'Clothes','Description','Meta Title','Meta Description','Meta Keyword'),(2,1,'T-shirt','Description','Meta Title','Meta Description','Meta Keyword');



/*Table structure for table `sg_category_filter` */



DROP TABLE IF EXISTS `sg_category_filter`;



CREATE TABLE `sg_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_category_filter` */



insert  into `sg_category_filter`(`category_id`,`filter_id`) values (1,1),(2,1);



/*Table structure for table `sg_category_path` */



DROP TABLE IF EXISTS `sg_category_path`;



CREATE TABLE `sg_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_category_path` */



insert  into `sg_category_path`(`category_id`,`path_id`,`level`) values (1,1,0),(2,1,0),(2,2,1);



/*Table structure for table `sg_category_to_layout` */



DROP TABLE IF EXISTS `sg_category_to_layout`;



CREATE TABLE `sg_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_category_to_layout` */



insert  into `sg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (33,0,0),(33,1,0),(28,0,0),(28,1,0);



/*Table structure for table `sg_category_to_store` */



DROP TABLE IF EXISTS `sg_category_to_store`;



CREATE TABLE `sg_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_category_to_store` */



insert  into `sg_category_to_store`(`category_id`,`store_id`) values (1,1),(2,1);



/*Table structure for table `sg_category_type` */



DROP TABLE IF EXISTS `sg_category_type`;



CREATE TABLE `sg_category_type` (
  `category_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_level` int(4) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`category_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_category_type` */



insert  into `sg_category_type`(`category_type_id`,`order_level`,`date_added`,`date_modified`) values (1,2,'2017-01-01 00:00:00','2017-01-01 00:00:00'),(2,2,'2017-01-01 00:00:00','2017-01-01 00:00:00'),(3,0,'2017-01-01 00:00:00','2017-01-01 00:00:00'),(4,4,'2017-01-01 00:00:00','2017-01-01 00:00:00'),(5,5,'2017-01-01 00:00:00','2017-01-01 00:00:00'),(6,6,NULL,NULL);



/*Table structure for table `sg_category_type_description` */



DROP TABLE IF EXISTS `sg_category_type_description`;



CREATE TABLE `sg_category_type_description` (
  `category_type_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_category_type_description` */



insert  into `sg_category_type_description`(`category_type_id`,`language_id`,`name`,`description`) values (1,1,'Grocery','we'),(2,1,'Fashion',NULL),(3,1,'Electric','asdf'),(4,1,'Babies/Toys',NULL),(5,1,'Accessories',NULL),(6,1,'Furniture',NULL);



/*Table structure for table `sg_country` */



DROP TABLE IF EXISTS `sg_country`;



CREATE TABLE `sg_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;



/*Data for the table `sg_country` */



insert  into `sg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','asd',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);



/*Table structure for table `sg_coupon` */



DROP TABLE IF EXISTS `sg_coupon`;



CREATE TABLE `sg_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
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



/*Data for the table `sg_coupon` */



insert  into `sg_coupon`(`coupon_id`,`name`,`code`,`type`,`discount`,`logged`,`shipping`,`total`,`date_start`,`date_end`,`uses_total`,`uses_customer`,`status`,`date_added`) values (4,'-10% Discount','2222','P','10.0000',0,0,'0.0000','2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P','0.0000',0,1,'100.0000','2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F','10.0000',0,0,'10.0000','2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');



/*Table structure for table `sg_coupon_category` */



DROP TABLE IF EXISTS `sg_coupon_category`;



CREATE TABLE `sg_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_coupon_category` */



/*Table structure for table `sg_coupon_history` */



DROP TABLE IF EXISTS `sg_coupon_history`;



CREATE TABLE `sg_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_coupon_history` */



/*Table structure for table `sg_coupon_product` */



DROP TABLE IF EXISTS `sg_coupon_product`;



CREATE TABLE `sg_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_coupon_product` */



/*Table structure for table `sg_credit_type` */



DROP TABLE IF EXISTS `sg_credit_type`;



CREATE TABLE `sg_credit_type` (
  `credit_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`credit_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_credit_type` */



insert  into `sg_credit_type`(`credit_type_id`,`language_id`,`name`) values (1,1,'test');



/*Table structure for table `sg_credit_type_value` */



DROP TABLE IF EXISTS `sg_credit_type_value`;



CREATE TABLE `sg_credit_type_value` (
  `credit_type_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_type_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`credit_type_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_credit_type_value` */



insert  into `sg_credit_type_value`(`credit_type_value_id`,`credit_type_id`,`name`,`value`) values (1,1,'tt','uu'),(2,2,NULL,NULL);



/*Table structure for table `sg_currency` */



DROP TABLE IF EXISTS `sg_currency`;



CREATE TABLE `sg_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) DEFAULT NULL,
  `symbol_right` varchar(12) DEFAULT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



/*Data for the table `sg_currency` */



insert  into `sg_currency`(`currency_id`,`title`,`code`,`symbol_left`,`symbol_right`,`decimal_place`,`value`,`status`,`date_modified`) values (1,'Pound Sterling','GBP','£',NULL,'2',0.61250001,1,'2014-09-25 14:40:00'),(2,'US Dollar','USD','$','','2',1.00000000,1,'2017-11-20 07:31:04'),(3,'Euro','EUR',NULL,'€','2',0.78460002,1,'2014-09-25 14:40:00');



/*Table structure for table `sg_custom_field` */



DROP TABLE IF EXISTS `sg_custom_field`;



CREATE TABLE `sg_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_custom_field` */



/*Table structure for table `sg_custom_field_customer_group` */



DROP TABLE IF EXISTS `sg_custom_field_customer_group`;



CREATE TABLE `sg_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_custom_field_customer_group` */



/*Table structure for table `sg_custom_field_description` */



DROP TABLE IF EXISTS `sg_custom_field_description`;



CREATE TABLE `sg_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_custom_field_description` */



/*Table structure for table `sg_custom_field_value` */



DROP TABLE IF EXISTS `sg_custom_field_value`;



CREATE TABLE `sg_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_custom_field_value` */



/*Table structure for table `sg_custom_field_value_description` */



DROP TABLE IF EXISTS `sg_custom_field_value_description`;



CREATE TABLE `sg_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_custom_field_value_description` */



/*Table structure for table `sg_customer` */



DROP TABLE IF EXISTS `sg_customer`;



CREATE TABLE `sg_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_user_id` int(11) NOT NULL,
  `deviceId` varchar(120) DEFAULT NULL,
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `remember_token` longtext,
  `salt` varchar(9) DEFAULT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) DEFAULT '0',
  `address_id` int(11) DEFAULT '0',
  `custom_field` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `safe` tinyint(1) DEFAULT NULL,
  `token` text,
  `code` varchar(40) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer` */



insert  into `sg_customer`(`customer_id`,`sec_user_id`,`deviceId`,`customer_group_id`,`store_id`,`language_id`,`firstname`,`lastname`,`email`,`telephone`,`fax`,`password`,`remember_token`,`salt`,`cart`,`wishlist`,`newsletter`,`address_id`,`custom_field`,`ip`,`status`,`safe`,`token`,`code`,`date_added`) values (30,241,NULL,1,1,1,'sineth','sim','simsineth855@gmail.com','122','122',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'1',1,NULL,NULL,'2',NULL),(29,239,NULL,1,2,1,'sineth','sim','sim_sineth@ymail.com','12222','2222',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,'33',NULL);



/*Table structure for table `sg_customer_activity` */



DROP TABLE IF EXISTS `sg_customer_activity`;



CREATE TABLE `sg_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_activity` */



/*Table structure for table `sg_customer_group` */



DROP TABLE IF EXISTS `sg_customer_group`;



CREATE TABLE `sg_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_group` */



insert  into `sg_customer_group`(`customer_group_id`,`approval`,`sort_order`) values (1,1,0);



/*Table structure for table `sg_customer_group_description` */



DROP TABLE IF EXISTS `sg_customer_group_description`;



CREATE TABLE `sg_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_group_description` */



insert  into `sg_customer_group_description`(`customer_group_id`,`language_id`,`name`,`description`) values (1,1,'Default','test12');



/*Table structure for table `sg_customer_history` */



DROP TABLE IF EXISTS `sg_customer_history`;



CREATE TABLE `sg_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_history` */



/*Table structure for table `sg_customer_ip` */



DROP TABLE IF EXISTS `sg_customer_ip`;



CREATE TABLE `sg_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_ip` */



insert  into `sg_customer_ip`(`customer_ip_id`,`customer_id`,`ip`,`date_added`) values (1,31,'127.0.0.1','2018-10-20 14:04:35'),(2,32,'127.0.0.1','2018-10-20 14:12:48'),(3,33,'127.0.0.1','2018-10-20 14:12:52'),(4,34,'127.0.0.1','2018-10-20 14:14:54'),(5,35,'127.0.0.1','2018-10-20 14:15:30');



/*Table structure for table `sg_customer_login` */



DROP TABLE IF EXISTS `sg_customer_login`;



CREATE TABLE `sg_customer_login` (
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



/*Data for the table `sg_customer_login` */



/*Table structure for table `sg_customer_online` */



DROP TABLE IF EXISTS `sg_customer_online`;



CREATE TABLE `sg_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_online` */



/*Table structure for table `sg_customer_search` */



DROP TABLE IF EXISTS `sg_customer_search`;



CREATE TABLE `sg_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_search` */



/*Table structure for table `sg_customer_transaction` */



DROP TABLE IF EXISTS `sg_customer_transaction`;



CREATE TABLE `sg_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_transaction` */



/*Table structure for table `sg_customer_wishlist` */



DROP TABLE IF EXISTS `sg_customer_wishlist`;



CREATE TABLE `sg_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_customer_wishlist` */



insert  into `sg_customer_wishlist`(`customer_id`,`product_id`,`date_added`) values (9,46,'2017-02-02 00:00:00'),(9,48,'2017-02-02 00:00:00');



/*Table structure for table `sg_delivery` */



DROP TABLE IF EXISTS `sg_delivery`;



CREATE TABLE `sg_delivery` (
  `delivery_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned DEFAULT NULL,
  `carrier_id` int(10) unsigned NOT NULL,
  `range_price_id` int(10) unsigned DEFAULT NULL,
  `range_weight_id` int(10) unsigned DEFAULT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `zone_id` (`zone_id`),
  KEY `carrier_id` (`carrier_id`,`zone_id`),
  KEY `range_price_id` (`range_price_id`),
  KEY `range_weight_id` (`range_weight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_delivery` */



/*Table structure for table `sg_download` */



DROP TABLE IF EXISTS `sg_download`;



CREATE TABLE `sg_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_download` */



/*Table structure for table `sg_download_description` */



DROP TABLE IF EXISTS `sg_download_description`;



CREATE TABLE `sg_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_download_description` */



/*Table structure for table `sg_event` */



DROP TABLE IF EXISTS `sg_event`;



CREATE TABLE `sg_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;



/*Data for the table `sg_event` */



insert  into `sg_event`(`event_id`,`code`,`trigger`,`action`,`status`,`sort_order`) values (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0);



/*Table structure for table `sg_extension` */



DROP TABLE IF EXISTS `sg_extension`;



CREATE TABLE `sg_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;



/*Data for the table `sg_extension` */



insert  into `sg_extension`(`extension_id`,`type`,`code`) values (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward');



/*Table structure for table `sg_extension_install` */



DROP TABLE IF EXISTS `sg_extension_install`;



CREATE TABLE `sg_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_extension_install` */



/*Table structure for table `sg_extension_path` */



DROP TABLE IF EXISTS `sg_extension_path`;



CREATE TABLE `sg_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_extension_path` */



/*Table structure for table `sg_filter` */



DROP TABLE IF EXISTS `sg_filter`;



CREATE TABLE `sg_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



/*Data for the table `sg_filter` */



insert  into `sg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (1,1,1),(2,2,2),(3,1,3),(4,2,3),(5,3,1),(6,3,2),(7,1,2);



/*Table structure for table `sg_filter_description` */



DROP TABLE IF EXISTS `sg_filter_description`;



CREATE TABLE `sg_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_filter_description` */



insert  into `sg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (1,1,1,'Brand Filter'),(2,1,2,'Size Filter'),(3,1,3,'100-500'),(4,1,3,'500-1000');



/*Table structure for table `sg_filter_group` */



DROP TABLE IF EXISTS `sg_filter_group`;



CREATE TABLE `sg_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



/*Data for the table `sg_filter_group` */



insert  into `sg_filter_group`(`filter_group_id`,`sort_order`) values (1,1),(2,2),(3,3);



/*Table structure for table `sg_filter_group_description` */



DROP TABLE IF EXISTS `sg_filter_group_description`;



CREATE TABLE `sg_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_filter_group_description` */



insert  into `sg_filter_group_description`(`filter_group_id`,`language_id`,`name`) values (1,1,'Group Color'),(2,1,'Group Brand'),(3,1,'Group Price');



/*Table structure for table `sg_geo_zone` */



DROP TABLE IF EXISTS `sg_geo_zone`;



CREATE TABLE `sg_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



/*Data for the table `sg_geo_zone` */



insert  into `sg_geo_zone`(`geo_zone_id`,`name`,`description`,`date_added`,`date_modified`) values (3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24'),(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13');



/*Table structure for table `sg_group_role` */



DROP TABLE IF EXISTS `sg_group_role`;



CREATE TABLE `sg_group_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(5) DEFAULT NULL,
  `remark` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_alert_email` tinyint(1) DEFAULT '0',
  `is_alert_system` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_group_role` */



insert  into `sg_group_role`(`id`,`name`,`group_id`,`remark`,`is_alert_email`,`is_alert_system`,`is_active`) values (7,'Top Admin',1,'',1,1,1),(8,'Reseller Role',5,'',1,1,1);



/*Table structure for table `sg_group_role_detail` */



DROP TABLE IF EXISTS `sg_group_role_detail`;



CREATE TABLE `sg_group_role_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_role_id` int(11) DEFAULT NULL,
  `menu_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `read` int(1) unsigned zerofill DEFAULT '0',
  `write` int(1) unsigned zerofill DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_group_role_detail` */



insert  into `sg_group_role_detail`(`id`,`group_role_id`,`menu_code`,`parent_menu_id`,`menu_id`,`read`,`write`) values (70,7,'sg_m01',0,1,1,1),(71,7,'sg_m02',0,2,1,1),(72,7,'sg_m09',0,3,1,1),(73,7,'sg_m10',0,4,1,1),(74,7,'sg_s25',4,7,1,1),(75,7,'sg_s26',4,8,1,1),(76,7,'sg_s24',4,6,1,1),(77,7,'sg_m26',0,90,1,1),(78,7,'sg_s97',90,92,1,1),(79,7,'sg_s96',90,91,1,1),(80,7,'sg_m11',0,5,1,1),(81,7,'sg_s27',5,9,1,1),(82,7,'sg_s43',5,10,1,1),(83,7,'sg_s42',5,29,1,1),(85,7,'sg_s37',37,24,1,1),(86,7,'sg_s52',37,39,1,1),(87,7,'sg_s89',37,83,1,1),(88,7,'sg_s95',37,89,1,1),(89,7,'sg_s53',37,40,1,1),(90,7,'sg_m21',0,48,1,1),(91,7,'sg_s59',48,49,1,1),(92,7,'sg_m16',0,15,1,1),(93,7,'sg_s66',15,56,1,1),(94,7,'sg_s93',15,87,1,1),(95,7,'sg_s70',15,60,1,1),(96,7,'sg_s30',15,16,1,1),(97,7,'sg_s33',15,19,1,1),(98,7,'sg_s67',15,57,1,1),(99,7,'sg_s65',15,55,1,1),(100,7,'sg_s68',15,58,1,1),(101,7,'sg_m24',0,76,1,1),(102,7,'sg_s84',76,77,1,1),(103,7,'sg_s85',76,78,1,1),(104,7,'sg_m19',0,41,1,1),(105,7,'sg_s54',41,42,1,1),(106,7,'sg_m22',0,62,1,1),(107,7,'sg_s72',62,63,1,1),(108,7,'sg_s75',62,66,1,1),(109,7,'sg_s73',62,64,1,1),(110,7,'sg_s76',62,67,1,1),(111,7,'sg_s74',62,65,1,1),(112,7,'sg_m17',0,21,1,1),(113,7,'sg_s38',21,25,1,1),(114,7,'sg_s39',21,26,1,1),(115,7,'sg_s77',21,68,1,1),(116,7,'sg_m25',0,79,1,1),(117,7,'sg_s86',79,80,1,1),(118,7,'sg_m20',0,44,1,1),(119,7,'sg_s31',44,17,1,1),(120,7,'sg_s57',44,46,1,1),(121,7,'sg_s58',44,47,1,1),(122,7,'sg_m15',0,12,1,1),(123,7,'sg_s94',12,88,1,1),(124,7,'sg_s28',12,13,1,1),(125,7,'sg_s50',12,36,1,1),(126,7,'sg_s45',12,31,1,1),(127,7,'sg_s71',12,61,1,1),(128,7,'sg_s48',12,34,1,1),(129,7,'sg_s36',12,23,1,1),(130,7,'sg_s51',12,38,1,1),(131,7,'sg_s46',12,32,1,1),(132,7,'sg_s82',12,74,1,1),(133,7,'sg_s49',12,35,1,1),(134,7,'sg_s79',12,70,1,1),(135,7,'sg_s44',12,30,1,1),(136,7,'sg_s60',12,50,1,1),(138,7,'sg_s83',12,75,1,1),(139,7,'sg_m23',0,71,1,1),(140,7,'sg_s99',94,96,1,1),(141,7,'sg_m30',0,94,1,1),(142,7,'sg_s100',21,97,1,1),(143,7,'sg_s101',21,98,1,1),(144,7,'sg_s102',21,99,1,1),(145,7,'sg_s103',21,100,1,1),(146,7,'sg_s47',15,33,1,1),(147,7,'sg_s99',12,101,1,1),(148,7,'sg_s104',5,102,1,1),(149,7,'sg_s105',5,103,1,1),(150,7,'sg_s106',5,104,1,1),(151,7,'sg_s107',5,105,1,1),(152,7,'sg_s108',5,106,1,1),(153,7,'sg_s109',5,107,1,1),(154,7,'sg_s110',5,108,1,1),(155,7,'sg_s111',5,109,1,1),(156,7,'sg_s112',5,110,1,1),(157,7,'sg_s113',5,111,1,1),(158,8,'sg_m01',0,1,0,1),(159,8,'sg_m02',0,2,0,1),(160,8,'sg_m09',0,3,0,1),(165,8,'sg_m26',0,90,0,1),(166,8,'sg_s97',90,92,0,1),(167,8,'sg_s96',90,91,0,1),(169,8,'sg_s27',5,9,0,1),(171,8,'sg_s42',5,29,0,1),(172,8,'sg_s37',37,24,0,1),(173,8,'sg_s52',37,39,0,1),(174,8,'sg_s89',37,83,0,1),(175,8,'sg_s95',37,89,0,1),(176,8,'sg_s53',37,40,0,1),(179,8,'sg_m16',0,15,0,1),(180,8,'sg_s66',15,56,0,1),(181,8,'sg_s93',15,87,0,1),(182,8,'sg_s70',15,60,0,1),(183,8,'sg_s30',15,16,0,1),(184,8,'sg_s33',15,19,0,1),(185,8,'sg_s67',15,57,0,1),(186,8,'sg_s65',15,55,0,1),(187,8,'sg_s68',15,58,0,1),(188,8,'sg_m24',0,76,0,1),(189,8,'sg_s84',76,77,0,1),(190,8,'sg_s85',76,78,0,1),(193,8,'sg_m22',0,62,0,1),(194,8,'sg_s72',62,63,0,1),(195,8,'sg_s75',62,66,0,1),(196,8,'sg_s73',62,64,0,1),(197,8,'sg_s76',62,67,0,1),(198,8,'sg_s74',62,65,0,1),(199,8,'sg_m17',0,21,0,1),(201,8,'sg_s39',21,26,0,1),(203,8,'sg_m25',0,79,0,1),(204,8,'sg_s86',79,80,0,1),(205,8,'sg_m20',0,44,0,1),(206,8,'sg_s31',44,17,0,1),(207,8,'sg_s57',44,46,0,1),(208,8,'sg_s58',44,47,0,1),(209,8,'sg_m15',0,12,0,1),(210,8,'sg_s94',12,88,0,1),(212,8,'sg_s50',12,36,0,1),(213,8,'sg_s45',12,31,0,1),(214,8,'sg_s71',12,61,0,1),(217,8,'sg_s51',12,38,0,1),(218,8,'sg_s46',12,32,0,1),(219,8,'sg_s82',12,74,0,1),(220,8,'sg_s49',12,35,0,1),(222,8,'sg_s44',12,30,0,1),(224,8,'sg_s83',12,75,0,1),(225,8,'sg_m23',0,71,0,1),(228,8,'sg_s100',21,97,0,1),(229,8,'sg_s101',21,98,0,1),(231,8,'sg_s103',21,100,0,1),(232,8,'sg_s47',15,33,0,1),(233,8,'sg_s99',12,101,0,1),(244,8,'sg_s102',21,99,0,1),(245,7,'sg_s112',12,112,1,1);



/*Table structure for table `sg_information` */



DROP TABLE IF EXISTS `sg_information`;



CREATE TABLE `sg_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



/*Data for the table `sg_information` */



insert  into `sg_information`(`information_id`,`bottom`,`sort_order`,`status`) values (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(7,1,2,1);



/*Table structure for table `sg_information_description` */



DROP TABLE IF EXISTS `sg_information_description`;



CREATE TABLE `sg_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_information_description` */



insert  into `sg_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (4,1,'About Us','<div class=\"about-page\">\r\n        <div class=\"col-xs-12 col-sm-6\"> \r\n          \r\n          <h1>Welcome to <span class=\"text_color\">Famous</span></h1>\r\n          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lacus metus, convallis ut leo nec, tincidunt eleifend justo. Ut felis orci, hendrerit a pulvinar et, gravida ac lorem. Sed vitae molestie sapien, at sollicitudin tortor.<br />\r\n            <br />\r\n            Duis id volutpat libero, id vestibulum purus.Donec euismod accumsan felis, <a href=\"#\">egestas lobortis velit tempor</a> vitae. Integer eget velit fermentum, dignissim odio non, bibendum velit.</p>\r\n          <ul>\r\n            <li><i class=\"fa fa-arrow-right\"></i>&nbsp; <a href=\"#\">Suspendisse potenti. Morbi mollis tellus ac sapien.</a></li>\r\n            <li><i class=\"fa fa-arrow-right\"></i>&nbsp; <a href=\"#\">Cras id dui. Nam ipsum risus, rutrum vitae, vestibulum eu.</a></li>\r\n            <li><i class=\"fa fa-arrow-right\"></i>&nbsp; <a href=\"#\">Phasellus accumsan cursus velit. Pellentesque egestas.</a></li>\r\n            <li><i class=\"fa fa-arrow-right\"></i>&nbsp; <a href=\"#\">Lorem Ipsum generators on the Internet tend to repeat predefined.</a></li>\r\n          </ul>\r\n        </div>\r\n        <div class=\"col-xs-12 col-sm-6\">\r\n          <div class=\"single-img-add sidebar-add-slider\">\r\n            <div id=\"carousel-example-generic\" class=\"carousel slide\" data-ride=\"carousel\"> \r\n              \r\n              <!-- Wrapper for slides -->\r\n              <div class=\"carousel-inner\" role=\"listbox\">\r\n                <div class=\"item active\"> <img src=\"/assets/frontend/images/about_us_slide1.jpg\" alt=\"slide1\" /> </div>\r\n                <div class=\"item\"> <img src=\"/assets/frontend/images/about_us_slide2.jpg\" alt=\"slide2\" /> </div>\r\n                <div class=\"item\"> <img src=\"/assets/frontend/images/about_us_slide3.jpg\" alt=\"slide3\" /> </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>','About Us','',''),(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;','Meta Title','meta description','meta keyword'),(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','',''),(7,1,'Reseller Registration','Reseller Registration','Meta Title','meta Description','Meta Keyword');



/*Table structure for table `sg_information_to_layout` */



DROP TABLE IF EXISTS `sg_information_to_layout`;



CREATE TABLE `sg_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_information_to_layout` */



/*Table structure for table `sg_information_to_store` */



DROP TABLE IF EXISTS `sg_information_to_store`;



CREATE TABLE `sg_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_information_to_store` */



insert  into `sg_information_to_store`(`information_id`,`store_id`) values (3,1),(4,1),(5,1),(6,1),(7,1);



/*Table structure for table `sg_language` */



DROP TABLE IF EXISTS `sg_language`;



CREATE TABLE `sg_language` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `sg_language` */



insert  into `sg_language`(`language_id`,`name`,`code`,`locale`,`image`,`directory`,`sort_order`,`status`) values (1,'English','en','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1),(2,'Khmer','kh','kh','kh.png','khmer',2,1);



/*Table structure for table `sg_layout` */



DROP TABLE IF EXISTS `sg_layout`;



CREATE TABLE `sg_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



/*Data for the table `sg_layout` */



insert  into `sg_layout`(`layout_id`,`name`) values (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');



/*Table structure for table `sg_layout_module` */



DROP TABLE IF EXISTS `sg_layout_module`;



CREATE TABLE `sg_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;



/*Data for the table `sg_layout_module` */



insert  into `sg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(69,10,'account','column_right',1),(68,6,'account','column_right',1),(67,1,'carousel.29','content_top',3),(66,1,'slideshow.27','content_top',1),(65,1,'featured.28','content_top',2),(72,3,'category','column_left',1),(73,3,'banner.30','column_left',2);



/*Table structure for table `sg_layout_route` */



DROP TABLE IF EXISTS `sg_layout_route`;



CREATE TABLE `sg_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;



/*Data for the table `sg_layout_route` */



insert  into `sg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(44,3,0,'product/category'),(42,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search'),(54,6,1,'account/%'),(55,10,1,'affiliate/%'),(56,3,1,'product/category'),(57,1,1,'common/home'),(58,2,1,'product/product'),(59,11,1,'information/information'),(60,7,1,'checkout/%'),(61,8,1,'information/contact'),(62,9,1,'information/sitemap'),(63,4,1,''),(64,5,1,'product/manufacturer'),(65,12,1,'product/compare'),(66,13,1,'product/search');



/*Table structure for table `sg_length_class` */



DROP TABLE IF EXISTS `sg_length_class`;



CREATE TABLE `sg_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



/*Data for the table `sg_length_class` */



insert  into `sg_length_class`(`length_class_id`,`value`) values (1,'1.00000000'),(2,'10.00000000'),(3,'0.39370000');



/*Table structure for table `sg_length_class_description` */



DROP TABLE IF EXISTS `sg_length_class_description`;



CREATE TABLE `sg_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_length_class_description` */



insert  into `sg_length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in');



/*Table structure for table `sg_location` */



DROP TABLE IF EXISTS `sg_location`;



CREATE TABLE `sg_location` (
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



/*Data for the table `sg_location` */



/*Table structure for table `sg_manufacturer` */



DROP TABLE IF EXISTS `sg_manufacturer`;



CREATE TABLE `sg_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



/*Data for the table `sg_manufacturer` */



insert  into `sg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (5,'HTC','http://localhost:8000/images/uploads/13-Oct-2018/BPjvADOhmP.png',2),(6,'Palm','http://localhost:8000/images/uploads/13-Oct-2018/8M5YqNWevr.png',0),(7,'Hewlett-Packard','http://localhost:8000/images/uploads/20-Oct-2018/w7lWJ8LR3P.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);



/*Table structure for table `sg_manufacturer_to_store` */



DROP TABLE IF EXISTS `sg_manufacturer_to_store`;



CREATE TABLE `sg_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_manufacturer_to_store` */



insert  into `sg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);



/*Table structure for table `sg_menu` */



DROP TABLE IF EXISTS `sg_menu`;



CREATE TABLE `sg_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fa_icon` varchar(20) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `menu_type_id` int(11) NOT NULL DEFAULT '0',
  `menu_link` varchar(64) DEFAULT NULL,
  `menu_code` varchar(50) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `url` varchar(50) DEFAULT NULL,
  `ordering` int(3) DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;



/*Data for the table `sg_menu` */



insert  into `sg_menu`(`id`,`fa_icon`,`parent_id`,`menu_type_id`,`menu_link`,`menu_code`,`default`,`url`,`ordering`,`is_active`,`created_date`,`modified_date`) values (1,'home',0,1,'/admin','sg_m01',1,'/',1,1,NULL,NULL),(2,'dvr',0,1,'/admin/admin','sg_m02',2,'/admin/admin',2,0,NULL,NULL),(4,'person',0,1,'/admin/users','sg_m10',3,NULL,4,1,NULL,NULL),(5,'settings',0,1,'/admin/config/configuration','sg_m11',4,NULL,5,1,NULL,NULL),(6,'dvr',4,1,'/admin/users/list','sg_s24',0,'/admin/users',45,1,NULL,NULL),(7,'dvr',4,1,'/admin/users_group/list','sg_s25',0,'admin/user_group',45,1,NULL,NULL),(8,'dvr',4,1,'/admin/user_role/list','sg_s26',0,'/admin/users_group_role',45,1,NULL,NULL),(10,'dvr',5,1,'/admin/settings/list','sg_s43',0,NULL,45,1,NULL,NULL),(11,'dvr',0,1,'/admin/dashboard','sg_m14',5,NULL,6,1,NULL,NULL),(12,'shuffle',0,1,'/setup/system','sg_m15',6,NULL,16,1,NULL,NULL),(13,'dvr',12,1,'/admin/currencies/list','sg_s28',0,NULL,45,1,NULL,NULL),(15,'shopping_cart',0,1,'/setup/sale','sg_m16',7,NULL,15,1,NULL,NULL),(17,'dvr',44,1,'/admin/customers/list','sg_s31',0,NULL,45,1,NULL,NULL),(21,'local_shipping',0,1,'/setup/sale/stock','sg_m17',8,NULL,14,1,NULL,NULL),(23,'dvr',12,1,'/admin/options/list','sg_s36',0,NULL,45,1,NULL,NULL),(24,'dvr',37,1,'/admin/setup_mgr/item','sg_s37',0,NULL,1,1,NULL,NULL),(25,'dvr',21,1,'/admin/carrier/list','sg_s38',0,NULL,2,1,NULL,NULL),(27,'dvr',21,1,'/setup/sale/stock/bank_account_history','sg_s40',0,NULL,45,0,NULL,NULL),(30,'dvr',12,1,'/admin/attributes/list','sg_s44',0,NULL,45,1,NULL,NULL),(32,'dvr',12,1,'/admin/categories/list','sg_s46',0,NULL,45,1,NULL,NULL),(33,'dvr',12,1,'/admin/products/list','sg_s47',0,NULL,45,1,NULL,NULL),(34,'dvr',12,1,'/admin/informations/list','sg_s48',0,NULL,45,1,NULL,NULL),(36,'dvr',12,1,'/admin/attributes_group/list','sg_s50',0,NULL,45,1,NULL,NULL),(37,'account_balance',0,1,'/setup/item','sg_m18',9,NULL,17,1,NULL,NULL),(38,'dvr',12,1,'/admin/setup_mgr/item_status','sg_s51',0,NULL,45,1,NULL,NULL),(39,'dvr',37,1,'/admin/item_mgr/item_base_store','sg_s52',0,NULL,2,1,NULL,NULL),(40,'dvr',37,1,'/admin/item_mgr/item_base_vendor','sg_s53',0,NULL,5,1,NULL,NULL),(41,'person',0,1,'/mgr/supplier','sg_m19',10,NULL,13,1,NULL,NULL),(42,'dvr',41,1,'/admin/supplier/list','sg_s54',0,NULL,45,1,NULL,NULL),(44,'people',0,1,'/mrg/customer','sg_m20',11,NULL,12,1,NULL,NULL),(46,'dvr',44,1,'/admin/customer_groups/list','sg_s57',0,NULL,45,1,NULL,NULL),(47,'dvr',44,1,'/admin/customer_field/list','sg_s58',0,NULL,45,1,NULL,NULL),(48,'brush',0,1,'/mrg/tool','sg_m21',12,NULL,11,1,NULL,NULL),(49,'dvr',48,1,'/admin/tool_mgr/backup_list','sg_s59',0,NULL,45,1,NULL,NULL),(50,'dvr',12,1,'/admin/languages/list','sg_s60',0,NULL,45,1,NULL,NULL),(60,'dvr',15,1,'/admin/return_order/list','sg_s70',0,NULL,2,1,NULL,NULL),(61,'dvr',12,1,'/admin/manufacturers/list','sg_s71',0,NULL,45,1,NULL,NULL),(62,'show_chart',0,1,'/mrg/report','sg_m22',13,NULL,10,1,NULL,NULL),(63,'dvr',62,1,'/admin/report/revenue_report','sg_s72',0,NULL,45,1,NULL,NULL),(64,'dvr',62,1,'/admin/report/revenue_report','sg_s73',0,NULL,45,1,NULL,NULL),(65,'dvr',62,1,'/admin/report/revenue_report','sg_s74',0,NULL,45,1,NULL,NULL),(66,'dvr',62,1,'/admin/report/revenue_report','sg_s75',0,NULL,45,1,NULL,NULL),(67,'dvr',62,1,'/admin/report/revenue_report','sg_s76',0,NULL,45,1,NULL,NULL),(68,'dvr',21,1,'/admin/carrier/add','sg_s77',0,NULL,1,1,NULL,NULL),(69,'dvr',37,1,'/item_mgr/itemsize','sg_s78',0,NULL,6,1,NULL,NULL),(70,'dvr',12,1,'/admin/stock_status/list','sg_s79',0,NULL,45,1,NULL,NULL),(74,'dvr',12,1,'/admin/filters/list','sg_s82',0,NULL,45,1,NULL,NULL),(76,'assignment',0,1,'/admin/quotation','sg_m24',14,NULL,8,1,NULL,NULL),(77,'dvr',76,1,'/admin/quotation/add','sg_s84',0,NULL,45,1,NULL,NULL),(78,'dvr',76,1,'/admin/quotation/list','sg_s85',0,NULL,45,1,NULL,NULL),(83,'dvr',37,1,'/admin/item_mgr/item_in_stock','sg_s89',0,NULL,3,1,NULL,NULL),(87,'dvr',15,1,'/admin/sale_order/list','sg_s93',0,NULL,1,1,NULL,NULL),(88,'dvr',12,1,'/admin/downloads/list','sg_s94',0,NULL,0,1,NULL,NULL),(89,'dvr',37,1,'/admin/item_mgr/item_barcode','sg_s95',0,NULL,4,1,NULL,NULL),(93,'dvr',90,1,'/admin/discount/discount_permission','sg_s98',0,NULL,0,1,NULL,NULL),(94,'person',0,1,'/admin/vendor','sg_m30',15,NULL,18,1,NULL,NULL),(96,'dvr',94,1,'/admin/reseller/list','sg_s99',0,NULL,0,1,NULL,NULL),(97,NULL,21,1,'/admin/shipment/list','sg_s100',0,NULL,3,1,NULL,NULL),(98,NULL,21,1,'/admin/delivery/list','sg_s101',0,NULL,4,1,NULL,NULL),(99,NULL,21,1,'/admin/undelivery/list','sg_s102',0,NULL,5,1,NULL,NULL),(100,NULL,21,1,'/admin/pickups/list','sg_s103',0,NULL,6,1,NULL,NULL),(101,'dvr',12,1,'/admin/filters_group/list','sg_s99',0,NULL,0,1,NULL,NULL),(102,NULL,5,1,'/admin/stock_status/list','sg_s104',0,NULL,0,1,NULL,NULL),(103,NULL,5,1,'/admin/order_status/list','sg_s105',0,NULL,0,1,NULL,NULL),(104,NULL,5,1,'/admin/credit_type/list','sg_s106',0,NULL,0,1,NULL,NULL),(105,NULL,5,1,'/admin/credit_type_value/list','sg_s107',0,NULL,0,1,NULL,NULL),(106,NULL,5,1,'/admin/tax_class/list','sg_s108',0,NULL,0,1,NULL,NULL),(107,NULL,5,1,'/admin/tax_rule/list','sg_s109',0,NULL,0,1,NULL,NULL),(108,NULL,5,1,'/admin/tax_rate/list','sg_s100',0,NULL,0,1,NULL,NULL),(109,NULL,5,1,'/admin/tax_rate_customer_group/list','sg_s101',0,NULL,0,1,NULL,NULL),(110,NULL,5,1,'/admin/weights/list','sg_s102',0,NULL,0,1,NULL,NULL),(111,NULL,5,1,'/admin/lengths/list','sg_s103',0,NULL,0,1,NULL,NULL),(112,NULL,12,1,'/admin/category_type/list','sg_s104',0,NULL,45,1,NULL,NULL);



/*Table structure for table `sg_menu_description` */



DROP TABLE IF EXISTS `sg_menu_description`;



CREATE TABLE `sg_menu_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;



/*Data for the table `sg_menu_description` */



insert  into `sg_menu_description`(`id`,`menu_id`,`language_id`,`name`,`meta_description`,`meta_keywords`) values (1,1,2,'Home',NULL,NULL),(2,2,2,'Administrator',NULL,NULL),(4,4,2,'Users',NULL,NULL),(5,5,2,'Systems',NULL,NULL),(7,7,2,'User groups',NULL,NULL),(8,8,2,'Group roles',NULL,NULL),(10,10,2,'Configuration',NULL,NULL),(77,6,2,'Users',NULL,NULL),(78,12,2,'Catalog',NULL,NULL),(79,13,2,'Currency Rates',NULL,NULL),(81,15,2,'Sales',NULL,NULL),(83,17,2,'Customers',NULL,NULL),(84,18,2,'Quotation',NULL,NULL),(87,21,2,'Shippings',NULL,NULL),(89,23,2,'Options',NULL,NULL),(90,24,2,'Expense',NULL,NULL),(91,25,2,'Carriers List',NULL,NULL),(95,30,2,'Attributes',NULL,NULL),(96,31,2,'Positions',NULL,NULL),(97,32,2,'Categories',NULL,NULL),(98,33,2,'Products',NULL,NULL),(99,34,2,'Information',NULL,NULL),(101,36,2,'Attribute Groups',NULL,NULL),(102,37,2,'Accounts',NULL,NULL),(103,38,2,'Reviews',NULL,NULL),(104,39,2,'Account Payable',NULL,NULL),(105,40,2,'Out Standing Invoice',NULL,NULL),(106,41,2,'Suppliers',NULL,NULL),(107,42,2,'Suppliers',NULL,NULL),(109,44,2,'Customers',NULL,NULL),(111,46,2,'Customer Groups',NULL,NULL),(112,47,2,'Customer Fields',NULL,NULL),(113,48,2,'Tools',NULL,NULL),(114,49,2,'Back Up / Restore',NULL,NULL),(115,50,2,'Language',NULL,NULL),(125,60,2,'Return Order',NULL,NULL),(126,62,2,'Reports',NULL,NULL),(127,63,2,'Tax',NULL,NULL),(128,64,2,'Orders',NULL,NULL),(129,65,2,'Return',NULL,NULL),(130,66,2,'Shipping',NULL,NULL),(131,67,2,'Customer Orders',NULL,NULL),(132,68,2,'Add Carriers',NULL,NULL),(133,61,2,'Manufacturers',NULL,NULL),(138,74,2,'Filters',NULL,NULL),(139,75,2,'Item Type',NULL,NULL),(140,76,2,'Quotation',NULL,NULL),(141,77,2,'Quotation From',NULL,NULL),(142,78,2,'Quotation List',NULL,NULL),(147,83,2,'Couriers Expense',NULL,NULL),(151,87,2,'Sale Orders',NULL,NULL),(152,88,2,'Download',NULL,NULL),(153,70,2,'Stock Type',NULL,NULL),(154,89,2,'Reseller Payment',NULL,NULL),(158,93,2,'Discount Permission',NULL,NULL),(159,96,2,'Reseller List',NULL,NULL),(160,94,2,'Resellers',NULL,NULL),(161,97,2,'All Order Shipments',NULL,NULL),(162,98,2,'Delivered Shipment',NULL,NULL),(163,99,2,'Undelivered Shipment',NULL,NULL),(164,100,2,'Pickup Lists',NULL,NULL),(165,101,2,'Filter Groups',NULL,NULL),(166,102,2,'Stock Status',NULL,NULL),(167,103,2,'Order Status',NULL,NULL),(168,104,2,'Credit Type',NULL,NULL),(169,105,2,'Credit Type Value',NULL,NULL),(170,106,2,'Tax Class',NULL,NULL),(171,107,2,'Tax Rule',NULL,NULL),(172,108,2,'Tax Rate',NULL,NULL),(173,109,2,'Tax Rate Customer Group',NULL,NULL),(174,110,2,'Weights',NULL,NULL),(175,111,2,'Lengths',NULL,NULL),(176,112,2,'Category Type',NULL,NULL);



/*Table structure for table `sg_migrations` */



DROP TABLE IF EXISTS `sg_migrations`;



CREATE TABLE `sg_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_migrations` */



insert  into `sg_migrations`(`id`,`migration`,`batch`) values (1,'2016_06_01_000001_create_oauth_auth_codes_table',1),(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(4,'2016_06_01_000004_create_oauth_clients_table',1),(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);



/*Table structure for table `sg_module` */



DROP TABLE IF EXISTS `sg_module`;



CREATE TABLE `sg_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;



/*Data for the table `sg_module` */



insert  into `sg_module`(`module_id`,`name`,`code`,`setting`) values (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),(28,'Home Page','featured','{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');



/*Table structure for table `sg_oauth_access_tokens` */



DROP TABLE IF EXISTS `sg_oauth_access_tokens`;



CREATE TABLE `sg_oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_oauth_access_tokens` */



insert  into `sg_oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values ('011a93aa4a1f672956d79765dee4ec877e1470005937b39bfac3eed739a61c8be50a171cf55ae027',3,1,'Token Name','[]',0,'2018-02-25 21:38:36','2018-02-25 21:38:36','2019-02-25 21:38:36'),('c3e837833b611f13ef8ccc47631fcad7696b3737e5d4fd4e08b9f287aa35210e42daab5609b1ae56',3,1,'Token Name','[]',0,'2018-02-25 21:40:03','2018-02-25 21:40:03','2019-02-25 21:40:03'),('fd5cb3da01304f6f40f24870250e02558d4eb1b9cdd02e7e9368e59c8050aa6c7381d14ca9405b24',3,1,'Token Name','[]',0,'2018-02-25 21:40:08','2018-02-25 21:40:08','2019-02-25 21:40:08'),('c425c4249a3ae4616f38c306e89076e566969ff0e132d5881551f6b48cbaa1bbc1d3fb2847e4b66e',3,1,'Token Name','[]',0,'2018-02-25 21:46:21','2018-02-25 21:46:21','2019-02-25 21:46:21'),('8de0e8161898cb9f2feca63590ad20c5877915fe3f314f8d28df7071e02ff2efdf92324c182fc6d5',3,1,'Token Name','[]',0,'2018-02-25 22:06:29','2018-02-25 22:06:29','2019-02-25 22:06:29'),('89a72739f84227b852b648c618978abde3e042d1617086fd68ee890ef49f7ac7733587c5bd763c0d',3,1,'Token Name','[]',0,'2018-02-25 22:20:48','2018-02-25 22:20:48','2019-02-25 22:20:48'),('34964bac7d0f8507876da2259c741f53fc5218971e2ca11caca46c47fe13012049c0c561ad6b1960',3,1,'Token Name','[]',0,'2018-02-25 22:22:57','2018-02-25 22:22:57','2019-02-25 22:22:57'),('d70dc83a91c336cbf48f765f92f7f54c3ae825fe2e3ac3b752fe6276b78af0e0dd3b58ca5e064bb3',3,1,'Token Name','[]',0,'2018-02-25 22:25:44','2018-02-25 22:25:44','2019-02-25 22:25:44'),('a194324e1b2a1e8b83dc16e61ccc867edc3f8c4422fde606ffce9d2a7eec70652ebf7278a59fc6b8',3,1,'Token Name','[]',0,'2018-02-25 22:25:48','2018-02-25 22:25:48','2019-02-25 22:25:48'),('73d662cbe115b06da2d7cb2665236de30c7fefe1bbe4ebcb111b0e0aa6f7412b34c70e991467fd65',3,1,'Token Name','[]',0,'2018-02-25 22:26:44','2018-02-25 22:26:44','2019-02-25 22:26:44'),('91458c9865848005fa5ba4d9c87f560e869b07fd888c3de1da432229c3e17969ff0409af9a03e0c0',3,1,'Token Name','[]',0,'2018-02-25 22:26:48','2018-02-25 22:26:48','2019-02-25 22:26:48'),('192c757623b1d1db8a314e6da413cad236ffa6179a4cbdfb83ab2006db265b033fb9f0e9238dea52',3,1,'Token Name','[]',0,'2018-02-25 22:26:53','2018-02-25 22:26:53','2019-02-25 22:26:53'),('bc3b0bc69c2b552ee5ab614bdb9f28a2d830d6cbf7cce599b09951a17c57b86a370dd093e45962ef',3,1,'Token Name','[]',0,'2018-02-25 22:27:17','2018-02-25 22:27:17','2019-02-25 22:27:17'),('06adce7149a9db2ae2c832318ac6f485d3241ad26cb7f3f1844be61121eb4f715b38a4e5e2db40c5',3,1,'Token Name','[]',0,'2018-02-25 22:40:09','2018-02-25 22:40:09','2019-02-25 22:40:09'),('52cd987312429d5da2db7b72c56e177b279d7f63533e9a3d167cfd13d0a893f023019015bfc7a2a4',3,1,'Token Name','[]',0,'2018-02-25 23:48:58','2018-02-25 23:48:58','2019-02-25 23:48:58'),('ad76972f8e0272cd2642de8cb1a559a04fa81dd0feee1534666d90fc4041d3b743372e8232a5ab69',3,1,'Token Name','[]',0,'2018-02-25 23:51:53','2018-02-25 23:51:53','2019-02-25 23:51:53'),('e665af3df877dfe831b13ee35f55b9b6403533768cb0c0b95a306e65f77296c100e46c7893ec6d52',13,1,'Token Name','[]',0,'2018-02-26 00:08:22','2018-02-26 00:08:22','2019-02-26 00:08:22'),('832c84302a462b8deaf0cc41ad697aa7066b94b6a012b72bcd62c8fae4ace2d30636da48b2934aa5',14,1,'Token Name','[]',0,'2018-02-26 00:09:18','2018-02-26 00:09:18','2019-02-26 00:09:18'),('b090c0ff2fa1684fb0ba63a5af680e3d9576e88bca8183dc59e2e8ab9138351b1713a228b189bb9a',3,1,'Token Name','[]',0,'2018-03-05 21:40:20','2018-03-05 21:40:20','2019-03-05 21:40:20'),('0929482ff08d9c39ab91c455cfa2899e0c4ca3ee995958e33744926d7b1780b968483296316765b6',3,1,'Token Name','[]',0,'2018-03-10 19:36:31','2018-03-10 19:36:31','2019-03-10 19:36:31'),('8e8e456eef5b826351132ebc33187afd67e94965f131c4413cd3d7b671391912c40960328879e431',3,1,'Token Name','[]',0,'2018-03-11 13:19:06','2018-03-11 13:19:06','2019-03-11 13:19:06'),('73bfba602b46885dfd471166c605b0dd370c2d419585b90015225ac4453aa4649c862e1bff1cada0',3,1,'Token Name','[]',0,'2018-03-14 12:03:55','2018-03-14 12:03:55','2019-03-14 12:03:55'),('010b584132dd13931dc226e66d0e275d44b8acce1ebfb5c04d57927be0fd09330b13fd1c2a2ac246',3,1,'Token Name','[]',0,'2018-03-14 21:59:47','2018-03-14 21:59:47','2019-03-14 21:59:47'),('2b71eed7b3989576cd49c53def1b5c2c7cfc7113000a1c2f3bf0150643a12818e43968dac23e1a45',3,1,'Token Name','[]',0,'2018-03-14 22:00:41','2018-03-14 22:00:41','2019-03-14 22:00:41'),('4d372e9d8a8bf52a86aad33df8dca8cd86e3d17f2170a1110c4681a948782a821538e81355b4b3ab',222,1,'Token Name','[]',0,'2018-03-22 13:22:18','2018-03-22 13:22:18','2019-03-22 13:22:18'),('dd9223e7a6414e358f8cefd8cb96ef947a17048eede48fbc9d74f43460a15cf405000e52a56af9e4',222,1,'Token Name','[]',0,'2018-03-24 12:18:24','2018-03-24 12:18:24','2019-03-24 12:18:24'),('b24720d1be59b6801e29a376088d8dc04dd55c59ac41855e263e56e2266102938a7b1370e369e15f',1,1,'Token Name','[]',0,'2018-03-24 12:19:49','2018-03-24 12:19:49','2019-03-24 12:19:49'),('b2abedd0ccafc64219d24026d75c43fa548f66f6d128ad46ad0d1b441dd575a4689337573536e155',223,1,'Token Name','[]',0,'2018-03-25 22:19:27','2018-03-25 22:19:27','2019-03-25 22:19:27'),('aed6f5d6c29e08b9727d0190ebebe0398b0a9eecf977de64f947ad12a71312de983f5c42ace367dd',224,1,'Token Name','[]',0,'2018-03-25 22:19:59','2018-03-25 22:19:59','2019-03-25 22:19:59'),('aa450453f495cbb7cdfec4efe124eee47ccff465bc26add5da9c6c0a42f6432a36cfb40973fbac9c',225,1,'Token Name','[]',0,'2018-03-25 22:21:35','2018-03-25 22:21:35','2019-03-25 22:21:35'),('88d6cdda05f71cbdcf4019e0279d2a4cc0917b8c7ba247dd406a54c421dc72b73a6c0516fca8284e',226,1,'Token Name','[]',0,'2018-03-25 22:22:10','2018-03-25 22:22:10','2019-03-25 22:22:10'),('d71f90e47112df65dc4c403df17fcf08d9fc1e30b607952fa6b7df8f89669810687459d5db69341c',227,1,'Token Name','[]',0,'2018-03-25 22:27:06','2018-03-25 22:27:06','2019-03-25 22:27:06'),('7e3b7c5706f611ad06c03210a9654727ec916c9d15e3b430bdb4bf68964324c567ef43965fd5a64d',228,1,'Token Name','[]',0,'2018-03-25 22:37:45','2018-03-25 22:37:45','2019-03-25 22:37:45'),('fcf2c0034652b421d5f8f35fbbde19ef16a1ff9e414264190ab1f3ece13dc7ea532741a1d9ba6cb5',229,1,'Token Name','[]',0,'2018-03-25 22:43:44','2018-03-25 22:43:44','2019-03-25 22:43:44'),('ec43ff98288505aa249385ef936999673dc3ed2b4361b718f67ab4e7496de11cf78cf00dfa75c8c8',230,1,'Token Name','[]',0,'2018-03-25 22:44:16','2018-03-25 22:44:16','2019-03-25 22:44:16'),('0f3c97c6eda08e7f50d67c6ea562d09e42e1bd1f6ca40f95049b9b6e6abfee07701552fc1b1b573d',231,1,'Token Name','[]',0,'2018-03-25 22:49:05','2018-03-25 22:49:05','2019-03-25 22:49:05'),('48316a47416dbe67e95824c4ce03eeee4898adbc2824cec8359485d57f4c60456cd5c71719b326ff',231,1,'Token Name','[]',0,'2018-03-25 22:54:55','2018-03-25 22:54:55','2019-03-25 22:54:55'),('c6d74ec7c9f804842668be92a897e3fe7a509e578fd306b2d6f16c011d70184c8e17f8dd646fef91',232,1,'Token Name','[]',0,'2018-03-25 22:58:43','2018-03-25 22:58:43','2019-03-25 22:58:43'),('b3434cdc00221f04432b45263a802885706d22ee6cadbdf0cec21f4be3deee2ef58fc4b8f2b0df33',231,1,'Token Name','[]',0,'2018-03-26 13:03:00','2018-03-26 13:03:00','2019-03-26 13:03:00'),('a46a22c24cf8a61dbb7a40ff020539df8324fcafb98bd1a83bf28e7da0091ab0b8a3e206f6d0f066',1,1,'Token Name','[]',0,'2018-03-26 13:35:58','2018-03-26 13:35:58','2019-03-26 13:35:58'),('208ade4b3b3e61f9d260bfe0e904b7e0a092c0f29ef653e0282fa18c45f2f72192db6e7f52faf85c',231,1,'Token Name','[]',0,'2018-03-26 20:11:36','2018-03-26 20:11:36','2019-03-26 20:11:36'),('e7077e85031e8ce53838212c02a42a6002cd7d66d2110cf2e5fb44562420fbc0d201416f16eb5f9d',231,1,'Token Name','[]',0,'2018-03-26 20:18:04','2018-03-26 20:18:04','2019-03-26 20:18:04'),('e34bc4b9b3b689a617fc7abe654b45efdd3ea41ee91a077053a5a714ddfc4ba7276f25c0a4ba32a0',233,1,'Token Name','[]',0,'2018-03-26 20:18:24','2018-03-26 20:18:24','2019-03-26 20:18:24'),('d32fb6b4983394b34bb1e067b59e450f4148d3ab326b33bd80cf4449140e0ef19e2bd4d661079f85',231,1,'Token Name','[]',0,'2018-03-26 20:19:13','2018-03-26 20:19:13','2019-03-26 20:19:13'),('a96fabc79f9c66503c7cf2080434d577a6da3cb0636c96785bec672ee233ef2700a81c40910224ed',235,1,'Token Name','[]',0,'2018-04-06 20:24:47','2018-04-06 20:24:47','2019-04-06 20:24:47'),('94d8cde93a1b9ad8bcaa1b41f1ca72032d2f12a2a25af645b73a9e95f7aa31520e79d114df5677e2',236,1,'Token Name','[]',0,'2018-05-19 13:51:29','2018-05-19 13:51:29','2019-05-19 13:51:29'),('9e115f17744c6cd8d10e27f14a425356a3888968e0bb56533f157a01fb1aa2fe5fdd2f6038a7054e',231,1,'Token Name','[]',0,'2018-05-29 21:03:47','2018-05-29 21:03:47','2019-05-29 21:03:47'),('0f20caf57ca07e443633e808c7ef38eaf9c66a296f7fe6ddc1e3a5827c42555cd777d32105c36c4f',239,1,'Token Name','[]',0,'2018-07-02 21:05:22','2018-07-02 21:05:22','2019-07-02 21:05:22'),('ce8cc5c2fce9f5eddd7875c71458bf37ef667aac7a11054215e6260ce0b4f04e18635130cfdbcc96',241,1,'Token Name','[]',0,'2018-09-24 23:57:36','2018-09-24 23:57:36','2019-09-24 23:57:36');



/*Table structure for table `sg_oauth_auth_codes` */



DROP TABLE IF EXISTS `sg_oauth_auth_codes`;



CREATE TABLE `sg_oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_oauth_auth_codes` */



/*Table structure for table `sg_oauth_clients` */



DROP TABLE IF EXISTS `sg_oauth_clients`;



CREATE TABLE `sg_oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_oauth_clients` */



insert  into `sg_oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'Laravel Personal Access Client','HQIMPL7mFdRJo0JlcwXvJ81RPBzldwffhTjlpcxJ','http://localhost',1,0,0,'2018-02-25 21:15:17','2018-02-25 21:15:17'),(2,NULL,'Laravel Password Grant Client','BSHiMm3xKEcDTGF2Jth8J83rmCRpolsRTcAENYjq','http://localhost',0,1,0,'2018-02-25 21:15:17','2018-02-25 21:15:17'),(3,3,'ecommerce mobile','ZzFKyyFobfbVjRJlazi8RIjx1BeVfeVbVGAYJE3o','http://localhost',0,0,0,'2018-02-25 21:18:36','2018-02-25 21:18:36');



/*Table structure for table `sg_oauth_personal_access_clients` */



DROP TABLE IF EXISTS `sg_oauth_personal_access_clients`;



CREATE TABLE `sg_oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_oauth_personal_access_clients` */



insert  into `sg_oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2018-02-25 21:15:17','2018-02-25 21:15:17');



/*Table structure for table `sg_oauth_refresh_tokens` */



DROP TABLE IF EXISTS `sg_oauth_refresh_tokens`;



CREATE TABLE `sg_oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_oauth_refresh_tokens` */



/*Table structure for table `sg_option` */



DROP TABLE IF EXISTS `sg_option`;



CREATE TABLE `sg_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



/*Data for the table `sg_option` */



insert  into `sg_option`(`option_id`,`type`,`sort_order`) values (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11),(13,'color',12);



/*Table structure for table `sg_option_description` */



DROP TABLE IF EXISTS `sg_option_description`;



CREATE TABLE `sg_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_option_description` */



insert  into `sg_option_description`(`option_id`,`language_id`,`name`) values (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size'),(13,1,'Color');



/*Table structure for table `sg_option_value` */



DROP TABLE IF EXISTS `sg_option_value`;



CREATE TABLE `sg_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `option_size_id` int(11) DEFAULT '0',
  `is_instock` int(1) DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `value` varchar(120) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;



/*Data for the table `sg_option_value` */



insert  into `sg_option_value`(`option_value_id`,`option_id`,`option_size_id`,`is_instock`,`image`,`value`,`sort_order`) values (43,1,0,0,'',NULL,3),(32,1,0,0,'',NULL,1),(45,2,0,0,'',NULL,4),(44,13,0,0,'',NULL,3),(42,13,0,0,'','orange',4),(41,13,0,0,'','green',3),(39,13,0,0,'','#f00',1),(40,13,0,0,'','blue',2),(31,1,0,0,'',NULL,2),(23,2,0,0,'',NULL,1),(24,2,0,0,'',NULL,2),(46,11,0,0,'',NULL,1),(47,11,0,0,'',NULL,2),(48,11,0,0,'',NULL,3);



/*Table structure for table `sg_option_value_description` */



DROP TABLE IF EXISTS `sg_option_value_description`;



CREATE TABLE `sg_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_option_value_description` */



insert  into `sg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (43,1,1,'Large'),(32,1,1,'1'),(45,1,2,'X-Small'),(44,1,13,'Small'),(31,1,1,'Medium'),(42,1,13,'Yellow'),(41,1,13,'Green'),(39,1,13,'Red'),(40,1,13,'Blue'),(23,1,2,'Large'),(24,1,2,'Medium'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small');



/*Table structure for table `sg_order` */



DROP TABLE IF EXISTS `sg_order`;



CREATE TABLE `sg_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_courier_id` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



/*Data for the table `sg_order` */



insert  into `sg_order`(`order_id`,`shipping_courier_id`,`invoice_no`,`invoice_prefix`,`store_id`,`store_name`,`store_url`,`customer_id`,`customer_group_id`,`firstname`,`lastname`,`email`,`telephone`,`fax`,`custom_field`,`payment_firstname`,`payment_lastname`,`payment_company`,`payment_address_1`,`payment_address_2`,`payment_city`,`payment_postcode`,`payment_country`,`payment_country_id`,`payment_zone`,`payment_zone_id`,`payment_address_format`,`payment_custom_field`,`payment_method`,`payment_code`,`shipping_firstname`,`shipping_lastname`,`shipping_company`,`shipping_address_1`,`shipping_address_2`,`shipping_city`,`shipping_postcode`,`shipping_country`,`shipping_country_id`,`shipping_zone`,`shipping_zone_id`,`shipping_address_format`,`shipping_custom_field`,`shipping_method`,`shipping_code`,`comment`,`total`,`order_status_id`,`affiliate_id`,`commission`,`marketing_id`,`tracking`,`language_id`,`currency_id`,`currency_code`,`currency_value`,`ip`,`forwarded_ip`,`user_agent`,`accept_language`,`date_added`,`date_modified`) values (1,1,0,'INV-2013-00',1,'Your Store','http://localhost:81/open_cart/upload/',9,1,'sim','longdy','longdy@gamil.com','081396171','619','','sim','longdy','sg_khmer','Phnom Penh','','Phnom Penh','619','Cambodia',36,'Kampong Speu',575,'','[]','Cash On Delivery','cod','sim','longdy','sg_khmer','Phnom Penh','','Phnom Penh','619','Cambodia',36,'Kampong Speu',575,'','[]','Flat Shipping Rate','0001222','','105.0000',1,0,'0.0000',0,'',1,2,'USD','1.00000000','::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','en-US,en;q=0.9','2018-01-02 20:49:42','2018-01-02 20:49:44'),(2,1,0,'INV-2013-00',1,'Your Store','http://localhost:81/open_cart/upload/',9,1,'sim','longdy','longdy@gamil.com','081396171','619','','sim','longdy','sg_khmer','Phnom Penh','','Phnom Penh','619','Cambodia',36,'Kampong Speu',575,'','[]','Cash On Delivery','cod','sim','longdy','sg_khmer','Phnom Penh','','Phnom Penh','619','Cambodia',36,'Kampong Speu',575,'','[]','Flat Shipping Rate','0001222','','105.0000',1,0,'0.0000',0,'',1,2,'USD','1.00000000','::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','en-US,en;q=0.9','2018-01-02 20:49:42','2018-01-02 20:49:44');



/*Table structure for table `sg_order_history` */



DROP TABLE IF EXISTS `sg_order_history`;



CREATE TABLE `sg_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `sg_order_history` */



insert  into `sg_order_history`(`order_history_id`,`order_id`,`order_status_id`,`notify`,`comment`,`date_added`) values (1,1,1,0,'es','0000-00-00 00:00:00');



/*Table structure for table `sg_order_option` */



DROP TABLE IF EXISTS `sg_order_option`;



CREATE TABLE `sg_order_option` (
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



/*Data for the table `sg_order_option` */



/*Table structure for table `sg_order_payment` */



DROP TABLE IF EXISTS `sg_order_payment`;



CREATE TABLE `sg_order_payment` (
  `order_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_number` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_brand` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_expiration` char(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_holder` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`order_payment_id`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_order_payment` */



insert  into `sg_order_payment`(`order_payment_id`,`order_reference`,`currency_id`,`amount`,`payment_method`,`conversion_rate`,`transaction_id`,`card_number`,`card_brand`,`card_expiration`,`card_holder`,`date_add`) values (1,'1',1,'200.00','Bank Transfer','1.000000','12','002','220','02','SIM SINETH','2018-02-02 00:00:00');



/*Table structure for table `sg_order_product` */



DROP TABLE IF EXISTS `sg_order_product`;



CREATE TABLE `sg_order_product` (
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
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



/*Data for the table `sg_order_product` */



insert  into `sg_order_product`(`order_product_id`,`order_id`,`product_id`,`name`,`model`,`quantity`,`price`,`total`,`tax`,`reward`) values (1,1,162,'HEADPHONES & HEADSETS - IN-EAR HEADPHONES','product 20',1,'100.0000','100.0000','0.0000',0),(2,1,5,'HEADPHONES & HEADSETS - OVER-THE-EAR HEADPHONES','HEADPHONES & HEADSETS - OVER-THE-EAR HEADPHONES',1,'111.0000','11.0000','1.0000',0),(3,1,4,'WIRELESS EARBUDS','WIRELESS EARBUDS',1,'20.0000','20.0000','20.0000',0),(4,1,3,'SAMSUNG SYNCMASTER 941BW','SAMSUNG SYNCMASTER 941BW',1,'20.0000','20.0000','20.0000',0);



/*Table structure for table `sg_order_shipment` */



DROP TABLE IF EXISTS `sg_order_shipment`;



CREATE TABLE `sg_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `carrier_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `shipping_cost_tax_excl` float(11,4) NOT NULL DEFAULT '0.0000',
  `shipping_cost_tax_incl` float(11,4) NOT NULL DEFAULT '0.0000',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  `expected_delivery_date` datetime DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `pickup_time` time DEFAULT NULL,
  `origin_pick_up` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `sg_order_shipment` */



insert  into `sg_order_shipment`(`order_shipment_id`,`carrier_id`,`order_id`,`weight`,`shipping_cost_tax_excl`,`shipping_cost_tax_incl`,`tracking_number`,`expected_delivery_date`,`pickup_date`,`pickup_time`,`origin_pick_up`,`destination`,`date_added`) values (1,3,1,0,0.0000,0.0000,'243','2017-02-02 00:00:00','2018-02-02','12:00:00','Phnom Penh','Kompong Som',NULL);



/*Table structure for table `sg_order_status` */



DROP TABLE IF EXISTS `sg_order_status`;



CREATE TABLE `sg_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;



/*Data for the table `sg_order_status` */



insert  into `sg_order_status`(`order_status_id`,`language_id`,`name`) values (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired'),(17,1,'Pick Up');



/*Table structure for table `sg_order_total` */



DROP TABLE IF EXISTS `sg_order_total`;



CREATE TABLE `sg_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `sg_order_total` */



insert  into `sg_order_total`(`order_total_id`,`order_id`,`code`,`title`,`value`,`sort_order`) values (1,1,'sub_total','Sub-Total','100.0000',1),(2,1,'shipping','Flat Shipping Rate','5.0000',3),(3,1,'total','Total','105.0000',9);



/*Table structure for table `sg_payment_configuration` */



DROP TABLE IF EXISTS `sg_payment_configuration`;



CREATE TABLE `sg_payment_configuration` (
  `payment_configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `payment_method_id` int(2) NOT NULL,
  `code` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `serialized` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payment_configuration_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_payment_configuration` */



insert  into `sg_payment_configuration`(`payment_configuration_id`,`store_id`,`payment_method_id`,`code`,`key`,`value`,`serialized`) values (1,1,1,'config','config_account_owner','0001212 add',1),(2,1,1,'config','config_account_detail','Acelidaaddress',1),(3,1,1,'config','config_bank_address','#Phnom Penh, Cambodia asss',1),(4,1,2,'config','config_payee','Payee 0022',1),(5,1,2,'config','config_payee_address','#Phnom Penh, Cambodia.s',1);



/*Table structure for table `sg_payment_method` */



DROP TABLE IF EXISTS `sg_payment_method`;



CREATE TABLE `sg_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`payment_method_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_payment_method` */



insert  into `sg_payment_method`(`payment_method_id`,`name`,`remark`,`status`) values (1,'Bank Transfer','Bank Transfer',1),(2,'Payment By Check','Payment By Check',1),(3,'Cash On Delivery','Cash On Delivery',1);



/*Table structure for table `sg_product` */



DROP TABLE IF EXISTS `sg_product`;



CREATE TABLE `sg_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) DEFAULT NULL,
  `sku` varchar(64) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ean` varchar(14) DEFAULT NULL,
  `jan` varchar(13) DEFAULT NULL,
  `isbn` varchar(17) DEFAULT NULL,
  `mpn` varchar(64) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `quantity` int(4) DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `shipping` tinyint(1) DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) DEFAULT '0',
  `tax_class_id` int(11) DEFAULT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) DEFAULT '0.00000000',
  `weight_class_id` int(11) DEFAULT '0',
  `length` decimal(15,8) DEFAULT '0.00000000',
  `width` decimal(15,8) DEFAULT '0.00000000',
  `height` decimal(15,8) DEFAULT '0.00000000',
  `length_class_id` int(11) DEFAULT '0',
  `subtract` tinyint(1) DEFAULT '1',
  `minimum` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `viewed` int(5) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;



/*Data for the table `sg_product` */



insert  into `sg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (23,'Souvenir','001',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'http://localhost:8000/images/uploads/11-Oct-2018/2QMpNjPiT4.png',6,1,'120.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 08:01:44','2018-10-12 03:28:45'),(2,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b058c975cead.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-19 11:17:30','2018-06-19 11:17:30'),(3,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b058ca466d4f.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 10:45:40','2018-05-23 10:45:40'),(4,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b058cb0c5511.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 10:45:52','2018-05-23 10:45:52'),(5,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064b516ad2c.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:19:13','2018-05-24 12:19:13'),(6,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064b5d70c38.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:19:25','2018-05-24 12:19:25'),(7,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064b698c070.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:19:37','2018-05-24 12:19:37'),(8,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064b7742a5f.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:19:51','2018-10-07 10:48:43'),(9,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064b8448612.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:20:04','2018-10-07 04:37:13'),(10,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064b9315200.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:20:19','2018-10-08 02:13:38'),(11,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064ba13ad75.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:20:33','2018-10-09 08:08:58'),(12,'MX-120','100',NULL,NULL,NULL,NULL,NULL,'location',20,7,'images/uploads/04-Oct-2018/AmvobSZhh2.png',10,1,'300.0000',0,9,'2018-10-08','10.00000000',1,'2.00000000','3.00000000','4.00000000',1,1,1,1,1,0,'2018-05-24 12:20:46','2018-10-04 08:32:12'),(13,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064bbf8f791.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:21:03','2018-10-09 08:12:23'),(14,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b057e8850cd5.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 09:47:43','2018-05-23 09:47:43'),(15,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b064bcc1eed0.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-24 12:21:16','2018-10-10 04:13:31'),(16,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b057e8850cd5.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 09:47:43','2018-05-23 09:47:43'),(17,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b057e8850cd5.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 09:47:43','2018-05-23 09:47:43'),(18,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b057e8850cd5.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 09:47:43','2018-05-23 09:47:43'),(19,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b057e8850cd5.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 09:47:43','2018-05-23 09:47:43'),(20,'MX-120','100',NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b057e8850cd5.jpeg',10,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-05-23 09:47:43','2018-05-23 09:47:43'),(104,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ce9f83944d.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:06:00','2018-06-10 04:06:00'),(103,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce9cdf00fb.jpeg',8,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:05:18','2018-06-10 04:05:18'),(24,'Pend Stand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a879334929.jpeg',6,1,'50.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 08:41:39','2018-06-08 08:41:39'),(25,'PenStand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a87e7db40c.jpeg',7,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 08:43:04','2018-06-08 08:43:04'),(26,'Photo Frame',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a88440bb6b.jpeg',7,1,'30.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 08:44:36','2018-06-08 08:44:36'),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,7,'/images/product/5b1a889871516.jpeg',7,1,'40.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 08:46:00','2018-06-08 08:46:00'),(28,'980',NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,7,'/images/product/5b1a89435b5ac.jpeg',8,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 08:48:51','2018-06-08 08:48:51'),(29,'Office Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a8a01c35f8.jpeg',6,1,'35.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 08:52:48','2018-06-08 08:52:48'),(30,'Office Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a8ad495cbc.jpeg',9,1,'35.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,0,1,0,'2018-06-08 08:55:32','2018-06-08 08:55:32'),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,7,'/images/product/5b1a8c003c852.jpeg',7,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:00:32','2018-06-08 09:00:32'),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,7,'/images/product/5b1a8d7e3e256.jpeg',7,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:06:54','2018-06-08 09:06:54'),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a8e4a5aaf3.jpeg',7,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:10:18','2018-06-08 09:10:18'),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a8e8b374a7.jpeg',7,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:11:23','2018-06-08 09:11:23'),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,7,'/images/product/5b1a8ee629e25.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:12:54','2018-06-08 09:12:54'),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,7,'/images/product/5b1a8f3664be9.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:14:14','2018-06-08 09:14:14'),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a8fe18b10d.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:17:05','2018-06-08 09:17:05'),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a90ee23687.jpeg',6,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:21:34','2018-06-08 09:21:34'),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a91beeeba7.jpeg',5,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:25:03','2018-06-08 09:25:03'),(40,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a924a57e8e.jpeg',7,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,0,1,0,'2018-06-08 09:27:22','2018-06-08 09:27:22'),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a928c7a71a.jpeg',7,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,0,1,0,'2018-06-08 09:28:28','2018-06-08 09:28:28'),(42,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a92d91d5c2.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:29:45','2018-06-08 09:29:45'),(43,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a931d8a573.jpeg',6,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,0,1,0,'2018-06-08 09:30:53','2018-06-08 09:30:53'),(44,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a936da29e0.jpeg',5,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:32:13','2018-06-08 09:32:13'),(45,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a95347fd7e.jpeg',7,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:39:48','2018-06-08 09:39:48'),(46,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,7,'/images/product/5b1a95d0159f0.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:42:24','2018-06-08 09:42:24'),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a96213a948.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:43:45','2018-06-08 09:43:45'),(48,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,7,'/images/product/5b1a970f8b272.jpeg',9,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,0,1,0,'2018-06-08 09:47:43','2018-06-08 09:47:43'),(49,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a9749ab983.jpeg',8,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,0,1,0,'2018-06-08 09:48:41','2018-06-08 09:48:41'),(50,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a978395961.jpeg',5,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:49:39','2018-06-08 09:49:39'),(51,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a985f6d4fa.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:53:19','2018-06-08 09:53:19'),(52,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a98a9734e0.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:54:33','2018-06-08 09:54:33'),(53,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a9990a92d9.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 09:58:24','2018-06-08 09:58:24'),(54,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a9a221ef6f.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:00:50','2018-06-08 10:00:50'),(55,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1a9d8601476.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:15:18','2018-06-08 10:15:18'),(56,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a9dfd1d819.jpeg',8,1,'500.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:17:17','2018-06-08 10:17:17'),(57,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1a9e40a3c05.jpeg',8,1,'600.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:18:24','2018-06-08 10:18:24'),(58,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1a9e7ee3c51.jpeg',8,1,'700.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:19:26','2018-06-08 10:19:26'),(59,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,7,'/images/product/5b1a9eceb9bac.jpeg',10,1,'350.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:20:46','2018-06-08 10:20:46'),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1a9f0ca0968.jpeg',9,1,'200.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:21:48','2018-06-08 10:21:48'),(61,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1a9faa731b4.jpeg',6,1,'400.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:24:26','2018-06-08 10:24:26'),(62,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1aa0402e6da.jpeg',10,1,'350.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:26:56','2018-06-08 10:26:56'),(63,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1aa083a82a5.jpeg',9,1,'100.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:28:03','2018-06-08 10:28:03'),(64,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1aa0c7d534d.jpeg',10,1,'340.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:29:11','2018-06-08 10:29:11'),(65,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,7,'/images/product/5b1aa11ceed6e.jpeg',8,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:30:37','2018-06-08 10:30:37'),(66,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,7,'/images/product/5b1aa194da19a.jpeg',5,1,'100.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,0,1,0,'2018-06-08 10:32:37','2018-06-08 10:32:37'),(67,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1aa29dae4bf.jpeg',7,1,'100.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:37:01','2018-06-08 10:37:01'),(68,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,7,'/images/product/5b1aa35a3dcbc.jpeg',6,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:40:10','2018-06-08 10:40:10'),(69,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,40,7,'/images/product/5b1aa39948867.jpeg',6,1,'28.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:41:13','2018-06-08 10:41:13'),(70,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,0,'/images/product/5b1aa3dc7f9c9.jpeg',6,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:42:20','2018-06-08 10:42:20'),(71,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,7,'/images/product/5b1aa54ca8ced.jpeg',9,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 10:48:28','2018-06-08 10:48:28'),(72,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,7,'/images/product/5b1aa987945f6.jpeg',7,1,'45.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:06:31','2018-06-08 11:06:31'),(73,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1aaa343b155.jpeg',5,1,'100.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:09:24','2018-06-08 11:09:24'),(74,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1aaa7d14bae.jpeg',7,1,'50.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:10:37','2018-06-08 11:10:37'),(75,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1aaae03430c.jpeg',7,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:12:16','2018-06-08 11:12:16'),(76,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1aab20c0d39.jpeg',9,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:13:20','2018-06-08 11:13:20'),(77,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,7,'/images/product/5b1aabd8ee926.jpeg',7,1,'250.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:16:25','2018-06-08 11:16:25'),(78,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1aac17e7d45.jpeg',7,1,'200.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:17:28','2018-06-08 11:17:28'),(79,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1aac5b00ab5.jpeg',7,1,'200.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:18:35','2018-06-08 11:18:35'),(80,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,300,7,'/images/product/5b1aaca884088.jpeg',8,1,'250.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:19:52','2018-06-08 11:19:52'),(81,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,200,7,'/images/product/5b1aacedd4d5e.jpeg',8,1,'400.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:21:01','2018-06-08 11:21:01'),(82,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1aadadc528a.jpeg',8,1,'300.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:24:13','2018-06-08 11:24:13'),(83,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1aaed95a822.jpeg',6,1,'45.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:29:13','2018-06-08 11:29:13'),(84,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,7,'/images/product/5b1ab00875f53.jpeg',5,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:34:16','2018-06-08 11:34:16'),(85,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1ab0bc4ea0a.jpeg',7,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:37:16','2018-06-08 11:37:16'),(86,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ab107797f2.jpeg',8,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:38:31','2018-06-08 11:38:31'),(87,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,7,'/images/product/5b1ab14b46e7b.jpeg',5,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:39:39','2018-06-08 11:39:39'),(88,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ab1973e40b.jpeg',7,1,'45.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:40:55','2018-06-08 11:40:55'),(89,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ab1d4eb8d1.jpeg',8,1,'45.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:41:57','2018-06-08 11:41:57'),(90,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ab26916a5e.jpeg',7,1,'24.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:44:25','2018-06-08 11:44:25'),(91,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ab2ab6b1b3.jpeg',8,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:45:31','2018-06-08 11:45:31'),(92,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ab2f146040.jpeg',6,1,'50.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-08 11:46:41','2018-06-08 11:46:41'),(93,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce5058aa43.jpeg',7,1,'24.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-14 09:24:19','2018-06-14 09:24:19'),(94,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce548c7049.jpeg',6,1,'22.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:46:00','2018-06-10 03:46:00'),(95,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce56aee890.jpeg',6,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:46:35','2018-06-10 03:46:35'),(96,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce5a009b62.jpeg',6,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:47:28','2018-06-10 03:47:28'),(97,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce5c137490.jpeg',6,1,'22.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:48:01','2018-06-10 03:48:01'),(98,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,7,'/images/product/5b1ce5de11b1a.jpeg',6,1,'22.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:48:30','2018-06-10 03:48:30'),(99,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce5fe19bf4.jpeg',6,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:49:02','2018-06-10 03:49:02'),(100,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ce61fbc895.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:49:35','2018-06-10 03:49:35'),(101,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1d0d0813b7a.jpeg',7,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 06:35:36','2018-06-10 06:35:36'),(102,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,7,'/images/product/5b1ce65c1be8b.jpeg',6,1,'21.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 03:50:36','2018-06-10 03:50:36'),(105,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cea20ae3ef.jpeg',8,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:06:40','2018-06-10 04:06:40'),(106,'AS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cea540faef.jpeg',6,1,'10.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:07:32','2018-06-10 04:07:32'),(107,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cea768f062.jpeg',6,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:08:06','2018-06-10 04:08:06'),(108,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cea98af134.jpeg',9,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:08:40','2018-06-10 04:08:40'),(109,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ceaf66bbf0.jpeg',8,1,'22.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:10:14','2018-10-11 12:33:49'),(110,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ceb1df263a.jpeg',8,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:10:54','2018-06-10 04:10:54'),(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ceb435e49e.jpeg',8,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:11:31','2018-06-10 04:11:31'),(112,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ceb653d824.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:12:05','2018-06-10 04:12:05'),(113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ceb890d886.jpeg',8,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:12:41','2018-06-10 04:12:41'),(114,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cecf9c94d3.jpeg',6,1,'20.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:18:49','2018-06-10 04:18:49'),(115,'model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cedfc5158a.jpeg',7,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:23:08','2018-06-10 04:23:08'),(116,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cee28dd681.jpeg',6,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:23:52','2018-06-10 04:23:52'),(117,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cee60d5356.jpeg',6,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:24:48','2018-06-10 04:24:48'),(118,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cee95dd4a6.jpeg',7,1,'18.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:25:41','2018-06-10 04:25:41'),(119,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ceeb8b062a.jpeg',6,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:26:16','2018-06-10 04:26:16'),(120,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,7,'/images/product/5b1ceedff15ae.jpeg',6,1,'18.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:26:56','2018-06-10 04:26:56'),(121,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cef14178c7.jpeg',5,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:27:48','2018-06-10 04:27:48'),(122,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cef6fd9249.jpeg',6,1,'16.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:29:19','2018-06-10 04:29:19'),(123,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cef90e5ee1.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:29:53','2018-06-10 04:29:53'),(124,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,7,'/images/product/5b1cefb500648.jpeg',6,1,'18.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:30:29','2018-06-10 04:30:29'),(125,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1ceff8ecf20.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:31:37','2018-06-10 04:31:37'),(126,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf01a35e6b.jpeg',6,1,'16.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:32:10','2018-06-10 04:32:10'),(127,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf047501c0.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:32:55','2018-06-10 04:32:55'),(128,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf0a6bb5d6.jpeg',5,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:34:30','2018-06-10 04:34:30'),(129,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf246a45ed.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:41:26','2018-06-10 04:41:26'),(130,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf2868e4e1.jpeg',5,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:42:30','2018-06-10 04:42:30'),(131,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf2ae0450d.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:43:10','2018-06-10 04:43:10'),(132,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf2f718725.jpeg',6,1,'16.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:44:23','2018-06-10 04:44:23'),(133,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf34e85ee3.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:45:50','2018-06-10 04:45:50'),(134,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf37a56fca.jpeg',6,1,'18.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:46:34','2018-06-10 04:46:34'),(135,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf3aa5a268.jpeg',5,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:47:22','2018-06-10 04:47:22'),(136,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf3e4ab77c.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:48:20','2018-06-10 04:48:20'),(137,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf4095396c.jpeg',5,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:48:57','2018-06-10 04:48:57'),(138,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf49c1ef3f.jpeg',6,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:51:24','2018-06-10 04:51:24'),(139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf4d2524c1.jpeg',5,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:52:18','2018-06-10 04:52:18'),(140,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf4f92bcf9.jpeg',5,1,'54.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:52:57','2018-06-10 04:52:57'),(141,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf52fa7882.jpeg',6,1,'55.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:53:51','2018-06-10 04:53:51'),(142,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf561e91b7.jpeg',6,1,'56.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:54:42','2018-06-10 04:54:42'),(143,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf5d15a8b3.jpeg',5,1,'55.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:56:33','2018-06-10 04:56:33'),(144,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf5fa3c464.jpeg',5,1,'55.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:57:14','2018-06-10 04:57:14'),(145,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf62ddc69d.jpeg',6,1,'55.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:04:14','2018-06-10 05:04:14'),(146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,7,'/images/product/5b1cf6581b0ac.jpeg',5,1,'55.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 04:58:48','2018-06-10 04:58:48'),(147,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf7d8a73ab.jpeg',8,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:05:12','2018-06-10 05:05:12'),(148,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf8168eed9.jpeg',7,1,'1.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:06:14','2018-06-10 05:06:14'),(149,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf83c92e27.jpeg',8,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:06:52','2018-06-10 05:06:52'),(150,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf8731289d.jpeg',6,1,'21.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:10:11','2018-06-10 05:10:11'),(151,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf8a017c08.jpeg',6,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:08:32','2018-06-10 05:08:32'),(152,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf926e8810.jpeg',6,1,'25.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:10:47','2018-06-10 05:10:47'),(153,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,'/images/product/5b1cf9521e3cb.jpeg',6,1,'15.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-10 05:12:18','2018-06-10 05:12:18'),(154,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,NULL,9,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-14 11:00:48','2018-06-14 11:00:48'),(155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,NULL,9,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-14 11:01:25','2018-06-14 11:01:25'),(156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,NULL,9,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-14 11:02:48','2018-06-14 11:02:48'),(157,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,NULL,9,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-14 11:02:50','2018-06-14 11:02:50'),(158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,7,NULL,5,1,'12.0000',0,9,'2018-10-08','0.00000000',0,'0.00000000','0.00000000','0.00000000',0,1,1,1,1,0,'2018-06-14 11:03:49','2018-06-14 11:03:49'),(164,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:25:50','2018-10-18 04:25:50'),(160,'model','34',NULL,NULL,NULL,NULL,NULL,'cambodia',1,7,'images/uploads/04-Oct-2018/yZMLyvrmQz.png',8,1,'123.0000',0,9,'2018-10-08','5.00000000',1,'1.00000000','2.00000000','3.00000000',1,1,1,1,1,0,'2018-10-04 08:33:55','2018-10-04 08:33:55'),(161,'model','34',NULL,NULL,NULL,NULL,NULL,'cambodia',1,7,'images/uploads/04-Oct-2018/yZMLyvrmQz.png',8,1,'123.0000',0,9,'2018-10-08','5.00000000',1,'1.00000000','2.00000000','3.00000000',1,1,1,1,1,0,'2018-10-04 08:34:04','2018-10-04 08:34:04'),(163,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:21:15','2018-10-18 04:21:15'),(165,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:27:13','2018-10-18 04:27:13'),(166,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:28:06','2018-10-18 04:28:06'),(167,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:29:18','2018-10-18 04:29:18'),(168,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:29:58','2018-10-18 04:29:58'),(169,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:31:09','2018-10-18 04:31:09'),(170,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:31:42','2018-10-18 04:31:42'),(171,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:32:17','2018-10-18 04:32:17'),(172,'model','sku',NULL,NULL,NULL,NULL,NULL,'localho',1,7,'http://localhost:8000/images/uploads/18-Oct-2018/qCN3IJovGl.png',9,1,'123.0000',0,9,'2018-10-18','12.00000000',6,'12.00000000','12.00000000','12.00000000',2,1,1,1,1,0,'2018-10-18 04:32:47','2018-10-18 04:32:47'),(173,'asdf','saf',NULL,NULL,NULL,NULL,NULL,'asdf',1,7,'http://localhost:8000/images/uploads/20-Oct-2018/ZnVTgc0EnB.png',10,1,'234.0000',0,9,'2018-10-26','12.00000000',2,'123.00000000','12.00000000','12.00000000',1,1,1,1,1,0,'2018-10-18 04:40:15','2018-10-20 01:42:45'),(174,'Model','122',NULL,NULL,NULL,NULL,NULL,'Phnom Pneh',1,7,'http://localhost:8000/images/uploads/20-Oct-2018/1XYGWG4hWI.jpg',5,1,'1.0000',0,9,'2018-10-20','1.00000000',2,'112.00000000','12.00000000','12.00000000',1,1,1,3,1,0,'2018-10-20 01:30:43','2018-10-20 01:30:43'),(175,'Model','122',NULL,NULL,NULL,NULL,NULL,'Phnom Pneh',1,7,'http://localhost:8000/images/uploads/20-Oct-2018/1XYGWG4hWI.jpg',5,1,'1.0000',0,9,'2018-10-20','1.00000000',2,'112.00000000','12.00000000','12.00000000',1,1,1,3,1,0,'2018-10-20 01:30:53','2018-10-20 01:30:53'),(176,'Model','122',NULL,NULL,NULL,NULL,NULL,'Phnom Pneh',1,7,'http://localhost:8000/images/uploads/20-Oct-2018/1XYGWG4hWI.jpg',5,1,'1.0000',0,9,'2018-10-20','1.00000000',2,'112.00000000','12.00000000','12.00000000',1,1,1,3,1,0,'2018-10-20 01:33:03','2018-10-20 01:33:03');



/*Table structure for table `sg_product_attribute` */



DROP TABLE IF EXISTS `sg_product_attribute`;



CREATE TABLE `sg_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_attribute` */



insert  into `sg_product_attribute`(`product_id`,`attribute_id`,`language_id`,`text`) values (6,3,2,'67'),(6,3,1,'18'),(9,6,1,'adsfadfasdf'),(176,4,1,'111'),(173,5,1,'2233'),(173,7,1,'1');



/*Table structure for table `sg_product_description` */



DROP TABLE IF EXISTS `sg_product_description`;



CREATE TABLE `sg_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `tag` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_description` */



insert  into `sg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (23,1,'5 Grid Nail Art Pen Holder Salon Gel Nail Brush Carrier Rack Accessory','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(2,1,'1212HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(3,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 1','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(4,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 2','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(5,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 3','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(6,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 4','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(7,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 5','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(8,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 6','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(9,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 7','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(10,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 8','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(11,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 9','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(12,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 10','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(13,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 11','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(14,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 12','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(15,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK 13','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(16,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(17,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(18,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(20,1,'HP 14-BS537TU N3060 4GD3 500G WIN10H (BLACK) FREE HP DESIGNED BACKPACK','Description',NULL,'Meta Title','Meta Description','Meta Keyword'),(105,1,'MultiFunction Electric Egg Cooker Boiler Steamer With',NULL,NULL,NULL,NULL,NULL),(103,1,'5pcs Fried egg apparatus stainless steel fried egg molds',NULL,NULL,NULL,NULL,NULL),(104,1,'ITATA Little Pumpkin Electric Automatic Egg Master Roll Maker DIY',NULL,NULL,NULL,NULL,NULL),(24,1,'Leather Stand Cover For Samsung Galaxy Tab 4 7 Inch Tablet',NULL,NULL,NULL,NULL,NULL),(25,1,'Multi-functional Home Office Desk Black Metal Mesh Supplies',NULL,NULL,NULL,NULL,NULL),(26,1,'Ferris Wheel Photo Frames Swing Set',NULL,NULL,NULL,NULL,NULL),(27,1,'Fotable White Frame - Table Top Photo Frame - for 4R , 6R Photo Print',NULL,NULL,NULL,NULL,NULL),(28,1,'PREMO Contemporary A3 Photo Frame',NULL,NULL,NULL,NULL,NULL),(29,1,'9 Storage Compartments Multi-functional Mesh Desk Organizer Pen',NULL,NULL,NULL,NULL,NULL),(30,1,'Double Grid Wooden Office Table Organizer Document Rack',NULL,NULL,NULL,NULL,NULL),(31,1,'Wooden Multi-Use Desk Organizer Office Sundries Storage',NULL,NULL,NULL,NULL,NULL),(32,1,'Philips Avent Natural Babay Bottle 4oz- twin (Blue)',NULL,NULL,NULL,NULL,NULL),(33,1,'Philips Avent Natural Babay Bottle 4oz- twin (Pink)',NULL,NULL,NULL,NULL,NULL),(34,1,'Philips Avent Natural Babay Bottle 9oz- twin (Clear)',NULL,NULL,NULL,NULL,NULL),(35,1,'Babay Newborn Cotton Headband Stripe Hair Christmas Decoration Blue',NULL,NULL,NULL,NULL,NULL),(36,1,'Babay Newborn Cotton Headband Stripe Hair Christmas Decoration Red',NULL,NULL,NULL,NULL,NULL),(37,1,'Babay Newborn Cotton Headband Stripe Hair Christmas Decoration',NULL,NULL,NULL,NULL,NULL),(38,1,'2pcs,Set Newborn Baby Hair CombBrush Soft Infant Head',NULL,NULL,NULL,NULL,NULL),(39,1,'10 pcs Baby Nail Hair Thermometer Grooming Comb',NULL,NULL,NULL,NULL,NULL),(40,1,'10 pcs Baby Nail Hair Thermometer Grooming Comb',NULL,NULL,NULL,NULL,NULL),(41,1,'Autumnz Baby Hair Brush and Comb Set',NULL,NULL,NULL,NULL,NULL),(42,1,'Drypers Wee Wee Dry XL36 x 4packs (144 pcs)',NULL,NULL,NULL,NULL,NULL),(43,1,'Huggies Dry Diapers L60 x 3 Super Jumbo pack',NULL,NULL,NULL,NULL,NULL),(44,1,'Huggies Ultra Diapers M60 x 3 Super Jumbo pack',NULL,NULL,NULL,NULL,NULL),(45,1,'[FREE SHIPPING] Original Tropika Baby Herbal Cream 50g',NULL,NULL,NULL,NULL,NULL),(46,1,'CETAPHIL Baby Daily Lotion 400ml',NULL,NULL,NULL,NULL,NULL),(47,1,'Cetaphil Baby Daily Lotion With Shea Butter 400mL',NULL,NULL,NULL,NULL,NULL),(48,1,'Drypers WWD NB 64s',NULL,NULL,NULL,NULL,NULL),(49,1,'Huggies Ultra Diapers L50 x 3 Super Jumbo pack',NULL,NULL,NULL,NULL,NULL),(50,1,'Huggies Ultra Diapers M60 x 3 Super Jumbo pack',NULL,NULL,NULL,NULL,NULL),(51,1,'Anakku BABY TALC 500GM',NULL,NULL,NULL,NULL,NULL),(52,1,'Johnson\'s Baby Powder 2 x 500g',NULL,NULL,NULL,NULL,NULL),(53,1,'Anakku BABY TALC 500GM',NULL,NULL,NULL,NULL,NULL),(54,1,'Johnson\'s Baby Powder 2 x 500g',NULL,NULL,NULL,NULL,NULL),(55,1,'JOHNSON\'S Baby Powder Blossoms 100g',NULL,NULL,NULL,NULL,NULL),(56,1,'Apple MacBook 12 inch 1.2GHz 512GB Dual-core Intel Core (Rose',NULL,NULL,NULL,NULL,NULL),(57,1,'Apple MacBook Air 11 MJVM2ZPA Silver - Intel i5 1.6Ghz ,8GB , 128GB',NULL,NULL,NULL,NULL,NULL),(58,1,'Apple MacBook Pro 13-inch 128GB Silver',NULL,NULL,NULL,NULL,NULL),(59,1,'Asus Vivobook A510U-FEJ139T 15.6 FHD Laptop Grey',NULL,NULL,NULL,NULL,NULL),(60,1,'Asus Vivobook Max X541U-VXX1463T 15.6 Laptop Silver',NULL,NULL,NULL,NULL,NULL),(61,1,'Asus Vivobook S15 S510U-QBQ622T 15.6 FHD Laptop Gold',NULL,NULL,NULL,NULL,NULL),(62,1,'Dell Inspiron 11 3162-7141SG-W10 Multimedia Notebook (N3710)',NULL,NULL,NULL,NULL,NULL),(63,1,'DELL INSPIRON 15 3567-00412G-W10-FHD I3 4GB 1TB R5 M430 15.6',NULL,NULL,NULL,NULL,NULL),(64,1,'Dell Inspiron 3467-50412G-W10 14 Laptop Black (i7-7500U, 4GB, 1TB, R5 )',NULL,NULL,NULL,NULL,NULL),(65,1,'Homester EX-01 Mini Bluetooth Earphone Business Stereo Headset',NULL,NULL,NULL,NULL,NULL),(66,1,'M165 Wireless 4.1 Bluetooth Headset Earphone Hands- Free',NULL,NULL,NULL,NULL,NULL),(67,1,'Original Remax T10 Mini Bluetooth Wireless Mono Headset (Black)',NULL,NULL,NULL,NULL,NULL),(68,1,'[Qualcomm 3.0] LDNIO C407Q DUAL USB FAST Car Charger Adapter',NULL,NULL,NULL,NULL,NULL),(69,1,'Pineng PN523 White Car Charger with 5.2A 3xUSB Ports',NULL,NULL,NULL,NULL,NULL),(70,1,'Samsung Note 4 5 S6 S7 Edge 9V Fast Charger with USB Cable',NULL,NULL,NULL,NULL,NULL),(71,1,'Edifier H101 High Quality Earphone',NULL,NULL,NULL,NULL,NULL),(72,1,'JBL C100SI In-Ear Headphones with Mic (Black)',NULL,NULL,NULL,NULL,NULL),(73,1,'Original Langsdom JM26 Earbuds 3.5MM Earphone Smart HiFiOriginal Langsdom JM26 Earbuds 3.5MM Earphone Smart HiFi',NULL,NULL,NULL,NULL,NULL),(74,1,'Audiobox U-Cube 2.0 USB Speakers (Grey)',NULL,NULL,NULL,NULL,NULL),(75,1,'Portable High-Power 15W Rechargeable Voice Amplifier',NULL,NULL,NULL,NULL,NULL),(76,1,'SonicGear Quatro 2 USB Speaker (Black Red)',NULL,NULL,NULL,NULL,NULL),(77,1,'HUAWEI Honor 5A [LYO-L21] (2GB RAM + 16GB ROM) 4G DUAL',NULL,NULL,NULL,NULL,NULL),(78,1,'HUAWEI NOVA 2I 4GB RAM + 64GB ROM 100% ORIGINAL SET 1',NULL,NULL,NULL,NULL,NULL),(79,1,'Huawei P10 64GB (Graphite Black)',NULL,NULL,NULL,NULL,NULL),(80,1,'(IMPORT) Apple iphone 6 Plus 16GB [Grey]',NULL,NULL,NULL,NULL,NULL),(81,1,'(IMPORTED) Apple iPhone 5 LTE 32GB (White)',NULL,NULL,NULL,NULL,NULL),(82,1,'(Imported) Apple iPhone 6s 64GB Original (Gold)',NULL,NULL,NULL,NULL,NULL),(83,1,'PX Baby Boys Girls Jackets Outerwear Unisex Spring And Autumn',NULL,NULL,NULL,NULL,NULL),(84,1,'F&N Farmhouse UHT Fresh Milk 1 Carton (12 x 1L) (KL & SELANGOR',NULL,NULL,NULL,NULL,NULL),(85,1,'NESTLE EVERYDAY Milk Powder 1.6kg (SPECIAL OFFER)',NULL,NULL,NULL,NULL,NULL),(86,1,'NESTLE JUST MILK Full Cream 1L (SPECIAL OFFER)',NULL,NULL,NULL,NULL,NULL),(87,1,'Portable USB Rechargeable Electric Juicer Blender Bottle Juice',NULL,NULL,NULL,NULL,NULL),(88,1,'SKG Stainless Steel Juicer MY610',NULL,NULL,NULL,NULL,NULL),(89,1,'Stainless steel manual fruit juicer Fruit Lemon Lime Orange',NULL,NULL,NULL,NULL,NULL),(90,1,'CERELAC Wheat Honey 500G',NULL,NULL,NULL,NULL,NULL),(91,1,'LONGFONG Pork Luncheon Meat 397G x 6 CANS',NULL,NULL,NULL,NULL,NULL),(92,1,'TESCO EVERYDAY VALUE GARDEN PEAS IN WATER 300G',NULL,NULL,NULL,NULL,NULL),(93,1,'TESCO CHOPPED TOMATOES WITH CHILLI 390G',NULL,NULL,NULL,NULL,NULL),(94,1,'TESCO NATURALLY SWEET CORN OR SALT 200G',NULL,NULL,NULL,NULL,NULL),(95,1,'TESCO SARDINE IN TOMATO 155G',NULL,NULL,NULL,NULL,NULL),(96,1,'NESTLE KOKO KRUNCH Cereal Econopack (1 box of 500g)',NULL,NULL,NULL,NULL,NULL),(97,1,'Nestlé Milo Chocolate and Malt Flavoured Wheat Balls Breakfast',NULL,NULL,NULL,NULL,NULL),(98,1,'QUAKER OATMEAL SQUARES CEREAL 412G',NULL,NULL,NULL,NULL,NULL),(99,1,'Fresh Dodol Durian Pandan coffee (Halal) 1kg',NULL,NULL,NULL,NULL,NULL),(100,1,'Sambal Garing Che’ Nor 100gm',NULL,NULL,NULL,NULL,NULL),(101,1,'Sambal Garing Che’ Nor 150gm',NULL,NULL,NULL,NULL,NULL),(102,1,'Serda Thai Instant Noodle Tomyum Kung Halal 30 packs',NULL,NULL,NULL,NULL,NULL),(106,1,'Greens Cat Food - Mother and Baby 3kg Free Cat Toys',NULL,NULL,NULL,NULL,NULL),(107,1,'GREEN\'S Cat Food Mother and Baby 8KG',NULL,NULL,NULL,NULL,NULL),(108,1,'Greens Chicken Cat Food 3kg',NULL,NULL,NULL,NULL,NULL),(109,1,'Greens Chicken Cat Food 8kg','desc',NULL,'meta title','meta description','meta keyword'),(110,1,'5L Manual Salad Spinner Lettuce Vegetables Washer',NULL,NULL,NULL,NULL,NULL),(111,1,'Iguana Kitchen Accessories 4.5L Mini Kitchen Salad Spinner (Red)',NULL,NULL,NULL,NULL,NULL),(112,1,'Salad Cutter Bowl Vegetable Cutter Bowl Make Your Salad in 60',NULL,NULL,NULL,NULL,NULL),(113,1,'Taii Salad Cutter Bowl',NULL,NULL,NULL,NULL,NULL),(114,1,'PX Baby Boys Girls Jackets Outerwear Unisex Spring And Autumn',NULL,NULL,NULL,NULL,NULL),(115,1,'Winter New Baby Coat Floral Pink Children Jacket with Hooded',NULL,NULL,NULL,NULL,NULL),(116,1,'Winter New Baby Coat Floral Print Children Jacket with Hooded',NULL,NULL,NULL,NULL,NULL),(117,1,'100% Cotton Baby Sleepwear Clothing Pajamas Sets',NULL,NULL,NULL,NULL,NULL),(118,1,'Baby Korean cotton Spring and Autumn new wild pants boys Jeans',NULL,NULL,NULL,NULL,NULL),(119,1,'Baby Korean Spring and Autumn girl cat Jeans (Cat ears)',NULL,NULL,NULL,NULL,NULL),(120,1,'The baby is the new spring and autumn children light pants boys',NULL,NULL,NULL,NULL,NULL),(121,1,'3Pcs Baby Boy NEXT Sleepsuit (Random Design)',NULL,NULL,NULL,NULL,NULL),(122,1,'100% Cotton Baby Sleepwear Clothing Pajamas Sets',NULL,NULL,NULL,NULL,NULL),(123,1,'100% Cotton Baby Sleepwear Clothing Pajamas',NULL,NULL,NULL,NULL,NULL),(124,1,'Children Kids Baby Boys Cartoon Cotton Sleepwear Pajamas',NULL,NULL,NULL,NULL,NULL),(125,1,'Baby Korean cotton Spring and Autumn new wild pants boys Jeans',NULL,NULL,NULL,NULL,NULL),(126,1,'BABY PONEY PULL-ON PANTS WITH BUTTON (BLUE)',NULL,NULL,NULL,NULL,NULL),(127,1,'Baby Boy Girl Summer Clothes Clothing Suit Shirt+Pants Set 70cm',NULL,NULL,NULL,NULL,NULL),(128,1,'PAlight Baby Boys Shirt Jacket + Pants 2-Piece Suit Clothing Sets',NULL,NULL,NULL,NULL,NULL),(129,1,'Baby Boy Girl Summer Clothes Clothing Suit Shirt+Pants Set 70cm',NULL,NULL,NULL,NULL,NULL),(130,1,'PAlight Baby Boys Shirt Jacket + Pants 2-Piece Suit Clothing Sets',NULL,NULL,NULL,NULL,NULL),(131,1,'Toddler Kids Baby Boys Beard T Shirt Tops+Shorts Pants Outfit',NULL,NULL,NULL,NULL,NULL),(132,1,'LALANG Mini Skirt Draped Skirt Baby Cute Girls Bow Skirt Children Clothing（Navy Retro Ripple）',NULL,NULL,NULL,NULL,NULL),(133,1,'New Kids Baby Girls Short Sleeve Shirt + Flowers Skirt Set',NULL,NULL,NULL,NULL,NULL),(134,1,'White with purple Newborn infant girls tutu skirt two layers',NULL,NULL,NULL,NULL,NULL),(135,1,'2pcs Outfits White T-Shirt Jeans Cowboy long Pants Summer',NULL,NULL,NULL,NULL,NULL),(136,1,'Baby Kids Clothes Set,Polo Shirt Boy Suit For 1~4 years Children',NULL,NULL,NULL,NULL,NULL),(137,1,'Summer Fashion 2PCS Kids Baby Boy Outfits T-shirt+Pants',NULL,NULL,NULL,NULL,NULL),(138,1,'Belt with Zinc Alloy Buckle for Men Fashion suite tie casual cloth',NULL,NULL,NULL,NULL,NULL),(139,1,'Fashion Microfiber (PU) Leather Automatic Buckle Men Belt',NULL,NULL,NULL,NULL,NULL),(140,1,'Men Fashion Belts Top Cow Leather Men Belts 2018 Newest',NULL,NULL,NULL,NULL,NULL),(141,1,'Loose Korean Men hooded autumn hoodies (Lettered jacket black) (Lettered jacket black)',NULL,NULL,NULL,NULL,NULL),(142,1,'Men Korean Style PU Leather Motorcycle Jackets（Black)',NULL,NULL,NULL,NULL,NULL),(143,1,'Men Korean Style PU Leather Motorcycle Jackets（Coffee）',NULL,NULL,NULL,NULL,NULL),(144,1,'Korean teenagers Men slim skinny Jeans (Blue-pants) (Blue-',NULL,NULL,NULL,NULL,NULL),(145,1,'Loose men conventional spring high-waisted casual pants men\'s',NULL,NULL,NULL,NULL,NULL),(146,1,'Men\'s Korean-style Slim Fit Cropped Tapered Jeans (816 A-line broken Black) (816 A-line broken',NULL,NULL,NULL,NULL,NULL),(147,1,'In summer short sleeve pure cotton lovers pajama the men and women',NULL,NULL,NULL,NULL,NULL),(148,1,'Spring autumn summer silk lovers nightgown men and women the sexy',NULL,NULL,NULL,NULL,NULL),(149,1,'Spring Summer Men \'s Short Sleeve Pants Thin Artificial Pajamas Home',NULL,NULL,NULL,NULL,NULL),(150,1,'Kuhong Men Fashion Sweatpants Harem Pants Men Slim',NULL,NULL,NULL,NULL,NULL),(151,1,'Men Korean casual stretch Jeans (Black pants) (Black pants)',NULL,NULL,NULL,NULL,NULL),(152,1,'Men Korean casual stretch Jeans (Sky Blue pants) (Sky Blue',NULL,NULL,NULL,NULL,NULL),(153,1,'Cheap clothes Top Men Shirt (Cross striped black thin)',NULL,NULL,NULL,NULL,NULL),(173,1,'asdf','sdf',NULL,'asdfasdf','asdf','asdf'),(176,1,'My Product','Description',NULL,'Meta Title','Meta Description','Meta Keyword');



/*Table structure for table `sg_product_discount` */



DROP TABLE IF EXISTS `sg_product_discount`;



CREATE TABLE `sg_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_discount` */



insert  into `sg_product_discount`(`product_discount_id`,`product_id`,`customer_group_id`,`quantity`,`priority`,`price`,`date_start`,`date_end`) values (85,173,1,1,1,'100.0000','2222-02-21','1111-12-11'),(84,173,1,1,2,'50.0000','1992-02-02','1992-02-02'),(81,176,1,1,1,'12.0000','1992-01-01','1992-01-01');



/*Table structure for table `sg_product_filter` */



DROP TABLE IF EXISTS `sg_product_filter`;



CREATE TABLE `sg_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_filter` */



insert  into `sg_product_filter`(`product_id`,`filter_id`) values (3,1),(5,1),(5,2),(6,1),(6,2),(6,5),(6,6),(8,1),(9,1),(10,1),(11,1),(11,2),(12,1),(12,2),(13,1),(15,1),(15,2),(23,1),(109,1),(159,1),(159,2),(162,1),(162,2),(173,4),(174,1),(175,1),(176,1);



/*Table structure for table `sg_product_image` */



DROP TABLE IF EXISTS `sg_product_image`;



CREATE TABLE `sg_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_image` */



insert  into `sg_product_image`(`product_image_id`,`product_id`,`image`,`sort_order`) values (12,6,'/images/product/5b02bf85c461c.jpeg',2),(11,6,'/images/product/5b02bf85aa4e7.jpeg',1),(277,176,'http://localhost:8000/images/uploads/20-Oct-2018/fpMbxnGq3u.jpg',2),(282,173,'http://localhost:8000/images/uploads/20-Oct-2018/0IshV052cI.png',2),(276,176,'http://localhost:8000/images/uploads/20-Oct-2018/Ww3PRUAZEE.png',1),(281,173,'http://localhost:8000/images/uploads/20-Oct-2018/izqO2X2Csb.png',1),(278,176,'http://localhost:8000/images/uploads/20-Oct-2018/c719EI62S9.png',3);



/*Table structure for table `sg_product_option` */



DROP TABLE IF EXISTS `sg_product_option`;



CREATE TABLE `sg_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `value` text,
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_option` */



insert  into `sg_product_option`(`product_option_id`,`product_id`,`option_id`,`value`,`required`) values (2,6,2,NULL,1),(3,93,1,NULL,1);



/*Table structure for table `sg_product_option_value` */



DROP TABLE IF EXISTS `sg_product_option_value`;



CREATE TABLE `sg_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL,
  `subtract` tinyint(1) DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `price_prefix` varchar(1) DEFAULT NULL,
  `points` int(8) DEFAULT NULL,
  `points_prefix` varchar(1) DEFAULT NULL,
  `weight` decimal(15,8) DEFAULT NULL,
  `weight_prefix` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_option_value` */



insert  into `sg_product_option_value`(`product_option_value_id`,`product_option_id`,`product_id`,`option_id`,`option_value_id`,`quantity`,`subtract`,`price`,`price_prefix`,`points`,`points_prefix`,`weight`,`weight_prefix`) values (1,2,6,2,45,2,1,'10.0000','+',0,NULL,'10.00000000','+'),(2,3,93,1,43,1,1,'10.0000','+',0,NULL,'15.00000000',NULL),(3,3,93,1,31,1,1,'2.0000','+',0,NULL,'0.00000000',NULL);



/*Table structure for table `sg_product_price` */



DROP TABLE IF EXISTS `sg_product_price`;



CREATE TABLE `sg_product_price` (
  `product_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`product_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*Data for the table `sg_product_price` */



/*Table structure for table `sg_product_related` */



DROP TABLE IF EXISTS `sg_product_related`;



CREATE TABLE `sg_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_related` */



insert  into `sg_product_related`(`product_id`,`related_id`) values (12,2),(12,3),(12,109),(162,109),(162,159),(174,23),(175,23),(176,23);



/*Table structure for table `sg_product_reward` */



DROP TABLE IF EXISTS `sg_product_reward`;



CREATE TABLE `sg_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_reward` */



/*Table structure for table `sg_product_special` */



DROP TABLE IF EXISTS `sg_product_special`;



CREATE TABLE `sg_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_special` */



insert  into `sg_product_special`(`product_special_id`,`product_id`,`customer_group_id`,`priority`,`price`,`date_start`,`date_end`) values (1,6,1,1,'50.0000','2018-05-19','2018-06-15'),(2,93,1,1,'2.0000','2018-06-06','2018-06-15'),(99,173,1,2,'22.0000','0002-02-02','0004-02-22'),(95,176,1,1,'22.0000','0002-01-02','0001-01-02'),(98,173,1,1,'10.0000','1111-11-11','0001-01-01');



/*Table structure for table `sg_product_to_carrier` */



DROP TABLE IF EXISTS `sg_product_to_carrier`;



CREATE TABLE `sg_product_to_carrier` (
  `product_id` int(11) NOT NULL,
  `carrier_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_product_to_carrier` */



insert  into `sg_product_to_carrier`(`product_id`,`carrier_id`,`store_id`) values (12,4,1),(12,3,1),(12,21,1),(162,4,1),(162,21,1),(159,21,1),(159,4,1),(163,21,1),(163,4,1),(164,21,1),(164,4,1),(165,21,1),(165,4,1),(166,21,1),(166,4,1),(167,21,1),(167,4,1),(168,21,1),(168,4,1),(169,21,1),(169,4,1),(170,21,1),(170,4,1),(171,21,1),(171,4,1),(172,21,1),(172,4,1),(173,21,2),(174,21,2),(174,4,2),(175,21,2),(175,4,2),(176,21,2),(176,4,2);



/*Table structure for table `sg_product_to_category` */



DROP TABLE IF EXISTS `sg_product_to_category`;



CREATE TABLE `sg_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_to_category` */



insert  into `sg_product_to_category`(`product_id`,`category_id`) values (1,1),(1,19),(1,20),(2,1),(2,19),(3,1),(3,19),(4,1),(4,19),(5,1),(5,19),(6,1),(6,19),(7,1),(7,19),(8,1),(8,19),(9,1),(9,19),(10,1),(10,19),(11,1),(11,19),(12,1),(12,2),(12,19),(13,1),(13,19),(14,1),(14,19),(15,1),(15,6),(15,19),(16,1),(16,19),(17,1),(17,19),(18,1),(18,19),(19,1),(19,19),(20,1),(20,19),(21,2),(21,23),(22,2),(22,23),(23,72),(24,21),(24,72),(25,21),(25,72),(26,21),(26,71),(27,21),(27,71),(28,21),(28,71),(29,20),(29,70),(30,20),(30,70),(31,20),(31,70),(32,17),(32,64),(33,17),(33,64),(34,17),(34,64),(35,17),(35,73),(36,17),(36,73),(37,17),(37,73),(38,17),(38,63),(39,17),(39,73),(40,17),(40,63),(41,17),(41,63),(42,17),(42,58),(43,17),(43,58),(44,17),(44,58),(45,17),(45,62),(46,17),(46,62),(47,17),(47,62),(48,17),(48,59),(49,17),(49,59),(50,17),(50,59),(51,17),(51,59),(52,17),(52,59),(53,17),(53,60),(54,17),(54,60),(55,17),(55,60),(56,13),(56,45),(57,13),(57,45),(58,13),(58,45),(59,13),(59,43),(60,13),(60,43),(61,13),(61,43),(62,13),(62,44),(63,13),(63,44),(64,13),(64,44),(65,15),(65,51),(66,15),(66,51),(67,15),(67,51),(68,15),(68,53),(69,15),(69,53),(70,15),(70,53),(71,15),(71,52),(72,15),(72,52),(73,15),(73,52),(74,15),(74,50),(75,15),(75,50),(76,15),(76,50),(77,14),(77,47),(78,14),(78,47),(79,14),(79,47),(80,14),(80,46),(81,14),(81,46),(82,14),(82,46),(83,12),(83,31),(84,5),(84,6),(85,5),(85,6),(85,7),(85,8),(86,5),(86,6),(86,8),(87,5),(87,7),(88,5),(88,7),(89,5),(89,7),(90,5),(90,8),(91,5),(91,8),(92,5),(92,8),(93,1),(93,2),(94,1),(94,2),(95,1),(95,2),(96,1),(96,3),(97,1),(97,4),(98,1),(98,4),(99,1),(99,3),(100,1),(100,3),(101,1),(101,3),(102,1),(102,3),(102,4),(103,9),(103,24),(104,9),(104,24),(105,9),(105,24),(106,9),(106,25),(107,9),(107,25),(108,9),(108,25),(109,9),(109,25),(110,1),(110,9),(110,26),(111,9),(111,26),(112,9),(112,26),(113,9),(113,26),(114,12),(114,31),(114,39),(114,85),(115,12),(115,85),(116,85),(117,38),(117,84),(118,84),(119,84),(120,84),(121,83),(122,83),(123,83),(124,83),(125,82),(126,82),(127,35),(128,35),(129,79),(130,11),(130,79),(131,79),(132,80),(133,80),(134,80),(135,81),(136,81),(137,81),(138,11),(138,36),(139,11),(139,36),(140,11),(140,36),(141,11),(141,39),(142,11),(142,39),(143,11),(143,39),(144,11),(144,38),(145,11),(145,38),(146,11),(146,38),(147,11),(147,33),(147,41),(148,11),(148,33),(148,41),(149,11),(149,41),(150,11),(150,37),(150,82),(151,11),(151,37),(152,11),(152,37),(153,11),(153,35),(159,5),(159,7),(162,4),(162,5),(163,58),(164,58),(165,58),(166,58),(167,58),(168,58),(169,58),(170,58),(171,58),(172,58),(173,1),(174,108),(175,108),(176,108);



/*Table structure for table `sg_product_to_download` */



DROP TABLE IF EXISTS `sg_product_to_download`;



CREATE TABLE `sg_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_to_download` */



/*Table structure for table `sg_product_to_layout` */



DROP TABLE IF EXISTS `sg_product_to_layout`;



CREATE TABLE `sg_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_to_layout` */



/*Table structure for table `sg_product_to_store` */



DROP TABLE IF EXISTS `sg_product_to_store`;



CREATE TABLE `sg_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_product_to_store` */



insert  into `sg_product_to_store`(`product_id`,`store_id`) values (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(6,1),(6,2),(7,1),(7,2),(8,1),(8,2),(9,1),(9,2),(10,1),(10,2),(11,1),(12,1),(12,2),(13,1),(13,2),(14,1),(14,2),(15,1),(15,2),(16,1),(16,2),(17,1),(17,2),(18,1),(18,2),(19,1),(19,2),(20,1),(20,2),(21,1),(21,2),(22,1),(22,2),(23,1),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(88,2),(89,2),(90,2),(91,2),(92,2),(93,2),(94,2),(95,2),(96,2),(97,2),(98,2),(99,2),(100,2),(101,2),(102,2),(103,2),(104,2),(105,2),(106,2),(107,2),(108,2),(109,2),(110,2),(111,2),(112,2),(113,2),(114,2),(115,2),(116,2),(117,2),(118,2),(119,2),(120,2),(121,2),(122,2),(123,2),(124,2),(125,2),(126,2),(127,2),(128,2),(129,2),(130,2),(131,2),(132,2),(133,2),(134,2),(135,2),(136,2),(137,2),(138,2),(139,2),(140,2),(141,2),(142,2),(143,2),(144,2),(145,2),(146,2),(147,2),(148,2),(149,2),(150,2),(151,2),(152,2),(153,2),(159,1),(162,1),(162,2),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,2),(174,1),(175,1),(176,1);



/*Table structure for table `sg_range_price` */



DROP TABLE IF EXISTS `sg_range_price`;



CREATE TABLE `sg_range_price` (
  `range_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carrier_id` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`range_price_id`,`carrier_id`,`delimiter1`,`delimiter2`),
  UNIQUE KEY `carrier_id` (`carrier_id`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_range_price` */



insert  into `sg_range_price`(`range_price_id`,`carrier_id`,`delimiter1`,`delimiter2`) values (2,21,'1.000000','2.000000'),(3,23,'234.000000','234.000000'),(4,24,'23.000000','324.000000'),(5,25,'42343.000000','234.000000');



/*Table structure for table `sg_range_weight` */



DROP TABLE IF EXISTS `sg_range_weight`;



CREATE TABLE `sg_range_weight` (
  `range_weight_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `carrier_id` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`range_weight_id`),
  UNIQUE KEY `carrier_id` (`carrier_id`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_range_weight` */



/*Table structure for table `sg_reseller` */



DROP TABLE IF EXISTS `sg_reseller`;



CREATE TABLE `sg_reseller` (
  `reseller_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) NOT NULL,
  `sec_user_id` int(10) NOT NULL,
  `firstname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `company` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` text COLLATE utf8mb4_unicode_ci,
  `address_2` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `date_added` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`reseller_id`,`store_id`,`sec_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_reseller` */



insert  into `sg_reseller`(`reseller_id`,`store_id`,`sec_user_id`,`firstname`,`lastname`,`store_name`,`gender`,`dob`,`company`,`website`,`owner`,`address_1`,`address_2`,`email`,`email_2`,`fax`,`telephone_1`,`telephone_2`,`country`,`province`,`city`,`code`,`image`,`status`,`date_added`,`updated_at`) values (241,1,240,'Muy','Lim','Muyly Store',NULL,NULL,NULL,'http://www.google.com',NULL,'address',NULL,'muyly@gmail.com',NULL,'23432','12213',NULL,'Cambodia','Phnom Penh','Phnom Penh','3243',NULL,1,NULL,NULL);



/*Table structure for table `sg_reseller_credit_setting` */



DROP TABLE IF EXISTS `sg_reseller_credit_setting`;



CREATE TABLE `sg_reseller_credit_setting` (
  `reseller_credit_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `reseller_id` int(11) NOT NULL,
  `credit_type_id` int(11) NOT NULL,
  `credit_type_value_id` int(11) NOT NULL,
  `credit_limitation` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`reseller_credit_setting_id`,`reseller_id`,`credit_type_id`,`credit_type_value_id`),
  UNIQUE KEY `reseller_credit_setting_id` (`reseller_credit_setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_reseller_credit_setting` */



/*Table structure for table `sg_review` */



DROP TABLE IF EXISTS `sg_review`;



CREATE TABLE `sg_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;



/*Data for the table `sg_review` */



insert  into `sg_review`(`review_id`,`product_id`,`customer_id`,`author`,`text`,`rating`,`status`,`date_added`,`date_modified`) values (1,17,0,'1221','212',3,1,'2017-02-02 00:00:00','2017-02-02 00:00:00'),(2,109,0,'asdf','asdfasdf',4,1,'2017-02-02 00:00:00','2017-02-02 00:00:00'),(36,18,0,'Author','asdf',1,1,'2018-09-28 07:40:03','2018-09-28 07:40:03');



/*Table structure for table `sg_seo_url` */



DROP TABLE IF EXISTS `sg_seo_url`;



CREATE TABLE `sg_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=849 DEFAULT CHARSET=utf8;



/*Data for the table `sg_seo_url` */



insert  into `sg_seo_url`(`seo_url_id`,`store_id`,`language_id`,`query`,`keyword`) values (824,0,1,'product_id=48','ipod-classic'),(836,0,1,'category_id=20','desktops'),(834,0,1,'category_id=26','pc'),(835,0,1,'category_id=27','mac'),(730,0,1,'manufacturer_id=8','apple'),(772,0,1,'information_id=4','about_us'),(847,0,1,'product_id=42','test'),(789,0,1,'category_id=34','mp3-players'),(781,0,1,'category_id=36','test2'),(774,0,1,'category_id=18','laptop-notebook'),(775,0,1,'category_id=46','macs'),(776,0,1,'category_id=45','windows'),(777,0,1,'category_id=25','component'),(778,0,1,'category_id=29','mouse'),(845,0,1,'category_id=28','monitor'),(780,0,1,'category_id=35','test1'),(782,0,1,'category_id=30','printer'),(783,0,1,'category_id=31','scanner'),(784,0,1,'category_id=32','web-camera'),(785,0,1,'category_id=57','tablet'),(786,0,1,'category_id=17','software'),(787,0,1,'category_id=24','smartphone'),(844,0,1,'category_id=33','camera'),(790,0,1,'category_id=43','test11'),(791,0,1,'category_id=44','test12'),(792,0,1,'category_id=47','test15'),(793,0,1,'category_id=48','test16'),(794,0,1,'category_id=49','test17'),(795,0,1,'category_id=50','test18'),(796,0,1,'category_id=51','test19'),(797,0,1,'category_id=52','test20'),(798,0,1,'category_id=58','test25'),(799,0,1,'category_id=53','test21'),(800,0,1,'category_id=54','test22'),(801,0,1,'category_id=55','test23'),(802,0,1,'category_id=56','test24'),(803,0,1,'category_id=38','test4'),(804,0,1,'category_id=37','test5'),(805,0,1,'category_id=39','test6'),(806,0,1,'category_id=40','test7'),(807,0,1,'category_id=41','test8'),(808,0,1,'category_id=42','test9'),(809,0,1,'product_id=30','canon-eos-5d'),(840,0,1,'product_id=47','hp-lp3065'),(811,0,1,'product_id=28','htc-touch-hd'),(812,0,1,'product_id=43','macbook'),(813,0,1,'product_id=44','macbook-air'),(814,0,1,'product_id=45','macbook-pro'),(816,0,1,'product_id=31','nikon-d300'),(817,0,1,'product_id=29','palm-treo-pro'),(818,0,1,'product_id=35','product-8'),(819,0,1,'product_id=49','samsung-galaxy-tab-10-1'),(820,0,1,'product_id=33','samsung-syncmaster-941bw'),(821,0,1,'product_id=46','sony-vaio'),(837,0,1,'product_id=41','imac'),(823,0,1,'product_id=40','iphone'),(825,0,1,'product_id=36','ipod-nano'),(826,0,1,'product_id=34','ipod-shuffle'),(827,0,1,'product_id=32','ipod-touch'),(828,0,1,'manufacturer_id=9','canon'),(829,0,1,'manufacturer_id=5','htc'),(830,0,1,'manufacturer_id=7','hewlett-packard'),(831,0,1,'manufacturer_id=6','palm'),(832,0,1,'manufacturer_id=10','sony'),(841,0,1,'information_id=6','delivery'),(842,0,1,'information_id=3','privacy'),(843,0,1,'information_id=5','terms'),(848,1,1,'product_id=42','test');



/*Table structure for table `sg_session` */



DROP TABLE IF EXISTS `sg_session`;



CREATE TABLE `sg_session` (
  `session_id` longtext NOT NULL,
  `data` longtext NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*Data for the table `sg_session` */



insert  into `sg_session`(`session_id`,`data`,`expire`) values ('Jlo3ZUezc5UZIKjZFPiLwfA9Y7jAvHXxYZqTr3h3','{\"languageActive\":\"English\",\"_token\":\"fBQjDYjpw0F4KzRrvPaqR3hiXEmWMW6K2W6T8h5i\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/bestSeller\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-09 19:56:07'),('pgHBLDpzWF9PnrX5C5oQeMtJvN4WGb6s92LAnL9A','{\"languageActive\":\"English\",\"_token\":\"Q5MsNvwZjeAZ6LiOYIHPsrxlf6NgPzfoxqegCAp0\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\\/shipment\\/list\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\\/Products\\/add_sample\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-09 23:57:48'),('0NRPGxUSVRCW47fqG3VMu99mcQIr4fVMjLh815xg','{\"languageActive\":\"English\",\"_token\":\"mgiztusoIX5qd66TIxEpSclRCoSST4w7fC52mPtv\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:25:54'),('tM5BMp1pVEcmfB9KW530A8XpoyX3l7FjyGa3Urob','{\"languageActive\":\"English\",\"_token\":\"gPxa1ZtTDNqjf9cNwAUaDw5PpEuejTgNtHyy18Av\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:26:26'),('NeixUgK1bhfSBIeeKKyM62ICTrJdh6ZuCzmNTpz9','{\"languageActive\":\"English\",\"_token\":\"FvG73neNrCGPkR72Whk6l7OCKBouEmR7ceoQwD8y\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:27:41'),('8GJb6Ul8o6Aua7v1O76CqluSANNwh0wzQGj9DO9j','{\"languageActive\":\"English\",\"_token\":\"EhwACyZCY6i4KTSvqWPdGNGvZfwbA3LBW1jIfYVj\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:28:26'),('p8n0fZL42uNmgEiywlrPLZHmLxKwwWxV5VbO6IwQ','{\"languageActive\":\"English\",\"_token\":\"sLi6JB2TuMzs4QDjacQ5FYX3ellDRHE54pdGsRyb\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:33:54'),('fl8EitOx3ePlmdGIIZuPRujUyBtDC69BcFW1Sh9l','{\"languageActive\":\"English\",\"_token\":\"FZr9hBpYPFloSflI3MtRmrtU3p3SsiRJMc4CYm2o\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:37:27'),('o43qTn7KdSkJ65S8cqhRQenK4yUUlg96zLEjK5Zt','{\"languageActive\":\"English\",\"_token\":\"CpEh3f1orHz7j44lBBrvmA1TiHcapY6gABWNmclM\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:40:03'),('EuMnHYMZy6d34oAtJ10WZWOEzhTiSoXacjDZJImA','{\"languageActive\":\"English\",\"_token\":\"RMtU5P5nKeOFsjIuSoqnYt4eSQwQnFzVg3LFLXPX\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:42:24'),('DT2nbBObpo1wUJaIKqHlpWsOdDHw5tm6z9WC0HYg','{\"languageActive\":\"English\",\"_token\":\"NzMGtuPJqCmUSOjRxDYRwELjknGoTbI7SkghTnvw\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:44:36'),('Ye7plmWgvnDVorAOQka6AvzqHw0zPCuGJyhqAMOO','{\"languageActive\":\"English\",\"_token\":\"YccYUCw8orpa4NIUX6KEIZeKOrMiXfvofM1h7R2Z\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:45:47'),('RznJSe0UqEv56xCwBWvmsxFdylMHBsL7jqmTJHJi','{\"languageActive\":\"English\",\"_token\":\"OBRqcCT89G7FTT0SD8amnz9BGbBr2WNh7Hp2ptXY\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 20:46:37'),('FAucKL5gz9nqT2G679PP3Gfk9WqEi5IYdKqpg0g4','{\"languageActive\":\"English\",\"_token\":\"jlVcfNYp3R0UDHCqcKV2wp4m5GAUnT4twq7BjcmX\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:32:49'),('9lFVecodFUUcDAQm7X7cxfPJLPJVoO9Hj0rvX0jL','{\"languageActive\":\"English\",\"_token\":\"n4lwLAaSviRjSNCHEn9fXEgAQUA1RDkQGgryXIeT\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:34:24'),('VyaZbAhhE2yLg0bQ4sXguhrIc90epyg0ghEl8znv','{\"languageActive\":\"English\",\"_token\":\"lj0xeE8GsGK3P54pRMquo36TxLy6TAHtbVPVAsbw\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:41:10'),('xT1BL5SIMuzBFJ2aK3L0e7465waZnnm8HE59x7AG','{\"languageActive\":\"English\",\"_token\":\"MQGSnY1y3jtzL2u8npRSSrfD0HXtir9FNlGZPeAB\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:42:12'),('HOdofdREt5RXKgB8C2ryOb9VGgyj888Tf9FFirpb','{\"languageActive\":\"English\",\"_token\":\"BaOLOfYnsfiAjIQRWECY77HtVOkBNbDBYNBv0p9f\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:42:59'),('3JSdYTzgSr2zzdnQ6Cp9cgCXXrDeyWsHdfMVv3TI','{\"languageActive\":\"English\",\"_token\":\"vSkMn3kiBhSVLRL0aIqu8tcM5AmeoTh9WZeA57Sr\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:44:34'),('yoUaCqXosjs4Dfz8SCuHN6TChQawaL85XJh5pQv7','{\"languageActive\":\"English\",\"_token\":\"WlMBmBRDARxdidLALC5J6G7OjXphxi0Vdnx4cHg7\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:48:13'),('AAS7y3ZWRoitfwZB1Y2Pmu8bLQivnAu90P7EsPRH','{\"languageActive\":\"English\",\"_token\":\"HOU1VC1PVoCr2Ug9kWaoe9z4FijzMepM4z39H6mz\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:50:05'),('IpwqR21tQNB35BzWK3nL6YLJw6S9enMvNAo91Urq','{\"languageActive\":\"English\",\"_token\":\"0SrBRxAhjxtzDhu1htuw7igFHUQMLP9P1Spt3f8A\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:54:59'),('msAXQdbDxQ7cgt2kqdWYLL2KTrp451G6owapFlfJ','{\"languageActive\":\"English\",\"_token\":\"Pjp166HtDJh8YY8cgcW0hjeANza4zDg5pGcLQccd\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:56:30'),('P66FCnjOyEGTF97V2ZCOtikxiIZgDHLsKJWIM5lK','{\"languageActive\":\"English\",\"_token\":\"GwdAp5qAOAHokRdBZREFv6NDvAvvyeyuJZy7sZdQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 21:57:49'),('GgK3mbyEl1mfUBHDitEMsn5O2HYto0iutq4j0YLz','{\"languageActive\":\"English\",\"_token\":\"52TIFk43HtsbZlkrhpTsZiYADIiObcM9GSEyZ47K\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:00:11'),('qpKLdV06dsgWs8SDgdIhJsqc0gwZF7IlFIOBKr7i','{\"languageActive\":\"English\",\"_token\":\"7SP6Cy0GGu5Z8rGzGLUCUMDHXkPQzVo7euyAsZuZ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:00:27'),('Fs8VBVhYxemYrIo0LM9gLBpIdR3hp1IoDwpY5qdY','{\"languageActive\":\"English\",\"_token\":\"J7Jg2Ib7JlcTIDU9xDusJQUvBJI5sBkLxCaVDVRp\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:01:12'),('RmzJDp6f5WpHtADuxEiLqJNHzMOuhidqxwDQr0hM','{\"languageActive\":\"English\",\"_token\":\"hE9lqNEDfPvO7FnTjNVxeuiXoeLNeYQik4SCdEtR\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:01:19'),('76N5skmvYOwz4P8kKwkKbRYn4VC9N03Zo7rkeIuG','{\"languageActive\":\"English\",\"_token\":\"Bh0HXAqp2HVrGCEQW6ARe7D8U9mrxLVJjCsy0OOZ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:04:04'),('fWy27bbG2GDH3DtEMPaXMWPlGAXlAHatcmMGgWYI','{\"languageActive\":\"English\",\"_token\":\"M701PTPe8s7JukTvtFL4jKDLAI6dyXnKlV4SQG0L\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:17:40'),('WPHDZeCeCMzUeFWqoXkFXK1fCxLsELexEdcR92k6','{\"languageActive\":\"English\",\"_token\":\"o9dJEjEEsfpeFtazg0eQwaccK6f5At7sNU4zyf0v\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:21:01'),('HAd3HZis7kd7OmrM0ZJcmXfs6eenNo0dNSVic2bs','{\"languageActive\":\"English\",\"_token\":\"bigVDmUBgKtVqrKBZhEF5Dv3bXf7v8XSeLsTIwIg\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:25:30'),('fJUjIR6i2SIJgrZvTYpHVPKYmxB9MXlHetYEW5nE','{\"languageActive\":\"English\",\"_token\":\"m5vr9k2D9ns7xpiQqDbKwBptPDUrwXPqgDJJBOaw\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:35:00'),('WD9IKDHXPefCtCCnTUT4JCm3hADAbpuvH4iznyNL','{\"languageActive\":\"English\",\"_token\":\"VI81wAfNY8i3XaR6CEkA4t6YA9x6NujnFVLqj6z3\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:35:41'),('rFCGVP3IwOR3lhjp9gJZSX5RX46BsGxkcETX8iX5','{\"languageActive\":\"English\",\"_token\":\"0kTWV4g0EbKEQUfm9zFB26nJeXclETZzIgezpdzx\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:37:16'),('feAOISOdZeuA3nbzzC2XaZjKeywQbUlS3yuq9Vcy','{\"languageActive\":\"English\",\"_token\":\"i01Ese5yQBwHFphvMGGptaN9QMsJTl4ENjaL8bjq\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:37:48'),('w9TmzXyQbFrLvKQEvCWSfPrw7XqqgIFOLI85YzO9','{\"languageActive\":\"English\",\"_token\":\"DiW5unJ8nYqjVGaSIEsOA7HpZh7gN9mv0ToBy04s\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:42:42'),('vUrdfxkJKav6JwGlW868cRHySMRLT5uRab5JjFJr','{\"languageActive\":\"English\",\"_token\":\"AScAFlBUFYY08XsGLTOYeRWz9b67nZUPGHDnEGNB\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 22:47:30'),('UknZWtbUefwDJLs9BRrpcud4LSmO9Fa0Ot0VzOi7','{\"languageActive\":\"English\",\"_token\":\"meJyywiByS8fTff0W8aUWRUf08Hf3rPtA2ATOhP2\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 23:00:53'),('ipqSk62tdIyJDdPxqAv9k36dvPtPDucib3fb1I4X','{\"languageActive\":\"English\",\"_token\":\"bLToIErjjxntqCn07Qo3O3nOy4FbpJzOfWSo2siv\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 23:13:58'),('ZNYcoJgM4ouTe45U1JQ3rrVpq4AueqKV3y3lFefD','{\"languageActive\":\"English\",\"_token\":\"KfQUxYzGsQKSvsL5wt127JLEfAjAAeJQNsK1hdJR\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 23:36:11'),('4jdKiaX6Hhn8jknEhjtbUK5oUzoyPu5m75KJ7Rk5','{\"languageActive\":\"English\",\"_token\":\"YYc3tjhW7KoSq6JUG5xOE03bg7rCOVKyR9LDKSLs\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 23:43:55'),('E1xrElPrIrcIKpVJqsmkds5Q3BhXAxMspPBY5oxn','{\"languageActive\":\"English\",\"_token\":\"hhnOboI6ZNHgVdlNlti6vntFlXC6FyAASIlgN7nL\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 23:44:56'),('xO9UxGWv6LZjXB1svBk8p2HRJ623FI2pItGqnVtX','{\"languageActive\":\"English\",\"_token\":\"OAtxiagz80t2jpRaC4umwNYnzn9Sg214r517Qn5K\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 23:46:27'),('LQQXWGR9HbDQGqVq6Zmj1GvuT2BOqquxD986rHul','{\"languageActive\":\"English\",\"_token\":\"tekLhMX8pHRL2ZEN2g0Jz3qwYSmfRNC95ZH9ckGH\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-09 23:53:48'),('BJgx9eZ6UivihBDE3Cw3xUNxKf6e6nGoksfy6Tq3','{\"languageActive\":\"English\",\"_token\":\"yJwsNxnVjfXONO5JqUUeyWS6AJJNVYcfN0zQbgAq\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 08:27:12'),('tYvP9xRnKxcNb8V2KqdCgJbEcdQ72HxWrNZG0r89','{\"languageActive\":\"English\",\"_token\":\"uBwz6hPZJRLTaH5d27jaXUBPNesZEQrxUnsmUeMe\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/auth\\/login\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"}}','2018-02-10 08:27:21'),('vSFJar57PW5gp4nFIODP5Pk7OhZsp7wI94izSpj5','{\"languageActive\":\"English\",\"_token\":\"QqLCugTbUy2QrbdSwOXr1gMVDRoz4yC0EcSAQ0Cf\",\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 08:28:25'),('0NAYoA3t6re46etwasaGpwWhtFZkp4ltZrmUrIMW','{\"languageActive\":\"English\",\"_token\":\"qTI2wgYxgsLBWlUeNtbPdOKNNtdGLdgjvP4yocXZ\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-10 08:28:53'),('ObQL9jvMlUMAwjKeOoqHuqSg9U1RfnbkalE0C1js','{\"languageActive\":\"English\",\"_token\":\"qTI2wgYxgsLBWlUeNtbPdOKNNtdGLdgjvP4yocXZ\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\\/Products\\/add_sample\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 08:50:18'),('axA8C9f5HvD3zybOEe9InPivNbK9dt6B4hzPgmOo','{\"languageActive\":\"English\",\"_token\":\"ZdHsjAb8ZRtyKjgcDe93V91ZK53lUWyG82WF25Rb\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 08:37:49'),('z1VieelsfiQRnEvcYc0o4Q83djf7qUZ85bl5JEl7','{\"languageActive\":\"English\",\"_token\":\"q9ft0I9MOmqE0OqfTBjpRd4golJMj37Z4pQvUT55\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 08:47:30'),('PDTEwrMlExkj76mcbIdmhpgYvnZfudTb43j9knn1','{\"languageActive\":\"English\",\"_token\":\"mMPMi4s2j2MAxmIuPDL5kHdYq3ulLBVqWd9Og8Yx\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/frontend\\/images\\/brand\\/0.png\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-10 11:32:20'),('5Cxyl3LbnMYCs2e79L8GVgL42HFnhQI5dGjgblGb','{\"languageActive\":\"English\",\"_token\":\"mMPMi4s2j2MAxmIuPDL5kHdYq3ulLBVqWd9Og8Yx\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 11:47:27'),('35mtWmJTRpPlluUy3FMdH0VJqgrpCjVgwBkvHF0n','{\"languageActive\":\"English\",\"_token\":\"XpD2rClbyLcDRt73jgaOCBz8Ivp2PSZ9cw3f2rZB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/catalog\\/demo\\/compaq_presario.jpg\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 11:51:04'),('fnpjjxH2zdtUJ351QO5oqZsO1hwWRjiTcUkjkCqp','{\"languageActive\":\"English\",\"_token\":\"XpD2rClbyLcDRt73jgaOCBz8Ivp2PSZ9cw3f2rZB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 17:46:35'),('DKRrVM51jcEmM90jpAEhCj0FNXeAyoJO6cAvh2VP','{\"languageActive\":\"English\",\"_token\":\"52x2PGHMGix9PqVFY9EtlNspVcupnQjwXAoYhKpH\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 12:31:47'),('kJ2k9NTX7pYJrYsWvJVsuShnrJVk5Avpyj4R8XOn','{\"languageActive\":\"English\",\"_token\":\"3TDxAQg1mbBqGV1arh3e5692LE8zPDMqWxCCU46e\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 12:32:58'),('yeqHevSEEWUoDP3LlloDsK0NRGfRfrSBVQJheeQk','{\"languageActive\":\"English\",\"_token\":\"5UFkt6uedIp7MWLzX3sFGASckHr9ljekvCqNCYM0\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 12:44:42'),('odVcwjMbMykZNWGJieBIjHa6uAbSqsjsHdxTz2ie','{\"languageActive\":\"English\",\"_token\":\"4FHMrWPy7fuWro842IemSu1SgMJF0CVcWyyrpBx0\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:01:39'),('aI414S4VUVWDvkN9wNaLZojceSqgg2DPbtjQ8BHZ','{\"languageActive\":\"English\",\"_token\":\"tZoVCULnGakRR1bSW7FZ9xp8RMqsDFMaMYzzVBly\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:01:40'),('OZqg4EncuVducuy1RZ0Sg1OwysZfCxxdI4NRw6Rj','{\"languageActive\":\"English\",\"_token\":\"4rS0DldoN2ppgsih0Gmz0vAiO6cmAtRqlfuyRMwn\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:01:50'),('sxfLUt9O7bAfTybNOJg2RgJ6fdi8eQkCcmCLyoTf','{\"languageActive\":\"English\",\"_token\":\"SPr1gq509tId5ZrdmJKiUvKUSzZmhszyD6wyATev\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:01:54'),('sRusUXG5woBtFV6VGqm5461HgTfaLrHFLMAhZELj','{\"languageActive\":\"English\",\"_token\":\"PJVLEAm7VrnEnKNDULveFg0A6PSBs2e5Fd2rmE7P\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:02:16'),('X0quZEZGNBShqlCschPQVsB28ox0ecPp0dl5Jall','{\"languageActive\":\"English\",\"_token\":\"WTnwbceINlpzi681QWQrzrMc95LYdFJYRNeTE1bD\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:02:20'),('L0CXbojrIxx3vhfXsJP453DkiuGzaPQyOed1s0Sz','{\"languageActive\":\"English\",\"_token\":\"BTKS6yffiAXi9Cc0RErdlFTU9OsxwlYwjgtyBnev\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:02:24'),('EoDUMHzJ09tmvKtZ0WdXQq7HAHmd11okSgXX02HJ','{\"languageActive\":\"English\",\"_token\":\"iN5InIoXtRixFKcza7Pf0oPFUBdD2MVSpnyOSwMS\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:02:27'),('V2R9a5hlDY6xPUFV2ysskuYsnKZBFNk7kiN6rYcu','{\"languageActive\":\"English\",\"_token\":\"lpAqojyi7K5RQjxCj4u7wr6Qnh2IGG1QWFmYYic3\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:03:27'),('9F2L019HcmMAOQzq26fJd364zfJPivR4Dv1r9RAD','{\"languageActive\":\"English\",\"_token\":\"6jHjQQVPhAfeDfvnDNGNs5PM0C7PRS9K6ToFWt4K\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:03:30'),('9kZuPSZM67YkhpFHP0A9Qj6G4N9W9OWrsXDGsvA6','{\"languageActive\":\"English\",\"_token\":\"jLVWmOjaDuXDU2TuZPdJ9jZZdqMXCTioSy2MwssQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:04:00'),('AwBxGVY7QBJQKyaJCEQQtQ1b0VrNiwh9fSLIwpoR','{\"languageActive\":\"English\",\"_token\":\"2IXcf1J9NU7aKKHS8aXCj0f6bg6uDN4uZV2DpMEH\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:04:03'),('IQs2aConwgro6R67bnMy4DiYSejjcm7f3At1B4tI','{\"languageActive\":\"English\",\"_token\":\"6JFEzXR7tCOHX1s8QJoV7InXJul8PBMn0gUzv596\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:04:18'),('VOlcd5MsSFp5tyS8ISIfcaQqs8mh5Zy6um4tEc30','{\"languageActive\":\"English\",\"_token\":\"rqFcOtcdmDP6dLw8u9HSEJHZstNNM5rmvrQjTjIV\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:11:38'),('NK9IL4Lmp5CcDyC2iF9yD75UgjWFmgRgxikrPWoV','{\"languageActive\":\"English\",\"_token\":\"DxPk2seDvKlYEUboTCqXPSrT7VLlYKGxLJiBdmhR\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:11:38'),('q3P4zvDpNQsjyieTFF1iWuf14MInG9EJApHhD9uF','{\"languageActive\":\"English\",\"_token\":\"qy9poztodIxIXmhgsi4NigjZp4LiWpWYOGMm2Ofl\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:12:22'),('zxm4Wt41Ev5Ta1bVRJA9K0Nlj0ySa1tgUTwh2ibY','{\"languageActive\":\"English\",\"_token\":\"FwMXTU0fHoIek9U4EsIBmGyilxC49InnSLwQXsHu\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:12:23'),('XZa0o9C4EiGyhBpqXNOSUhe1Q1AwNWRqhrePDOHc','{\"languageActive\":\"English\",\"_token\":\"GhAA3gtIqQGsncgrngmH29H42zpU9rcbd0nYOB9m\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:12:46'),('lfmL8aqpqr5kfgYOayjCZnRAECEo8DnX6WgocpoX','{\"languageActive\":\"English\",\"_token\":\"6Z4E6FGC28EBI53Ik67O1VBfPE7qZJZTQfOAWnaq\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:12:48'),('OuHm1kxw63YL4bwWlGsN34nt6pabkLVGtoNp6Yjj','{\"languageActive\":\"English\",\"_token\":\"GawN8woJTXZ2zMnVELcsSaxwWq62rjuaFjuJc6HS\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:12:51'),('zaIRqnpZeTayvvkQnOyKNowoYYRarybTw9OZDpKJ','{\"languageActive\":\"English\",\"_token\":\"B95dPj5eBrFHUhK2cuulupbl2y5zxbRAbo1Qt4Cm\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:12:52'),('HFbX5mi0vlPXzHO8mOAvATYPKKxepBXPitFnpMeH','{\"languageActive\":\"English\",\"_token\":\"SNkQ9MtxwrpThGW84sU4rqmWN9iWrfSjHeVVIrZX\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:16:19'),('BvvvPAmv0xxCUQTfIFWpY2k7d5bDQIoaeVU4LFP2','{\"languageActive\":\"English\",\"_token\":\"92E8iVYmJjoRpUOobyDhLAgKN7t6sbaEbhWv8I3r\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 13:16:20'),('AcNW3BCk2wMpAXu16F5zc4Cre8GS8eYJq46Yl6z8','{\"languageActive\":\"English\",\"_token\":\"1mWImtbvc9TFy4jYHmZyBGXtCE7KIGKFNndQ8Tow\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:18:59'),('7vJXM2FykT3TV6j81LLL5MYdnr2BCyq45ghsmLg2','{\"languageActive\":\"English\",\"_token\":\"nZ53NPvYXxtCPioT35f4xHictOeZFreQc1ySaJhp\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:19:00'),('8gvhyLCxsmAtyCG0ZUmxvMVk4rLWc85TOJpFqCSQ','{\"languageActive\":\"English\",\"_token\":\"FZrixCCv2CfskRQLSWcJ2XFchQkmZy8267HanZpl\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:37:35'),('3r46gHVrbiA15ObAaHCCopQrXyjQObb66DLlXf75','{\"languageActive\":\"English\",\"_token\":\"xK73wogzPV4l5RMeTfqjWR1QTJjWnUN3htsdvCmR\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:38:09'),('rpjMqKiD4OpUUZagbg61BeFjqyZBXfsdJq2CqFxJ','{\"languageActive\":\"English\",\"_token\":\"IQR9ijdzwoFWA0dXAV9YnrAxJwkapzgOzHhvBLKU\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:38:58'),('uAsBsYaBkvP3Gs1In5Cc4AdEJCcmHJwI85ct9fg0','{\"languageActive\":\"English\",\"_token\":\"UyRNCH3t0OxVIbe27GNNlDj1pSO7D1xEuJjWr9HB\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:38:59'),('s8VZcp1HBiJGQbeX6vodkHjmbzMlVrpH8M9Y4yhO','{\"languageActive\":\"English\",\"_token\":\"CYEFbHkBYx8RpmHzWfw2nEHo1UMuu7CBzKQ7kc1H\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:39:11'),('n4tWl5MCEHHUzp7SR6cZeqiy6JThiMUVS7vRiKQq','{\"languageActive\":\"English\",\"_token\":\"M6hFMrBnZGNF9iTr1itb8TPpxOyvjeWBRFtQTnap\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:39:40'),('aokJXDdBsVZGJh1n9FfgpNM0TQjN4uV7E2gQMoC5','{\"languageActive\":\"English\",\"_token\":\"4b6YQcQ5bkpaSycjlaMrepBPkMPAXYwYC0FD10Eq\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:39:47'),('ngYK1qGHo5DX2uD0zSKmYUHVYFL34X2ALiuLHngC','{\"languageActive\":\"English\",\"_token\":\"dxaiYZYSClQHkBc3yQGvhmrCNOS8Rj5ycSdfcJpZ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:41:38'),('mCXEh4X635BAc7tbvNNVMvP4mk5uhAbyTWWmvcc9','{\"languageActive\":\"English\",\"_token\":\"fIdfsYuw3qH7XYngvPnZJiqkmnyPYEZPgqY9YD6m\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:41:41'),('bayxeCXdtLMjcgMKd3wvQGFlE2qBYfTZLJhfg9Z0','{\"languageActive\":\"English\",\"_token\":\"xcclmEwfUbEUzK6wAVRtVpwi16h4N3BCWS8pmhnd\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:42:12'),('eQ5mFRFHzTY8F9HL1xu25tjXMdTLSKD8NDv5rC0K','{\"languageActive\":\"English\",\"_token\":\"Zt7mX6B1Nb5d0GpQrUShA3CNamBE1dctr0K9LnEQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:42:12'),('g3P0yWLUSEYAoXjxBqaoVQwfhJjkEt36fUnLtkQT','{\"languageActive\":\"English\",\"_token\":\"vjhFuccUYV4dynocZJPA7Xwa2Ey03ICDYHAStoi9\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:44:11'),('9vxO2ap3T7m2jeT8adhLb80C4SWCoVvtsqr2OvGa','{\"languageActive\":\"English\",\"_token\":\"Fo7XgKKVXoxvgie4E4ybWaLjrXujaOv6Pn9p7Rpc\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:44:24'),('0fsJe9hhCkZtl6oVBrXDixpj3JeXKoyH0mQBJsq2','{\"languageActive\":\"English\",\"_token\":\"2BxUpIlZzvBdcVtQU0fv3sl5FjCsFbqlWPvcbkvc\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:44:49'),('ZCVLyTU9J07euuaR6QZlwUGYzibVhawoLDJoJTqJ','{\"languageActive\":\"English\",\"_token\":\"DqGjUhD3XUckXTcNDU9eUAD0huBESVqYZ2BvBL2U\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:45:19'),('BSstikVBrSp7vgCvSinyMCaPfdfeBPmgZmnxwJSo','{\"languageActive\":\"English\",\"_token\":\"vHbJG8g2Zv3h112R3g9R4X3WQQqzbrJ8BqDd69a9\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:46:43'),('hmZUxhtRndWedMjwNFI2o4aXEIHB5nyLIUjqkLKn','{\"languageActive\":\"English\",\"_token\":\"0x15SmS6Q1F9clV4At0oUR53fCwWusT6qDTDe03U\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:48:00'),('Wdl7VL51pN12bwJ2F7pUer1JS1b57X9Pkm6xcJCO','{\"languageActive\":\"English\",\"_token\":\"2pguYSQAjozYDqafNoa8gOo3BlQdTNV9YFxosI1j\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:49:13'),('dYN893BqCsymCwVUiJkkzW00gZz0dxmK3kRcgcPv','{\"languageActive\":\"English\",\"_token\":\"pAXDT3qZPhVQutot14BxQUMcXcIqRuuNoMBQDhOR\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:49:38'),('cB3wFvrwJznoCfS5FvckoCB82NQyu4I9AAwo0LDo','{\"languageActive\":\"English\",\"_token\":\"Di6QnOwmsxTtnxZwMMNZ5S3FI5UoVBpf2DOnfkNx\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:49:43'),('3rP8N8ukskRn1BPdTxV0LP3ck60JHPrvXEJ1Z8IM','{\"languageActive\":\"English\",\"_token\":\"eAeX1ctmvVksdWB5p7HfidLjigEAzR2fIil7ybft\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:52:13'),('ALUegZyYrguJAlYgLczvFNKifA439bLbsjn8TBYP','{\"languageActive\":\"English\",\"_token\":\"9WemLdcfFZZ82yNOzE885oiRkb3fVY2SXLm7A92i\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:52:18'),('0reR42bDqnkOAHHWP7rHMYf4lgeeyoCpXMWxriLW','{\"languageActive\":\"English\",\"_token\":\"qTM1rkqKmZpBwZEV0HiOCp6N6ypl5w85Y9aJcu6h\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 15:54:15'),('FxSBfKV5nrXTduaDYekLzBdrJImPeihu5FMBuzSw','{\"languageActive\":\"English\",\"_token\":\"XpD2rClbyLcDRt73jgaOCBz8Ivp2PSZ9cw3f2rZB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 17:46:48'),('S7RoaBDO0CqOO71sq4Zzd0bDFw4Jk72t2jFYnl2v','{\"languageActive\":\"English\",\"_token\":\"XpD2rClbyLcDRt73jgaOCBz8Ivp2PSZ9cw3f2rZB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 17:48:46'),('vklap7XcLmjMGVkBR7IcpiK7Up0FJ8bJfwslwnui','{\"languageActive\":\"English\",\"_token\":\"XpD2rClbyLcDRt73jgaOCBz8Ivp2PSZ9cw3f2rZB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/api\\/address\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 17:52:17'),('5EsexHNOImr6hMr5FgKEeVVB9UEGpZF0sLg799Qo','{\"languageActive\":\"English\",\"_token\":\"XpD2rClbyLcDRt73jgaOCBz8Ivp2PSZ9cw3f2rZB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/login\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-10 21:30:51'),('93ExHBAspgLlDCqDdGG1O1OSls7Cy45OrHc4P9GM','{\"languageActive\":\"English\",\"_token\":\"WXjv4Ubw3zS7j2HHc7piguJ37r3N9XvMjCzgUUFc\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 18:56:46'),('pAuME1kdgVhj3C29bmsOHh0mXj07x1y5IXr1ZlgM','{\"languageActive\":\"English\",\"_token\":\"DKX6w7QnrxcjbVwPBUr7tEgKK8RvCn7o17I2g0TJ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 18:56:59'),('NKVduMClcJu3RpOIAukVfVhzUGItDkCdW2Fy5jl7','{\"languageActive\":\"English\",\"_token\":\"PSBwwc9RokzxJr8P16VkrAeFjeWCK71EiRt6CgIB\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 20:48:00'),('kc1iUqbwYRdCEMMxedx7ixJUetXiHm6J0auKXM7p','{\"languageActive\":\"English\",\"_token\":\"re14VBfAqxZdOQSQwSPcLx9kRD7BGvirFr3dNzry\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 20:48:00'),('ucyiMoKa4AcaDfGViFmcN6L7VWvkoj0aE0ZmkNCu','{\"languageActive\":\"English\",\"_token\":\"2se95DpqLZZXkvZ3BOgzq6y4TTHpsJRT40oTDUG4\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 20:48:05'),('Sh8skO89rhXGcdcogh7gZKtMxax2wvY6sX6ezVlQ','{\"languageActive\":\"English\",\"_token\":\"dAJMkOrZbib63dwlZn3jE8wENPg8PJg5kpHv4puJ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 20:48:05'),('XUzGokr5MtiLSD6szggVfgPiwsOavn6gliTeANcr','{\"languageActive\":\"English\",\"_token\":\"HrJv2DrbzSDHOfauZuEarpzawNgo0znnaEPmrP8T\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:00:08'),('0g8KiZq5eyv5MnEoT2iOGjD98KvO6uEkcS2Aatvf','{\"languageActive\":\"English\",\"_token\":\"jSn6qaOrScsPDQpghKGvARk37RSESoxC4QUIX1ld\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:00:09'),('niXDtLifBnd5GXGgpZkFgE0FACtjsMNfVxgndEaM','{\"languageActive\":\"English\",\"_token\":\"EF3WfyNg5mLrpSh6AvLG2IXcxBmBGmY4EpEuIF9b\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:01:54'),('AZTWCD98pBzIk38QDdHr8EPYxx8xyDaNuPfADcFb','{\"languageActive\":\"English\",\"_token\":\"4tlgPuqN6H0HS6OZ2NMxcUwH546yVAmX8TOvZA5I\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:01:55'),('tOtL3h1kN5w2nfOgZn63JRmm3wfmwLuJoIVwRiQO','{\"languageActive\":\"English\",\"_token\":\"oEt8q8ifxaIjGv7PJDG16ITWTLKesXOek5n7ydsk\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:12'),('jmumAIWWmmow28f2DVc6zOylxB8bwyG7qqUaP87q','{\"languageActive\":\"English\",\"_token\":\"ItnHiI7Tjw2FHp07k7scXsVev5LSKz6z9NeKqbIS\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:12'),('n7J8vElxXfzezNWxOYCuh5hfKV9J7vQTzntzmxXj','{\"languageActive\":\"English\",\"_token\":\"GvwgGa6MQ0EKdBVznX5x1OdEKtxx6YiLwyHMh28J\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:21'),('kcia04c8JFQ6sqkyxDO5fFDdaKgPxzNMK3f0JRdA','{\"languageActive\":\"English\",\"_token\":\"X0HoJBnMUBaAtvXZCJRHbI2bVnp5Mu0VnwBoXlME\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:22'),('4bXm1V256qsioHek5MmUz2FcEe19U2QEPO6c5IGO','{\"languageActive\":\"English\",\"_token\":\"aAvgFw08ZrUS28CojmUkKdP0f1qWqfuR6qrWkJ4I\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:32'),('JeS4qV6D6a0cYHamQ2UHMgjIjhfrAZBvN1DuMQvm','{\"languageActive\":\"English\",\"_token\":\"2Mqj5FnxqXqMIxQGeHA85t2DZtULd94IGGwWLyMF\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:32'),('nDxfacLgayHuC2rxIRJ5bFm9xHa4Lk25Clj4jtzU','{\"languageActive\":\"English\",\"_token\":\"wQI9P5BT9nUbuG300EhOVKQ14p0YxAbysCIUDVDW\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:57'),('cxIWfc07ffbNDV1cDZx9VKsnu05phRob8gpfRTZr','{\"languageActive\":\"English\",\"_token\":\"54fzbjqhP1p4SlKk5Y5fgPTaFQbAhva2AUsOiGfE\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:03:57'),('cZBAXjvukKWLQTwC1lJQEacUwM9lxUikiDidhKIe','{\"languageActive\":\"English\",\"_token\":\"UU6YcgYpYfxhh7oWfUInVST2k6EoSVRQUQ7ZB9xu\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:04:08'),('KhNb9JjWhi9vEvDit6i8Oscofjrm8TNJTi3JkDDk','{\"languageActive\":\"English\",\"_token\":\"QYSOYCsaMJWoSyszujyltMAGUv52MvKMDjX1cFJC\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:04:08'),('t1X8Vt9Zdjg09W7sgJs3petpkNJ9DPQYZ7qbxdIs','{\"languageActive\":\"English\",\"_token\":\"E27ZdAXkwtwP7bx7yQGD4oW8ntBoyRJHW0mAE5UV\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:19:58'),('wobi1ojQiUhEybogtpGeoAgBq2XxXFGUpqAz1011','{\"languageActive\":\"English\",\"_token\":\"AGnaTN0CoXbjF0pcMim67VmFTPtLpLmTdd4njbKf\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:19:59'),('50Rx3bSUOIchQfqTT3UMLy0MLE8ZH1vPBHPLi9pa','{\"languageActive\":\"English\",\"_token\":\"uu2NwisxQSQncnqaNS5gLRoCz9Fa6oF8G7wvGfQy\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:20:28'),('NF3jftepUK9XQ8kpyVgnCrhudMHIpTuj4AoBMpik','{\"languageActive\":\"English\",\"_token\":\"XpD2rClbyLcDRt73jgaOCBz8Ivp2PSZ9cw3f2rZB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/login\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":9}','2018-02-11 00:27:44'),('TDEBOkjZD3F3KpIUfvTiIiSXY24aB4nqSWayD9mS','{\"languageActive\":\"English\",\"_token\":\"DvT0S0fXrtUFllgJELFmxsMoUzmtnLaRbQ1tUU6J\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:31:20'),('pYAGQfdGx1T0pMSR8uAoGJ7EnfeQ7hPWFkRXumY6','{\"languageActive\":\"English\",\"_token\":\"uUl8L7R0kuHlbufSoQ9peErBkkHTUCCnKRPaJzcC\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:31:20'),('BnzeaiS88EsF27qWYRN3voP7pUPaDURm8TTkQvQK','{\"languageActive\":\"English\",\"_token\":\"slirjxd0EJCKTkLcB4S5mFxcOlkukM5yggPJDHs4\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:31:32'),('ioUfp6Fn2L0RJID1GlpbKr2jwLzxGHv7r2tY63tJ','{\"languageActive\":\"English\",\"_token\":\"ScyiDeDzoew9phpTqSYs2UrlQ3nDAKPzF4sYpy0i\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:31:33'),('dtz4aovTapu06xsKdB4QMJZJwOgToI5OoNPFVlK8','{\"languageActive\":\"English\",\"_token\":\"RVd6muP5L4on1axhaUhn0BpsKjrraO2Ub0G2PjGs\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:35:06'),('4W6y1rcSwi8dblpDn1CiZtBedV8hk6ZQuYtNhRYT','{\"languageActive\":\"English\",\"_token\":\"i3ipCnrDtwqqPv5eyRwu6HeaeI90cNKTlE2XKoy6\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:35:06'),('FxLp6GuiNxELLRlFdE1pgAZPVIPjkQjPI4X3N6PN','{\"languageActive\":\"English\",\"_token\":\"k6nSN0C9sjsaa2fZsh7Iu6hvJWm8DFNRf37hbxYU\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:35:10'),('1Eusn9foBDZwGmbYWSz3C0YyJcAZ891jmpBT5lHW','{\"languageActive\":\"English\",\"_token\":\"vqvL7ZlDEU6XTdNclpUTqD2jLBMYSbawgx3PdU5F\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:35:10'),('kC78mzGk9S6zKIrRPFaLkc6RZFGD7IYG62QfIvQU','{\"languageActive\":\"English\",\"_token\":\"oNJptv3ijNuNHDGagq47L5kjfjMC67uHMno1Ces4\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:38:40'),('LscC9JXPCuUj1Wuxrz5ZK0tq1CNwnH2NLs8WeESY','{\"languageActive\":\"English\",\"_token\":\"hf57ScPIVLyCjOa3MmadXMVz5zU62yS4kfhrjeSa\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-10 21:38:41'),('ONOIg96PWuircba6LMNNg14VZ7CGpQ3TU5kvfBWM','{\"languageActive\":\"English\",\"_token\":\"iaRNDoRDy7T1Xbzj4XSVxdz3PoAWFKzhpT2AaSaR\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/frontend\\/site\\/loading1.gif\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-11 06:09:56'),('tki7fta9uvz5aTj99G8H8k3TixaKpz62fVFhasON','{\"languageActive\":\"English\",\"_token\":\"iaRNDoRDy7T1Xbzj4XSVxdz3PoAWFKzhpT2AaSaR\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/login\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-11 10:54:28'),('uiM0gHB6wyNpA0m6vBBP3ExVTXU8l6WsLTJ8fmpG','{\"languageActive\":\"English\",\"_token\":\"PEgzQ65kVfsvPMgc84lB6YgF89WAvJUdfH6yINKC\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 06:57:43'),('qp4hCIfp1NoDin6V46Btzp1TDTuksHKfwfoRgaKH','{\"languageActive\":\"English\",\"_token\":\"el7pxGLOKKSz8JS8fMdXzk26XDMPv3CidVNYN9Y3\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 07:00:02'),('XDb25sltABsxHexcvR1MVgQjvd47xX6IdFfyjbMz','{\"languageActive\":\"English\",\"_token\":\"GKvXV35JF6rj7N7iJU4JobWKDEtaohuPLJq7myen\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 07:08:18'),('aGFsa4H7b4b28lK52iaG0VGFQcfIXeBLK2Q2uDxq','{\"languageActive\":\"English\",\"_token\":\"ZSWy91jUnTdh1ckkRMxyg8kLEQu0vD3FYU7qcGmr\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:21:43'),('m2SMgrIsw74dZFrmdkPoRbPSg9wvKHMRQ6f7F4CL','{\"languageActive\":\"English\",\"_token\":\"sjb6MpZ2SuUvvQ0k7UMwlJzKH8eYsa7H9vgkmXK4\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:21:44'),('1atJO3VtoPBHRwn5XHACpRmUi1w6GY70fiOSUJnF','{\"languageActive\":\"English\",\"_token\":\"QbEAPDxwZk4FkG010VaMihqcqSQNJnGelkDr7LJQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:16'),('dvEbrKxvwvxuxJG4FoDmGoBw5hjV1hMKMQXOPaOu','{\"languageActive\":\"English\",\"_token\":\"shl7JifK4yK2E9KI9t0i8uCFuHKeEjz45pMKdjvF\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:16'),('bBkeFTglR4WKQzsXgV5z80D0OMWWqCGqqYTKZQoS','{\"languageActive\":\"English\",\"_token\":\"GkFUvblr4NZ9pINKHNstutsiZsbSndzFwXcgRlc1\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:26'),('WydCleC46uR5x7OlhtytRv5D79skQ03z0lOHThN4','{\"languageActive\":\"English\",\"_token\":\"410luvxgTmoXhYyjcy0gH1efW0KaNkTd3D94AsY3\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:26'),('0WdBHNoHKdPSeAsWpK90Q6A27HGXojELIaZHLm9a','{\"languageActive\":\"English\",\"_token\":\"NWFbjUADMtUEG051zM5clWxUPi5YEGqm5tkgbzWS\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:34'),('qqFy0aiNnxhWKWoZxBIaPPdkOZXXEp7Qg7bDmhht','{\"languageActive\":\"English\",\"_token\":\"EFV0voJDgmgLMqRHhGry4fcFZHMiqbrRZ96VgSgl\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:34'),('EMhrjSgFkxns1928gfH2yT4Pu16QKAUzQcUqdx3c','{\"languageActive\":\"English\",\"_token\":\"8IEGGkOthXeh3eQ63xpWRugxFGphEk4JUow37fo0\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:42'),('jazzdTk1sqVXC8OcsYkjrgZRdvIe1oVKL7hloUmG','{\"languageActive\":\"English\",\"_token\":\"syGR5UTUM3KxFbkp8Vo84lHFvD3sAg21n5os9KzF\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:22:42'),('swXOXFQcP4c4jnpZdT9ZMmGaRJO1SDqFaMmpfraf','{\"languageActive\":\"English\",\"_token\":\"86PuEwBo13HyCA7vtVoCGJhm0k0ouTsLr1wm6sxS\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:23:09'),('eQAFjFMQue9LuCs1fxZFOm8vx5zIMzQDuJpTWZH2','{\"languageActive\":\"English\",\"_token\":\"j7eUxkMe2BohD5z6jEzhjPaicUTVYBaAXriJ6VTl\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:23:10'),('SZDfYqhNcwDC9bNYcNuf7TxRRPM7Fjt9MQxsQ1kO','{\"languageActive\":\"English\",\"_token\":\"l75RwQDVS4oLatGc2PJHA94YHut9TBVhxhQfWt7Z\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:23:49'),('q0nmifznQGa8EZQE94H0DDXwWceylX8LEWIi76KB','{\"languageActive\":\"English\",\"_token\":\"5dB3CMUC0i50TlQJ2M8lsBViCqwuYjjdbGpskSK5\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:23:49'),('tZqhsjh5fVM0caZq2okzEIXNx7l8W55pt3MLbrgc','{\"languageActive\":\"English\",\"_token\":\"v6z8JXKcGlfUSHZkCFfBbdQH7uExS8oDWiChJu4p\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:28:12'),('9OubbWuR8fqYspGRDba2Zx7zYv6KAdFdS2gLHdqj','{\"languageActive\":\"English\",\"_token\":\"A2sQFeU2vudTLX5yTqBGwA7GsMN3wJD1BBzhin33\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:28:12'),('wxoiALxILvtkuwakjgMQbZu8pS72PkbqdRdeu2sH','{\"languageActive\":\"English\",\"_token\":\"17HSfsdNxvJFnQ3FKiIVJMYMlplRkyX5wxwaHXUu\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:28:22'),('8uTZRUuVEwIJ1cygYEpsdXpciGzAZv18cQsBOqxK','{\"languageActive\":\"English\",\"_token\":\"QZ51hXni47GAOhqZreyBfZSWfQuDY50zkiYFBe3U\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:29:26'),('pui1eD1LjgFoMfLEdPHpCd0ShGBE6WEGXRREAfWo','{\"languageActive\":\"English\",\"_token\":\"flM9Ah00pnjDMlOCPinu2z5U4Sw4h5XoEjz5csgr\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:29:27'),('xfZxZ4ql3Fp3JIXFCddPSLMNw7Fjwew4bkRxDseq','{\"languageActive\":\"English\",\"_token\":\"PQhAXdoMimvWciIWyAUBerbS50w83KBFGqwnSAnD\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:29:48'),('1C9u3pjpyHndUFPvgbDSe5xkMpzmVX90Fv2mw3L6','{\"languageActive\":\"English\",\"_token\":\"pVs2PWqWxnWD8k1A6xOjrg5HMxyB2Yi1rWf2uPy8\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:29:48'),('QHmcVtfENJ0EwBbD9cwn1Vv9NUeaydyg6mUDzBod','{\"languageActive\":\"English\",\"_token\":\"bn3ur0bzIjSDCrD5JoJTLHstqHOuh9liFCFN0jwM\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:30:29'),('PYKAioSPveRlRrDFZPsgC1UzreA8TGvBApNsqyho','{\"languageActive\":\"English\",\"_token\":\"hELqTgJvf3f49GllEJr2Uqry9bK7zp6EZVfetzzr\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:30:29'),('gsE1nmDnFufyqDv7IteO9gdizpoCr1a0Sr8iMa6g','{\"languageActive\":\"English\",\"_token\":\"uUqCaDYA9ArM41jByVLwBSxcW0MJN42fXh6HftNQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:30:54'),('7dq6yJTiNvNLog1IIi5VrI7PhGUEI9Kd4HByWDb0','{\"languageActive\":\"English\",\"_token\":\"5VSjZgxaEhR9ZsBCmGm3iFnLWGnbhSC7E6Q1WdoY\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:30:55'),('g48CXdm3M2me79CWtXNvOYSAEg7m42XJqkE23q9o','{\"languageActive\":\"English\",\"_token\":\"UKy4qNOkrIleoBYN4HcHtP6GmS3JK0xXrSTIdLZx\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:35:15'),('tSkIJSe6Ku3jeop1n5KsKgTeGyBfO8gGESyoKNXu','{\"languageActive\":\"English\",\"_token\":\"YXLBor7Fk2a8vfSTUXg5ur117RUUPxGlWya42NZh\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:35:15'),('LuxYNWKs0sEsbOSGZbsK6zwnAQz6oX1hAC27U5uv','{\"languageActive\":\"English\",\"_token\":\"EmfZwAEHVacAy82iQ0cuRnCxgjTpIlyO5Sysn1pg\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:36:20'),('H2x9bfxajJAUwPirmNLRQjCdp9pajyFp75clOuya','{\"languageActive\":\"English\",\"_token\":\"J9xHVcwa4J6HbuLZtw3xSJtTBYF7EcAqBtlnaepv\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:36:20'),('zCUZSrk4fSXLhikYkTNu26SosYI6SojmkuU3j1jV','{\"languageActive\":\"English\",\"_token\":\"7JH3vitpq0nDKcYSaEjfSw7rXfLY3IJt4DIjUtzC\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:37:09'),('PsvfWVlC0Ay7uzW23BvxFzvqy025D4uismaBlK5t','{\"languageActive\":\"English\",\"_token\":\"d22X8QDc17COdpVlbDek0PR8pvwwDwG8aJiCKpim\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:37:10'),('O5hYHNPtxn0mdHpXy8xPibBZgGEIX9dV93N7zE6q','{\"languageActive\":\"English\",\"_token\":\"FVOZCAl9O7oMIHWsuR8mEFk2bf4WQ0c5xPEnzgDq\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:39:53'),('A8J4IkqyHLTrUrSwvCNr7zQzrGn5YECcc5yBj7aw','{\"languageActive\":\"English\",\"_token\":\"W4eJGfvcfcVAzhbD0biCIFha0f7PP5tqRtFW0H6V\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:39:54'),('K2OZxBQIy65N4dnipxoOcg8RyGrfZUitAef2qP2G','{\"languageActive\":\"English\",\"_token\":\"jX1aWZRcwoVdSl6fNR8zukKTvPfrGqH8VYDusFyK\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:40:35'),('t05S3ZOWNiARfJEkVFkyKkq7pS55gUMUJJbUmBDR','{\"languageActive\":\"English\",\"_token\":\"tMLek2rBaEc7cuD3edP70f2a4OqJ94PKBmbXO6VP\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:40:36'),('ExFzfEsHBYDlZpNYUf3rP6zFep7Bmbco4gtL1f90','{\"languageActive\":\"English\",\"_token\":\"U8xa2M8bSWRn8IVUsIRruBHAawOvoGAMHXxNIQrU\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:42:19'),('9vv9UCPL5aU436WAT3JIQnim0Rqc4dLK9FFIjQ0e','{\"languageActive\":\"English\",\"_token\":\"WGaVKw25WtTqswS4oPw11NQYyPVzDFWGKlny9TYO\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:42:20'),('9JJOn6d9dBt03LA6AEUk2WbryiprXNxszaLdZrLg','{\"languageActive\":\"English\",\"_token\":\"jVrRaoNids8I5LHYFgoF0a96avfCSPCmIRKc55Se\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:42:36'),('Z15XFykY2BMUr1B4OQUb2Nm1Tj3JYLz1cnzXFq3w','{\"languageActive\":\"English\",\"_token\":\"ASJP7E9xcN1ZXnpVaS4zlLVupqbtelHoFWNkemMV\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:42:37'),('XkT0LZdp1UvrHSeoGwCVT6Yl9my0tZgef5zCMvsT','{\"languageActive\":\"English\",\"_token\":\"lrKnb7FtpzgVv9btICyD84h6akrn9OYcKLUrEma1\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:43:04'),('7qZnlHUqofisX620UeC7SXanSTsjWLk7f3BfjxZG','{\"languageActive\":\"English\",\"_token\":\"Jx9h8S4UVsJRZMGJwqsyrTZha48zahwehwyzFZZj\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:43:06'),('FgvnhGOX8KeX2wNanv3b55TTbKAE438jNShQaGAJ','{\"languageActive\":\"English\",\"_token\":\"5Z8ZXfny8oZVAzrryYuabO5SY42j98iEwvY7r9Dx\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:45:04'),('1lbZQYNPCcQKkxAodsz2sQC3HAJWvNhzatHVSdSR','{\"languageActive\":\"English\",\"_token\":\"yeEGTEnzl3hmy6oeENvVg5dKEzpOnxe9Tj3If9up\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:45:05'),('exPn28d2QFMiRSK4cKI0n2mMviA1YyfSjgYHKOFn','{\"languageActive\":\"English\",\"_token\":\"U9CHhojgVYdNRoUnYAiVfvE3QYeRrQbGwpjEAB8J\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:46:18'),('BEuor7uielX4A4Pmd9lEe4VuZiPkts6g3DFZ0pN1','{\"languageActive\":\"English\",\"_token\":\"I6pGfZXZr1H0X6EBgU3NDsgJ7t5G9raKU3Y5C5gJ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 08:46:20'),('7Z1M7UOLb9PKS4A0YPnn3bTht89pxExscg1tT6Sp','{\"languageActive\":\"English\",\"_token\":\"FOMrvYgBahKsO2hhjBBs4NbrZYraVFrbjXTrqUVY\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:05:21'),('WCkzEgRg6Ly3qjEwIkQ9qhtLl0QfD5hFHZOo5U8D','{\"languageActive\":\"English\",\"_token\":\"OLNp5b6hTKim6XPAvI8rCahBpIwME3HBSuZpZu5h\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:05:21'),('3bQKJef2ZBCw0Q8Elo4SJVSiJzjrFTpGmjlHke2A','{\"languageActive\":\"English\",\"_token\":\"vObC6MhqABfzbXketYnKQ1EftUyKS6Ra6PqZMZye\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:06:03'),('M8w42246hFULn055Gz3jHGiqjcHoU2N9u1P1Bpyw','{\"languageActive\":\"English\",\"_token\":\"pbxPxQQNIAyFZNS6IozUXM8vQhYWmyBtE7wuhmc7\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:06:03'),('DH2jakW3yMTcKdCLJ3WzazXMHY1znSJxwlFXkEOa','{\"languageActive\":\"English\",\"_token\":\"gF2D67ddZDJ3bddkO4QnI4324xe55lNNTf12oJkT\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:08:10'),('MN0S3CQUXdDQmd1m1hdMKVP8iwpD3sT0tMoVvJVS','{\"languageActive\":\"English\",\"_token\":\"5egucDJv6myqWafVi6zIXKHaEPoc21OmkTWaY2bX\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:08:10'),('uG8ClxulOExzK7xj2OgT0rgpFXPxO3qn9B62rRu6','{\"languageActive\":\"English\",\"_token\":\"TD8dWZCjdO2Yw7UEhM9I1gPWRRHOvqzQRaKZMtwc\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:08:20'),('J8Zts8PfzhmppDCrc2zIxr3Gsq0LtIWR8GnJNRzW','{\"languageActive\":\"English\",\"_token\":\"uRKhicy6nBK1y2cwiKmEO7mmZeC4ln38z5c1uANw\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 09:08:21'),('BZ3wCk5rLtxsgqGhTBij6GUT1uxAGPLfuma85Bic','{\"languageActive\":\"English\",\"_token\":\"AuU9TgAIZP4cqHYlPv0n2gbUvZZKtZr2wVoU2XRM\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:06:46'),('nLxiyvn5p8uC9R9MSwQ8pNEeBuaaKZENIUYXKUWL','{\"languageActive\":\"English\",\"_token\":\"uaMs4ajlQTWSEJwWRcSdFQSZL0bXLu7kx9PnDfrV\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:06:47'),('4hWYvsyqr93Qlm0Tkn2G0Z3qrvDuQW4hkLuKVdDz','{\"languageActive\":\"English\",\"_token\":\"gygR7DvNMlHcZ939AXcIk4ODR1rVExH7Y38HN2uv\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:07:27'),('lGWqAfWzgF9mxdFbWa10Yjw3sNhBDakJCeqgLG6j','{\"languageActive\":\"English\",\"_token\":\"xVxnbvcSWcgywIZ1Jxd7aMlmQvvE26lEsGSPyam1\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:07:28'),('Go30uwVqhLeehzbnzjGK0I6ZXNqjnsOrh2nERW6g','{\"languageActive\":\"English\",\"_token\":\"8MxDhr1DlufVVE1UOMYKbsfHkKaUAOJxR1Cp63Gj\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:09:20'),('HWbJMgwEsAE0WH92oxS8SIodecqXwngMFbtFDUWu','{\"languageActive\":\"English\",\"_token\":\"X9H8sl28KBwItroCXVT3IGruceNY4nA85G0P8pue\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:09:20'),('xNI3lVTLQ391dv6rZk77FLL1BSJNViUIeVDBsQct','{\"languageActive\":\"English\",\"_token\":\"HmXBUytBZlfUHZxAzq0hiJ0We061daD6AqHCF8QY\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:11:09'),('wdXRNwd0bP7i2DJcfNjNvJ98MCcKglS3SBtQfuFh','{\"languageActive\":\"English\",\"_token\":\"LjXwXTd0CloFgFsWf4RWfqDJHOZGql1l70nzrdnI\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:11:10'),('elGX5jibQdRXTym0g0XWdRFRpedrdUn6K7Ocrnye','{\"languageActive\":\"English\",\"_token\":\"G3QVvnt8B5pcuC0CCnoK3LXg3W10W7Zh8T8zYSMQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:20:21'),('w5duShCMJFw5urMlHO2WNloUtC2mhrIDjzqQM2QZ','{\"languageActive\":\"English\",\"_token\":\"NpdIUdziSfO0l0nepJd0Sbd8N81JaJ0iBE473cMj\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:20:21'),('wTILTFaGA7i4h0R9J9Smxl0JeojEsiGAYH25tE3d','{\"languageActive\":\"English\",\"_token\":\"QXN2laq5SGvxdBXbarrNcZDqjfd2thg5N8PkIVND\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:22:01'),('ZBQrH3R7RDgJa7sk0NrQtg4UzhoHlaqFfQwVubOV','{\"languageActive\":\"English\",\"_token\":\"bE7Kds75b74UpeNICVOjYUl5SRsjcJQvp5rRusr5\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:22:02'),('yYO6LltjlPjsVqUU1gKDNSfbCB0HNDTvKxTmDdrF','{\"languageActive\":\"English\",\"_token\":\"VRZHzHhWqZTPzeet7lyCd73K65b0EPSkdNRSOpED\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:22:55'),('055MfnqgS1fFjl72J1z9wwhURonDP3xm2ay0F7K1','{\"languageActive\":\"English\",\"_token\":\"gj7NBG4bc2pj8qmmqsgAMcV7KEdDnZCHLKLMcrAO\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 10:22:55'),('zjw2q2lxHN0tUdeALQxB5nqi4CRWhCBeBFNtxMEg','{\"languageActive\":\"English\",\"_token\":\"xr9PvBzAWNWm74zLOwf39gPsqz3aP4NRejHbZzyb\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/product\\/product_detail\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-11 10:47:38'),('9L5nzQqADd2ZjxRkXYdoeMNV0Rk44sluqwWaTz4w','{\"languageActive\":\"English\",\"_token\":\"iaRNDoRDy7T1Xbzj4XSVxdz3PoAWFKzhpT2AaSaR\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\\/js\\/materialize.min.js\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/login\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":9}','2018-02-11 23:19:05'),('DXxl0JP0npp7cv6iPm2nKGtBHuTSGaUB5mMem2JQ','{\"languageActive\":\"English\",\"_token\":\"uSJltdDNR1gACFhOO4eGAKZ6Yi87nH4CzbkjUC7Z\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:20:36'),('fHmSMPzZm9HJfvvPOdt0azEbDmqgHFbpZOy77dIY','{\"languageActive\":\"English\",\"_token\":\"3BBfbQJ7VlrzYJSVb8HKxydMX8G81pdvS5LiPulr\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:20:36'),('fvHw9YN2mvzJt5RZppnAhUgwBRfNOKBhAiatfeqo','{\"languageActive\":\"English\",\"_token\":\"IB8uOAtQvWrR7uwmZfS59tN30Wqvam5P5jF97pf1\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:21:14'),('RL9MgocHVUzvAkDdpB6Pic80E7frUomZsanSHK5s','{\"languageActive\":\"English\",\"_token\":\"j1oEmdUPiTLeIo2dWQggf8pEf7f0CXbIwg7ctEEM\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:21:15'),('J0YD8lHHAwmwvcnc7rMhd0Ah6WmK5ykPbmnj0ln3','{\"languageActive\":\"English\",\"_token\":\"EIbcWuz5ZrDnm4U07VGHKejZG8CN86TCQ4lzNp1A\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:21:45'),('0cb8ANCUfIqRcEyFYFPk2OgCg6HHDeCAuW0KYEHP','{\"languageActive\":\"English\",\"_token\":\"agI7elmeCWy79CkwLrvNMvsAHn3xnnhrxurXBUac\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:21:45'),('FwlylVYJp59ba2QobptGQ1sn2IxklJ4dphjN78Gu','{\"languageActive\":\"English\",\"_token\":\"hHHAy1UPf88TNRjygPcTKiwcBf8KCOAMefJHpQt2\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:21:50'),('CGmLScoqa0ZvU6MHdteEtds3G98FUx7lqmsuA6AG','{\"languageActive\":\"English\",\"_token\":\"rr21GHUUxXBlCdlvPuc899DrKDhVnfkeFDUwM0fd\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:21:51'),('TtRECwF7PqcHLiRvJbzKfxYxnetkLIj34rOzNM5h','{\"languageActive\":\"English\",\"_token\":\"83zkNwrxZiO5DTnqjpclfVH6hsHm1pG57IvezSE5\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:22:08'),('KhPm12YCW0DrInCFP4izULtuNPyaV6NNUEkpSRBK','{\"languageActive\":\"English\",\"_token\":\"Cs1Q2leZf3uuhmrirewVYR2GKBggWszBqgk28yIQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:22:08'),('hvAdfOWBuHcWB1K8sD32WeQltRFnHZHOTEHbCbBe','{\"languageActive\":\"English\",\"_token\":\"zNruCU45Rsk9Osmv97Vga41NbOSSv9qPUIksOsfQ\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:22:57'),('fBjhY0Fmx4WIitjfXoXg4EkhnV0jpmZY0fC11swm','{\"languageActive\":\"English\",\"_token\":\"UZVUOJxPVYFZtOgMeba3NDzwu85K01vRUuGC9jLh\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:22:58'),('62RS4R6rixBGE0iq4OekhKoNLI4lx3ykWC0PrGR2','{\"languageActive\":\"English\",\"_token\":\"mgiP8BLKLH7EdrWOxtE9vXpbKKZqSgnHk6gBUH1L\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:25:00'),('tCAOYVKqQW6ypYFEtpUDySTcoM2FwVXBcwoTQXH5','{\"languageActive\":\"English\",\"_token\":\"ZAAAFyTh9gV9EIDX6GGGlhxcOyc5Mn10vNWi1pfB\",\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-11 14:25:00'),('QJuHGSIfXi4iRmkS9J0D8RIq2zs59OAG2WYY2EHK','{\"languageActive\":\"English\",\"_token\":\"Tn6bP80z4UUaqXTtVUTqgwKbLGs0UwfKF4DM3KOJ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:36:33'),('f4FtsjpOstPUoW1BRJmpZYpDhbLJaDY5aAnPFshu','{\"languageActive\":\"English\",\"_token\":\"XPtzmuwox2WnFzjPMoQeI0FbvIum4TZBxY5hWpnc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:36:33'),('9plwuuI0y6Hlcz50QwzPDGa3RxxoYYjMKHNuGsHZ','{\"languageActive\":\"English\",\"_token\":\"GnQGtV4fwmm7WD1vGtMKyckZ7I9k8Wb6L3OSnd0H\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:36:45'),('4tK3HTikmsJcT2ArFWr44RFjmSLUmmkK4nLImwzS','{\"languageActive\":\"English\",\"_token\":\"drkbiMJ3kHGDliADOAiktpiO5BOjXH6qXfImqnjc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:36:46'),('tKsFtZye5XKE4DfYqe5cR2D4ZJr3dyO4oCQ0i7pO','{\"languageActive\":\"English\",\"_token\":\"VoGJ1Ov3wXzzgbf21INX4gNFXA4uQqU1UnYytn8g\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:37:52'),('4nrcJsLjCFJDzTlxinHUnaIgkHNCfzj6zNcD4wzC','{\"languageActive\":\"English\",\"_token\":\"LzupHXVt6G5iOr9el84GGjI3IBCqPELGreGomLI1\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:37:52'),('7inUu98xzlpYa0hxfarQT1m8mvCgMYkEPNOoS8tf','{\"languageActive\":\"English\",\"_token\":\"uBUpD7JGz5fxO6qYghOFpMwaENCzAshf89lBnuQb\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:37:56'),('Aj5M2iw3hPYZwSPFO0Wfqy6v4FgdiKIZRWk2sDyV','{\"languageActive\":\"English\",\"_token\":\"vEp4u9sjGgV6iuV6bdzqj8t2k300IgQPFgu7Q2kV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:37:56'),('LsuEeT6tsuFl6kzFMmS9jTCV56QIeERFmR4McCmd','{\"languageActive\":\"English\",\"_token\":\"rj8R1oM73Z3IMFKkX62MQB3BF2dVzQOCUN8REsoT\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:39:02'),('h2wU94NCocqsstMX9OkXP3GmepXXNKBvEL0Gft2q','{\"languageActive\":\"English\",\"_token\":\"KEo7I05834PXAQqH23lHq5jKaRnrm0uq480LATF7\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 14:39:03'),('j4wiXgBWEcFsZLHISKRLe6nHLTkPdaNKvT6nu3Yh','{\"languageActive\":\"English\",\"_token\":\"wraQfECSySbyD8WH4qSNlajiX0nPmSC0qTFZt1Zk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:07:22'),('0hgcEftQg9q47ZWv7iKwkvZRfQVmt2noiDkQIC3K','{\"languageActive\":\"English\",\"_token\":\"Q1TYRebnsHRwdnRRMYDc8V7cmEKmH2oNA3K5LSfy\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:07:23'),('sAD63ByCtMrkHRdtAXHxFbHlPeBv5Qoi2KHfvYsa','{\"languageActive\":\"English\",\"_token\":\"n1Ixk5iHfxIGAtZK2sWYqTcxEj3YblhU88dLcPHU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:45:47'),('ZSXMK7ED6UOPSBokb32Z2AHrY6dztweomPjEz23R','{\"languageActive\":\"English\",\"_token\":\"OsYMYp4sE12okVE7Bm4ZPuj7wuroAoG76GSkPCTZ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:52:17'),('3UqpgE6QsT9PhTPCLl5TjOjJxGYRxN0uIHi67xOW','{\"languageActive\":\"English\",\"_token\":\"4uK2pno0zPMPkqzACE7ftFYfSG9ejECJ3fbxUtrz\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:52:17'),('k8jm9nVfmzSnR3sQaZHjODA7QEioI0kEgkixoqeY','{\"languageActive\":\"English\",\"_token\":\"DZPbhWCQQVyhKAeoY6Odwf1daaZVvY1Qizw0lvTn\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:53:36'),('Cyejxo6ol4JxL9rDWPiZMzT4KIfpCTLCk1YZRR6r','{\"languageActive\":\"English\",\"_token\":\"IGpKpUKJHgqQASiZGvG8VDorSaUO9Ollk7yirtNf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:53:36'),('fEv4ziyZ2icpilrMKS7cRBFzeT31PTaapM8KQHLv','{\"languageActive\":\"English\",\"_token\":\"ad9rtN95A6gzGW66QGYGlpa1C0zV66vgFLAUHk8a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:53:52'),('bR7eXeEyvgrqo6v7hp5532TxmYzhy5SpkHStPTNO','{\"languageActive\":\"English\",\"_token\":\"rjHAJga26adYdWyHxo3KSl4bGByYqoMqdQY0kZcP\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:53:54'),('8uswd4Id33X6BhVTfsXssWfswIVbzx5oNHhROWa2','{\"languageActive\":\"English\",\"_token\":\"4uZLRnsOdbRMO6GRsegdFtugfBhxe950G7j7MZcY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:58:54'),('iNIvseJDckdxCxbyP073CQwmRiqqg0apw7zn0gvD','{\"languageActive\":\"English\",\"_token\":\"tMHDVpDvkDAgA34erkfEolesSk55Hk1EyHoS4Poz\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:58:54'),('S5ARZfqpot7eMpgEjL9lh92KcDDUqFmnBKfCG3dw','{\"languageActive\":\"English\",\"_token\":\"pYed7A1iWwHFiOgUDq4idp8HuA4cAcI0ge6MKPba\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:59:29'),('51ge6K5DviP2JD91Pjs8MapasmkVxTQ0twec3tK5','{\"languageActive\":\"English\",\"_token\":\"bZZIUjwUnWV9V7CILpMbGAOTfIZlF38vTQtJiNaE\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 15:59:29'),('Dq0E7mIb4McOaCKCV207Q6NFBwdpKCL2lHZwzmp0','{\"languageActive\":\"English\",\"_token\":\"aey2O6em1yZKx17Caf6u2AuxQn8wmPbC1RRkHh3b\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:00:20'),('nTiyWdE5KIStDGhqM2hPqyZXjNTIZ7e76kHUwcdr','{\"languageActive\":\"English\",\"_token\":\"XEGsOGgkRZKjJ7v0qY82xAEELaNkATyIrBNFYz3D\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:00:20'),('0jdnFcJ1uQKjNLDIUprXLsQvmDTpgENXyyWkBHwm','{\"languageActive\":\"English\",\"_token\":\"7hKFTEIsSoiAiWIXRQGXALKcXSbTl74MoJIvH7lW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:02:36'),('3f1mf3zDbveZYiiRocpuKBDqcxON8hl7kvruYWP5','{\"languageActive\":\"English\",\"_token\":\"VCAV0WTJf97lMpm0oufKNVVQQrsecATniW4jhdL2\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:02:36'),('E3GYjYGgcSaMFAkKWMcCnL879RzL7RvmSVDQKi4g','{\"languageActive\":\"English\",\"_token\":\"7mlseY0KDoT0Wa04ZtwVvbmqxgS747FutxBaTLtq\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:03:02'),('v0Off9wC79EYnNYEX2juO1CNzrX9KPWpVqmtexSA','{\"languageActive\":\"English\",\"_token\":\"RdawFSvlvqZuDoYCpDP8qTspkjtZkNlRuIZDD8No\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:03:02'),('M8iAvRHyXrHbNjRUZHLXW8If6Lv9lvwJwb8WnlDW','{\"languageActive\":\"English\",\"_token\":\"Tm26ORXcr4DYyjbHljtuzP0idvDWhXNMYaWplRH5\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:12:01'),('j43fYXZ2fPHBQ0ntVepUBRwkhWvKVUNGOnB0eplV','{\"languageActive\":\"English\",\"_token\":\"3mVA1qwr29zVexTs8yFP3AyycGrAhfxADLrhYXIj\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:12:01'),('S5xS7pt2SNBskS9FvpCYXDT7wvnA6pVxfaQHXG5s','{\"languageActive\":\"English\",\"_token\":\"r6nSRmXMZasm7kcRv45hWT5t6GgSbFCX5iU1SXYD\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:12:25'),('5sb8vjIFNKtN31uHMOW0zqA4RzTA0WO4bm7VF2Sa','{\"languageActive\":\"English\",\"_token\":\"6ifo6TveZRGh8Nv3XzcSkVbaMjKA1V76R2kDABfQ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:12:26'),('AqtptUhTrqCufc2BYS3MV2ZSxHY4A5L3Q60tmvkL','{\"languageActive\":\"English\",\"_token\":\"Q0tITXG1hE4UgmBUdBASqnB4G3ngpygS2kJAz2QX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:12:37'),('FEJChRut7aWrlld97G7tjpUbkRW9UqA0ke20D89Y','{\"languageActive\":\"English\",\"_token\":\"wALW4bCOPBb8fOuetkfZReMWVlNLTso9AoaiGC6l\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:12:38'),('lI6tcXQQCAolrNgTknXqvkbZQIU5F9o4S0v9qOjX','{\"languageActive\":\"English\",\"_token\":\"zDFtPMuqqePHjMXXcxApvvSCsJHKYegWHHjxFntD\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:13:21'),('9fTW55DcDG6S3sSC8X4tMElO49eE0eA5Dn4hqq52','{\"languageActive\":\"English\",\"_token\":\"9xcmpsj3cllEYBdBm0pcIggtIfCyjmLsI8GxACyr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:13:22'),('0A6nADCbcyp3S8LT33BUU4EU3oa9dhNyqk7J3szt','{\"languageActive\":\"English\",\"_token\":\"cpO2k8oyHjRE3JLMPCtlljYDp9xj7Z7hmaK0aVVn\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:15:00'),('csLntGZ7JYgCuufjf55JI7G429KqRUv7LpRkKffc','{\"languageActive\":\"English\",\"_token\":\"4RAlW4r9nLw8LRDChJg7EyWppoBveA3aY2jpnmIg\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:15:00'),('UxA4lyTcTHlGKCua5ii7011yhQYTJpbvdoX1Li8R','{\"languageActive\":\"English\",\"_token\":\"WR5CdReT0gnZOphSnLRL81X3gKGtsupbW4K9ZIYC\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:15:29'),('FGoj6j3FFlCmYQg6VPTpvaZlxy9rroci2otXfknk','{\"languageActive\":\"English\",\"_token\":\"ZA96CUB5IqyKOY7Yon6CMxf8oCzcTNi7IJUIEgWX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:15:30'),('9csK3Ezle0gJ08N3D3BEUpu1luYX0Wyz0yjvrkU8','{\"languageActive\":\"English\",\"_token\":\"KYcBffGzwDyrSKfI7FZeqfQbEsPB6t09h6G3raC1\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:15:38'),('8ZIQzFlBm3AKmRCey7GVSHaybqMAIjcQULq3kgr6','{\"languageActive\":\"English\",\"_token\":\"CXlH1bkeIBBwAnf93SLE3jG14eyKrRPNp1u98GVJ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:15:38'),('eXzFOt5ME43Bi3iAfySMZvKJPNFnjQuCqv7h7rq8','{\"languageActive\":\"English\",\"_token\":\"sijEfKyLR5Y94mNSbAYKcD6Fy8qTsIe62dwuf5Xr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:16:29'),('Ie7nPwYwK9IpCjnblLdYWizxJMr2zbsZ8eOjq3TZ','{\"languageActive\":\"English\",\"_token\":\"G1TVUfCgCHMt8Bl0AOlSfF4FiVc3SIdff4IsDvnG\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:16:30'),('0QJIp9KkjSW7zjTNK20r2yPhodw6T5uNi5s72sg7','{\"languageActive\":\"English\",\"_token\":\"Dt3TijVVGT9TLvZYk9DTpXJAoroqhiJtjw0rEVJy\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:18:35'),('Hn6tmIrQoP8Sci3irWh2KIDtRbUnAyf4ZpubJczm','{\"languageActive\":\"English\",\"_token\":\"xzaWSbhUaOmGWdLZAM5p95YhQBcWTNq7MiBHmVZy\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:18:35'),('siTjD2yvextFC5MUBPbvllz5Q426BH7tZ6ZisBBK','{\"languageActive\":\"English\",\"_token\":\"QJceAQzw6zi8ml981ljy2lp7ThxQmTPRWm6C4WBN\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:19:13'),('D09XEcXZTKmJe0xUM5au7riFMVrtJmLs6JazWxTf','{\"languageActive\":\"English\",\"_token\":\"UfamEQscJbxl2uPSmT3j0D7qUK1evI0xu3eaOxzG\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:19:13'),('IMUfOdTECBHqbD6x4g2vdGhy3FeieGhGhsPFH0Pj','{\"languageActive\":\"English\",\"_token\":\"9vMzfrpM1tBTQV5esboRDJD6PI2ETJSS5V4tbVfq\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:20:05'),('AvHHEfcf7EfbNX30CbaVeWmio7Un63pYuUen0l5z','{\"languageActive\":\"English\",\"_token\":\"BgOAccj64TABxrZS9t914SdWGzZVhVsJcd7Pl544\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:20:06'),('sVolMfEPVoAuR3nvuzhQbopbJZiM0pUf0kENTKja','{\"languageActive\":\"English\",\"_token\":\"KyuP8FSKqa71sKSQzIL4m2QpzKp83MLofbC8lR2Q\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:22:16'),('hk0ywKwC2VSvTQd2ICYAzi8t7TZQz3hDzmmx5Tx9','{\"languageActive\":\"English\",\"_token\":\"frFbgpGc8OVq3aATjoVUcyDEJY8Bg6MpX66lEeE6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:22:16'),('BBbwzXSes7uiW10eTP7ogRsjJFmCrVRj9N0IZb0B','{\"languageActive\":\"English\",\"_token\":\"2F2MtoEhhJFwLj7fymX8zmaLNz0bBiDzcYLCMHCN\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:22:49'),('fBooDx290lvDXs6e2QCIPulqGe63lZGnYEL1aPAG','{\"languageActive\":\"English\",\"_token\":\"V4S3v9JzyROJd0IXCJKSDkLhUZuy0bBRLb1TANkg\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:22:49'),('iVBgczPq3AwE0PFWFh9KlGvHBjEDhWYexm8HkzNJ','{\"languageActive\":\"English\",\"_token\":\"nclRcs939OYoR00PkStdLkU9Cj0jXJnxea06dmIf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:23:06'),('ccgdfFrx8JmdIRH4MGiWsLu9oocfjDS2EERajWlx','{\"languageActive\":\"English\",\"_token\":\"72J83DTSsP0z7oe575ju5ckJ6CQa9TSKFBwjmR6u\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:23:07'),('TBwAmjX9mB5yUyD6BM7YBEMKwLSLAwuSpdc0cF8j','{\"languageActive\":\"English\",\"_token\":\"mpNnJnICcYnS0qIBkklkXIhFfm0Zaz40IpBDIDwr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:23:48'),('vCjZvtN7GRz7wfwb37dDk6cRgqvhouCQ9794FIav','{\"languageActive\":\"English\",\"_token\":\"wLWNUfkuNbnl58oYrJlcDKXfZf1H9KBUUnrEtTwx\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:23:49'),('GY3P79rDygs38PcY2tsOo9NtwvSMwnuQtjtIVXrW','{\"languageActive\":\"English\",\"_token\":\"N17WUtSrR3bpFIIfepnng4lRRiVFhsW9PXkxiQ8e\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:24:23'),('Y7Dpj0p8CRTsrTrXpqKVc1BNMETcogSndTXnj2VV','{\"languageActive\":\"English\",\"_token\":\"JNmQaLw2RncXFp9ucuZ9j712MZovlnds2ljTBPLZ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:24:23'),('jgRLeQ8C7T00gswRuZ3c0dq9NHNFYqlIRgTZUIZW','{\"languageActive\":\"English\",\"_token\":\"FTeNBfpjA9enePgXpsAkhoIFI6jlaDvG2QuxxSoO\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:25:04'),('gcIugkk7jKeN6FJg8emp4uiXUvvjcQ2Z9J26Gcy6','{\"languageActive\":\"English\",\"_token\":\"ZyG0HWu7ApTXRksycrFGCNpZkRy4DXTyN8jJUMX6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:25:04'),('UuDli4CClottb6ajQY6TcxoVjdolAHhtzUAK1VFW','{\"languageActive\":\"English\",\"_token\":\"ltmxmQtmDLaBBlIzA85skTnNfZWOUpNdSuawuEVx\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:25:47'),('iEXWTEshFKfkZ9cofn2502ZNT9RJpXuXNAuO6FoJ','{\"languageActive\":\"English\",\"_token\":\"cTshmJ7yTXp1ta4dH0JqnssAI62msuLz9jNVQpyY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:25:47'),('2OueH5wfTW8Yz5VIMdMiMbrS5nUMnGmlfpHJGTeO','{\"languageActive\":\"English\",\"_token\":\"BrAs5fPs5QJciZV8E8PXHN8yKdrQussljlKrW1Ul\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:29:44'),('q6R9vQ2dofjAGta868eEg3QcpofvFu6rWMawx2fX','{\"languageActive\":\"English\",\"_token\":\"MRTRkPX8AZS47zbiOSGqrtWaC0L8MX3tNRQ4MQs7\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:29:44'),('ow6OYm9yNOXlKhjsFu8WobBDRpBDPatsOXfU9SWJ','{\"languageActive\":\"English\",\"_token\":\"nGEjhdDv0BwQPxCokxXXEvwlFCcwRWZGmZAyyfLW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:31:36'),('CDNzChXdcFMsBKVjCsJvfpLdYVFgSQavUJxxyjZ3','{\"languageActive\":\"English\",\"_token\":\"JtruMp2dQXuIWOW1w3Ee0aCiJ4MHrvdsFtE7AD4c\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:31:36'),('9VLcRJPDjOjJvtZi1gbGntpHIVz7RQrtWOGXQFSh','{\"languageActive\":\"English\",\"_token\":\"wKC627jBJ0wjgWICuGljmxpOBIRI9LrfNGyHpAX0\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:33:13'),('MEPTCSw7Y9oA3ZSdwyUkDl1JZ6axAQ9lNxwdJQR2','{\"languageActive\":\"English\",\"_token\":\"j66IgRo7jIOPvSfFRgQL7LsH65B6l5I2Pvi2fOVx\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:33:13'),('Nwg2mkMCYNpjJKUoHUV5y42wskeAsnk9e5tBealX','{\"languageActive\":\"English\",\"_token\":\"fB9DuFEsHqGqzpPbfXsC819JmzNEzepfPfK2QtvH\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:33:37'),('Agn9DtGyHQUttP0cYtmj9xfoV4KLEZRTIF7ToUor','{\"languageActive\":\"English\",\"_token\":\"94O8fQHUNquWd3FpuDS5d8pkAKCmkXqmfH4jLOA6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:33:38'),('TYDemFz9Cfk24IwIb4Gbv5bNRRlVrf8GiGpxLXbx','{\"languageActive\":\"English\",\"_token\":\"2TwMqcPI5hcd8bTuIPCCEt9ewIyw3MxNpxxltoYb\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:33:56'),('n25Bj6cSdA2HgQA2mCmfkPbXECuN5zsvGNsKPvpj','{\"languageActive\":\"English\",\"_token\":\"eFiNEz3pGal8Smjwc8ubl28W693bPaGc2jPgBq77\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:33:56'),('naj9Rz93rHcG2nUrORCWtZCiSxbKIv3xFZPV1Bx3','{\"languageActive\":\"English\",\"_token\":\"uJk4aJjTqQySP7vM3kAJSuWIv2u0hkzPm4RIVWBx\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:34:05'),('d7GzCexlM25ZKOmlu5p85BxktnZ98QLyL9fTVynp','{\"languageActive\":\"English\",\"_token\":\"qWdDSiF3Vhb8NYF9WAn5Rk6THABsAORJWBHus1GE\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:34:06'),('huDN3LObxIR4IzTca7uMMXLBHJnL8YZkkjxK2T5W','{\"languageActive\":\"English\",\"_token\":\"ZfoipfswF5NEhyqopw1hMAR1Oc3z2QYWQVCFUQKP\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:34:25'),('igYNM8RmYhAvAPowEG2br11g3iAIISXO0RLJ9cG5','{\"languageActive\":\"English\",\"_token\":\"eUnduSrVMS1YaiBjgGda1wQJKMBs9EKBO0aTDz9Y\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:34:25'),('JozQ3d1kOB8lf1az6ZqpwMOfTEweQjsg8J35tIRt','{\"languageActive\":\"English\",\"_token\":\"zWgFDcF9GCEPWTmjeXDPGY3oAo9ev7QqTLbaCYiz\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:34:53'),('OYWHM2zDV6uoU6lm9OKtI98moKbqrUxiqzHuGw79','{\"languageActive\":\"English\",\"_token\":\"MQ5OTRKqDj94I56OiVskd0izZSf89SuZoiYidXN7\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:34:54'),('9SVLpDjVzJLYbBi68qVzc8hVFxOk65CT3rDeQ1fq','{\"languageActive\":\"English\",\"_token\":\"myCJKIiuoL3sTH5vgB2kT3380yeXHcSesPZkdhgc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:39:47'),('3UGoiqsWH7o77gJyeD9ewH6yHPHfY4kqN3OKRsgj','{\"languageActive\":\"English\",\"_token\":\"mAerNFPRF3tlilM3B6sI29YnNxAjYql6dsqBypfB\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:39:48'),('mPTPVq8eIWYU2KV5ik2hChJDO1gFMD3MORSKN8Bc','{\"languageActive\":\"English\",\"_token\":\"kUrmqRHvAJzUK6hFuWskmpyyhdbcLjlk5hFi1SVb\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:45:09'),('7IhnidAC25ZdCZwWNhRW2hDR2x9rK1YH01ULTWRg','{\"languageActive\":\"English\",\"_token\":\"5t6ZfNbgUPRUr1sHHgt1wMV9h0eVz4cBSZrzgxvq\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:59:28'),('kVrx931J27UKmPDVDVSUKhZR6jpsUColKxVQ4fZK','{\"languageActive\":\"English\",\"_token\":\"2T3sgpi3MV9xJlYqVlOLcWabTmQmGcimUnuvBRIB\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 16:59:28'),('cLVBMFf2dEx8kHGc6L3MDIz3Z1dzpsecp5fRjt9F','{\"languageActive\":\"English\",\"_token\":\"dYpESE7qIQNiLSIGJwM8MEVvj7c0u2x6pmRyCjVv\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:00:11'),('5SYw46BQaXTVyi6QB6SzFZD4gJmVXqFFRv7Q903E','{\"languageActive\":\"English\",\"_token\":\"WjEjw7AsZqkj7HhPdyTv2JBaDpKRw7SoQNhgtiyU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:00:11'),('n8LebUhILqCTOfyGnTRYkTbCm5pbPAQbzzq3WPWv','{\"languageActive\":\"English\",\"_token\":\"MnyJkkJyClCacHzHGaIzFEIldsyPq1dRXZ5CGAIy\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:00:40'),('kcPQqRCbKJG7TI2gDZ2B2yFCoII4iCQ1bNGOsKPo','{\"languageActive\":\"English\",\"_token\":\"qWOvMPod4REMg7V2wzlsP1F9VkDubQshJVPsWj4N\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:00:40'),('UIIMiNHpTvpmfgOYDT8HH2Bz4G4i7BwAjzkxn57f','{\"languageActive\":\"English\",\"_token\":\"eVn8eL2RJOhKXHKZ7K1KY6u2L4jpqKWiwl9sVhQN\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:01:43'),('P5xFeTygbomoiIi9mzQpWlzYJoE9d3UdXyvuxrM5','{\"languageActive\":\"English\",\"_token\":\"L8dmwRhELmPiptjTMwsH0vgjWZ6zbTIDlx6by2jq\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:01:43'),('cLwh9BzAi4fxrwTNQtyBNihdOaLyxgVPILeJiqOC','{\"languageActive\":\"English\",\"_token\":\"ObdqYLRRjqd7zx1Bg0gzZcK74hfuGQ3tDlUj00sR\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:01:56'),('Mm4gicRAZJugVkQyvU8gCsYJ4Ym0J3Azw80YtGiA','{\"languageActive\":\"English\",\"_token\":\"uvr0ZdpEdUL90TcQzj5FH2SiJbYnz2f8BzLt6EsF\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:01:56'),('RgrIBMsMi1psjdHWcy0DD1kCV6I6iiJnBGgmmdKY','{\"languageActive\":\"English\",\"_token\":\"7rKNMbkJxdwanHGnMEK3hAdubyeMAf0RB7kYH24E\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:02:36'),('jSaVGb9irgjEQSfkqaY0pWI8PTIcz3VMfkKqbx3E','{\"languageActive\":\"English\",\"_token\":\"wLWgXkFWoP9cUVXfBJuQgIh4keziRWzf10BExVUj\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:02:36'),('PkVTFMnkMRgSwuDoES0KpcFOlrSD00doLVGfus6q','{\"languageActive\":\"English\",\"_token\":\"vfv2o3I3Vtf4cSYM7DHqaSdQol25VpAP0GhZymnG\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:03:12'),('nOvZh1245Um7hViYxo9GIcxDthbwGmEfoD4ioREh','{\"languageActive\":\"English\",\"_token\":\"2QBWcmKjjOxKsYj9keYqfe5C5HFft04v3xsNVafh\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:03:12'),('jxRVAceKg1OTSW6HPhwp7Bw2dg5AMhxDJxy9GKzO','{\"languageActive\":\"English\",\"_token\":\"3kHt08TWbY2vxzICSqcCQ2EFj61bub0U7LnfqGM6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:03:21'),('VXYNmNlkftHr7oOgQItHsTq9u4Gf71q1uUg0ELrw','{\"languageActive\":\"English\",\"_token\":\"FQRBl0OH4j9KH41bmtjuqBCYtU1duezCiWCijzRa\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:03:22'),('MxrfGfvQQojRRICe7xs1707BGoPaVnq2Lfc1GK1C','{\"languageActive\":\"English\",\"_token\":\"9Wxy38Z7C0aybbkZewwL3f7M0qI4AOZIAfEqRZoW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:04:21'),('cJXjriew1Gnp89TTh2gsKxY3cTay4U0cj8m6ku5F','{\"languageActive\":\"English\",\"_token\":\"4nqDBs4sFPo8wqRMbRWgfKvE2T88kzruiWFJfy1x\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:04:22'),('WR2RK2WayRnLAFCPUVzkqaXAbbQt5KvIlHiMPbHZ','{\"languageActive\":\"English\",\"_token\":\"nsaySvMZGuH7eptAaCedHlTmHDqAFUZCje4KCCBY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:05:59'),('4XWNfsL43VYSVfRCydmu2jJPbLGgUaw4haAbzE7B','{\"languageActive\":\"English\",\"_token\":\"0w22uB0dw4GQjdbyd2O657S2FNSJrd6PGiz4vEm9\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:06:00'),('o9wtPk9kHACpl9n1j5p0i7ZdpOPdoW3GDR1TYDiS','{\"languageActive\":\"English\",\"_token\":\"AxGUsotW02UZqNmToySgMR1BKZ0kiRW8edgyK5lV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:07:05'),('uoeH74QGLePxfs3cxqnRCOrf2Wevnu1ZefgMxlQa','{\"languageActive\":\"English\",\"_token\":\"g8QnLzoPEFZ5AYGfkwR6Dfa8sZClYWEk1gmK9D1j\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:07:08'),('dauuqnV1ybwQZu5lcGs0K6j1f8HN9CVVJUIKawM9','{\"languageActive\":\"English\",\"_token\":\"kmFKR1yddcLTdEujdyu9tXLe76AyoE3uQ9JaLCz3\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:08:30'),('KzPtM5luPoUVb9bheJM78e3GIxYsTlR0X8HGfxMx','{\"languageActive\":\"English\",\"_token\":\"SsT0PqArWI8yojoiett3cD4Zgvzol90G9oBsyd7B\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:08:30'),('e1432qwgUnLB5ecSV7XkiSYuEYy6sOB7dlb7btOu','{\"languageActive\":\"English\",\"_token\":\"BSBTq7LYwIwZyTcIov4zaBVw6PdJ7hKBCyNn2Uaa\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:09:01'),('hmT5RAKM8sFYzqrYiidUfSHgDcJN0DrBqfS6p3St','{\"languageActive\":\"English\",\"_token\":\"eWxoeeHtCrEEllqlclyuVYsgMVsf1FUctTtj1JhO\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:09:02'),('S1gtY62VcyhKoJCEiqBbXS2nTW79bnWRIyfQ2Wb8','{\"languageActive\":\"English\",\"_token\":\"iMNOU9XKo7bR1jQf8TuUpmJ1sIBJuvScIrZwXEKD\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:09:24'),('GruFzidpN6xHfMhR932OVflAhHtKMtzppdKvgyGR','{\"languageActive\":\"English\",\"_token\":\"9WJZfJCuT3pYtPOFtUEOp3qRZAdR542k8ITTvKYj\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:09:24'),('2tl7HRHodEcXkqNjAowoLxgdleDAGvHy19IdxnMn','{\"languageActive\":\"English\",\"_token\":\"Ae6uQPX7W1qJdgancotiqy5l4nZX8piBjTSGKaBd\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:09:56'),('5cNBFD3yxNyi0b3bYwXrJSPhY0L4pHzquSsfbqHk','{\"languageActive\":\"English\",\"_token\":\"lGXGI5jWmGmmbsrRx3m6K1VEA03PBxfebsx6qgqo\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 17:09:57'),('tAfQDM0EqKuQ5NBuKlHGN1oOZdXqgy5LYBI0lHFn','{\"languageActive\":\"English\",\"_token\":\"DYX5mPUk7UVXMdFWyhVgsRHjVGiLwjYDpGdjq5Gk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:54:23'),('5UAE1kTRuOEU75ljtKfksxs1fX9VCY0raE5ws6c6','{\"languageActive\":\"English\",\"_token\":\"sO0TGXJ2VcM8JZgvanlN8tcrUlH2oxVVUiwtk9Pf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:54:24'),('kcOIHKHsQIeCAwHKBK2MZlzePo8sp38EZpTMc1uz','{\"languageActive\":\"English\",\"_token\":\"8IuG2pKVBcyrxhCsDR4m4Tnx3tBhjbcqbUn7YKZF\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:55:44'),('phlqzWuB4z9sYD1kfdVznqyh3Ydry0FUa1yKGw4U','{\"languageActive\":\"English\",\"_token\":\"D7jzFczqgGtkTTkElo7VWNpKRvfstU4U6Dqv7alR\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:55:55'),('XkOEoAMMdXdhntbhXONR2TQkEVORivwRUa7GYc9X','{\"languageActive\":\"English\",\"_token\":\"D1k9qbJxICspVF0PNefyv8hbArI9JAkQSVWnPKzL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:56:21'),('ORcqPidKkskOJiVR89pmnz0XhLC6szACVXQPMWic','{\"languageActive\":\"English\",\"_token\":\"Ri7w7HwslZiZHPUGEGGWArYW1YtkEs5OftWrSkND\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:56:29'),('wiPvYt7XNWoh7LH0LwhY7VFc1BA1UUnMOXCOEolo','{\"languageActive\":\"English\",\"_token\":\"Q7GLi1xgszNPRvdFLYfE67kIiVsa1yhHMOwJVdFk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:57:37'),('1SmxsQ55yI7fv5xqMcfCQ6vOMdYO7qDBUHBQ54kl','{\"languageActive\":\"English\",\"_token\":\"OcBXcCzo5agLI4udy1FWfpzjEx0hI6ws4TB4tKIY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:58:08'),('JrRIeeqkzv7tf5Qgje0X2YV8RkUD3oZDqoRBSkC7','{\"languageActive\":\"English\",\"_token\":\"OwaxWcZaKlQKuvwGURkwzzu8iFEIvfOhwrAbUcV7\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:58:26'),('ycGjMkainmLARmdEza4fhM0bI1RFnhS8j3eJQV1e','{\"languageActive\":\"English\",\"_token\":\"uURAY2Q8LSoCMFrrI3sbrVbIhLu8FwknAaqyX3U4\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 18:58:34'),('ECNmMCtARV99KoOeAkdqLsSHww9EDrLQtmvWkStu','{\"languageActive\":\"English\",\"_token\":\"9jyLgJw55xReaoxBGrm0ARfzr6qEetWJUHGR2XOm\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:07:08'),('vJe6C9tqRfUMdzVg1cFAsdXVYA6lMEQWqhY4KUEh','{\"languageActive\":\"English\",\"_token\":\"8mcvnqQYxqmeGBSfOMtmZVhWyoRcXgTdX5A2NNwk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:08:18'),('BeMOCXrkMExSm5YnsmfUHIrNNaI4GNCRtUkAh53M','{\"languageActive\":\"English\",\"_token\":\"ERn18FeRPsKy49R7PpV2xqruvjp0yy44Ji1QaXBc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:11:06'),('9ADfhqqcCKluxKtKmrtexoYa0PUH9qdw41gbTnEu','{\"languageActive\":\"English\",\"_token\":\"f0wPsxfATbDuZZx1HsNdS61fMELQ5uDqbRCBZJfE\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:12:11'),('iKwxiTQrfeqVcvEE5hu7rbFkysjLD3ltCoRw2tIU','{\"languageActive\":\"English\",\"_token\":\"EgGppbzFcSpPBnZO5yrpWfAWUH7J16t2FYnOFexm\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:12:22'),('Faj0J4qI1b3WsYLcNeGbBasREQbY9OGOwntSmBbW','{\"languageActive\":\"English\",\"_token\":\"pqegvIpOBSyp9kXsINy5w3xcAlxfQK9zVZNmW7QU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:12:32'),('Tx4CocT1gTxjCHPVRwt0ITBcPjGok60Q0KAXkQpr','{\"languageActive\":\"English\",\"_token\":\"zykYLM1xc9z8OtHJ8Fs26JKx5mHMbJfHimKhJ135\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:13:18'),('3kk3UaulTThAXePT5sZDRAqawn9XMdjAfAC28Ftx','{\"languageActive\":\"English\",\"_token\":\"tOSV28VEbSYb218pwrYF8nLH3vQ9X9OvVDBxwlhi\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:13:24'),('syL0KqgOAa9g3NzxZ6sEh8rh2kIOSvWnbEjLQbKb','{\"languageActive\":\"English\",\"_token\":\"Tnig5BS5VqX4gOcMufEbRHnLRdg5fWSd7HsVAUZ5\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:13:51'),('EF4jYpWyYRyczgrGv3YVV7BVf7pd99ITRiTibbRa','{\"languageActive\":\"English\",\"_token\":\"QMYK5TMsOYREYbafm4VIM3DRMfz23RgKJa1pLi50\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:13:59'),('4kpjPpoy2w1HyeFlcWlk0geDfKWMyxz6YvufIugL','{\"languageActive\":\"English\",\"_token\":\"5AWkNnEZ6Kydl7ZfhGNhjKs7xyzi300L4Rf6mAtc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:14:41'),('kJJecjfDBCEXbhW07pePrSUwFBJBYsrWSJcFbmpo','{\"languageActive\":\"English\",\"_token\":\"jDb4X7HqOnKoeNMj1f2eZPsom80l9QuNfmCjnOgq\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:15:55'),('48UoSVa5kHQmfPSFUmJLUiBsnM5GkJnnq3LeYZeI','{\"languageActive\":\"English\",\"_token\":\"xT3dCuuGXinxTfQimjHzL5yse3S154tuExHJcF6q\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:16:04'),('FVekHC8p9eBli13Mn2w6cZN56uJh30x4D54AcTgH','{\"languageActive\":\"English\",\"_token\":\"jjPuGbTjVQWor8X5eNTTbR3LNuOpfm7ZUAs4wq7I\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:16:13'),('OZjOhrmD0YycQMbmaskdLaGsMzVXigC4cALpoqW3','{\"languageActive\":\"English\",\"_token\":\"KUf1Pbkjg8zrpggftaEjNgEh0E13Vs3XWCCcCHTd\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:23:32'),('xvSisZA16hVmFLQRm9KPD5Z28LP3geQ4ADSEeMmw','{\"languageActive\":\"English\",\"_token\":\"oF7ltnYhQejuOjO1ylwOjPPd8nlKC1rKs874w41K\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:24:41'),('qsC6HjgMcYbtlD3XDyC0owgn8nCFE2s0nd4M3VAW','{\"languageActive\":\"English\",\"_token\":\"jQKttslr8OnJHMLPYDBW5ry6IoN0O1PDaxc86NAy\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:25:07'),('RhIznqCsmNAiVqLZ6r4arO6cDCwEjWGCu6viPO7s','{\"languageActive\":\"English\",\"_token\":\"vgsaXFZe1VzcpJe7jH05HRN1dMTXrdTNXjMtebdW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:25:19'),('W2NrsdanVpgrVyp6h1By9yTUFSl0FWMWBJEfsAyR','{\"languageActive\":\"English\",\"_token\":\"sdwLYN2dsNip3f1C4ASh6jS8fibs3EJaTeI3v8UD\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:34:10'),('KVOaNkO2I7SxUqLKvy2gmfMH88LSiqd8sqF17HkC','{\"languageActive\":\"English\",\"_token\":\"BPVDlKXMcqQjHTCdRzAIyaiUi83jA6bpnUlIBkwW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:34:10'),('zBTJXf1llH2vhniWNHCe6jB7zg24wTGXNfNOVsM4','{\"languageActive\":\"English\",\"_token\":\"KYZy9PVvdM60QQVGKNWE6IFepk5mqM5QpBi9D8z6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:36:43'),('NANdRSCTDdVTvMW2ZvBkpChdZSSvTVuJjRkuKQDc','{\"languageActive\":\"English\",\"_token\":\"XOm6XsLM4gaTil8sbelx9B3GCbQxGzYTCbq4QKnX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:37:13'),('tDOzjXfT7RlpiqUSKUTYbzhHdMWlWvfl1lu3fYYH','{\"languageActive\":\"English\",\"_token\":\"QyNTXoz1wLlOfus9SdE7DYvhX81aPW4KnsEA8rNo\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:37:53'),('vc1J7ZBBg1DNzSZqLLy3eEuaBOgfiEWFULeYcDrn','{\"languageActive\":\"English\",\"_token\":\"mhexS3p2MjmSeujcCxwmmyvnpvO63PPJ9RwOj15P\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:38:12'),('RDMd4GHNjKk3WARNfXB7039znZkeNY13vvHieozO','{\"languageActive\":\"English\",\"_token\":\"rhp9HHw4gwaKEgQASxtemCcWE2WyJr1uoUfZhg7I\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:38:19'),('g6iMPOYLs7Ikuz1NVFPtKwjZFYtGsItmqeVToINn','{\"languageActive\":\"English\",\"_token\":\"T5sNN6AdcA8svjkXLtt8ql3UYDZrHbXyoQUB9RcT\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:38:37'),('AFqLbcTyniAPlpE81orDW50sD0sCBAFC2RCV95ZB','{\"languageActive\":\"English\",\"_token\":\"P0TinSqlzlar0s2KqzJD6oZqbNmjlRd0OGDlf4oa\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:38:37'),('rE65H3GvDvIJCvUxSia2nLqzHim4lOHt3LDfSDqW','{\"languageActive\":\"English\",\"_token\":\"leRUQky0dsjUc9UOVZ6jauCSa38yDVwJmZX51gUA\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:39:05'),('PIxxhhQqE5yVrjpZJwrGeXcOGdhQwLGztr2jqV3P','{\"languageActive\":\"English\",\"_token\":\"XHxyNdrtmdo5G2oarxjmvYuPm5rbR6yxKRZBmB3F\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:39:12'),('BDbtrHjdANpTFG5BbozRz0nrwsCAAXeymMr42woQ','{\"languageActive\":\"English\",\"_token\":\"6EbBxri96KOlOUIDNGyG1i30n2EHsG2U5xWQZvBg\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:39:22'),('CcgfLsPiObJR6XJc9bJs3ljfBe867yLb3Mkqxf0O','{\"languageActive\":\"English\",\"_token\":\"Rfe0EMo2y1TjVXWFUZ13UT0eQg7jyFO9Qr7vpG7J\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:39:31'),('cJGXT3O1IuFEJfRswEDVGCny0kHoSknbG83yOXUj','{\"languageActive\":\"English\",\"_token\":\"JiZdwgPGyiss8wzLGHdaTLBQqQg9jUfG7jNNPTn3\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:40:19'),('r1KTHXM9hcbVGw0wOQsZTyiBTUBSFJzYupzMPoK7','{\"languageActive\":\"English\",\"_token\":\"YgyiRbW1BcZvCbVWVTuqeWraSjzYNNsVaffEHbT9\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:40:55'),('7YQPJ0ypFLjao9G8PfOizCgvqo2P7pPv06GhKuXY','{\"languageActive\":\"English\",\"_token\":\"WG0N4rXqQecyyPaydWZOKJKOv95xmzQHscXF6njf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 19:41:23'),('rirmVqs27Oh1RQN7EAjJNe41AQlj5iRB6YUzJvD3','{\"languageActive\":\"English\",\"_token\":\"od9d1ldqnP1UQnVtTqwk7fl7eXBD1WlLrA2rDUxU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:14:35'),('4On0AlayYsfAGYyeGIoVQfOXNlm5AtiNA9LZzvoY','{\"languageActive\":\"English\",\"_token\":\"mWyHQhHVSpr9dHsMxb8u83CFa1RMnCHSTvCkJtAx\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:14:41'),('F9GtKd0mTp1FHemJXlwWIJjEsf3f9Rx8JgT6Purp','{\"languageActive\":\"English\",\"_token\":\"QpbPgHqffPbFGPEyOD7ZJiNMfNpclTJLeen4xf0y\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:19:32'),('vpHygjcMLkLnD9eK21ESJPsUGLq3jq08y5GKKoWB','{\"languageActive\":\"English\",\"_token\":\"mLUSCplRAWu5huDvpZoCQ2oMZKAhWB7AhWllKaGk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:19:32'),('lQOA1uDIF2od1ZpzaJLoIqlRBtGa0jAeQldTg5lX','{\"languageActive\":\"English\",\"_token\":\"TOAUrxQyqw31AQn9JofpqG91jULHZQVLwLWRV55A\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:33:46'),('uzxdi3cYxXlzHOGBaK2NkAJMpbHU0ENlIroKLfO3','{\"languageActive\":\"English\",\"_token\":\"E7XIY8CoDrpUcjwqRloBv3w2ObaFcez6swHxcfqz\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:37:03'),('oR6OiVsDUsZoSPK3a9kLPXYBpYTwrAFKsEmv0UDl','{\"languageActive\":\"English\",\"_token\":\"rUdOJlpWma3zWV392Y7Sv3tSyxMd5NPF4iia3ssi\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:42:37'),('NerHIYtcAsYntrVWCouIyB62KrtLy1DvwX35Ag5E','{\"languageActive\":\"English\",\"_token\":\"G1eOA52LlDYKbPa58IAgjETutDWNDCu6lIWI2vXH\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:52:15'),('dJh8VwMnFzornmU7iXOoqYXx8V8VTlTiELCKDRQy','{\"languageActive\":\"English\",\"_token\":\"aO2HhvBgCGq2XZ10bGZb0p0Kdyt2BeSZsZcOZiSK\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 20:52:16'),('sxTLTOyKkgDpUanJyQlFSd4rE96FMyJIHeQxP4pR','{\"languageActive\":\"English\",\"_token\":\"6t2LhMBJk75VULjJFxy8hqvtUhOTHsbppMQcYX0p\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:12:25'),('zTZQO1RMFnRB11jsb0ZE3hHwBm7cwuTm14kkxDF2','{\"languageActive\":\"English\",\"_token\":\"BY5atpPE8qtTjpUUUXe7BeEDN6IfE3CAfd1cGt9n\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:17:03'),('wNhmJ4FwkddFX9uu7hTHGZCDtZCJ0WxjAJu1hrAw','{\"languageActive\":\"English\",\"_token\":\"9429aGKt1oGUcpmzhShS4hSRhidoSo5mtxjxwx9Y\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:17:03'),('fV2uXm5WjCStdrGhAhW0vzwlJ9sMC5Uud9ZJlCWZ','{\"languageActive\":\"English\",\"_token\":\"DNA6dWqOkuKtS261kUALry20kzxjTJSgSHeb9S9U\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:18:31'),('NWOpTy68SIkEz2ichSHHfX6U0b96fuJfpPcIapdR','{\"languageActive\":\"English\",\"_token\":\"N3wDjKKxCasd1crI2XDLhYOtRFZLmHvb524JaLjX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:54:36'),('pOZ9GjWubwzhN14oMMPX8Mx5HnnmfPm202rZCKFr','{\"languageActive\":\"English\",\"_token\":\"fNAuFazJiRXY5ejuFdBOz3wIoDeCZnNYZ6QFb8Ua\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:54:37'),('wlvRRyytMDP8hQjcmwlFWcZJ7RVyjxTCl5Uquwr3','{\"languageActive\":\"English\",\"_token\":\"NszpXAhvtIBlm9jW3c512pMOJ0prLVFJg7fn384E\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:59:37'),('rX1dSpcWfcvZ3gh2E90Dufg186TneolcFEuMIJND','{\"languageActive\":\"English\",\"_token\":\"6otghwTBE8KHZr46CymE7gnb4XXniolut5nRZSn7\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 21:59:38'),('ZgGfKd1mGuYM4grvieJsQUzUqV30QR56sNu4JTRi','{\"languageActive\":\"English\",\"_token\":\"oiQqDlVUN9pwUBpoptgooROxL3gIVUv1itQ30EZK\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 22:00:41'),('nAIpEzv9IzdgtW3fU6XdkmGGrKIyXCSAJkK8KfYh','{\"languageActive\":\"English\",\"_token\":\"c1P8t0puSDZzBNszOKGhcHTi05gJO5OZqAsBVkoF\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 22:00:58'),('SWTtZGoznpue4V2Dm1oN8flFHLFpLKKVmTqDX7uo','{\"languageActive\":\"English\",\"_token\":\"CVdXDOL8zFyYWNyHPGOm7na054Bt4WwYmwR3RQC8\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 22:00:59'),('vOIs1OY125K6RrIwLjEFG0bXzHUcz3oZuvrkBq6s','{\"languageActive\":\"English\",\"_token\":\"mljKTKPWaiwFeePFjm8y00pXAuaROG8FOuqinA9V\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 22:02:53'),('dTlsG45HLvk9hPce1BASFY1iAjWXuHbase4iUqNh','{\"languageActive\":\"English\",\"_token\":\"QqzPvDEOKj9bwfdXoo5FEMevTqF87h6pZU2QhmhI\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 22:02:54'),('hzdIuAPYNwpAdq0ZCpiv8XQolRmo4doTRBi1V3vQ','{\"languageActive\":\"English\",\"_token\":\"L4smTHSurZvJOa3p8Uze7SkY2w5gcy7IDIgQfCE1\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 23:10:40'),('Z1iCLqBMwN7jmCGl7t3TaNo7gegMucapMJkpev2n','{\"languageActive\":\"English\",\"_token\":\"FNhMZD8uEzl2xCzLrUiOpkMJkOAKj0q9ZsIYgqa4\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-11 23:11:36'),('06YcP2fX806cl3lzy1c2WOjoUohQv8NDKsDQLSPs','{\"languageActive\":\"English\",\"_token\":\"yL3ypFDspAXF6GFFiiIHBSdPmD7Sy4DoHOhe3XL6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"}}','2018-02-12 12:58:06'),('xfWZb5L853dWkYOvWdZEIHQE2OZgUXTYYwjbrfso','{\"languageActive\":\"English\",\"_token\":\"yL3ypFDspAXF6GFFiiIHBSdPmD7Sy4DoHOhe3XL6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-12 12:58:14'),('tanjs8tVZvG8UNf0gf3shTenOAuV4wFrLBQ3KOBE','{\"languageActive\":\"English\",\"_token\":\"DSGe2vvI8TrywWoc0dTA6wAau8ne5bFGbFlOudtC\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/login\"}}','2018-02-12 12:59:25'),('2tqEtfUepSM7l8p1t62nzAX9k1tCcGcZRCTC8z0f','{\"languageActive\":\"English\",\"_token\":\"DSGe2vvI8TrywWoc0dTA6wAau8ne5bFGbFlOudtC\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/information\\/information_detail\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-12 13:38:42'),('eMTsivrYutZuzE6cHyX10KZBSTOag0Z2gu6OmcI7','{\"languageActive\":\"English\",\"_token\":\"cLjI8EvtBaq6eLga4vSzoaAmDytauJIhEjbxzgFs\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:10:18'),('4HNtTm4VMALQz21mi6Fd1kTKNlXasFVnLhnDRTjo','{\"languageActive\":\"English\",\"_token\":\"BDsFbLEjUwBLljCkjKMhStsxOEPE9xQVLS4cZDQZ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:10:18'),('elvIt8iDvitjWbhDP0EQweJ01Sd4RiWkjrG4P9xW','{\"languageActive\":\"English\",\"_token\":\"mDwYVfQAdKItQjDZxCSMqGaoZdoDLrvaSEKyvByd\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:38:36'),('vSGRkRD0cGw2f5ntpKcuaqQLvFTSTZ0xxFbO5Tb7','{\"languageActive\":\"English\",\"_token\":\"SbofZLHoYSZnYcDinfZ2JHelN8zQCP9QqO0zpDjT\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:38:36'),('JXH3kgyBS1UjmLtzbJAIlaHEv3HGTpBCU5kgqmcR','{\"languageActive\":\"English\",\"_token\":\"AlTxaxUsSxn44MIQ2NeBkL5C6Tb9P1ERWD8dahDL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:38:44'),('Rp1qYOV6ACqWFIr4CCUdle8pOZS3x5O7SPhGFk9w','{\"languageActive\":\"English\",\"_token\":\"L5ggU4QNZ15xnYPn2Y6tnVCp8DjsY5Aels3GuF6C\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:38:44'),('jDGH4oy1uMLfoWJPxQXf8S3QWLKlDczvqKJY6h6L','{\"languageActive\":\"English\",\"_token\":\"5s4WndeVul7L5E0eEvcySBSrvzjpzA7jSaL91pqc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:45:06'),('gK6RY4XehAwxCxu8K1aVVroK9mjssbBzxXtWj8PP','{\"languageActive\":\"English\",\"_token\":\"GzGmkbUyQWXdFRCeByCex99BrQ8UGSGxXy1PgAPO\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:45:51'),('SiYyddbWWp14vOHSBkT0irefiEOYZdagLN2q7Gan','{\"languageActive\":\"English\",\"_token\":\"mSlxw42tSbjwXj76fgE2SzFknmoIyDnddxAJaOcZ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:46:14'),('0ryVLMZ9ddfvCH8lfu7kmeYO5IzpYBox17bJp1Ar','{\"languageActive\":\"English\",\"_token\":\"c0bOl23kZA8EL14ME2GDeVlWNdV47MQOiI8oRgIh\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:46:42'),('BfnHgX3lZlUHEkro9jCwkyKiqmLndLxIuRPC62qM','{\"languageActive\":\"English\",\"_token\":\"xeEu0HLb1zmYvKA5Gvi2JlEdGCVlMMMzfOw8suCH\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:47:56'),('h7MFQ4tSPNWpDmvapXouYN0yrBRMZany2rUIqIc7','{\"languageActive\":\"English\",\"_token\":\"DMMYEjMd6qBQP4NjwTxgt9LB2Kh5Z5EnIMNgEAPc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:48:38'),('YMnglFoLw7rbYLitXOXXEwh4qiou6FcHIVa7JxKw','{\"languageActive\":\"English\",\"_token\":\"kvb3P5k2wEQjwPTzexVel8SwyKRZrkoWMa3LebcH\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:49:11'),('eYZeZHHMMVS5BPnTrhp7C0IYMbdUydnBX8lf1ag3','{\"languageActive\":\"English\",\"_token\":\"ZDNC00c2wWJEmyMB7dLSHgLA4IucY67j4qxzdUKS\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:49:36'),('hhSck9GmSeMbJSqQM6RJDkcJEEdqIlegrWObZAcP','{\"languageActive\":\"English\",\"_token\":\"oVwFnGHtZaZPFS7grUy1T84tg9OQYwilH0UvzFG0\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:51:49'),('JwdjWqp3tvGE8ZpRhL0wTJbWwUnEn0CC1zuN4IxT','{\"languageActive\":\"English\",\"_token\":\"2j2KVXZwyMHcDLBPyxmq459kbDPLmFb004mj86ip\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:53:18'),('vyalkX2JpsN9CG9m73WUx0uCznDIHeF3NRwMeZwl','{\"languageActive\":\"English\",\"_token\":\"pfnEPbgG9xPw6q2BX7D272PFwNIuuzgvMrAByhIf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:54:18'),('VHiuqxLJf524KopEqxCTlqIHvR0NuaWZp20pHM6L','{\"languageActive\":\"English\",\"_token\":\"Imnl1c03IfGxxNl79sOvawMCsaLXIpSu7QzWkCgn\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:55:51'),('2b2Jd9ED72Z7ETsHvSaT9voti86A4ixujAj9PYp3','{\"languageActive\":\"English\",\"_token\":\"jbl9BWA2KXzIGMt7K54Jof9h4HZq5TBmJTy3nQBU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:57:29'),('qpstrCjvbFEVgqYcpvqWhLBINPAErZqOkwkMeCFA','{\"languageActive\":\"English\",\"_token\":\"OpGQlIzhBfntt4qjCSer86zRlxWjC24zCTEuqOuU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:58:22'),('XuRRYUDF9F7MlShwDH47NjcZaCNKiLD3gbwqeQRr','{\"languageActive\":\"English\",\"_token\":\"T1Rv7zdbtWRIXr53uKERq33TFCGyIsy0HfH99rGl\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 13:58:52'),('Kwgs0pkbXN5i1xPruKn75Px0H5H2oofISCzKfUVu','{\"languageActive\":\"English\",\"_token\":\"SDLyTJpt8AhwHFi8Z2n5oVyrx0QWvAYq89tByViQ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:00:49'),('XexVO2byqE6JzrgEIJn80kOAo5J5Kmw19r4y7nnL','{\"languageActive\":\"English\",\"_token\":\"lrnLEbaDAEHCQwzGKxaqZAg4Pi186aJoqvXjcq2R\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:01:31'),('tw9gjKUIaKzVIlCkyRrCnr9VbOFUQejT8wOh6FVX','{\"languageActive\":\"English\",\"_token\":\"iRMyr65lpUtb5W1ZXfxhCa7XMaT7ozCKSAH7LNCu\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:05:17'),('VgUrX1B7FtyzXiOlu0NzPGU3DpebXPs5t4HKUfGy','{\"languageActive\":\"English\",\"_token\":\"LpG6mwin7Ciya8qPhTRBf23RPELHR8OvAkDJZBDs\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:06:55'),('3Nfp3QPLM0062z65M6uNBtftPgbmLi6zPXyDlGb6','{\"languageActive\":\"English\",\"_token\":\"xtnBwzKC2P0YBeq9SNEhYlXbpcF4qtYfPWmEDfKL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:14:10'),('VhUz8Bn93wyTMWgiO1I2ILNo1BpVmucE1xFISIPs','{\"languageActive\":\"English\",\"_token\":\"uMeZNtZzvWDC8sPzVqrx6TCgItSrLEICsNp3SIOF\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:14:57'),('1jfRppAaobzj8bEr6MxXcNqAuebpj2KM8P7dU0mw','{\"languageActive\":\"English\",\"_token\":\"KCHWkUW5NDHT8AUW3s9H9KTxB000JsuWphpVVgGP\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:16:36'),('PwNTacIhcdBPgiBy44fsvJT8AiPsbfFmpsWYJcc9','{\"languageActive\":\"English\",\"_token\":\"zaMMQVmUGdooFGEAnNOJJBLekoCxvsnyHn848n6H\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:26:30'),('HMnuJjLWlnG2XwaZiyiTTjb61nYAaM4c4wtTuzze','{\"languageActive\":\"English\",\"_token\":\"bKtFyiJriurvhlnQ1TgGOAfP2ZuhK4Lwh216PEoS\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:31:31'),('l33CDco5OS4h4wOSpX5nFOqJYGz83xjCPeI9PU6g','{\"languageActive\":\"English\",\"_token\":\"DSGe2vvI8TrywWoc0dTA6wAau8ne5bFGbFlOudtC\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-12 14:32:45'),('Ez1tEuCOTJj6m1quD1myppgxMsV8jiXsdc3OUCnI','{\"languageActive\":\"English\",\"_token\":\"391rlyikN5386TUsb8Rqjf1zKskF5FasCfy5nrmA\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:33:09'),('wJED4urSdag1RTS9iyU2RZkR1rzgUWSrtx8cTcnn','{\"languageActive\":\"English\",\"_token\":\"723o4xNqqcLVs9xF7ADIUf0QN8hjSpGVqhEf93gn\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:35:36'),('vaxSxdBHjVtcLWzJjLDfcO6C6wpQyH7cq4fmUAad','{\"languageActive\":\"English\",\"_token\":\"DSGe2vvI8TrywWoc0dTA6wAau8ne5bFGbFlOudtC\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-12 14:38:42'),('XhdJg4reMtoIUj5G9Krve1YkkQcQjE3mk6n0qv3f','{\"languageActive\":\"English\",\"_token\":\"DSGe2vvI8TrywWoc0dTA6wAau8ne5bFGbFlOudtC\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/category\\/8\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-12 15:21:29'),('31Ef5HPzn9bOTFbWH7DWiGDaCyW3qW40TdYwToiF','{\"languageActive\":\"English\",\"_token\":\"M713PnB99zXo8bOVxdw3wxJSoTut5KgMjTeAy6eL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:42:40'),('0PkVDkkdy0rcf0iGCtVV2cILnElSfLDMw4YC7m6n','{\"languageActive\":\"English\",\"_token\":\"6QzDWzdKLKKsMS3MV9w1Ct5B81is4It2C1lk7lxi\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:44:13'),('gzeVyCmCifYKyHz5J2mjLLaOcMhDrsJxEaYPOj5g','{\"languageActive\":\"English\",\"_token\":\"cmRbfvi4eiOCjTm4hpehOND0FcHmeMCK93F1ThpU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:45:18'),('nXB0UIPxR4pvOpRY730ZSJVNo9ViMsV04sYMKtnX','{\"languageActive\":\"English\",\"_token\":\"RdM0CaoSUxYffq2tFmdS6xRYIGfmLGFlxCGiX8TI\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:45:53'),('5jXsAhcRaDeXOmipl96FLp7jOK89PYoP9dneouRK','{\"languageActive\":\"English\",\"_token\":\"SIvl7QRstc7lNiUU3Oi6wjauvVJUdHrPjZDvbv3l\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:46:23'),('Ou1wPvJ41qRauAc9SKJ6AnCrlxLrrAQfwn097Hp7','{\"languageActive\":\"English\",\"_token\":\"QwvJnFunfIGEcKrNpgJ3ygWR3WuWaBlXbFSbiHQk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:46:58'),('fTDNrqzYWgdxjxhLihAQVddbgLp1MwrRXiZEHNXx','{\"languageActive\":\"English\",\"_token\":\"uarIpgrRrv9Wex3HLF6lTfj8aWT45eBD4SPNongm\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:47:24'),('LSj8Ny455LlbaiVYNzEKF548zLn1wnfx4S4LejCC','{\"languageActive\":\"English\",\"_token\":\"5ejZxt17ryy4Jg2P1y4JrDYx1T94uWsHCrcytvsb\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 14:47:57'),('PLaF7AMnFtLMGj2BOOsL3Z8yl5AaohvB33Skygu9','{\"languageActive\":\"English\",\"_token\":\"MOKCOZjMrw09HSCiE80O8u3neTyo8kmixCW9RAIU\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:03:38'),('aw9zZLHrSlxdsWfn4X5szh0byA7LdjuIcHpyhVOZ','{\"languageActive\":\"English\",\"_token\":\"ZLqeJ5R54v29PSBzUUTi8Y14hZA3IpwPIVfL7l6h\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:03:39'),('wSWoV6N3dm4yfuZPFHxjhYyIGPnN58Uqyvqnl9xF','{\"languageActive\":\"English\",\"_token\":\"hSvMWSltDZUQqFKJltnbfmM1czj4YBCY3XFKKq2k\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:05:37'),('nSaEo0p6HEoPtspXfgE3xLppbTSX8pYXJCllHFfc','{\"languageActive\":\"English\",\"_token\":\"pjLsdqzPvm9IH3yyaDkc4UnzQwKmC2GNyipIRoGS\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:05:37'),('tMYJtivjWvMaSP3jPRQFHNIwLJgLaoAjQFajPQ7q','{\"languageActive\":\"English\",\"_token\":\"Oaori6saCu5OWOHGRmj6xyjGfEMXYVnwUMuLY20X\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:06:24'),('4lxfFJPLrCdPzlejMp0QEheIcn0zG8R7n9AmtfuJ','{\"languageActive\":\"English\",\"_token\":\"mdl3gMVV52ggfB40bl0TrDsMEjg05Bva8tOKNNEA\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:06:24'),('kyizeurlVv8VVGY5plifk3Zmw1MojUOY67954LOg','{\"languageActive\":\"English\",\"_token\":\"bcN3rLHadSfjA7vv4Yzic1edNGWxSa0KwwFGAAhp\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:06:57'),('CW3Elpr7vIT443AMeAEYdHuj8rGUrgrfLkYHBq5Z','{\"languageActive\":\"English\",\"_token\":\"LpP4ILOkYSKg7cVc5ECVmq0CgL3OxC0VQhwgYZGm\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:06:58'),('Sg7rwp9iVtQKfINA479VhLFrfQ13hFzx5Rmr85qU','{\"languageActive\":\"English\",\"_token\":\"9pYMRriAxoxBW8Ye1UIoH10vhW6YjvG7ir0Cvg4B\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:07:23'),('zX1stW4yWoiUHf2YsRTlQypLiaVOdvnTMpGjm80n','{\"languageActive\":\"English\",\"_token\":\"gauOCW5yMcwh53xu2I7CGiMrmibhOUeq5ZsV8K7s\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:07:23'),('a6zWdQndk3UgZO0F3Kyuf9o3TBJOKfQ8NEWoIdbc','{\"languageActive\":\"English\",\"_token\":\"GkH7wmTmPz20QRmIVpuSadXknU13S7PICUdBWcjy\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:07:43'),('JhmPWnMHBmgHWVUpaqXUnPgXqRmmogod7fVvedGY','{\"languageActive\":\"English\",\"_token\":\"3KkMZQU5gP0eTpp5HmU65ixZ8ZTaMJrLmPmAamb5\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:07:43'),('lrSh6IyEn7NTwrqDs0EYU8weYba6RMxVsPkghZLU','{\"languageActive\":\"English\",\"_token\":\"kKrkZyhbpYFJUqjJqcdbQxrPf6hDYfXVzHofPfJ2\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:12:14'),('HnZHCwUrccLHpYDtW1PoMnsOOTZodYHkXwUe6CkZ','{\"languageActive\":\"English\",\"_token\":\"616cfzpTjeRGKNMjJ8yS3ds9J41XNaxgkl4E1l62\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:12:14'),('oJgnFOtY2EV5cY74tMMee8qj0RYMgcPIa76DQkNK','{\"languageActive\":\"English\",\"_token\":\"Emfu5B5qMbGTd4hoeEErXR56Zxc8RVSbpRLoaoNy\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:12:48'),('4m7yFnSLP5MgmaQPtJ2Gfxe52IDSJBJKJm1qLUfy','{\"languageActive\":\"English\",\"_token\":\"AI9rPOvpLLSr7DCNH9AtFRIsCWXiDNd2pJTiRqBd\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:12:48'),('9vhm3Jz6vRrLEeeypW0JXOxyW8BW85iywnNJsiN6','{\"languageActive\":\"English\",\"_token\":\"kILCJWvZ8S7txOpl0yEZbeVu0dKUfgK8aVuQED0x\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:13:09'),('Is6S4QVGqsaz5WWUes5Hc8o7fvbzM1RQ7ChIeCu6','{\"languageActive\":\"English\",\"_token\":\"y9amHhCtTVEfLUmp77489H7WTrdUutGDMTJ34VD7\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 15:13:09'),('xjK3G4pSUrnpGyVATIbavyjg8FgBDZ2qrdPgdtAy','{\"languageActive\":\"English\",\"_token\":\"DSGe2vvI8TrywWoc0dTA6wAau8ne5bFGbFlOudtC\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":9}','2018-02-12 15:41:16'),('II49ZXLDM31D3kNooKDyER6FeROgGuupgdi7xdLh','{\"languageActive\":\"English\",\"_token\":\"BEeqH1dpAhKoMvOdKdKNqrVHIKQavZSk4xlrWLCg\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"}}','2018-02-12 18:50:22'),('m2bS260yx3ji4FVB6u9Kxlphlj4QLPX4J5bsZTQE','{\"languageActive\":\"English\",\"_token\":\"BEeqH1dpAhKoMvOdKdKNqrVHIKQavZSk4xlrWLCg\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/account\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":9}','2018-02-12 18:50:27'),('3FGdomzz4lmTkHSAoYXeEbZzZKCO6bEmO50rkfQu','{\"languageActive\":\"English\",\"_token\":\"BEeqH1dpAhKoMvOdKdKNqrVHIKQavZSk4xlrWLCg\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":9,\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-12 19:03:31'),('3VKSOGe972wXJ7NNidOalCpHPPGOGVoIEOY31mVj','{\"languageActive\":\"English\",\"_token\":\"PxENpWGSSCnMjPuo9LwFVysqouM4VVvXjulrsowd\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 23:08:44'),('nr1Rs8VIYUoURtIBlptbY7wK1QqsYUTKm4xT1Uva','{\"languageActive\":\"English\",\"_token\":\"PxENpWGSSCnMjPuo9LwFVysqouM4VVvXjulrsowd\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-12 23:13:21'),('fvdloIxKqH6TuwNJYP6okANKyd0VAhCg2lZ4BKo6','{\"languageActive\":\"English\",\"_token\":\"PxENpWGSSCnMjPuo9LwFVysqouM4VVvXjulrsowd\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/checkout\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/category\\/6\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-12 23:19:32'),('YKmiGTTa6qH9rQvM3FjevhbAw2rY0jCIuvupXGFF','{\"languageActive\":\"English\",\"_token\":\"lzCKg05I55l75LhZddUqG35hisqOBPh2stssOmEe\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/header?session_id=lc4RBCCsUTtkbDxg39bcFRlyaTGrbWyM\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-15 17:29:09'),('bAEj0pcjFeQqnm1OnTlUTPZfXZPfL2gEMnc5j6ky','{\"languageActive\":\"English\",\"_token\":\"lzCKg05I55l75LhZddUqG35hisqOBPh2stssOmEe\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":[],\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-15 17:35:50'),('OF453QdTaK87556xFVl7E6Mln3glntvxu85iA6OQ','{\"languageActive\":\"English\",\"_token\":\"lzCKg05I55l75LhZddUqG35hisqOBPh2stssOmEe\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":[],\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-15 17:44:29'),('tVMBpfeaxmTHGhX8cfcysjTpjupLKFQelMwQYF4l','{\"languageActive\":\"English\",\"_token\":\"g8iqJUj25mDFDXwrWLc1xE2VquCjoiGSeSlww4xX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-15 17:43:30'),('RGcck4hEVV2tj55iVLB1fIheDjchSFyI9VdD0ex7','{\"languageActive\":\"English\",\"_token\":\"lzCKg05I55l75LhZddUqG35hisqOBPh2stssOmEe\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":[],\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-15 17:48:50'),('dl1FTntqo5vIonKfYooped2wHCEuaK4mTkeSdgik','{\"languageActive\":\"English\",\"_token\":\"LUT86DkSyKn9s46hD5tRYeglSZ19pl1QluRzGOl6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-15 17:44:48'),('SIrP0JC3IsUI5UFLclFip0mxdWuXlrlxBtT0jdDh','{\"languageActive\":\"English\",\"_token\":\"mjQPwdNRn28RtfFsvrdl2uz0dHZnvHoznVprz76X\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/product_cart?session_id=cJ3wZzJfv7BbFQVPTwzw7jEEjC1ARHeq\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-23 21:43:30'),('z7xvHpyeN4wCbxG7lkyLZfHivbc5vja2O5iUpnxr','{\"languageActive\":\"English\",\"_token\":\"MRm1Xbu8Ngzy6wDyp8Riu9t2fY6Kpp4pddXETsgK\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-23 21:59:48'),('sOkqisvJ3sl6VOwSWiFvm3XyjxK2HaHG65o74VvM','{\"languageActive\":\"English\",\"_token\":\"MRm1Xbu8Ngzy6wDyp8Riu9t2fY6Kpp4pddXETsgK\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/css\\/vuetify.min.css.map\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"}}','2018-02-23 22:00:40'),('ey7NLtDvSQrs8B5THOblOn7ECkA22mY3qQI36IlV','{\"languageActive\":\"English\",\"_token\":\"MRm1Xbu8Ngzy6wDyp8Riu9t2fY6Kpp4pddXETsgK\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\\/categories\\/add\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-23 22:09:30'),('7ySqmauAfcfw3Bdt2AJQfmiXPD5qOgAUUBTOmyxp','{\"languageActive\":\"English\",\"_token\":\"e5cceDeLuAYiDuKWBcgOaZ9Pq7RceBkx3A0Tmlrc\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\\/categories\\/add\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-23 22:45:26'),('ZN5czH3vMPRsBu6AhPBaTkcLSZns6ZqcgSoHX0fH','{\"languageActive\":\"English\",\"_token\":\"MZEbIunA8Pi7cVGmIHz5Ls8nnAAo3lMVDjCDEbdk\",\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-23 23:34:19'),('71NTlq4sJusX7KwSX0kn7agZQQuX2lSIEJUPKSIA','{\"languageActive\":\"English\",\"_token\":\"ft985yM3aZTjJnKWfvOZcvHzRyJHJg6hE2tPPFYH\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\"}','2018-02-25 12:21:15'),('feMwZMkWGRjzRReD4JaXL7qZMKIv4uHq1OOcrhBo','{\"languageActive\":\"English\",\"_token\":\"MqxPy4ADTeHM2IaWeQKVqxc2y9uWDvPaHXh0CfS8\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-25 18:22:21'),('wGBuK6nO4WCGNuHYXaJgljQthC7GeA6QAD3kNKi1','{\"languageActive\":\"English\",\"_token\":\"0bfvgFlOrT3mrqHD3MENsggmFL1TGXol4Ppo33XD\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/category\\/6\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-25 19:11:34'),('llnbFD5OHtNNSVoLpBfLXwuLU65fAzIwX1FFDEB8','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:04:30'),('8qLkKoavad5OwVZd0c2DGwC8P0aVYtWHM7sAZ5ds','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-25 20:05:54'),('S1Of7a6Kl2q2P5CLHOASxkIH9YnMHjwZ9ijYuBZX','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-25 20:13:02'),('V3RQVk7Vmg2yyLSbbNvjfPzxHPi1MTOZ0cjdP5Yc','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:15:10'),('ijkPrkSg1GuGdPZdqSc2rzVnwrtWovHnXZtEJsM6','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:15:16'),('ZqTeX2zkKLjz7nX3enNG4zKPftw3iavaWTDFNtoX','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-25 20:15:23'),('a3qSKlXdYJe90zAEBfyzm7O68f5DQw0KPWoemdSp','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/cartview\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:17:21'),('RnmW0CSjUjf7gI3KssE5EkG2skpKmuKpwyF8PYj0','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:37:14'),('oybgqay5DKdq8zsLMi2FaOOx7B2O6Vq2XKSNRYlC','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:37:28'),('Vny2kBCtJnca9YQhoYmyVdl9ppiywX2pUDaFNnVt','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:37:39'),('kV7OAlBtJBhrEj23CL5oIJ55MtGjerVXVPx8PuEH','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\"}','2018-02-25 20:40:30'),('DTTJ0JkFi45rJ3FJCKBF3fNNXexOoYAIjZMhKVoT','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\"}','2018-02-25 20:40:48'),('90HXyhBuVcdOrl9vknLz4RQmWxAHt5f8yEaSiIKa','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\"}','2018-02-25 20:41:23'),('PUDvegHSM5yx8jtwhQzKhkBL9wSlhFViZ0hRJEyJ','{\"languageActive\":\"English\",\"_token\":\"UlxXMvwi4FvYEtWJXoby5fYYcUfFNGQctqZigAbI\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:41:26'),('rG2WjE64eeBLsw5NhlhfPoavv3Wpj3S1kt4BptyO','{\"languageActive\":\"English\",\"_token\":\"5wnPjCcrz4206AT10dLb23ZwdQu8pRWZavwIXvme\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:41:26'),('XKIu5k9wMUFGzKnU5qeocZfPr2wSaVmbNiOHzhwL','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\"}','2018-02-25 20:42:05'),('9BjyHHj2323mp3FSLgQ8M9AdvfquAQqsVLkts3xh','{\"languageActive\":\"English\",\"_token\":\"pF9Vb7t1iI8G3kKTg7sROA7CwUgXBk1jb60JuS7K\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:41:34'),('PLmxJqww3vxchZa8BXNjYQizL4kVXGfw17zmhNHx','{\"languageActive\":\"English\",\"_token\":\"BVP4Agqa11K0DBK1LeAvwXrquY4MftJacDvv4T6T\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:41:35'),('Jf5azhrRxXrqbMwBauNMtFBGplrMKgOEGZ6NMaeI','{\"languageActive\":\"English\",\"_token\":\"J249F6ZWHVLx78DGt6LJSswTKNhTvNifLe81V2lO\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:41:56'),('NoSApMxnDpccI5gczdmpX7M1EQdlANa5gfsSGQ96','{\"languageActive\":\"English\",\"_token\":\"sr2Az741I7vuNo4VKGER06RJjAWhkSdJJWv6Ev2R\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:41:56'),('LwNwmQYtDkWrHBAWkC1eS65M7N0dNFzTh7cwai0D','{\"languageActive\":\"English\",\"_token\":\"vQFBksWLu6yWxCVc3JnVFx4lrxmY2Em6EaayguTL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:42:00'),('31PNAW5hOHHnYiEaJpXI42QdslPWjbU5ycXhDeXW','{\"languageActive\":\"English\",\"_token\":\"BlGQpFPGrH2bfJPRz3XDEAqp6G8jvLxMbg3cihNK\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:42:02'),('5dVZNxvbbFaeu7voCY53GyUOIE3OF6ogmjgS59XM','{\"languageActive\":\"English\",\"_token\":\"3iLEPC0f7nPrMjJpWVvSQ6wIAYD31d5VsA4SoVfs\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:42:07'),('pUh0TvMLbrBLCUcKhdOCt9gF0vGoCA628VdQSaGV','{\"languageActive\":\"English\",\"_token\":\"55cOHh33KU2MCViCoUYg30WWIJSXT2SF3MS9WwNg\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:42:08'),('fGyXiwQ007EmSwHRDWNF3lSby2js7OsF06WHVeU0','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\"}','2018-02-25 20:45:23'),('OiR9KAQ6v1OnUe6LWfL8dGTKaKwRBQAKVtPmecm9','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:46:25'),('dXsgR4cbT3JowN8kQJYQ7uJZpm5Csu06FBLNKtmr','{\"languageActive\":\"English\",\"_token\":\"CIgDSSBAUVFREjpbBOc4nNWhY8X04nx3cJXsyY3a\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"kh\",\"locale\":\"en_US\",\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 20:47:39'),('IUI1anGaEFnG9PkJEu6hI1ApWlijIlh40nHMFr9T','{\"languageActive\":\"English\",\"_token\":\"YTGX9q96hV2bpz82fefHeMGT8UzScKnMhWxgqWTI\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:47:44'),('ssRZvE2wbx5YSoyV7Ke8r858CxgqouK0PHVFCFLE','{\"languageActive\":\"English\",\"_token\":\"zzoQPBKeY4d0QDCxOsfzOZcwQbI7nik6bVQMOjVs\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:47:45'),('a6vJUuf8PCiRxpVs2vjQkgHMrKe1mpXBZvEo3Gnq','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-25 21:46:48'),('tqQw06tAH60IntkVrPKjhadkmXLwoqYdHwGZcEXd','{\"languageActive\":\"English\",\"_token\":\"eSYJQ7HvGzxqN0LlHhvK77X4zEYu7dXsQACw8EAd\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:52:30'),('gYgtak9H8Zbl2xoIAJ5ytzhnbJdskXGDPRp41sEi','{\"languageActive\":\"English\",\"_token\":\"y9iUDip7x6u7ba83iSrSfursC9KaE7EGjNKoGukw\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:52:30'),('0mM5nFK3nD1KRnWNVcCxfcKv11kq4Z4ZeG0WYveq','{\"languageActive\":\"English\",\"_token\":\"T3EpIQe6fZQwuMlVHCgpRkAw3LbGjIWiuQPFyNVZ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:52:36'),('RrB9v0THwQFmnP1DkpOhq8ym5dxWhqJaJb8beO3W','{\"languageActive\":\"English\",\"_token\":\"oGYNJZMqVNJFF1YlWfdveiov1NBpp20HiWIOTicH\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:52:36'),('82PLgT4rZchtdk2IVbfR8xoWxefLilcrnuoTIsJ8','{\"languageActive\":\"English\",\"_token\":\"HyN2IRUFIyHXHW9fHI0bKsCQkA96V41huEYM1ynf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:54:09'),('NZEqXwONckX3Hgyvf7XXX4ss7lG7TwU2Yf2JU944','{\"languageActive\":\"English\",\"_token\":\"XBdbh9PTe1p5KWj7Q7zzDi1eXUjGdhUNgUYbpnjF\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 20:54:09'),('Bdrlhie8FkjW1LZ2H7OaZiZr2ki1X6Bb0OKevEkg','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-25 21:47:04'),('lTOueDR2SP7DztrXkh0ZO6ShHbPypQnSWYzJEVSd','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/addressmy\"}}','2018-02-25 21:49:21'),('oOQJ1iXJLcb1Lvv6DAT3oRzd172f8OxCFfovoaz4','{\"languageActive\":\"English\",\"_token\":\"rSNCBo46TL4162pyArgjAh5mFl9ja9iwXMiO0HD0\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:48:10'),('mkvOEOd6J3k7QTlif8yZ2dwxTd32xpiquX8GhP9d','{\"languageActive\":\"English\",\"_token\":\"f7kZEERybJojyW7DcjlazRF6pgXGge0y7QjUrNcP\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:48:11'),('U7lk0Q2L9HeH8xf1A0848kzEu0msJ2WY9Jds9e4i','{\"languageActive\":\"English\",\"_token\":\"4ytENs4mR7sZ0nnO7hHd3An2s7Kot9XE6iSaUwsu\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:49:28'),('p2cCBOeHOIRp5UUCzHk4T9xAXkEwIGQTa4LQhoHK','{\"languageActive\":\"English\",\"_token\":\"7RhzMEP3Xg4zpBC7VcylBzFruITykTzm2nFnrP2F\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:49:28'),('tpJrzcYxS0JJFfGaRhQbNFo4uA6VVhi1tiKeTeLU','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/addressmy\"}}','2018-02-25 22:14:37'),('nfmPgLIcj5UzqVVcU9oRQR7laId3N23JGSorDHxe','{\"languageActive\":\"English\",\"_token\":\"WlHPphn95WUi0dhQcyrdtsp6Kl5KjAUJcxOgslFr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:49:57'),('STmbGQ9AN6BxAsReiaV9uFILOQz7dchpYy0ZSYlv','{\"languageActive\":\"English\",\"_token\":\"WeYhVSnFDwsZWdHu0qAiaF3tH7Sig1rvFFDU0JR3\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:49:58'),('8ygB1xTEjXxKkvm12l1k3sMde0ULmuESsLhc38zo','{\"languageActive\":\"English\",\"_token\":\"UkaNoC1mIH8NkyNX1bQLVTFC985UPMIIAm501l9s\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:51:21'),('J7qpmvnVACIiH3uKxhpB2grUyOrzLvWzFF6zAwLj','{\"languageActive\":\"English\",\"_token\":\"P1JS4mIPdLbM5IKoW8LXF7vD2YtgZTd3FaxTCfw9\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:51:23'),('jIi6QPKZHu6ezAVEyMcAeQh9yPRTK1MGGHnwdrvO','{\"languageActive\":\"English\",\"_token\":\"inwpC5WeLUw0SGF5YvMn42d7z99dXMPDMmoK0zhV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:51:49'),('cVfc46oy8IVGA8W7mPDN6iMez34w0FnbsbpAnhcl','{\"languageActive\":\"English\",\"_token\":\"g5yjtZoxe9dczNbNY86ZZiMTABh3W1JUqfrqiCA8\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 21:51:51'),('8jBukcBPrAntBHXAOjweaHdmEylooxnjlK6ohIW8','{\"languageActive\":\"English\",\"_token\":\"Cj5c6GufqUKyFHAys2p3rrYGqeM796o4HDWesw2S\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:14:45'),('R1dxi8Ko6E12NkcQZ8I8HmeU6Rqfci0nUDHMTGvd','{\"languageActive\":\"English\",\"_token\":\"nzNuvdhkUp4i2qDkO6EyHD3t9m8UHLUV2iNPcqDg\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:14:45'),('wVFZsd4s2TEgVI2w0JhRIcauJgR1O7eK0QfUj0Kt','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:23:07'),('t4V2zAATRmk136sHszAryLuEMMj7fHG8UlvX8oFp','{\"languageActive\":\"English\",\"_token\":\"Le67mcUfFM1IlqbiuLOiK1FiqbsrZIzTWFpv3gJo\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:20:02'),('LpbZxvfg0rGy7U6sTokIiskLEaNyiyMjGB8ahPAl','{\"languageActive\":\"English\",\"_token\":\"Gtk61a7Tyd8ZaluogCPOxZPo3i6FfQohjDkzdgOW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:20:04'),('MwH5Janf3dYh98ulgob4U8MViCUJ1LGLv5qI5PBR','{\"languageActive\":\"English\",\"_token\":\"67XxcZ2Tr4Z0LyYmz9x5j97FcF7V1PGcWdQWYzfW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:20:38'),('xor4OXBrxPF8TRc1wDGjhKrLoLYU2io5bHfWRTzQ','{\"languageActive\":\"English\",\"_token\":\"zD1yOEeQgL7y92dE21A0xdm1hIS1fqHc7inAXt3k\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:20:40'),('uIyVUCKgkcXBWsrAk4jiInD8fL5gfdOvlrkdHpWY','{\"languageActive\":\"English\",\"_token\":\"KMfxDjSYAhNtuzndH1z8y5fXlaH31cMeJggYOWic\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:22:48'),('apECN9HiKUeuCo6JvgnLNT59nnaoMbjQhd8VcgFW','{\"languageActive\":\"English\",\"_token\":\"jd1PgpVpGVMzvJt2tpljfmWRciRXUZdgkFFRi7yC\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:22:49'),('GgKtjUSQPGEzRScoxUCZT7vD7oUGB9Q8bYf2JWgJ','{\"languageActive\":\"English\",\"_token\":\"JbdXMG56XAmlxuJTsmbkOWiRALf22MTpauICgz59\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:23:12'),('fMaNjAF1XISgIRjsgThZHdMzC0qa4ejsFH6WwM6v','{\"languageActive\":\"English\",\"_token\":\"EA1j2ZpqBy0F7cQzdvFUKFxZGi1AwAAyNozYq9Pg\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:23:13'),('9qq5kcZ6G43SU1wwVx1RZjCaEX4Mc0WDopUXYbLa','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 22:24:03'),('iy8OePVIttLfB0BbQFTJIOfoxF0sYI46uPmPTrbL','{\"languageActive\":\"English\",\"_token\":\"2zgeCeQv6DGENsPrlq5RjIacIJh0JBtaST810JWR\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:24:08'),('3FHkJHzaOFu30F95LhHvmd03ivHZPF6M8m2UhBI3','{\"languageActive\":\"English\",\"_token\":\"izQnGNL142dc6PjE5CmDgWSkef8Nxxxir8u1RLYR\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:24:09'),('JT6azzigVL5Z9MK2RElD6mEGIepGC9PpbJlrCVHF','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 22:24:43'),('dlbhYxf2Dvg4znU0MSK2rFFC0BTsotWt2Id8t95P','{\"languageActive\":\"English\",\"_token\":\"AvKNQzzmAIpTlnATQnW4i7M4u6U8que4iRmIfBcH\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:24:48'),('ZYCQaZdsdTMEBGFmqjbSQuBE2niYseSk6gsCCtoO','{\"languageActive\":\"English\",\"_token\":\"2StcEGKKlPPfniBLRPKjc2j5XoNbl1oWW5f5eB8m\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:24:49'),('YAQn0tR23SgT9teFr0jNdqR1SWxHOT57BkcTyJi6','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:26:19'),('Ix5tvU9od5r1Tr26XkeyVEUj2Dh5qX2DrW5qQFSm','{\"languageActive\":\"English\",\"_token\":\"YTANJKoYx8RW4yivJt9MsLcFr19pjDl7pHnD1TDg\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:26:05'),('GUjjKwFts2qPQhopZK5KLFwbWse0bo8eHpHb3xqY','{\"languageActive\":\"English\",\"_token\":\"7QmVPRDMOtcGGCxGEFDKJ9KhKGurkZCkVpMkXPfh\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:26:05'),('BpRVwhmvJfgMTNtuSQPvnkUuSOEymNg6qLjjP5tx','{\"languageActive\":\"English\",\"_token\":\"wY8OLibe6R1sqioNsfVWdKPM9B06Jcvnfwun3cKL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:26:13'),('ctA1L9fVTBXdXnaBrbbkOWbjQOerGd8JBr3HR51A','{\"languageActive\":\"English\",\"_token\":\"s3LOXdc3t0dl3B1s1tAhun3uc5tF4JrSQrcrnUjb\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:26:16'),('p0fHxU4ZOis4pJ7AJ68qvmFXoF3LyYWphdFfqx8A','{\"languageActive\":\"English\",\"_token\":\"Aazlt0LnY6K28DDFo7c3MfZsJyFFLmHWXG89L9f7\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:26:25'),('cw3u3l1fX4IQ7mFiDm0CL4AsLeSXAaINj2DwiDg1','{\"languageActive\":\"English\",\"_token\":\"GGQMXasY6uE35fhANEcc9REvdF2KNVNaKuUQLLUe\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:26:25'),('BSQiTDbhtdtbZp3Vcmdw1JIAxuLz08FAoQBXqzdM','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:29:48'),('SQleKKQYaC3ak07GwYEScU6iYH27VZwOWFdBkIJD','{\"languageActive\":\"English\",\"_token\":\"yGeC4T18c4imCXBj6TreqsM7iqqREfAbfwoP7deG\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:29:15'),('MQ2lzXlmhA5cTCZPOgJd6aDVj0aYDOnKSRN08YuS','{\"languageActive\":\"English\",\"_token\":\"02jUZybnubMFiqoTXsEcm6Cn9nUhIacfnK73dmlR\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:29:15'),('0ywN6jEh6STT164ozOkj85qC1ivKmlQOLU12bEWA','{\"languageActive\":\"English\",\"_token\":\"38z4I5l6TUZyGrNMjtK7hSLXX0dVKqc59I3qd66o\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:29:30'),('w00NEGj5jcJ6QcBACDhzaMtDC49lYflkCqcxiadE','{\"languageActive\":\"English\",\"_token\":\"yR30FZgjdKcG1IX3uItR0yyTGCqVkq6V0FM2f7mW\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:29:31'),('w9mocPQ8zuiH8iUrADhbNHjCCnSLVOASU8ZpHudT','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:32:14'),('sVn6HwkmqMWY4eQF121YcZ8q7WhhKp1menW3thrS','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:33:16'),('95uVqeiMBR7dO7CHvMtOTrl3ECrt3jgbuaLQGE3x','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:34:00'),('jz5dkVshVMA81Lr3yLq7Q5h1e2kahAlzT2gwJugx','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:35:47'),('sEkER5mhNgjfhwFrngCJXvoaHOIA1uH1zSK8hom9','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:38:57'),('pxKo0vQY2P9JrBcMQGjTmR9X3ayxSG6JcI0oAgyv','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/account\\/dashboard\"}}','2018-02-25 22:42:54'),('JXjv8YOEcFOg3gGpNrtIoaEbZMvdnioZaZGPuA6q','{\"languageActive\":\"English\",\"_token\":\"vD0dFNRUglgcJeSoJ9FLtX3MIppxD6s23QPGZC1a\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/api\\/address\"}}','2018-02-25 22:46:45'),('LRc8ezGgho7BvGwopL5pOXJd9wCsTIpGcB57Y4sN','{\"languageActive\":\"English\",\"_token\":\"n5lgwr8Plj7bB67LMobWnscz8zKWsR7gf6vkZOpB\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:46:59'),('6Zn3060NaT8QrpLqJbpYD82kPx9pydF5QjrKQQnt','{\"languageActive\":\"English\",\"_token\":\"5DJz2c35pQ6RO2RDy4TX79saCf43wDB4fZgPNbNl\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:47:00'),('QtjUek80erWcUA2zD4F4iZJj385pkV4HpnMQQyL6','{\"languageActive\":\"English\",\"_token\":\"HHBwCqThFjOG9puraxZmH7Dth8svhnsnIinRoAWa\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-25 22:47:25'),('Y8z70JpDrvvoCns2oEsRTsTkMXDSDWne3uESBXpj','{\"languageActive\":\"English\",\"_token\":\"PcOlxA3P6G7NAtPznxPx5SL1Jl6qcf5tsXcQz9QL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:47:29'),('ceksyyeZJHdtJHhF2Jnt6PUjIy5OoXy8BwSl8IwD','{\"languageActive\":\"English\",\"_token\":\"iAlrURR1qJDkbA3ANSJKRsa8qJYpdCh4YYeM6lvf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:47:31'),('1spDNIb9XBCTu48hInTCS3IM3V7PmHC4wo1uaAyf','{\"languageActive\":\"English\",\"_token\":\"HHBwCqThFjOG9puraxZmH7Dth8svhnsnIinRoAWa\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 22:49:40'),('LfYx98p2DHLK4PNlh4T2vOYJoiw9CMchLzU1qiP2','{\"languageActive\":\"English\",\"_token\":\"HHBwCqThFjOG9puraxZmH7Dth8svhnsnIinRoAWa\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/api\\/address\"}}','2018-02-25 23:10:38'),('Rah7VaOIYb6VAkkE7JpRNJsJkQxNhWadiHKPTpnT','{\"languageActive\":\"English\",\"_token\":\"6qrOmL5AVALlIRCUPXiLfavN9aQ62L1z9S0Qiy0K\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/customer\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-25 23:47:56'),('RDQnQB0UgC6r41gzcVlClkvmNsjCjM457lt9skcq','{\"languageActive\":\"English\",\"_token\":\"l1NJ9LfAkLrKmtYE3brcCHARHUwQ1oCmWXtBKbKQ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 23:44:55'),('dr6Wmv5DOtoKfYbkuwUKwIyAyTljjwnmeWO3q8vk','{\"languageActive\":\"English\",\"_token\":\"UUhmRAttCeFeqE0gtIYRpHWSjrxPbtRE1AUJHdeY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 23:44:56'),('2gUNbLgegLt8MWc9SvSJECWtihJdEZLNIKuYBu1a','{\"languageActive\":\"English\",\"_token\":\"uaCcsKi64kYvadakAMRjBrdV15cPqFWFZBcmF4eu\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 23:48:02'),('V3ClW183WTgiOg2QMIourELQh4xlWJcZuFwBHCJe','{\"languageActive\":\"English\",\"_token\":\"icHEAoQU9YyMgoAX8GtccmaDSm8Ugv29gpjulwfB\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-25 23:48:02'),('6A4mQfCXzUqQoGvgT2tjsl3aND4emsRI8V6wdCpu','{\"languageActive\":\"English\",\"_token\":\"6qrOmL5AVALlIRCUPXiLfavN9aQ62L1z9S0Qiy0K\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-26 00:11:25'),('ZRGhb6S0SIUU0RbjYdGzCZeu347vZfyz2SHpGwMQ','{\"languageActive\":\"English\",\"_token\":\"6qrOmL5AVALlIRCUPXiLfavN9aQ62L1z9S0Qiy0K\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-26 00:18:18'),('yS6B187evSPf1XpcuesbHBc59646dp8RMSmhwu6G','{\"languageActive\":\"English\",\"_token\":\"6qrOmL5AVALlIRCUPXiLfavN9aQ62L1z9S0Qiy0K\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-26 00:35:11'),('9HiYkOBLbQmmmXEHo7vQB2ZJKA6phydwffHkpm8j','{\"languageActive\":\"English\",\"_token\":\"C3qdFFiz5nVRDS80Z8yQL7C5QlfDIH8WPDEERH0J\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-26 00:26:15'),('aMEdoKXl3gnmIVyvZrPDXGhDKWIL4hXGfqqCvgJr','{\"languageActive\":\"English\",\"_token\":\"rDO6KGe4lAe8UbxEIiwnAOOuUYDWgY4Y7DJjyQ16\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-26 00:26:15'),('VxqpNuGmyCDSuJIzPuYu02P0jV6qOhyOTLtOHdUa','{\"languageActive\":\"English\",\"_token\":\"cVn05yI4nQeqVu1VWsD3p6EDKrM9rT5OjIv6aeLe\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-26 00:34:37'),('EC3xqG8p32ipfLx95GovsX8i5bEckkDjY7pEWVQ9','{\"languageActive\":\"English\",\"_token\":\"MYA2eBsrjw53kNGY9sez1EJNLrQRYwIoNxuFXljr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-26 00:34:37'),('TsBudKCtYb3JvNSNnYpIJX2F1VzRloMFVveveZc9','{\"languageActive\":\"English\",\"_token\":\"yVGlCH2Z1KYdOfE3F0pEDlDA5tR5vrpAZKDvQvbY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-26 00:35:05'),('sLuAQDDCESvgkrh3qbCTTzET7vNUGRWFqTA43Szr','{\"languageActive\":\"English\",\"_token\":\"jWmxWebNnZrBk68DJo4IZBwn954rQB0ulCpUoSIO\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-26 00:35:07'),('ZaAKwNLdc0qKNubMCIJQ0D7P3szxRS0CKpI5kg90','{\"languageActive\":\"English\",\"_token\":\"n7C7q2bQ16jXQ4VWI8ufBffytFOrKililevxzVbr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-26 22:24:54'),('GWBdjaWN0IxKC8lhJWLhg09qBhcH3RL8JSrAaNkH','{\"languageActive\":\"English\",\"_token\":\"n7C7q2bQ16jXQ4VWI8ufBffytFOrKililevxzVbr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-26 22:43:35'),('IcaINR8crNkqO9uDThxXLFISVE96fUXJHh3VXJGl','{\"languageActive\":\"English\",\"_token\":\"n7C7q2bQ16jXQ4VWI8ufBffytFOrKililevxzVbr\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/information\\/5\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-26 22:44:10'),('2QHeE5SjC3QPM66wRDlruRqe3dDVKR4a79iaQ9ox','{\"languageActive\":\"English\",\"_token\":\"faPWwCKwepIb0WDCEFl5WJYgy4YKcbut7nO7oLEm\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-27 10:53:17'),('G1gkbXSbXQOHwMceLX4n3nswKUO8eBO6tfCyGxSp','{\"languageActive\":\"English\",\"_token\":\"ZVuXYcvDmAaSrXuYLeNLKQtG1eA6XQqnpxap6GFX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-28 20:51:39'),('0ymUOgVBwUjcHzjLS9dgWNcNnllQR5HJ4jgyLctz','{\"languageActive\":\"English\",\"_token\":\"ZVuXYcvDmAaSrXuYLeNLKQtG1eA6XQqnpxap6GFX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-02-28 20:52:53'),('9oHsEztDapkhG4foDlw8SOYjckJvXFthck5Xet39','{\"languageActive\":\"English\",\"_token\":\"ZVuXYcvDmAaSrXuYLeNLKQtG1eA6XQqnpxap6GFX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/account\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-02-28 20:53:08'),('7UQuaqny2X2Rxl3dpVDZGKmPnfdVA2XkXDBEdDL8','{\"languageActive\":\"English\",\"_token\":\"ZVuXYcvDmAaSrXuYLeNLKQtG1eA6XQqnpxap6GFX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/js\\/vuetify.js.map\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3,\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-28 20:54:30'),('GCnFbBdOMO2D1L4C0kHvFCHWfPUZIDCzAuUxJOed','{\"languageActive\":\"English\",\"_token\":\"ZVuXYcvDmAaSrXuYLeNLKQtG1eA6XQqnpxap6GFX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/product_cart?session_id=cJ3wZzJfv7BbFQVPTwzw7jEEjC1ARHeq\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-28 21:11:22'),('codJn48I2rVkwMTLFPStqK7PuklQ4QhEdNbg0rCm','{\"languageActive\":\"English\",\"_token\":\"ZVuXYcvDmAaSrXuYLeNLKQtG1eA6XQqnpxap6GFX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-28 21:12:45'),('5bFcXi4caWYWKLZk2opr6onyivDc04D1KAh07eSu','{\"languageActive\":\"English\",\"_token\":\"ZVuXYcvDmAaSrXuYLeNLKQtG1eA6XQqnpxap6GFX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-28 21:17:55'),('bj4NfU6jCtEOV7jT0Q0Z8AgSFTMlSnMX5YA0Z64p','{\"languageActive\":\"English\",\"_token\":\"7kYF7BXh5SA1NzHaLQcBWz84IqOfqA8t0daYMoms\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/css\\/vuetify.min.css.map\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-28 22:59:02'),('9ifTydVcxjKZJv7Fth4ekG3Lm3pb5nyfCQxIQKFj','{\"languageActive\":\"English\",\"_token\":\"VNWXu1AXPxUEtPRc4BgBzzu5q8Z31O9C0YRWP6AB\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\\/users\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-02-28 23:09:34'),('3oTzME6aJSpu7eOtjrjKHq1GqitOq1G3zJHISFlS','{\"languageActive\":\"English\",\"_token\":\"XHLH781JwPUf6Rdmbx5h1wOMgJ0WdjkJVqAccqM8\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:11:16'),('ZuCrj9DTTLB1QtMb68t70eQtLjmU8V4HEGzEzmBI','{\"languageActive\":\"English\",\"_token\":\"fbTVdesVNTOFANj6ap9kRYZVmS1hAVG1cjS789zY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:11:17'),('6X1Prv44qlnCWxJivQHbpdNLcHNRgZu9gqbquAYw','{\"languageActive\":\"English\",\"_token\":\"IEGNn39rE1jMvO9WXYopxYtpklelxwRlWikrKmcv\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:11:54'),('hKxVIBMWN0ic9IpukKy3TggHNrR6Q4jSPZ5yHnvO','{\"languageActive\":\"English\",\"_token\":\"ONkEmElDCIvKa36t2c3Z50rp7gMUliGgMqj1l9Fu\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:11:54'),('xWX6ETVmOjbMNJwbvG6R9xRuTUBqnmC4ZlUJkgpK','{\"languageActive\":\"English\",\"_token\":\"wDhDaKCfrtMxhbgj5UYkq368tTVa8JNLOD1craLB\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:12:43'),('JhY65hDf7lJeGCklb0c8ZMORBld3CnW25fcZkUlI','{\"languageActive\":\"English\",\"_token\":\"Z0YA94lRXHeL8vc7Z1Krr2LLYSbTtsl2Uexs49c6\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:12:46'),('qSmiIyinmbj4xNPWDTmluIqq2Y6qUjw8vvWo7uMn','{\"languageActive\":\"English\",\"_token\":\"qA7Dj5M6oFoekDCAVxT7RFzSIND5UrzaIi8ZrD1D\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:13:16'),('vtVm4pA4v4pocqyu3f673Iy6qys78GneiGkqTmi3','{\"languageActive\":\"English\",\"_token\":\"JN5e0bVF1Iy8ZYDrdeJWZUJ2zhoEosdKqZHo97CF\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:13:16'),('oFvRVtXcSozcwjJSCRTlDCu5dcx7PU3IjKUcPkl2','{\"languageActive\":\"English\",\"_token\":\"pzsgVZEQcgvrJ3ndPMtya0Xf8C3jE8S4XXyEycAL\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:23:50'),('kbEvDiz4RAMQ8voVDhEDiUviugr2Wp3mAzJfzE4n','{\"languageActive\":\"English\",\"_token\":\"wb9FwgSrOhb3fLCZwXd5TFYr0rvZx67vmXd4S9td\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:23:51'),('WEUY4D9gvmKuFYNpAz2dko8SBENTCe6BVu3YUjll','{\"languageActive\":\"English\",\"_token\":\"DKoqDT13CO3wyuJeVmbBXem2TDqyfrWQysDzDxI8\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:25:15'),('lWKAHXXdn7PUJMmRJGa1rEF775BQNynLGolfyuSO','{\"languageActive\":\"English\",\"_token\":\"DS381kzbztj5dRiU1g5bABCUTueonjKWOVY0Kghm\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-02-28 22:25:16'),('5xzsJ7zQfs0A0lw9SrF1NsmHO2FZms888bi91Rp8','{\"languageActive\":\"English\",\"_token\":\"k1UGoZVTJgYYbt0w5WF4899TGXo21eyfukCaydwy\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-03-03 19:29:05'),('0fwZxPbc7YaFCNfA1WvZMFmYZUlbnVk7oxy2LuN6','{\"languageActive\":\"English\",\"_token\":\"k1UGoZVTJgYYbt0w5WF4899TGXo21eyfukCaydwy\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\\/attributes\\/list\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-03 19:31:29'),('iJel3DxmAApDG5Z0HucQXF54dXxP0ryU6kkULffS','{\"languageActive\":\"English\",\"_token\":\"PGLpp1fzmQsFU0L5AwBpIwP7jg6yDnjsXHk3k4Yv\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/js\\/vuetify.js.map\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/login\"}}','2018-03-05 21:33:12'),('RWmutDEBMoQKlgAwwVwdAgjv6Wun8ebf7keuNPy1','{\"languageActive\":\"English\",\"_token\":\"n4ObGCIfJ4eEjmTJdevv7LsdOjUniJ6anoauFhMQ\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-05 21:50:12'),('MHuRY6RVda1cXqnCPpSAPZI0PKR8SkjyqcdYahO6','{\"languageActive\":\"English\",\"_token\":\"n4ObGCIfJ4eEjmTJdevv7LsdOjUniJ6anoauFhMQ\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-05 21:56:47'),('kgmrCwzw3ciGc0HeL8wMW9UAhKJfAMYwWYejo59q','{\"languageActive\":\"English\",\"_token\":\"AIw6WcvlYHhXTxHU7LyrksslyRUuKUo6XuV4pVaw\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/api\\/latest\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-05 21:55:40'),('UyBRxBPDyxSTw8oholUy65nkYQJIxKDADmeJxOLa','{\"languageActive\":\"English\",\"_token\":\"DgZBhkC66CSlCzHyiQHMsE64udc1H5kQeR9JxUoE\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-05 21:55:48'),('8lEaDbA1QjcFO2Ebm2wBIki1Q3OXD9SUYp4i9dNs','{\"languageActive\":\"English\",\"_token\":\"q2ZWbRjWmUiAmGeA9ia3G8FEtUvy9PRqsXpTA58v\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-05 21:55:49'),('ZDPtcENHcSyu1IQGXRcWv3ZVfmjZARWvbYRuHoDV','{\"languageActive\":\"English\",\"_token\":\"LHxY1VKEafpH3ZOig5A82cBUSBmz5Lc8hhQM3K9m\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-05 21:56:19'),('9KJ8AiZxuDy3qWSFsfZfBMdV4gucVueZNEPh8fU1','{\"languageActive\":\"English\",\"_token\":\"AIw6WcvlYHhXTxHU7LyrksslyRUuKUo6XuV4pVaw\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-05 21:56:24'),('ULk9Iue12G56pqCifKCPCBuAIlyr1EYgWk9GyPVE','{\"languageActive\":\"English\",\"_token\":\"n4ObGCIfJ4eEjmTJdevv7LsdOjUniJ6anoauFhMQ\",\"url\":{\"intended\":\"http:\\/\\/localhost:3000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:3000\\/product\\/category_product\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-05 22:05:05'),('hYnyDTkD9ybc8LucGezGQgbPkbMvlVGwhmrVaMN9','{\"languageActive\":\"English\",\"_token\":\"eLP7OZPJlGW6AtqRNjZzVUZoDpnfI1qwoXKDxmPS\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/footer\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-03-07 08:56:18'),('PxGjWCcHdELfkh3mMrOESNw5yHPwwjMj4IZqxAlj','{\"languageActive\":\"English\",\"_token\":\"eLP7OZPJlGW6AtqRNjZzVUZoDpnfI1qwoXKDxmPS\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/admin\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-07 08:58:38'),('mQcqlIMxfXrJTVCYrcN7dbxfwhpNBInM6tUucfbU','{\"languageActive\":\"English\",\"_token\":\"bfgcgm6hXY79rt9ENxoy2SyZCSx1O5a6zpXfUVBk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-03-07 21:21:22'),('uSUgLgtryHXz3Kqyfrxafn2pcvw9d5J4IRlob4Dq','{\"languageActive\":\"English\",\"_token\":\"bfgcgm6hXY79rt9ENxoy2SyZCSx1O5a6zpXfUVBk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/account\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-07 21:21:42'),('z5bCl862MhGqy9A4j2bN174jj2NJ9lsIiSD3XCvd','{\"languageActive\":\"English\",\"_token\":\"bfgcgm6hXY79rt9ENxoy2SyZCSx1O5a6zpXfUVBk\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-07 21:43:24'),('h9fohrJZ4tasMbj26MHF4KPv3bORsPzvAfXNPytN','{\"languageActive\":\"English\",\"_token\":\"WxqmQDEQMYyoeQZFX7PSl7cQcOmQw2yUQitUBYnf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/banner\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"}}','2018-03-08 22:01:36'),('P0GStZqxSmoNH43YMDhjTAZw0TRWdsFeE12qdofa','{\"languageActive\":\"English\",\"_token\":\"qBcyMAXdVbyQlbwtygrTre4bwSUAsKBsfoJlPNxJ\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1}','2018-03-09 08:58:49'),('FK05VdgLsAxLRUfji7RM4YjeqNBZzZ6Si7ChzSpX','{\"languageActive\":\"English\",\"_token\":\"hylBIicB6IQ71qOP2cFLMePagWKtDK5JkDUnHUXT\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/product\\/category_product\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-03-09 23:25:38'),('NTiRo8Nt9uNBrxN2snCp5qMWvMJ36ZbbrZ3DnXgq','{\"languageActive\":\"English\",\"_token\":\"mcgflRCCBFXnbFX3bCO3gr3Er1IyeLTZRkKs1Br4\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-09 21:45:05'),('1CduVL4h4PoZK6tIA2s7BAdQ7waFup7emF6IH8Za','{\"languageActive\":\"English\",\"_token\":\"ujmcMa54l3YF8WJNyKETcHgyy7dcBr1YvflilMI1\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-09 21:45:05'),('VXUafv3YtVN3Xm6nEeX6AnhLgADhgDFPmGCEdF1k','{\"languageActive\":\"English\",\"_token\":\"BT1As7rg9VLk7LezOLUO4zGSquDzjlzxHLtGivql\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-09 23:01:59'),('WmZXrYg7gMxpVflno2r2rgIraXr6tnhxZK2DwCMt','{\"languageActive\":\"English\",\"_token\":\"VRvRppKKaW6aRbsdcimeOx5Wjg0IjS4agi7keDDC\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-09 23:01:59'),('2zMwcBLNfqIuoH1rgiaZslApqEU7d4rgtL4D2rPq','{\"languageActive\":\"English\",\"_token\":\"KG1a0TcDBpteP2QyWqS367I5HFWtrbWSBRHNWIB9\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-09 23:02:08'),('HrMfZBcBmdLBIwjIhV56ep8TLcjT3eNAZdQY3aVK','{\"languageActive\":\"English\",\"_token\":\"8LDYIMw29GRbBBv6ozOpPvr7y8In64zA3oOoELaY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-09 23:02:09'),('VfrqcaqUtwQ50iyfgOrJzMMnI6Z6UqHPGOZ2PTP0','{\"languageActive\":\"English\",\"_token\":\"aUvhBixpJKAQAKASeggrMJVWeJZSbcwpICopCrnh\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/product\\/product_detail\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 11:06:47'),('xUcYbXoIdRhgpf5hM69rFHEp2n2b4Tx7kBxpS2vR','{\"languageActive\":\"English\",\"_token\":\"aUvhBixpJKAQAKASeggrMJVWeJZSbcwpICopCrnh\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/cartview\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 11:47:22'),('rVndmQqQ8wL03n4S0zzL4Fl8LkPthoqASHn5NRIk','{\"languageActive\":\"English\",\"_token\":\"aUvhBixpJKAQAKASeggrMJVWeJZSbcwpICopCrnh\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/cartview\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 11:47:38'),('38tQkbMM0RscZ65Z19dmbWp3IJ7waubcHwHm2DYD','{\"languageActive\":\"English\",\"_token\":\"aUvhBixpJKAQAKASeggrMJVWeJZSbcwpICopCrnh\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/cartview\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/account\\/check_authorize\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en\",\"locale\":\"en_US\",\"login_account_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3}','2018-03-10 11:58:36'),('N4pOelgJv1LItBwAqxBWMJsEMyQtt4eB3M1JHWpl','{\"languageActive\":\"English\",\"_token\":\"9SstfJMeeZiV5gcYhcnmaoYPcH74K1PhLHhz4MUn\",\"applangId\":\"en\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/api\\/detail\\/29\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/cartview\"}}','2018-03-10 18:21:17'),('5ZqeYxfEqolJZ19KidhcFDmWbRJVPXH6dsC23oX5','{\"languageActive\":\"English\",\"_token\":\"G9KkbQOsQuJeZfTRvriyWl9fakvNWvdDlizDJaEq\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 12:20:44'),('gBq5bm7VNqhx86tGwWuvzqMbGFN3nHQPaY7c2GzP','{\"languageActive\":\"English\",\"_token\":\"EuJw0Ba3oL8bD7CpcQL4cxFM49t5CD3M5wSXaW5w\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 12:20:44'),('S4gVFagSqH1TO5LvwSSskL5NRlzstHKg8CHWQRwD','{\"languageActive\":\"English\",\"_token\":\"9XUem5Szfms5bocyLwnC8MlNlIB36DveKdZKQT8w\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 13:23:39'),('LvCy0j4dqGH6gxOv9uaJVTzlbT52sHgdGw4gQkqK','{\"languageActive\":\"English\",\"_token\":\"MVj6oQZjMiJ28rOlKMhAFYGX71nHXFM7dMOgkx7T\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 13:23:39'),('2h6Ht0BDyDHRfH48WgJhbbC1osu4Zd2Se9WW0Gi6','{\"languageActive\":\"English\",\"_token\":\"wIZA6HQQKHokHzqmOzdlaxjfMNKPXebjzGjFL1xq\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 13:54:59'),('pIzlwh6GoxQ5SoQqYDfDB2BPBAHLTRc9kCAkYYH0','{\"languageActive\":\"English\",\"_token\":\"64fu0yqDvM6PGMiQq5HWmgKHAt5ZMrC7jH2BdOxN\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 13:54:59'),('ZPSqpPddkS3ZwooWag9cTWmBHg9RU11WqGYCTCls','{\"languageActive\":\"English\",\"_token\":\"5ytHJQv3w5cM9MjkRtdW9YaMy3xs4z2eBauiykxn\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 14:04:00'),('FsmkCCDO5R7z29TK7qcmePmEcpWMLzRW9N4ndjdw','{\"languageActive\":\"English\",\"_token\":\"7nVbFQ25TTeAOfNInQ1oBnIZDY1Ly41w2TbETViJ\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 14:04:00'),('B75omNF1NtoSDrob7gL2d39C7kADjvIZQA2VyYk0','{\"languageActive\":\"English\",\"_token\":\"SpnsYyJVezDy6sFajAdluJ52KXd5JjGJKt4agHMi\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 14:11:23'),('0WUP1ufwwfy03PFIiYeR2nq58X4XI6dSnTp4RpfG','{\"languageActive\":\"English\",\"_token\":\"tU1OGC3FbiNB2u2ZnhsS5fIaMja7e5FvKkBGhGEz\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 14:11:23'),('2zbSQTrV848lF819po0iGETo2f0fRHTzdrdaAQgz','{\"languageActive\":\"English\",\"_token\":\"IsjEuTdWXnvwSr9fWiuQMfnMGdtI38w1tbFILkVz\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:17:36'),('11ffPpKvc4baxKi26gHkU8BTEP92fFPRVWSYQRnx','{\"languageActive\":\"English\",\"_token\":\"1j6go2tYqLvwQxmGuPmNJt06viHSDAswNQOs9suV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:17:36'),('16kzOGPKRGB6WZdwlhlcVynRAJShRPbduMns27cd','{\"languageActive\":\"English\",\"_token\":\"WDbUqRJ5uwbNYf6X1TGYiyrk44YxjFQeP8ESUl6C\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:17:55'),('DQPxzOnZnOBRsF1ZxH4htE9pyTV8SISPweIp8hjU','{\"languageActive\":\"English\",\"_token\":\"SDHVY2TYapersuKawAoHFTdiHVfyKz2mA1cg4qBa\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:17:56'),('dagRrEBmveB7kScKZDgFIp9y5VLLXiCWY7SCBcuR','{\"languageActive\":\"English\",\"_token\":\"9PMsfyfJ0y6wdKSHwseNcH1r9sGrz9PJRLk6eOxV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/js\\/vuetify.js.map\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/cartview\"}}','2018-03-10 15:45:20'),('MzeJlHtBc9sNIngkalHN1hHOEDixfeCzm0p9LcDy','{\"languageActive\":\"English\",\"_token\":\"wclUqJUi8IZS9mstU7ljmlvQKOHamu4FOSl6Zxv8\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:45:31'),('ctZuFTtAHFczpg9OiHKEkkj2G2onrdoE0VruQYs9','{\"languageActive\":\"English\",\"_token\":\"U34QLVbtV6dtVOv5Wd4OTPxs2iraMwNk54K4J8nd\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:45:31'),('XpOPysoKabQirqNsszJmcXNXSm4GU5R7e8NTdmsw','{\"languageActive\":\"English\",\"_token\":\"dbfh1Lik0MWN1qNJB3lL3CyzY9wQz06KLj9ut0kc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:45:44'),('zkSilMrtxDSEk1q2o2SflQmIbPz1RmFqTyadGRtU','{\"languageActive\":\"English\",\"_token\":\"f71qv7B7sNKkRHqNkf2lKJpipSG6C2YqOyHJHhbD\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:45:44'),('7MAII173k9sgHGPc8cJuB7QlrmjtwW2kIXEbDICu','{\"languageActive\":\"English\",\"_token\":\"blcXLxAOkkCYMrsCNYFFYj9YVDkLUZfPQGraYMiA\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:46:42'),('RxNEqpHYeyXEa19SjrUFLgErICwFn9iCkv2cYrQx','{\"languageActive\":\"English\",\"_token\":\"q65UjCwuXFuFBlw6HDS68kaIx2Rtqs0ZQdrCJ5rG\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:46:42'),('TKkCDsz08ay31jsQwM32kgR3r8cfxENjUUL6OpkJ','{\"languageActive\":\"English\",\"_token\":\"5DwiiIkn6J74nUwWfGyGuUtlqzphsYkMMb6yL1m1\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:47:29'),('3qNaBXVZuh9opRX3opuzQmEmfr7SIWlGYMuqDu6y','{\"languageActive\":\"English\",\"_token\":\"0seaDVofAOOvRMfX2nhCkXIcGWEE4ptjZfxCDtYA\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:47:29'),('lZquUdbFmx8qcztoigKp2WRmXd3MJATxFpDer6wb','{\"languageActive\":\"English\",\"_token\":\"d9569UaxvwZsfpRS1bwryy17xRrTqaZjqhwKuUBc\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:48:18'),('y99wVoybZwBGSRkiwXSnc5HOamSQpSOvLZJ6XwcU','{\"languageActive\":\"English\",\"_token\":\"CiAyqei7wR9RGUvbjrlLRelsTzlH3snSsDqWR6R9\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:48:19'),('7stAUkr63EG7jyXkYKlYWml1gvpq6SD14lSwOTbg','{\"languageActive\":\"English\",\"_token\":\"3FXJzvnZZRXeAxovoLbqfqzUjCWNcBuvTRvEmzm4\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:48:34'),('gYEqdhNlUmT8PggeLmlBLHW6lwY6di0JCsDqWNju','{\"languageActive\":\"English\",\"_token\":\"L43IylzbXNd0lINU2X9PzPWeZHtiI7RGPzp2wgEe\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:48:35'),('KRKo1Kra4oRd39Da6TfXqdvWfisZadV74GceFW1g','{\"languageActive\":\"English\",\"_token\":\"FK7zYhpvTMFcUyQguvRMFNrzLIlE7RUOxsfIQJ16\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:50:04'),('oVIv2URyxPPjiIyIEA1WPdA1lCQnDql97XeC7vvd','{\"languageActive\":\"English\",\"_token\":\"JtdMUlwBi91JEZhx6nIP9zOlNKiXdqPuPm7Cviht\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:50:04'),('aQbh3Yrg4ZqrVrBVgzFf06QX5LpjroVf6zs7Dltv','{\"languageActive\":\"English\",\"_token\":\"E4RnfeZWBXSh3NvUsVAhmF1oLACYWNmxFan649kj\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:50:15'),('s8EVPUyzNPwiM3cy9ybkWsZCYW1nvqGmLtgD1h5P','{\"languageActive\":\"English\",\"_token\":\"Gdkqmf0dIJSJaDMZ4Hhi1Yz2dHIzTwmopIJlGXIV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 15:50:15'),('etyiU8RsB3oUHjn3wGlM21gC0uHiLf4uUJuMFNuE','{\"languageActive\":\"English\",\"_token\":\"qxLM1UdldyDErOCKPsUk1iqltMdUNUct53Jm2D3P\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 16:26:37'),('xcdNgze02GL5YC2f7tOdRSulpIeayDUcEeZ7obZZ','{\"languageActive\":\"English\",\"_token\":\"XSnjf3J9fzhw2NPDNG2OhAB67iA3xOEw99nvNAqC\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 16:26:37'),('tBXyGaJCQeWThu6xEVcBIuvvu3qFPa1rDkVYBnAY','{\"languageActive\":\"English\",\"_token\":\"WBA0Y2M5zN5AFZbbjdTGCZk049vPrBvXWivjg04v\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 16:27:15'),('oTBOXXHODCxCKBU3SEf7G19z3X2yvPDAnAawzBHG','{\"languageActive\":\"English\",\"_token\":\"VeFQoCtQILRiamXd4iFjkdSjALw0CPczOqLsD1ut\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 16:27:15'),('WtwDCDdxfY5AKOoql5Tffzuw0vGXDxIvUhUTgqWU','{\"languageActive\":\"English\",\"_token\":\"JeNMJME0t03dEl92oSJZ3zdW110lfZDRt2vU8Q0k\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 17:54:38'),('CRRDpeSH1ZWeCMTQJF5Vdjqx5FgRkTwcIAiBVbNU','{\"languageActive\":\"English\",\"_token\":\"fBxabfGtRdckoq4bYCVag3p7Ec5O0Dd8cKoxEqWV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 17:54:39'),('XQkWfuDxcbcMQHzgiz8nCXJ7UulILXTAg3JBO1da','{\"languageActive\":\"English\",\"_token\":\"WyGvpwcKHSILSTGTfOQWUDbpLzi00GrFGYRfSudS\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 17:55:05'),('9TlPsUebxVVEPQmQJw1bub3GzeQWrwH1MQDsJQhk','{\"languageActive\":\"English\",\"_token\":\"3BJAGrZff0vqgUA7mp742jtxCb94SptwLewOsozT\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 17:55:05'),('LpeluNkNP95ZDhc9C9fbhQmBFJrYSbWvmeZPgkn4','{\"languageActive\":\"English\",\"_token\":\"yKDlyCBD8kSaqPgn6opooZfzcwW7f9eUrRfFDk4L\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 17:55:11'),('xIXxMPmDINDo6cAmh4nVNReiZ4d2goybHbZeQvwg','{\"languageActive\":\"English\",\"_token\":\"uGHKCqx5ushsGkQHrj6SfAFgkjf0wSdtACbAm15D\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 17:55:12'),('Br2hjsXVfhbDGi1M8aSzuCGGOCqiS93LCQzpoJoz','{\"languageActive\":\"English\",\"_token\":\"grobAVahKME18nMAjrp3MYEw9Tli5YRpISJhRoGs\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 18:01:42'),('NBWqAoE0yrQEIy529zKeENn2RwMyOkUg0rsGQH5W','{\"languageActive\":\"English\",\"_token\":\"AH8BmBeMMvTbA1Va5GveHhJHMO2w4m5UakbNFvGw\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 18:01:42'),('0tdmUqXUT3K8OFabdkuCxF1frHyZTPLABnbO5cna','{\"languageActive\":\"English\",\"_token\":\"g8e1KSDsJ0e4vGcbz3lRA9kzlOnEHxxF837Mrdvp\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 18:02:04'),('5oTzivU79eZh8gxYhnZHSLXjB9WGH80RZJSChPwV','{\"languageActive\":\"English\",\"_token\":\"3NfsRR6oxUgTv4t0xjWbRFj16XELObgtd7J2YoTf\",\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-10 18:02:05'),('pRsZiXmt2Fq1XBvf5Sw8Wvcdxxk2TUTH4bBEBgTK','{\"languageActive\":\"English\",\"_token\":\"QtEHt6fd9PWjx0E9NWDKptSUWCxT2QPdcC4f2LeY\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/product\\/product_detail\\/undefined\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/cartview\"}}','2018-03-10 22:59:54'),('5yQUu1jhkWINhH04nlcFaiBcBP1YXFIj2eXxkQjl','{\"languageActive\":\"English\",\"_token\":\"MBGME4flc24ISrEZuFf9Meb55uvbkIZho0kbemoK\",\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/admin\"},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/product\\/product_detail\\/assets\\/css\\/jquery.minimalect.min.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"applangId\":\"en-gb\",\"locale\":\"en_US\"}','2018-03-11 08:00:04'),('wORtpqmEwDE7E4vswTYiU3MkKZDqC7MfD37ofO2P','{\"languageActive\":\"English\",\"_token\":\"3vkAN65Bnp2glJ4dtcv3N5LwChIA0XMBZKr3BHHV\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/product\\/category_product\\/assets\\/css\\/ion.checkRadio.cloudy.css\"},\"_flash\":{\"old\":[],\"new\":[]},\"url\":{\"intended\":\"http:\\/\\/localhost:8000\\/account\\/cartview\"}}','2018-03-11 20:02:35'),('1IULKmSFVtlcSEhEyT4Nahe7ASIuK3ncxLP8HMwG','{\"languageActive\":\"English\",\"_token\":\"JRSjxhR81fmfQAnK0ukHGTFxzTjgV7pafVCBfJIX\",\"applangId\":\"en-gb\",\"locale\":\"en_US\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/product\\/product_detail\\/catalog\\/demo\\/ipod_touch_6.jpg\"},\"_flash\":{\"old\":[],\"new\":[]}}','2018-03-11 22:44:59'),('YzWkTnLFneO8cT9l3cDugBdqJKRiGv87DD7V8FuF','{\"languageActive\":\"English\",\"_token\":\"c0hndS71CyrZWNKAOUH6pIQxyU5OUmboUU8WA6lp\"}','2018-05-08 20:09:40'),('zPaSlkz3QgPg7WpwKgE4kqdpPt8DlTKzIOxgv7zL','{\"languageActive\":\"English\",\"_token\":\"wC18fTZ3Da8aBKhVC7ozHh8989BghqonV5DLnzwT\"}','2018-05-08 20:12:09');



/*Table structure for table `sg_setting` */



DROP TABLE IF EXISTS `sg_setting`;



CREATE TABLE `sg_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`,`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;



/*Data for the table `sg_setting` */



insert  into `sg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (406,1,'config','config_account_id','0',1),(407,1,'config','config_address','address',1),(408,1,'config','config_cart_weight','0',1),(409,1,'config','config_checkout_guest','0',1),(410,1,'config','config_checkout_id','0',1),(411,1,'config','config_comment','comment',1),(412,1,'config','config_country_id','0',1),(413,1,'config','config_currency','0',1),(414,1,'config','config_customer_group_id','0',1),(415,1,'config','config_customer_price','0',1),(416,1,'config','config_email','email',1),(417,1,'config','config_fax','0',1),(418,1,'config','config_geocode','0',1),(419,1,'config','config_icon','icon',1),(420,1,'config','config_image','image',1),(421,1,'config','config_language_id','0',1),(422,1,'config','config_language','en-gb',1),(423,1,'config','config_layout_id','0',1),(424,1,'config','config_logo','0',1),(425,1,'config','config_meta_description','0',1),(426,1,'config','config_meta_keyword','0',1),(427,1,'config','config_meta_title','0',1),(428,1,'config','config_name','0',1),(429,1,'config','config_open','0',1),(430,1,'config','config_order_status_id','0',1),(431,1,'config','config_owner','0',1),(432,1,'config','config_review_status','0',1),(433,1,'config','config_secure','0',1),(434,1,'config','config_ssl','0',1),(435,1,'config','config_stock_checkout','0',1),(436,1,'config','config_stock_display','0',1),(437,1,'config','config_store_id','16',1),(438,1,'config','config_tax','0',1),(439,1,'config','config_tax_customer','0',1),(440,1,'config','config_tax_default','0',1),(441,1,'config','config_theme','defult',1),(442,1,'config','config_url','http://35.185.191.11:8081',1),(443,1,'config','config_zone_id','588',1);



/*Table structure for table `sg_shipping_courier` */



DROP TABLE IF EXISTS `sg_shipping_courier`;



CREATE TABLE `sg_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_shipping_courier` */



insert  into `sg_shipping_courier`(`shipping_courier_id`,`shipping_courier_code`,`shipping_courier_name`) values (1,'dhl','DHL'),(2,'fedex','Fedex'),(3,'ups','UPS'),(4,'royal-mail','Royal Mail'),(5,'usps','United States Postal Service'),(6,'auspost','Australia Post'),(7,'citylink','Citylink');



/*Table structure for table `sg_statistics` */



DROP TABLE IF EXISTS `sg_statistics`;



CREATE TABLE `sg_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



/*Data for the table `sg_statistics` */



insert  into `sg_statistics`(`statistics_id`,`code`,`value`) values (1,'order_sale','0.0000'),(2,'order_processing','0.0000'),(3,'order_complete','0.0000'),(4,'order_other','0.0000'),(6,'product','0.0000'),(7,'review','0.0000');



/*Table structure for table `sg_stock_status` */



DROP TABLE IF EXISTS `sg_stock_status`;



CREATE TABLE `sg_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;



/*Data for the table `sg_stock_status` */



insert  into `sg_stock_status`(`stock_status_id`,`language_id`,`name`) values (7,1,'In Stock'),(8,1,'Pre-Order'),(21,1,'status12');



/*Table structure for table `sg_store` */



DROP TABLE IF EXISTS `sg_store`;



CREATE TABLE `sg_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  `is_default` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`store_id`,`name`,`url`,`is_default`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;



/*Data for the table `sg_store` */



insert  into `sg_store`(`store_id`,`name`,`url`,`ssl`,`is_default`) values (1,'Bakou Store','http://35.185.191.11:8081','http://35.185.191.11:8081',0);



/*Table structure for table `sg_supplier` */



DROP TABLE IF EXISTS `sg_supplier`;



CREATE TABLE `sg_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `website` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT '0',
  `address` longtext,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;



/*Data for the table `sg_supplier` */



insert  into `sg_supplier`(`supplier_id`,`image`,`firstname`,`lastname`,`website`,`email`,`telephone`,`fax`,`newsletter`,`address`,`status`,`date_added`) values (14,NULL,'KK22','KK','http://www.google.com','supplier','242','234232',0,'address2',1,'2017-02-02 00:00:00'),(15,NULL,'sineth','sim','http://www.google.com','simsine@fs.com','23408','234234',0,'address',1,'2018-10-02 11:51:22'),(16,NULL,'sineth','sim','http://sineth.com','test@sineth.com','081397071','08122222',0,'address',1,'2018-10-02 11:54:54'),(17,NULL,'sinet','sim','wesite','simsetin@sin.com','23423','234',0,'sss',1,'2018-10-07 05:19:01'),(18,NULL,'sinet','sim','wesite','simsetin@sin.com','23423','234',0,'sss',1,'2018-10-07 05:20:02');



/*Table structure for table `sg_supplier_to_store` */



DROP TABLE IF EXISTS `sg_supplier_to_store`;



CREATE TABLE `sg_supplier_to_store` (
  `supplier_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_supplier_to_store` */



insert  into `sg_supplier_to_store`(`supplier_id`,`store_id`) values (19,1),(14,1),(18,1),(20,2),(20,1);



/*Table structure for table `sg_tax_class` */



DROP TABLE IF EXISTS `sg_tax_class`;



CREATE TABLE `sg_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;



/*Data for the table `sg_tax_class` */



insert  into `sg_tax_class`(`tax_class_id`,`title`,`description`,`date_added`,`date_modified`) values (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2018-09-23 00:00:00'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2018-09-17 00:00:00');



/*Table structure for table `sg_tax_rate` */



DROP TABLE IF EXISTS `sg_tax_rate`;



CREATE TABLE `sg_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;



/*Data for the table `sg_tax_rate` */



insert  into `sg_tax_rate`(`tax_rate_id`,`geo_zone_id`,`name`,`rate`,`type`,`date_added`,`date_modified`) values (86,4,'VAT (20%)','30.0000','M','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');



/*Table structure for table `sg_tax_rate_to_customer_group` */



DROP TABLE IF EXISTS `sg_tax_rate_to_customer_group`;



CREATE TABLE `sg_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_tax_rate_to_customer_group` */



insert  into `sg_tax_rate_to_customer_group`(`tax_rate_id`,`customer_group_id`) values (86,1),(87,1);



/*Table structure for table `sg_tax_rule` */



DROP TABLE IF EXISTS `sg_tax_rule`;



CREATE TABLE `sg_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;



/*Data for the table `sg_tax_rule` */



insert  into `sg_tax_rule`(`tax_rule_id`,`tax_class_id`,`tax_rate_id`,`based`,`priority`) values (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);



/*Table structure for table `sg_test` */



DROP TABLE IF EXISTS `sg_test`;



CREATE TABLE `sg_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_test` */



insert  into `sg_test`(`id`,`name`) values (1,'test1'),(2,NULL);



/*Table structure for table `sg_theme` */



DROP TABLE IF EXISTS `sg_theme`;



CREATE TABLE `sg_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_theme` */



/*Table structure for table `sg_translation` */



DROP TABLE IF EXISTS `sg_translation`;



CREATE TABLE `sg_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_translation` */



/*Table structure for table `sg_upload` */



DROP TABLE IF EXISTS `sg_upload`;



CREATE TABLE `sg_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_upload` */



/*Table structure for table `sg_url_alias` */



DROP TABLE IF EXISTS `sg_url_alias`;



CREATE TABLE `sg_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1330 DEFAULT CHARSET=utf8;



/*Data for the table `sg_url_alias` */



/*Table structure for table `sg_user_backup` */



DROP TABLE IF EXISTS `sg_user_backup`;



CREATE TABLE `sg_user_backup` (
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



/*Data for the table `sg_user_backup` */



insert  into `sg_user_backup`(`user_id`,`user_group_id`,`username`,`password`,`salt`,`firstname`,`lastname`,`email`,`image`,`code`,`ip`,`status`,`date_added`) values (1,1,'adminss','44070dd6d38aec2a57dd54170a53a6141d7cabc9','0Y3pe4Cx4','John','Doe','sreyleakyem@hotmail.com','','ss','127.0.0.1',1,'2017-11-20 14:03:44');



/*Table structure for table `sg_user_group` */



DROP TABLE IF EXISTS `sg_user_group`;



CREATE TABLE `sg_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `group_type` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '1: user interface backend-admin, 2: user interface reseller, 3: user interface customer',
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



/*Data for the table `sg_user_group` */



insert  into `sg_user_group`(`user_group_id`,`name`,`group_type`,`permission`) values (1,'Administrator','1','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}'),(2,'Supplier','1',''),(3,'Accountant','1',''),(4,'Carriers','1',''),(5,'Reseller','2',''),(6,'Customer','1','');



/*Table structure for table `sg_users` */



DROP TABLE IF EXISTS `sg_users`;



CREATE TABLE `sg_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(5) NOT NULL,
  `firstname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `company` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` text COLLATE utf8mb4_unicode_ci,
  `address_2` text COLLATE utf8mb4_unicode_ci,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`username`,`password`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



/*Data for the table `sg_users` */



insert  into `sg_users`(`id`,`user_group_id`,`firstname`,`lastname`,`gender`,`dob`,`company`,`website`,`owner`,`address_1`,`address_2`,`username`,`email`,`email_2`,`password`,`telephone_1`,`telephone_2`,`country`,`province`,`city`,`code`,`image`,`status`,`remember_token`,`date_added`,`updated_at`) values (1,1,'admin1','admin2','M',NULL,'company','website1','Bakou','address1','address2','admin@admin.com','admin@admin.com','secondary@gmail.com','$2y$10$1j9psArk1IDVu2dV6DQ7B.DMWW/KjgZN.jslM9EM5QFwyDYJbVsA2','012 222 2223','012 222 2224','Cambodia5','Kompong Speu6','Phnom Pneh7','1228','http://localhost:8000/images/uploads/11-Oct-2018/0OSZ6mGn2Z.png',1,'rBiyEmNCW7FjH9opjeCZFX6hVUu3kjwz9JlHPsR3adDl5mzL7uvtRSACqlqs','2017-02-02 00:00:00',NULL),(239,6,'sineth','sim','M',NULL,NULL,NULL,NULL,NULL,NULL,'sim_sineth@ymail.com','sim_sineth@ymail.com',NULL,'$2y$10$qmtLNIV9cqZBUfnryIZyOO31C/eMSQsj2StvF7l5jiyJQb27jn2/S','34234',NULL,NULL,NULL,NULL,NULL,'http://localhost:8000/images/uploads/11-Oct-2018/8KQEYJGbzw.png',1,NULL,NULL,NULL),(240,5,'firstname','lastname','M',NULL,'company 1','http://test.localhost:81/reseller1',NULL,'address_1','address_2','reseller@gmail.com','reseller@gmail.com','email2@mail.com','$2y$10$EpgHkfF5qMfxJBdpSyQYju5u9nSm3HK1A6h3SKXJiuBqOliwSMDvu','123456789','123456789',NULL,NULL,NULL,'123',NULL,1,'8W46IHNTdCDimkYjjG8TQhGwA4msg2FxpCFOLPBQzVlfSb4DTZTVOJ8LqyvG',NULL,NULL),(241,6,'sineth','sim','M',NULL,NULL,NULL,NULL,NULL,NULL,'username','simsineth855@gmail.com',NULL,'$2y$10$JmHfx2Elh9IMhGR/yZ4p4uxZxhu4hbG8.m83.MFpFZqQtO30HCel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(242,1,'sineth','sim',NULL,NULL,'company','website',NULL,'address1','address2','sineth@sineth.com','sims@sf.com','adfl@sdfl.com','cambodia','2340','34024802','cambodia','province','city','2343','http://localhost:8000/images/uploads/11-Oct-2018/a29ITGD1xp.png',1,NULL,NULL,NULL);



/*Table structure for table `sg_v_shipment_detail` */



DROP TABLE IF EXISTS `sg_v_shipment_detail`;



CREATE TABLE `sg_v_shipment_detail` (
  `order_no` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipping_courier_id` int(11) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `invoice_prefix` varchar(78) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_name` varchar(192) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_url` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `firstname` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(288) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field` text COLLATE utf8_unicode_ci,
  `payment_firstname` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_lastname` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_company` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_address_1` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_address_2` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_city` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_postcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_country` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_country_id` int(11) DEFAULT NULL,
  `payment_zone` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_zone_id` int(11) DEFAULT NULL,
  `payment_address_format` text COLLATE utf8_unicode_ci,
  `payment_custom_field` text COLLATE utf8_unicode_ci,
  `payment_method` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_code` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_firstname` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_lastname` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_company` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_1` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_2` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_postcode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country_id` int(11) DEFAULT NULL,
  `shipping_zone` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zone_id` int(11) DEFAULT NULL,
  `shipping_address_format` text COLLATE utf8_unicode_ci,
  `shipping_custom_field` text COLLATE utf8_unicode_ci,
  `shipping_method` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_code` varchar(384) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `total` decimal(17,0) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `commission` decimal(17,0) DEFAULT NULL,
  `marketing_id` int(11) DEFAULT NULL,
  `tracking` varchar(192) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_code` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(17,0) DEFAULT NULL,
  `ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forwarded_ip` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accept_language` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `order_status` varchar(96) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_courier_name` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_shipment_id` int(11) DEFAULT NULL,
  `recipient` varchar(195) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_v_shipment_detail` */



/*Table structure for table `sg_weight_class` */



DROP TABLE IF EXISTS `sg_weight_class`;



CREATE TABLE `sg_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



/*Data for the table `sg_weight_class` */



insert  into `sg_weight_class`(`weight_class_id`,`value`) values (1,'1.00000000'),(2,'1000.00000000'),(5,'2.20460000'),(6,'35.27400000');



/*Table structure for table `sg_weight_class_description` */



DROP TABLE IF EXISTS `sg_weight_class_description`;



CREATE TABLE `sg_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `sg_weight_class_description` */



insert  into `sg_weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound','lb'),(6,1,'Ounce','oz');



/*Table structure for table `sg_zone` */



DROP TABLE IF EXISTS `sg_zone`;



CREATE TABLE `sg_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;



/*Data for the table `sg_zone` */



insert  into `sg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Niederösterreich','NOS',1),(202,14,'Oberösterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-Württemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Thüringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Puducherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'Kalimantan Utara','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord-Brabant','NB',1),(2336,150,'Noord-Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid-Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'Gävleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'Jämtland','Z',1),(3080,203,'Jönköping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'Örebro','T',1),(3085,203,'Östergötland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'Södermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'Värmland','S',1),(3091,203,'Västerbotten','AC',1),(3092,203,'Västernorrland','Y',1),(3093,203,'Västmanland','U',1),(3094,203,'Västra Götaland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graubünden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Zürich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Dhabi','ADH',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1),(4231,99,'Telangana','TS',1),(4232,44,'Qinghai','QH',1),(4233,100,'Papua Barat','PB',1),(4234,100,'Sulawesi Barat','SR',1),(4235,100,'Kepulauan Riau','KR',1),(4236,105,'Barletta-Andria-Trani','BT',1),(4237,105,'Fermo','FM',1),(4238,105,'Monza Brianza','MB',1);



/*Table structure for table `sg_zone_shop` */



DROP TABLE IF EXISTS `sg_zone_shop`;



CREATE TABLE `sg_zone_shop` (
  `zone_id` int(11) unsigned NOT NULL,
  `shop_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`,`shop_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*Data for the table `sg_zone_shop` */



/*Table structure for table `sg_zone_to_geo_zone` */



DROP TABLE IF EXISTS `sg_zone_to_geo_zone`;



CREATE TABLE `sg_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;



/*Data for the table `sg_zone_to_geo_zone` */



insert  into `sg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

