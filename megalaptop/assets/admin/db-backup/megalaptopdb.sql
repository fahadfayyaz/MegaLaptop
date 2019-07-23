/*
Navicat MySQL Data Transfer

Source Server         : Local Connection
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : megalaptopdb

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-13 19:48:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `afa110_brand`
-- ----------------------------
DROP TABLE IF EXISTS `afa110_brand`;
CREATE TABLE `afa110_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `brand_img` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `meta_description` text,
  `meta_keyword` varchar(100) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of afa110_brand
-- ----------------------------
INSERT INTO `afa110_brand` VALUES ('1', '02/12/2017', 'DELL', 'dell', '1a1aaef77e6afa0a8c8cf647dd75af29.jpg', 'ACTIVE', 'Dell brand ', 'dell,brand,laptop', '2018-03-06 20:28:09');
INSERT INTO `afa110_brand` VALUES ('2', '02/12/2017', 'HP', 'hp', '26d5b46df3685316c87365429fd2f3bd.png', 'ACTIVE', 'HP Brand', 'hp,brand,laptop', '2018-03-06 20:28:09');
INSERT INTO `afa110_brand` VALUES ('3', '02/12/2017', 'APPLE', 'apple', '34c43e687308003625ba65eefc5eccdf.jpg', 'ACTIVE', 'APPLE brand', 'Apple ,brand,laptop', '2018-03-06 20:28:09');
INSERT INTO `afa110_brand` VALUES ('4', '02/12/2017', 'ACER', 'acer', 'ea16a76f1ca499b425b7155d21d7f640.png', 'ACTIVE', 'Acer brand', 'acer,brand,laptop', '2018-03-06 20:28:09');
INSERT INTO `afa110_brand` VALUES ('5', '02/12/2017', 'ASUS', 'asus', 'd66802d4736bb17c9e39013e10fbb649.jpg', 'ACTIVE', 'ASUS', 'asus,brand', '2018-03-06 20:28:09');
INSERT INTO `afa110_brand` VALUES ('6', '02/12/2017', 'TOSHIBA', 'toshiba', '041264de5721491fa3b31919a4d9134f.png', 'ACTIVE', 'Toshiba Brand laptop', 'Toshiba,laptop,brand', '2018-03-06 20:28:09');
INSERT INTO `afa110_brand` VALUES ('7', '02/12/2017', 'LENOVO', 'lenovo', '073d82a98d4bd30f0ee73c275ef6886e.jpg', 'DEACTIVE', 'LENOVO brand\r\n', 'LENOVO,brand,laptop', '2018-03-06 20:37:00');

-- ----------------------------
-- Table structure for `afa110_media`
-- ----------------------------
DROP TABLE IF EXISTS `afa110_media`;
CREATE TABLE `afa110_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(255) DEFAULT NULL,
  `media_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `embed_code` text,
  `media_img` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of afa110_media
-- ----------------------------
INSERT INTO `afa110_media` VALUES ('1', '02/12/2017', 'Slideshow', 'DELL Slider 1', 'dell-slider-1', '', '', '1211e25002829d90d8cc9656fe044569.jpg', 'ACTIVE', '', '', '2019-01-07 20:00:36');
INSERT INTO `afa110_media` VALUES ('2', '02/12/2017', 'Slideshow', 'DELL Slider 2', 'dell-slider-2', '', '', '03d082d713ceb830bff9efbb5d72e46f.jpg', 'ACTIVE', '', '', '2019-01-07 20:00:36');
INSERT INTO `afa110_media` VALUES ('3', '02/12/2017', 'Slideshow', 'DELL Slider 3', 'dell-slider-3', '', '', '25fa01b38be101421206de01f5932bfa.jpg', 'ACTIVE', '', '', '2019-01-07 20:00:36');
INSERT INTO `afa110_media` VALUES ('4', '02/12/2017', 'Slideshow', 'HP slider 1', 'hp-slider-1', '', '', '1b5582a747b49703f7aa9e022d96f4eb.jpg', 'ACTIVE', '', '', '2019-01-07 20:00:36');
INSERT INTO `afa110_media` VALUES ('5', '02/12/2017', 'Slideshow', 'HP slider 2', 'hp-slider-2', '', '', '4c6d5bf2255fc2c5a78454d4a1f917ec.JPG', 'ACTIVE', '', '', '2019-01-07 20:00:36');
INSERT INTO `afa110_media` VALUES ('6', '02/12/2017', 'Slideshow', 'HP slider 3', 'hp-slider-3', '', '', 'f64c97509d74dfd17f90043aa2309391.jpg', 'ACTIVE', '', '', '2019-01-07 20:00:36');

-- ----------------------------
-- Table structure for `afa110_member`
-- ----------------------------
DROP TABLE IF EXISTS `afa110_member`;
CREATE TABLE `afa110_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `hash_key` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of afa110_member
-- ----------------------------
INSERT INTO `afa110_member` VALUES ('1', '11-02-2017', 'Ayaz Ahmed Mast', 'Pakistan', 'Karachi', 'ayzeetech@gmail.com', 'Karachi123@', null, 'Active', '2017-02-11 17:10:28');
INSERT INTO `afa110_member` VALUES ('2', '11-02-2017', 'Yaseen Rasheed', 'Pakistan', 'Karachi', 'yaseenustar@gmail.com', 'Karachi123@', '', 'Active', '2017-02-11 17:11:58');
INSERT INTO `afa110_member` VALUES ('3', '11-02-2017', 'Umair Rafique', 'Pakistan', 'Karachi', 'umairrafique97@gmail.com', 'Karachi123@', '', 'Active', '2017-02-11 17:12:10');
INSERT INTO `afa110_member` VALUES ('4', '11-02-2017', 'Asim Saleem', 'Pakistan', 'Karachi', 'asim.saleem.memon124@gmail.com', 'Karachi123@', '', 'Active', '2017-02-11 17:12:24');
INSERT INTO `afa110_member` VALUES ('5', '11-02-2017', 'Bazil Iqbal', 'Pakistan', 'Karachi', 'baziliqbal786@gmail.com', 'Karachi123@', '', 'Active', '2017-02-11 17:13:49');
INSERT INTO `afa110_member` VALUES ('6', '11-02-2017', 'Mudasir Kalmati', 'Pakistan', 'Karachi', 'mudassirkalmati@gmail.com', 'Karachi123@', '', 'Active', '2017-02-11 17:13:08');
INSERT INTO `afa110_member` VALUES ('7', '11-02-2017', 'Shahzad Patni', 'Pakistan', 'Karachi', 'shahzadpatni83@gmail.com', 'Karachi123@', '', 'Active', '2017-02-11 17:13:22');
INSERT INTO `afa110_member` VALUES ('8', '12-02-2017', 'Bazil Iqbal', 'Pakistan', 'Karachi', 'baziliqbal01@gmail.com\r\n', 'Karachi123@', '', 'Active', '2017-02-12 09:20:02');

-- ----------------------------
-- Table structure for `afa110_product`
-- ----------------------------
DROP TABLE IF EXISTS `afa110_product`;
CREATE TABLE `afa110_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `product_condition` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `description` text,
  `product_img` varchar(100) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `meta_description` text,
  `meta_keyword` varchar(100) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of afa110_product
-- ----------------------------
INSERT INTO `afa110_product` VALUES ('1', '5', '02/12/2017', 'Asus GL522VW-CN457T 128GB Ci7 Laptop', 'asus-gl522vw-cn457t-128gb-ci7-laptop', 'SKU: 14517', 'New', '164999', 'The ROG GL552VW features a whopping 16GB of ultra fast DDR4 RAM providing more headroom for superior multitasking and gaming performance', '39b605c2106735c654173ad0ee75d355.jpg', '41', 'ACTIVE', 'The ROG GL552VW features a whopping 16GB of ultra fast DDR4 RAM providing more headroom for superior multitasking and gaming performance', 'Asus GL522VW-CN457T', '2019-01-24 17:32:21');
INSERT INTO `afa110_product` VALUES ('2', '5', '02/12/2017', 'ASUS ROG G752VT-GC131T Ci7 Laptop', 'asus-rog-g752vt-gc131t-ci7-laptop', 'SKU: 14511', 'New', '321999', 'The all new Republic of Gamers ROG G752 is here to show you the next evolution of mobile gaming featuring a revolutionary design finished in a new Armor Titanium and Plasma Copper color scheme', '2a4583205d2c7dbc64d6c1c1fecc9a91.jpg', '22', 'ACTIVE', 'The all new Republic of Gamers ROG G752 is here to show you the next evolution of mobile gaming featuring a revolutionary design finished in a new Armor Titanium and Plasma Copper color scheme', 'ASUS ROG G752VT-GC131T', '2018-03-15 20:51:34');
INSERT INTO `afa110_product` VALUES ('3', '5', '02/12/2017', 'Asus ZenBook UX303UA  Ci5 Laptop', 'asus-zenbook-ux303ua-ci5-laptop', 'SKU: 14296', 'New', '97999', 'The all new ASUS ZENBOOK UX303 combines class and power and brings it to a whole new level Featuring a Full HD display with 1920 x 1080 resolution the UX 303UA delivers stunning visuals in amazing detail At just 07 inch thin the UX 303UA is also power packed with an Intelï¿½ Coreï¿½ i5 processor for a silky smooth performance', '8ee39dbc508960731db2914206271170.jpg', '10', 'ACTIVE', 'The all new ASUS ZENBOOK UX303 combines class and power and brings it to a whole new level Featuring a Full HD display with 1920 x 1080 resolution the UX 303UA delivers stunning visuals in amazing detail At just 07 inch thin the UX 303UA is also power packed with an Intelï¿½ Coreï¿½ i5 processor for a silky smooth performance', 'Asus ZenBook UX303UA', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('4', '5', '02/12/2017', 'Asus NoteBook X556UF Ci7 Laptop', 'asus-notebook-x556uf-ci7-laptop', 'SKU: 14295', 'New', '78999', 'Most LED panels emit blue light the main cause of macular degeneration and retinal problems ASUS Eye Care mode effectively reduces blue light levels by up to 33% to make reading comfortable and to protect you from potential eye fatigue and other ailments', '28f6745be657924cee402788b2a71249.jpg', '5', 'ACTIVE', 'Most LED panels emit blue light the main cause of macular degeneration and retinal problems ASUS Eye Care mode effectively reduces blue light levels by up to 33% to make reading comfortable and to protect you from potential eye fatigue and other ailments', 'Asus NoteBook X556UF', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('5', '5', '02/12/2017', 'ASUS X556UJ Ci5 Laptop', 'asus-x556uj-ci5-laptop', 'SKU: 14291', 'New', '62999', 'Most LED panels emit blue light the main cause of macular degeneration and retinal problems ASUS Eye Care mode effectively reduces blue light levels by up to 33% to make reading comfortable and to protect you from potential eye fatigue and other ailments', '4bb2732c8fa33a9544c56a223c40806a.jpg', '8', 'ACTIVE', 'Most LED panels emit blue light the main cause of macular degeneration and retinal problems ASUS Eye Care mode effectively reduces blue light levels by up to 33% to make reading comfortable and to protect you from potential eye fatigue and other ailments', 'ASUS X556UJ', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('6', '5', '02/12/2017', 'Asus X555UA Ci5 Laptop', 'asus-x555ua-ci5-laptop', 'SKU: 14290', 'New', '54999', 'ASUS X Series laptops can be specced up to a Full HD (1920x 1080) resolution display With a pixel density of 141 pixels per inch (PPI) youll enjoy rich detailed images onscreen To ensure only the very best images exclusive ASUS Splendid Technology has color temperature correction to reproduce richer deeper colors It features four visuals modes which can be accessed with a single click', '71283d007a8b3cee6720970b24623d98.jpg', '5', 'ACTIVE', 'ASUS X Series laptops can be specced up to a Full HD (1920x 1080) resolution display With a pixel density of 141 pixels per inch (PPI) youll enjoy rich detailed images onscreen To ensure only the very best images exclusive ASUS Splendid Technology has color temperature correction to reproduce richer deeper colors It features four visuals modes which can be accessed with a single click', 'Asus X555UA', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('7', '5', '02/12/2017', 'ASUS ROG G752VL-BHI7N32 Ci7 Laptop', 'asus-rog-g752vl-bhi7n32-ci7-laptop', 'SKU: 13816', 'New', '153999', 'The 17.3â€³ new Republic of Gaming (ROG) G752VL series is a high-end gaming laptop PCs provides the gaming power you need with newly redesigned in a new Armor Titanium and Plasma Copper color scheme', '8c7d60b008e9df8775f284f2a3673862.jpg', '9', 'ACTIVE', 'The 17.3â€³ new Republic of Gaming (ROG) G752VL series is a high-end gaming laptop PCs provides the gaming power you need with newly redesigned in a new Armor Titanium and Plasma Copper color scheme', 'ASUS ROG G752VL-BHI7N32', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('8', '1', '02/12/2017', 'Dell Inspiron 5559 ci3 laptop', 'dell-inspiron-5559-ci3-laptop', 'SKU: 13548', 'New', '52999', 'The new Dell Inspiron 15 5559 is a Dell 5000 series laptop sporting a 15.6-inch HD display and loaded with Windows 8.1 OS. It is powered by the latest Intel 5th generation core i5 processor', '3933a799e288c0277d4c91151c968492.jpg', '22', 'ACTIVE', 'The new Dell Inspiron 15 5559 is a Dell 5000 series laptop sporting a 15.6-inch HD display and loaded with Windows 8.1 OS.', 'Dell Inspiron 5559', '2019-01-24 17:33:07');
INSERT INTO `afa110_product` VALUES ('9', '5', '02/12/2017', 'ASUS ROG G752VT-DH72 Ci7 Laptop', 'asus-rog-g752vt-dh72-ci7-laptop', 'SKU: 13815', 'New', '182999', 'The all new Republic of Gamers ROG G752 is here to show you the next evolution of mobile gaming featuring a revolutionary design finished in a new Armor Titanium and Plasma Copper color scheme', '207e4450f9088756c418d9f3d8474341.jpg', '7', 'ACTIVE', 'The all new Republic of Gamers ROG G752 is here to show you the next evolution of mobile gaming featuring a revolutionary design finished in a new Armor Titanium and Plasma Copper color scheme', 'ASUS ROG G752VT-DH72', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('10', '5', '02/12/2017', 'Asus Zenbook UX303UB-DH74T Ci7 Laptop', 'asus-zenbook-ux303ub-dh74t-ci7-laptop', 'SKU: 15926', 'New', '164999', 'Experience new lifelike detail with the 13.3 inch Quad HD touchscreen display featuring an incredible 3200x1800 resolution that is five times higher than a standard HD display', '5a089954e08c766334f961e5b18c3608.jpg', '12', 'ACTIVE', 'Experience new lifelike detail with the 13.3 inch Quad HD touchscreen display featuring an incredible 3200x1800 resolution that is five times higher than a standard HD display', 'Asus Zenbook UX303UB-DH74T', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('11', '1', '02/12/2017', 'Dell Vostro 3460 ci3 laptop', 'dell-vostro-3460-ci3-laptop', 'SKU: 15259', 'New', '40999', 'The Vostroâ„¢ 3460 was designed to meet your essential professional needs by providing powerful and reliable productivity today while offering purchasing flexibility as you grow', 'cde3661abde3b84cab0c3fcbdc6959d4.jpg', '7', 'ACTIVE', 'The Vostroâ„¢ 3460 was designed to meet your essential professional needs by providing powerful', 'Dell Vostro 3460', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('12', '5', '02/12/2017', 'ASUS X555LA Ci3 Laptop', 'asus-x555la-ci3-laptop', 'SKU: 14288', 'New', '39999', 'The X555LA makes a good first impression with the concentric circle grooves on its lid which looks like metal but feels like plastic Unfortunately the build quality of this laptop doesnt inspire the most confidence For example the touchpads loud click felt quite hollow', 'b8390a99ca4888aaa1f8d50a6152193e.jpg', '0', 'ACTIVE', 'The X555LA makes a good first impression with the concentric circle grooves on its lid which looks like metal but feels like plastic Unfortunately the build quality of this laptop doesnt inspire the most confidence For example the touchpads loud click felt quite hollow', 'ASUS X555LA', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('13', '1', '02/12/2017', 'Dell Latitude E7450 Ci7 laptop', 'dell-latitude-e7450-ci7-laptop', 'SKU: 15256', 'New', '164999', 'Dell Latitude 14 7000 E7450 14\" Ultrabook - Intel Core i7 i7-5600U Dual-core (2 Core) 2.60 GHz PNJJM Ultra Mobile Laptops', 'a07aa6e1621322a8250c880bb9bb69a9.jpg', '4', 'ACTIVE', 'Dell Latitude 14 7000 E7450 14\" Ultrabook - Intel Core i7 i7-5600U Dual-core (2 Core) 2.60 GHz PNJJM Ultra Mobile Laptops', 'Dell Latitude E7450', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('14', '1', '02/12/2017', 'Dell Latitude E7250 Ci7 laptop', 'dell-latitude-e7250-ci7-laptop', 'SKU: 15249', 'New', '179999', 'Get down to business with the beautifully thin and light laptop that features an optional 12 display As with the previous generation the Dell Latitude 7000 Series is the only laptop designed to be compatible with an existing laptop family docking station The Latitude 12 7000 Series also features the new Dell Wireless Dock option', '48acfd0c49d4c847ae5c02d1c15e39c1.jpg', '3', 'ACTIVE', 'Get down to business with the beautifully thin and light laptop that features an optional 12 display As with the previous generation the Dell Latitude 7000 Series is the only laptop', 'Dell Latitude E7250', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('15', '1', '02/12/2017', 'Dell Latitude E7470 Ci7 laptop', 'dell-latitude-e7470-ci7-laptop', 'SKU: 15243', 'New', '149999', 'Connecting from your desk is always easy and secure with existing EDock family docking that allows quick integration into your office setup Get down to business and connect to your peripheral devices without complication', '306686ee709e8a4ab865f48bb0c3caac.jpg', '5', 'ACTIVE', 'Connecting from your desk is always easy and secure with existing EDock family docking that allows quick integration', 'Dell Latitude E7470', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('16', '3', '02/12/2017', 'Apple Macbook MMGL2 ci3', 'apple-macbook-mmgl2-ci3', 'SKU:14269', 'New', '139999', 'We designed MacBook to be not only thinner and lighter but more functional and intuitive than ever before To do that we couldnot just shave a millimeter here a gram there So we started from scratch reinventing each essential element as part of a singular deceptively simple design Its everything there is to love about Mac In its purest form ever', '5304d01b5cd8b3c26ad5685e4c50628f.jpg', '13', 'ACTIVE', 'We designed MacBook to be not only thinner and lighter but more functional and intuitive than ever before To do that we couldnot just shave a millimeter here a gram there.', 'Apple Macbook MMGL2', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('17', '3', '02/12/2017', 'Apple Macbook Air MMGG2 ci5', 'apple-macbook-air-mmgg2-ci5', 'SKU:14268', 'New', '127999', 'This device ensures crystal clear pictures as well as excellent sound quality With a maximum screen resolution of 1440 x 900 pixels this notebook displays images of high clarity You can also video chat with friends and family with the integrated 2 MP FaceTime HD 720 pixels camera with compatible microphones It has a screen size of 13 inch with an LED backlight display', 'cf2ea6cbce4678078c5829b630a871bc.jpg', '7', 'ACTIVE', 'This device ensures crystal clear pictures as well as excellent sound quality With a maximum screen resolution of 1440 x 900 pixels this notebook displays.', 'Apple Macbook Air MMGG2,Brand,Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('18', '3', '02/12/2017', 'Apple Macbook Air MMGF2 ci5', 'apple-macbook-air-mmgf2-ci5', 'SKU:14266', 'New', '104999', 'Fifth-generation Intel Core processors in MacBook Air give you more time to do more things Add that to an array of other smart and efficient features and you have an incredible amount of power in your hands While carrying next to nothing', 'f2ee50c2bea19f93bf1856f348f3c925.jpg', '5', 'ACTIVE', 'Fifth-generation Intel Core processors in MacBook Air give you more time to do more things Add that to an array of other smart and efficient features.', 'Apple Macbook Air MMGF2,Brand,Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('19', '3', '02/12/2017', 'Apple MacBook Pro with Retina Display MJLU2 ci7', 'apple-macbook-pro-with-retina-display-mjlu2-ci7', 'SKU: 12891', 'New', '328999', 'Apple MacBook Pro Incredibly powerful. By design. When we designed the MacBook Pro with Retina display, we started with a blank slate. That gave us the freedom to imagine something radical, something entirely different. A notebook so thin, so light, and so powerful. A notebook designed for the future, but ready to use today.', 'ee01e2bf922877b7df5138f018430945.jpg', '5', 'ACTIVE', 'Apple MacBook Pro Incredibly powerful. By design. When we designed the MacBook Pro with Retina display, we started with a blank slate. ', 'Apple MacBook Pro with Retina Display MJLU2', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('21', '3', '02/12/2017', 'Apple MacBook Pro MLL42 ci5', 'apple-macbook-pro-mll42-ci5', 'SKU: 15337', 'New', '173999', 'It has become even faster and more powerful. Lighter and thinner. He has the brightest screen and the best color rendition of all Mac laptops. For the first time in its built-in keyboard Glass trackpad Touch Bar with support for Multi-Touch gestures. This intelligent control provides fast access to the functions of the precise moment when you need them. The new MacBook Pro is based on the most advanced ideas. And it is all for the realization of your own.', '581b44214687b914cdbb0b21fab8c432.jpg', '6', 'ACTIVE', 'It has become even faster and more powerful. Lighter and thinner. He has the brightest screen and the best color rendition of all Mac laptops. For the first time in its built-in keyboard Glass trackpad Touch Bar with support for Multi-Touch gestures.', 'Apple MacBook Pro MLL42,Brand,Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('22', '3', '02/12/2017', 'Apple MacBook Air MJVE2 ci5', 'apple-macbook-air-mjve2-ci5', 'SKU: 12271', 'New', '50000', 'The MacBook Air is housed in an aluminum unibody enclosure, which is as strong as it is light. Because it is cut from a solid block of aluminum, the housing is stronger than those found on laptops built via traditional means. Multi-touch technology is an essential part of Apple products. It is an immersive way to interact with your devices. And the optimal way to experience Multi-Touch on a notebook is through a trackpad.', '5eab9564a53b0d470ef5faf840ffb196.jpg', '6', 'ACTIVE', 'The MacBook Air is housed in an aluminum unibody enclosure, which is as strong as it is light. Because it is cut from a solid block of aluminum,', 'Apple MacBook Air MJVE2,Brand,Laptop', '2019-01-07 19:50:50');
INSERT INTO `afa110_product` VALUES ('23', '3', '02/12/2017', 'Apple MacBook Pro Retina MF841 ci5', 'apple-macbook-pro-retina-mf841-ci5', 'SKU: 12274', 'New', '185999', 'Apple Macbook Pro Retina MF841 13 inch 2015 512GB 8GB 2.7GHz Core i5 has a groundbreaking Retina display. A new force-sensing trackpad. All-flash architecture. Powerful dual-core processor. Together, these features take the notebook to a new level of performance. And they will do the same for you in everything you create', '7717a3c8c6c28faa6b504093c18296ed.jpg', '5', 'ACTIVE', 'Apple Macbook Pro Retina MF841 13 inch 2015 512GB 8GB 2.7GHz Core i5 has a groundbreaking Retina display. A new force-sensing trackpad.', 'Apple MacBook Pro Retina MF841,Brand,Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('24', '3', '02/12/2017', 'Apple MacBook Pro with Retina Display MJLT2 ci7', 'apple-macbook-pro-with-retina-display-mjlt2-ci7', 'SKU: 12890', 'New', '234999', 'Apple MacBook Pro Incredibly powerful. By design. When we designed the MacBook Pro with Retina display, we started with a blank slate. That gave us the freedom to imagine something radical, something entirely different. A notebook so thin, so light, and so powerful. A notebook designed for the future, but ready to use today.', '5577e83a437cdf15c892b3e64ce8c3b0.jpg', '4', 'ACTIVE', 'Apple MacBook Pro Incredibly powerful. By design. When we designed the MacBook Pro with Retina display, we started with a blank slate.\r\n', 'Apple MacBook Pro with Retina Display MJLT2,Brand,Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('25', '3', '02/12/2017', 'Apple MacBook Retina Display MF855 ci5', 'apple-macbook-retina-display-mf855-ci5', 'SKU: 12431', 'New', '128999', 'The new MacBook trackpad opens up completely new possibilities. Force Touch trackpad design provides a clear and uniform sense of clicks anywhere. But under its surface located sensors that monitor those with some effort pushed trackpad, and give you new ways to interact with your Mac. By clicking on the trackpad with effort, you can, for example, to quickly see the definition of a word or open the file for viewing.', '7187123bddf9cceaed1633a9371585d9.jpg', '4', 'ACTIVE', 'The new MacBook trackpad opens up completely new possibilities. Force Touch trackpad design provides a clear and uniform sense of clicks anywhere. But under its surface located sensors that monitor those with some effort pushed tracpad.', 'Apple MacBook Retina Display MF855,Brand,Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('26', '3', '02/12/2017', 'Apple MacBook Air Z0RJ0001W ci7', 'apple-macbook-air-z0rj0001w-ci7', 'SKU:12623', 'New', '199999', 'The MacBook Air is housed in an aluminum unibody enclosure, which is as strong as it is light. Because it is cut from a solid block of aluminum, the housing is stronger than those found on laptops built via traditional means. Multi-touch technology is an essential part of Apple products. It is an immersive way to interact with your devices. And the optimal way to experience Multi-Touch on a notebook is through a trackpad.', '4ae75e559ccd2699adbd08df334fbdef.jpg', '5', 'ACTIVE', 'The MacBook Air is housed in an aluminum unibody enclosure, which is as strong as it is light. Because it is cut from a solid block of aluminum, the housing is stronger than those found on laptops built via traditional means.', 'Apple MacBook Air Z0RJ0001W,Brand,Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('27', '1', '02/12/2017', 'Dell Alienware 17 R3 256GB  Ci7 laptop', 'dell-alienware-17-r3-256gb-ci7-laptop', 'SKU: 13950', 'New', '249999', 'Alienware is upgrading its winning formula for gaming laptops bringing Intels new 6th gen Core i7 CPU and Nvidias 980M graphics to its leading 17inch gaming laptop You still get Alienware s signature spaceship inspired cas ions of customizable lights and a comfy keyboard', 'ab374b0b8abc53d0708848d293af723a.jpg', '6', 'ACTIVE', 'Alienware is upgrading its winning formula for gaming laptops bringing Intels new 6th gen Core i7 CPU and Nvidias 980M graphics to its leading 17inch gaming laptop', 'Dell Alienware 17 R3 256GB', '2019-01-24 17:34:44');
INSERT INTO `afa110_product` VALUES ('28', '1', '02/12/2017', 'Dell Inspiron 7547 Ci7 laptop', 'dell-inspiron-7547-ci7-laptop', 'SKU: 12686', ' Refurbished', '53999', 'The forged aluminium design with diamond cut beveled edges is just one of the premium features you will find on the new Inspiron 17 It is easy on the eyes and feels great to hold The backlit keyboard with 10 key numeric keyboard makes working in low-light environments much easier it spoils you for anything less And the edge to edge touch display uses Corning Gorilla NBT Glass to complete a truly breathtaking laptop', '5b66308fe045996130152ea1afdd0762.jpg', '8', 'ACTIVE', 'The forged aluminium design with diamond cut beveled edges is just one of the premium features you will find on the new Inspiron 17 It is easy on the eyes and feels great to hold The backlit keyboard ', 'Dell Inspiron 7547', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('30', '1', '02/12/2017', 'Dell Inspiron 5578 Ci5 laptop', 'dell-inspiron-5578-ci5-laptop', 'SKU: 15916', ' Refurbished', '71499', 'The Inspiron 15 5000 2-in-1 has a sleek new design that emphasizes more screen and less bezel pointing your attention at the brilliant wide angle display A versatile 360 hinge enables four modes to suit your environment Use laptop mode for typing out a paper tent mode for working in shallow footprint spaces like a kitchen counter or workbench Stand mode for streaming your favorite movie or tablet mode for keeping up on social media Wide viewing angle screens provide a clear view in all of these modes High resolution touchpad gives more fluid panning pinching and zooming for an experience thats touchscreen smooth and quick The latest processors from Intel handle todays software easily and provide zippy responsive performance', 'ccdc632b3c462cd454b701c4db816ac0.jpg', '5', 'ACTIVE', 'The Inspiron 15 5000 2-in-1 has a sleek new design that emphasizes more screen and less bezel pointing your attention at the brilliant wide angle display A versatile 360 hinge enables four modes to suit your environment Use laptop mode for typing out a paper tent mode for working in shallow footprint spaces like a kitchen counter', 'Dell Inspiron 5578', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('31', '1', '02/12/2017', 'Dell Inspiron 7378 Ci5 laptop', 'dell-inspiron-7378-ci5-laptop', 'SKU: 15595', 'New', '87999', 'Dell Inspiron Starlord laptop The 1080p resolution on the 13-inch touch screen makes it easy to see websites clearly and you can use this laptop as a tablet This Dell Inspiron Starlord laptop has an Intel processor and an infrared camera for powerful versatile use', 'ef13fea1bdcf0760f156d307f985de89.jpg', '8', 'ACTIVE', 'Dell Inspiron Starlord laptop The 1080p resolution on the 13-inch touch screen makes it easy to see websites clearly and you can use this laptop as a tablet', 'Dell Inspiron 7378', '2019-01-24 17:34:53');
INSERT INTO `afa110_product` VALUES ('32', '1', '02/12/2017', 'Dell Inspiron 5567 Ci7 laptop', 'dell-inspiron-5567-ci7-laptop', 'SKU: 15294', 'New', '71999', 'Add beauty to your desk the moment you open your laptop showing off the stylish brushed hairline palm rest And the optional backlit bottom mount keyboard makes typing more comfortable', 'd3918e1ebee1011819e46319d27f7663.jpg', '10', 'ACTIVE', 'Add beauty to your desk the moment you open your laptop showing off the stylish brushed hairline palm rest And the optional backlit bottom mount keyboard makes typing more comfortable', 'Dell Inspiron 5567', '2019-01-14 19:45:19');
INSERT INTO `afa110_product` VALUES ('33', '6', '02/13/2017', 'Toshiba Satellite C50T-A052 Touch Screen ci3', 'toshiba-satellite-c50t-a052-touch-screen-ci3', 'SKU: 8952', 'new', '54999', 'Toshiba Satellite C50T-A052 Touch Screen price in Pakistan is updated on daily basis and rate/price for Toshiba Satellite C50T-A052 Touch Screen is valid for all cities of Pakistan included Islamabad, Rawalpindi, Lahore, Karachi, Faisalabad, Peshawar, Sialkot, Quetta etc. Toshiba Satellite C50T-A052 Touch Screen price depends on many factors thats include the price of dollors,', 'f4b5dc1c42aced99151d2d5e6cb5b5da.jpg', '8', 'ACTIVE', 'Toshiba Satellite C50T-A052 Touch Screen price in Pakistan is updated on daily basis and rate/price for Toshiba Satellite C50T-A052 Touch Screen is valid for all cities of Pakistan included Islamabad, Rawalpindi, Lahore, Karachi, Faisalabad, Peshawar, Sialkot, Quetta etc. Toshiba Satellite C50T-A052 Touch Screen price depends on many factors thats include the price of dollors,', 'toshiba stellite', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('34', '2', '02/13/2017', 'HP 15-AY122TX Ci7', 'hp-15-ay122tx-ci7', 'SKU: 15583', 'New', '81999', 'If you are looking for a 7th gen laptop which provides you high-end specs and performance while is affordable as well then HP 15 Ay122tx is the best choice. It ensures that all your work is done with its high-end features like 7th gen Intel core i7 processor 8GB DDr4 RAM and 1TB hard Drive with 4GB Dedicated Graphics', 'ff5ca7f9c2a63c6d3fad8876ec79810f.jpg', '4', 'ACTIVE', 'If you are looking for a 7th gen laptop which provides you high-end specs and performance while is affordable as well then HP 15 Ay122tx is the best choice.', 'laptop,hp,HP 15-AY122TX Ci7', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('35', '2', '02/13/2017', 'HP 15-AY122TX Ci7', 'hp-15-ay122tx-ci7', 'SKU: 15566', 'New', '77999', 'If you are looking for a 7th gen laptop which provides you high-end specs and performance while is affordable as well then HP 15 Ay122tx is the best choice. It ensures that all your work is done with its high-end features like 7th gen Intel core i7 processor 8GB DDr4 RAM and 1TB hard Drive with 4GB Dedicated Graphics', '21ccc051b089f4d1d463ff0a93c59266.jpg', '0', 'ACTIVE', 'If you are looking for a 7th gen laptop which provides you high-end specs and performance while is affordable as well then HP 15 Ay122tx is the best choice.', 'laptop,hp,HP 15-AY122TX features,HP 15-AY122TX Ci7', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('36', '2', '02/13/2017', 'HP Notebook 15-ay083nia Ci3', 'hp-notebook-15-ay083nia-ci3', 'SKU: 15310', 'New', '39999', 'Surround exceptional sound provides an immersive listening experience for music videos and games', '44b9001fe7dbb591250ca1c833da4590.png', '3', 'ACTIVE', 'Surround exceptional sound provides an immersive listening experience for music videos and games', 'Laptop,notebook,HP Notebook 15-ay083nia Ci3', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('37', '2', '02/13/2017', 'HP NoteBook 15-AC149NE Ci7', 'hp-notebook-15-ac149ne-ci7', 'SKU: 13960', 'New', '25000', 'A perfect notebook is all you need for your amusement as well as office and college work! Heres bringing you one of the best of HPs notebook that is has a perfectly large HD screen so you can watch movies enjoy videos do daily activities and have a perfect companion along while you travel\r\n\r\n', '17493ad7b224d13297f63ee53f87b5ad.jpg', '3', 'ACTIVE', 'A perfect notebook is all you need for your amusement as well as office and college work! Heres bringing you one of the best of HPs notebook that is has a perfectly large.', 'HP NoteBook 15-AC149NE Ci7,hp ,laptop', '2019-01-07 19:45:48');
INSERT INTO `afa110_product` VALUES ('38', '2', '02/13/2017', 'HP 15 AY013NX Ci3', 'hp-15-ay013nx-ci3', 'SKU: 14503', 'New', '38499', 'HP 15 AY013nx See your digital world in a whole new way Enjoy movies and photos in great image quality with a high definition display', 'fe9d9f2a2d416a10e5cc2a8669c3ed7f.jpg', '3', 'ACTIVE', 'HP 15 AY013nx See your digital world in a whole new way Enjoy movies and photos in great image quality ', 'HP 15 AY013NX Ci3 ,hp,laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('39', '2', '02/13/2017', 'HP Spectre 13 V011dx Ci7', 'hp-spectre-13-v011dx-ci7', 'SKU: 14199', 'Refurbished', '20000', 'Choose this HP Spectre 13 notebook for its crisp 1080p display and 13.3 inch screen It comes with a sixth generation Intel processor and 8GB of onboard RAM for efficient multitasking', 'a36ca7638f51c0b045f86f213a06cd93.jpg', '4', 'ACTIVE', 'Choose this HP Spectre 13 notebook for its crisp 1080p display and 13.3 inch screen It comes with a sixth generation Intel processor and 8GB of onboard RAM for efficient multitasking', 'HP Spectre 13 V011dx Ci7,ci7 laptops,hp', '2019-01-07 19:46:50');
INSERT INTO `afa110_product` VALUES ('40', '2', '02/13/2017', 'HP EliteBook 850 G3 Ci5', 'hp-elitebook-850-g3-ci5', 'SKU: 13565', 'New', '85999', 'Impressively thin and light, the HP EliteBook 850 empowers users to create, connect, and collaborate, using enterprise-class performance technology that helps keep you productive in and out of the office.', '43f9820f905cf962d08da134b7caa58f.jpg', '5', 'ACTIVE', 'Impressively thin and light, the HP EliteBook 850 empowers users to create, connect, and collaborate, ', 'HP EliteBook 850 G3 Ci5,ci5 laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('41', '2', '02/13/2017', 'HP Envy x360 15-U493CL Ci7', 'hp-envy-x360-15-u493cl-ci7', 'SKU: 15589', 'New', '72999', 'A work device with entertainment aptitude A media machine with productivity power Versatility makes a difference The brilliantly flexible ENVY x360 bends beautifully to all your needs Get more work done get more from your entertainment and do it all with power and performance', 'a388d2c9b44a35e5dd53f4c1721f08c9.jpg', '5', 'ACTIVE', 'A work device with entertainment aptitude A media machine with productivity power Versatility makes a difference The brilliantly flexible ENVY x360 bends ', 'HP Envy x360 15-U493CL Ci7,hp,laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('42', '2', '02/13/2017', 'HP Omen 15T (Gaming Series)  Gaming Laptop', 'hp-omen-15t-gaming-series-gaming-laptop', 'SKU: 15951', 'New', '152999', 'HP OMEN 15T Gaming Notebook\r\nA work device with entertainment aptitude A media machine with productivity power Versatility makes a difference', '3ba4a9ab6c1fc84bbcb289da70ab53c6.jpg', '5', 'ACTIVE', 'HP OMEN 15T Gaming Notebook A work device with entertainment aptitude A media machine with productivity power Versatility ', 'hp,laptop,HP Omen 15T (Gaming Series)  Gaming Laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('43', '2', '02/13/2017', 'HP 250 G4 ci5', 'hp-250-g4-ci5', 'SKU: 15275', 'New', '46499', 'Get connected with the value-priced HP 250 G4 Notebook PC. Complete business tasks with Intel technology, essential multimedia tools and Windows DOS loaded on the HP 250 The durable chassis helps protect the notebook from the rigors of the day', '531e3937b985359a268ec17f309c9ea8.jpeg', '5', 'ACTIVE', 'Get connected with the value-priced HP 250 G4 Notebook PC. Complete business tasks with Intel technology, essential multimedia tools', 'HP 250 G4 ci5,ci5,laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('44', '7', '02/13/2017', 'Lenovo IdeaPad Y700 ci7', 'lenovo-ideapad-y700-ci7', 'SKU: 15254', 'New', '94999', 'the IdeaPad Y700 gives you quad core power discrete graphics and a complete multimedia experience with hi-def display surround sound and subwoofer When the competition heats up dont worry because the Y700 has thermal cooling for serious gaming', '441ee312665281ac1447aef94ce60719.jpg', '7', 'ACTIVE', 'the IdeaPad Y700 gives you quad core power discrete graphics and a complete multimedia experience with hi-def display surround sound and subwoofer ', 'Lenovo IdeaPad Y700 ci7,ci7,lenovo', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('45', '7', '02/13/2017', 'Lenovo Ideapad 110 ci3', 'lenovo-ideapad-110-ci3', 'SKU: 15350', 'New', '37999', 'Lenovo Photo Master 2.0 combines a modern photo library with powerful, easy-to-use navigation and editing tools. Now, with features such as Auto Face Replace and Smart Event Sort, you can organize and optimize your photos to perfection.', 'f73879cef59763e58454e1d81dd1f725.jpg', '5', 'ACTIVE', 'Lenovo Photo Master 2.0 combines a modern photo library with powerful, easy-to-use navigation and editing tools. ', 'lenovo-ideapad-110-ci3,ci3,lenovo', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('46', '7', '02/13/2017', 'Lenovo IdeaPad 310 ci5', 'lenovo-ideapad-310-ci5', 'SKU: 14372', 'New', '48499', 'Get ready for a truly satisfying home entertainment experience Thanks to Dolby technology and stereo speakers your music and movies will sound big and loud on the Ideapad 310', '6bf9d3fbef9e742f79e61fbb7f6e4198.jpg', '3', 'ACTIVE', 'Get ready for a truly satisfying home entertainment experience Thanks to Dolby technology ', 'lenovo-ideapad-310-ci5,ci5 laptops', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('47', '7', '02/13/2017', 'Lenovo Yoga 900-13ISK2 ci7', 'lenovo-yoga-900-13isk2-ci7', 'SKU: 13634', 'New', '132999', 'Life moves fast and so do you Do more faster with the latest Intelï¿½ Coreï¿½ i processors and customize your Windows 10 experience to make it yours Drown out distractions with JBL speakers that deliver rich stereo sound and premium Dolbyï¿½ Home Theaterï¿½ for an immersive audio experience', '2f275939c1c6a56b1747a87facb8ae9c.jpg', '8', 'ACTIVE', 'Life moves fast and so do you Do more faster with the latest Intelï¿½ Coreï¿½ i processors and customize your Windows 10 experience ', 'Lenovo Yoga 900-13ISK2 ci7,lenovo', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('48', '7', '02/13/2017', 'Lenovo IdeaPad 310 Ci5 7th Generation ci5', 'lenovo-ideapad-310-ci5-7th-generation-ci5', 'SKU: 15908', 'New', '77999', 'Get ready for a truly satisfying home entertainment experience. Thanks to Dolby technology and stereo speakers, your music and movies will sound big and loud on the Ideapad 310', '8454ab0cd3d29b6143eb5aa53b340655.jpg', '3', 'ACTIVE', 'Get ready for a truly satisfying home entertainment experience. Thanks to Dolby technology ', 'Lenovo IdeaPad 310 Ci5 7th Generation ci5,ci5 ,lenovo', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('49', '6', '02/13/2017', 'Toshiba 13.3\" 16GB Chromebook 2 Ci3 Laptop', 'toshiba-13-3-16gb-chromebook-2-ci3-laptop', 'SKU: TOCB35B3340', 'New', '43999', 'The silver 13.3\" 16GB Chromebook 2 from Toshiba is designed for a Web-optimized experience. With its user-friendly interface, the Chromebook 2 offers a unique computing experience that is enhanced by the Internet.\r\n', '243212aa7df1cf988aa5b8e6757d0128.jpg', '5', 'ACTIVE', 'The silver 13.3\" 16GB Chromebook 2 from Toshiba is designed for a Web-optimized experience. With its user-friendly interface, the Chromebook 2 offers a unique computing experience that is enhanced by the Internet.\r\n', 'Toshiba 13.3\" 16GB Chromebook 2', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('50', '7', '02/13/2017', 'Lenovo Thinkpad E460 ci5', 'lenovo-thinkpad-e460-ci5', 'SKU: 13830', 'New', '95999', 'The performance booster doubles system speed especially when opening and saving so you spend less time waiting and more time doing Nearly all day computing with up to 9 hours unplugged lets you get a full day of work in on a single charge', 'ebc729214574e5b27aafd891814fa883.jpg', '3', 'ACTIVE', 'The performance booster doubles system speed especially when opening and saving so you spend less time waiting and more time doing ', 'Lenovo Thinkpad E460 ci5,ci5 ', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('51', '7', '02/13/2017', 'Lenovo IdeaPad 310 2GB ci5', 'lenovo-ideapad-310-2gb-ci5', 'SKU: 15586', 'New', '51999', 'Get ready for a truly satisfying home entertainment experience. Thanks to Dolby technology and stereo speakers, your music and movies will sound big and loud on the Ideapad 310', '7f51aa4e117493345fc938fe9c7e1a5a.png', '4', 'ACTIVE', 'Get ready for a truly satisfying home entertainment experience. Thanks to Dolby technology and stereo speakers', 'Lenovo IdeaPad 310 2GB ci5,lenovo', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('52', '7', '02/13/2017', 'Lenovo IP 110 celeron', 'lenovo-ip-110-celeron', 'SKU: 15317', 'New', '27000', 'Lenovo has always been one of those distinguished brands that always puts the customers first. It does not only care for the demands of its customers but also offers those demanded products in such a way that they are always excellent in performance yet easy on the pockets The product on sale Lenovo IdeaPad 110 is indeed a living embodiment of this spectacle', 'cf88a49331a9a6f5a2a9f5f9a100682f.jpg', '6', 'ACTIVE', 'Lenovo has always been one of those distinguished brands that always puts the customers first. It does not only care for the demands of its customers ', 'lenovo-ip-110-celeron,celeron,lenovo', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('53', '4', '02/13/2017', 'Acer ES1-571 Ci3', 'acer-es1-571-ci3', 'SKU: 15312', 'New', '34999', 'Aspire ES series notebooks inject a fresh blast of color1 and style into everyday computing Along with a number of useful enhancements work and play comfortably efficiently and with flai', 'c93dac5f31b157d543b26c759a276b14.jpg', '6', 'ACTIVE', 'Aspire ES series notebooks inject a fresh blast of color and style into everyday computing Along with a number of useful enhancements.', 'acer,laptop', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('54', '4', '02/13/2017', 'Acer ES1-572 Ci5', 'acer-es1-572-ci5', 'SKU: 15313', 'New', '48999', 'Aspire ES series notebooks inject a fresh blast of color1 and style into everyday computing. Along with a number of useful enhancements you ll work and play comfortably efficiently and with flair', 'e23d94fd19466d2ccb3db29e115b0ba9.jpg', '3', 'ACTIVE', 'Aspire ES series notebooks inject a fresh blast of color and style into everyday computing. Along with a number of useful enhancements you ll work and play comfortably.', 'acer,laptop,ci5', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('55', '4', '02/13/2017', 'Acer Predator G9-591-72LV Ci7', 'acer-predator-g9-591-72lv-ci7', 'SKU: 14282', 'New', '9999', 'In the past Acer had a fairly clean slate in regards to the gaming sector The manufacturer first expressly aimed at the gaming community with the Black Edition of the Aspire V 15 Nitro However performance junkies still sniff at the 15-inch scion since it is at most sold with a GeForce GTX 960M', '1a9f5a9954f3a2fe8f2f33007059b1d9.jpg', '3', 'ACTIVE', 'In the past Acer had a fairly clean slate in regards to the gaming sector The manufacturer first expressly aimed at the gaming community with the Black Edition of the Aspire V 15', 'acer,laptop,ci7', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('56', '4', '02/13/2017', 'Acer Aspire E5-475 Ci3', 'acer-aspire-e5-475-ci3', 'SKU: 15911', 'New', '39500', 'Aspire E Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations With many enhanced components color choices and a textured metallic finish the Aspire E makes everyday better', '6fed0db433f0730ddd3c32a1b76e4994.jpg', '5', 'ACTIVE', 'Aspire E Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', 'acer,laptop,ci3', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('57', '4', '02/13/2017', 'Acer Aspire ES1-571 Ci5', 'acer-aspire-es1-571-ci5', 'SKU: 0381 ', 'New', '29499', 'Aspire Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', '8e4ec7f398c487fff63c5de108d60d2c.jpg', '4', 'ACTIVE', 'Aspire Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', 'acer,laptop,ci5', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('58', '4', '02/13/2017', 'Acer One 10 S10 Ci5', 'acer-one-10-s10-ci5', 'SKU: 0316', 'New', '2899', 'Acer One Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', '813f333ffcadb0178a3441dfe5eec619.jpg', '5', 'ACTIVE', 'Acer One Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', 'acer,laptop,ci5', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('59', '4', '02/13/2017', 'Acer E5-573 Ci5', 'acer-e5-573-ci5', 'SKU: 02915', 'New', '37999', 'Acer E5 Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', '455b9bd878f5f252561989a9eb413d7e.jpg', '4', 'ACTIVE', 'Acer E5 Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', 'acer,laptop,ci5', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('60', '4', '02/13/2017', 'Acer Aspire E5-473 Ci3', 'acer-aspire-e5-473-ci3', 'SKU:5005U', 'New', '41869', 'You bet. Enhancements to the features you’ve come to know and expect give you both added power and capability to get things done. You get better, faster wireless networking, greatly improved touchpad usability, and data storage increased in both size and speed. Add in eye care and power-off USB charging and you’re really full function.', '275850cf0bb8873e8d16f54ac099898f.jpg', '5', 'ACTIVE', 'You bet. Enhancements to the features you’ve come to know and expect give you both added power and capability to get things done. You get better.', 'acer,laptop,ci3', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('61', '4', '02/13/2017', 'Acer ES1 511 Ci3', 'acer-es1-511-ci3', 'SKU: 1511', 'New', '30200', 'AspireES1 Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', '1bd1a89299be5e7b8a7fd3b610903bd9.jpg', '7', 'ACTIVE', 'AspireES1 Series laptops are great choices for everyday users with lots of appealing options and an attractive design that exceed expectations', 'acer,laptop', '2019-01-24 17:34:37');
INSERT INTO `afa110_product` VALUES ('62', '4', '02/13/2017', 'Acer Aspire E5-574 Ci7', 'acer-aspire-e5-574-ci7', 'SKU:  E5-574TG-007', 'New', '67966', 'Stylish textile pattern on the top cover and underside creates an uniquie and graceful impression.The Aspire E 15 is slim and light weight. Acer TrueHarmony delivers lifelike audio that takes entertainment to the next level', '7224b61eeb1a3660fb64ed3b2a3fb9c6.jpg', '28', 'ACTIVE', 'Stylish textile pattern on the top cover and underside creates an uniquie and graceful impression.The Aspire E 15 is slim and light weight.', 'acer,laptop,ci7', '2018-03-06 20:29:00');
INSERT INTO `afa110_product` VALUES ('63', '6', '02/20/2017', 'Toshiba Satellite L55-C5272 Laptop', 'toshiba-satellite-l55-c5272-laptop', '7480', 'new & used', '79000', 'Toshiba Satellite L55-C5272, 15.6, Intel Core i5-5200U Processor,8 GB RAM, 1 TB Hard Drive with Windows 10 Laptop', '06ae9f666e59c3d4bcb6d7a755622cfa.png', '1', 'ACTIVE', 'Toshiba Satellite L55-C5272, 15.6, Intel Core i5-5200U Processor,8 GB RAM, 1 TB Hard Drive ', 'Toshiba Satellite', '2018-03-06 20:29:00');

-- ----------------------------
-- Table structure for `afa110_product_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `afa110_product_gallery`;
CREATE TABLE `afa110_product_gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `gallery_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of afa110_product_gallery
-- ----------------------------
INSERT INTO `afa110_product_gallery` VALUES ('1', '1', 'eaaf84a6f20285874e6d66dce392bc4a.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('2', '1', 'b8bb7be21bbf6f2ae40137f113e3002e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('3', '1', 'dddb4bb91cb3a0195add17b87f30889a.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('4', '1', '94bb2086c16590a36d903c789d7e6819.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('5', '1', 'c214de5788117712770b83b50a019156.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('6', '1', '4c1cd840889c171e81bb8fc9a689bf9f.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('7', '2', 'b74c31b5f3ab96905481f19ff9702575.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('8', '2', '80aeb84658dbd235f56a11c9f3bbed63.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('9', '2', '6789df49ccbed90148a09d11e5df7584.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('10', '3', '844a587c7fd64ffa31cf25285a80e506.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('11', '3', '259c9982c73b8df2fa2e3a46f98bab3c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('12', '3', 'e5f1c53ff76e5076cb712f942accccd3.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('13', '3', 'c09691dba9c1eb46393a3b2379d44563.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('14', '4', '297a1c617b320f05aba0753b19812eaa.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('15', '4', '257b332260af0be431a1d9abe48b58dd.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('16', '4', '81856ecd36ad52f156cb38b33a230a67.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('17', '5', 'fa2e3791e2d57d5f30f0e35dfab5ea1c.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('18', '5', '2327755530a7234ddca1e71598f4bd48.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('19', '6', '9618cfed159bf5d1207ed347049ef1b9.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('20', '6', '51c4cb9a5e4b6fa89d191d479b63c061.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('21', '6', '5349b737d1673ff5ed3244ddf250eb68.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('22', '7', 'da8c7d0211c6ab6f2edb69bdee3c463b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('23', '7', '471c48397ddf1f93278dd30e99493c79.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('24', '7', 'e74f80544e03576d8a1538d3d517b61c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('25', '9', 'b705fa2d9e3d66c1d494b3495ca96660.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('26', '9', '30b19c34365b71950b2bd6352ab4e898.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('27', '9', '1c37830112998ecbb52d952462cb0cb3.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('28', '9', '8c28a34a1c8a09f5b82b18f27cf3614b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('29', '8', '00b1632ae8de2a32f5a844753594314b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('30', '8', '4bbd8dd76d994ae06a0cf2dd3305ef68.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('31', '8', '77354b6393d47af1284a49f935a9f157.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('32', '8', 'bb824609aa2b766cb5d1f43e4054d8f2.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('33', '8', '9841bfe07b8f934b64be38d716db7420.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('34', '8', 'd6d73b48b6029f70114ea81717892589.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('35', '10', '652fe6bdf32c6670fe769ca5e3aed6ad.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('36', '10', '5dd2fd97d9100fe66060d1c94a81ffe7.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('37', '10', '463ef0d0722a063fa45f773b26e8a5f7.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('38', '11', '3a55a860bcf77c285c16c0d40e6ab546.png');
INSERT INTO `afa110_product_gallery` VALUES ('39', '11', 'd78034e0e1e930eadc17fe3344c32bc0.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('40', '11', '4423e7cb0e0624697ed78594d527116c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('41', '13', 'cf97950d5eb3998310833303318c04f7.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('42', '13', 'ac28125c42a5288a7195ef0c2fc42624.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('43', '13', '5db52369323219fd5ceb7cf87c7c1102.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('44', '13', 'b28d9853004d6a14dfb606aba00721d3.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('45', '14', '093190698031a457ef171a2b051f9507.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('46', '14', 'd94c5f743fd198e6293b1e5149e395e0.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('47', '14', '20169c179cc8b2d5cc5471e1acd432fc.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('48', '15', 'b27ffac69c658bde1033b7ed14c00158.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('49', '15', '648d05f02231a164e4eb626b122759de.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('50', '15', 'de7d17468b3b8e24e25ec980f37dbcfe.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('51', '16', '727eac6dda91817f74a89dd643962c60.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('52', '16', '88fcd5542e08241eb6a10e10aa1ab408.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('53', '16', '618c1982d9592baff767a2565c2e98c7.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('54', '16', '1517ba4bedb5ad8618b016075ad575dd.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('55', '17', '59d0676117977d06675503fd808ae3af.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('56', '17', '536f64b010ca822e25c17eb5e782be25.png');
INSERT INTO `afa110_product_gallery` VALUES ('57', '17', 'ec30fbc748a7a03f79b6699d35f1e44a.png');
INSERT INTO `afa110_product_gallery` VALUES ('58', '17', '6b5525e108d578e441f58093f349d69e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('59', '18', '75cd6513f12550e3377e30543dac40f4.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('60', '18', 'e021b28929b44ac7d7f62d5078c9771e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('61', '18', '31dcd7950f0c7719ce7ef006599962a8.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('62', '18', '789c7f23c83a25b353c9672c700b995c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('63', '19', '212a3b85c020dd58dff69c7ac494ae03.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('64', '19', '9a5c8e4929adfbe618ff15918ce1f566.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('65', '19', 'f6d6fa7020a66f3ebe2f6bea6628cddd.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('66', '19', '7af228857a6f1d0ac4e89479754f6518.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('67', '21', 'cddde79cc021400ed4bbe950d10c849d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('68', '21', 'c575b06a970945c2aeb52b11e76c4147.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('69', '21', '59f2d1287d3d04a7045032271589d57d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('70', '22', 'ba9926cfb2cc880b112758e47286584a.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('71', '22', 'bb638ed4f0db63929001538f28cab6dd.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('72', '22', 'f46b7a195c637dcd21791a28ca497615.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('73', '22', 'b700ff3c6b963179bb5ba6df8712574d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('74', '23', '9e32cc220bbcdfae0b163ac43ab52c77.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('75', '23', '0018db1d6c721f8acbe7f1d02e41d45f.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('76', '23', 'a966994ae12896830d7631103bc15806.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('77', '23', '82f650af4298fd381bf66dd43a2fecce.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('78', '24', '2fadfe204ee0ebc1ac9e35610263c53f.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('79', '24', 'da188c9a8453be2da6e1a4d5ee4555ed.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('80', '24', '859d7e134330eedc723a3fb32c350e35.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('81', '25', '91f843e3fcb3ae61d841b04d6e74ea27.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('82', '25', 'd4b3f54469b106398fe122549e8673f5.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('83', '25', '507def45c601d0d7c4753193eb87f03b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('84', '26', '06110279b11ed40c48f1ce250278b749.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('85', '26', '24e432b7df6816d4564f822962cb53c5.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('86', '26', 'fe918253b5fb14602f866e1857368ed8.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('87', '26', '11c10e60713e35cc38af3b1452f6acef.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('88', '27', '088aaf80f132a9d71f01a70d2101511c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('89', '27', '25009e7bdb242374fed11d8753b42748.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('90', '27', '44f6eeed72088fc9e0fd571d3c122cd1.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('91', '28', 'f2ffc7b6b5486c57d18d936f402ae279.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('92', '28', '093a317cc79976687e8731804c5b9c3d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('93', '28', 'db4903f55f22a42393d90eaa2e28ec78.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('94', '28', 'f69d7551e29d3403124b6a2dbece87d4.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('95', '28', 'f3748f5cdff5c64b137ef29872e0acff.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('96', '28', '9d06375278a9152f798dd58f2d232d2b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('97', '28', '41b072def641833895ac7fb6a83b3ce5.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('98', '30', '055e5e11152fc2ae63cf0ce28c3a86aa.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('99', '30', 'ff74a58c94fd84c69fc7ce9f4872c2db.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('100', '30', '7479f4fb1d7a3d6f675f8d61aa837368.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('101', '30', '413d59c077502ee76eb585788772e8f8.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('102', '30', '6de4739b7b81d95eb7ca10b83a86e4ef.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('103', '30', 'fd235af390a55e7aff6d0d0bf889bccd.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('104', '30', '12fff10eed5608de3f5a1882faa5733a.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('105', '30', '8209a426e9f0168c40131122f65724cb.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('106', '30', 'd3a26d6a5cf3c6d1cba50b2d758e0863.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('107', '31', 'b2718bad846ba19dcaaf40bfef3b70fd.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('108', '31', '91c06d2cc3f1da5e70b6560b95003e07.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('109', '31', '916490bc98b4b14c44240eae23e5382d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('110', '31', '710398993553894346049d4a78476712.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('111', '32', '452df4a0c380a9543993dee8c816079e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('112', '32', 'cb275a1efd3c316eb11a222826f481f5.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('113', '33', '7de2350ac4dadb8a9dd740e08f3122b3.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('114', '33', '399278f7f24995c4f933c708b4c81d87.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('115', '33', 'fed5ec650e882a555aea1d01d7b06405.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('116', '34', 'd2cc5d780bdeb91f6496aa7802d6cdcb.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('117', '34', '4aa4be0609766f26ffeaddd5b32395f8.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('118', '34', 'a3bcc578f43d3d3e734816259a16c77a.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('119', '35', 'a991bdcc059e2d2ffde048b2032b9e3d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('120', '35', 'b1e23cd73888fe8b3797c1d024d5feb0.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('121', '35', '3b35c5d7679d78829d607318b0378946.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('122', '35', 'e16c3af094de78ae075ce907db1e6f0b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('123', '35', 'fd290deec69b98cfe02becc53c411e0b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('124', '36', 'b0a4193bd3cca6827cf6e1b7ac71edc0.png');
INSERT INTO `afa110_product_gallery` VALUES ('125', '36', 'bb42bc5bb0114888b38e14a570e39b7f.png');
INSERT INTO `afa110_product_gallery` VALUES ('126', '36', 'f7a9a8dce093086dc670ffe816efe308.png');
INSERT INTO `afa110_product_gallery` VALUES ('127', '36', '3cdce2f5d02ffd0e7dd7fc3519f781cb.png');
INSERT INTO `afa110_product_gallery` VALUES ('128', '36', 'a430cdfb792d9e1b4eb4bfc3e6d7b812.png');
INSERT INTO `afa110_product_gallery` VALUES ('129', '37', '6530cf8ec6f7c05fcce375805724b668.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('130', '37', 'cb20a3ca9fc3b8204f56c4a13d696dc0.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('131', '37', '059e8e7821a1ed78269536760c389462.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('132', '37', '4aa4fb6b72f626be3748c9f03befa645.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('133', '38', '32539055d8fa3312fffbd25c14291309.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('134', '38', '9b015e3c5aea7bcb3632cbf56d7fa2fc.png');
INSERT INTO `afa110_product_gallery` VALUES ('135', '38', 'e7bdb4bb628461b0a9c2edc1da0179fb.png');
INSERT INTO `afa110_product_gallery` VALUES ('136', '39', '83406c27819d7ed800476d833dd0e03b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('137', '39', '8e4284325f3babf29eb54d972efcbc15.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('138', '39', '11ddf602c223a4bce8a242a3dac99782.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('139', '39', '1ed70a995a232cf966b79b59189d240c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('140', '39', '29fb312d97d3697706b19597c3aeb214.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('141', '40', 'bfe46317ca7561585c1ff75b9725cc93.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('142', '40', '3352f080fd356db757fa74ff6bde7e4d.png');
INSERT INTO `afa110_product_gallery` VALUES ('143', '40', 'dbdd2da28dc060b5efa7935ca161eb29.png');
INSERT INTO `afa110_product_gallery` VALUES ('144', '40', 'd9e3705baea7d4ac85bd65582c7a071e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('145', '41', 'f83ddcef562aa2adb856427c21d25c59.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('146', '41', '6a97cb144541038cc2ad789dbe76b2b4.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('147', '41', 'b28c628211a9b34267dd0f6f2bcecb60.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('148', '41', '1d3fda9a002f639fe777e2db45ee859a.png');
INSERT INTO `afa110_product_gallery` VALUES ('149', '42', 'a1a0eff381071bcb17f3b643bc3ab408.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('150', '42', '586c5125219e951e10c98946e62cc5b7.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('151', '42', '7c690559bf97b75490b0c9a183f304e5.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('152', '42', '3722b40839f47d1338371e6d133dd86f.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('153', '43', '8ed027ab7270cdc4ce28e64a2789fde8.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('154', '43', '7055057aa1797f0ed959e3ea8007f3a5.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('155', '43', '9bee77e5202dcf0d8e69dce258c31e64.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('156', '44', '716742e7d4b1bec410f3595e4012db85.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('157', '44', '2ca71470ff000c89486c5754309123cb.png');
INSERT INTO `afa110_product_gallery` VALUES ('158', '44', '2757fae75eaa5ace51eab428879286db.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('159', '45', '925bebef409ef42ee77058c3a0eca45d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('160', '45', '5ecd5e6198f2d6f484663a80b5331420.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('161', '45', '66cef1b0da16379a9bcd166fb19cfc5f.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('162', '45', 'a389bbfb0ed86472e7598b25e1449f4f.png');
INSERT INTO `afa110_product_gallery` VALUES ('163', '45', 'a522345d407a84033f02aa00db82ffea.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('164', '45', '2de0e1ac08a869187c0ccd2542873286.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('165', '46', 'ec227a5434e81494ebd2a9ffda85574e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('166', '46', 'da259be689d383893d1534f57c5495be.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('167', '46', '8a453e658014417f3f8986c480f6dbc6.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('168', '46', '73f08cb06a51d34300da40605ac71162.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('169', '47', '640951bb85696fe4c65bbc889429d093.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('170', '47', '0808eb013406695f64469ba386f900bd.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('171', '47', '393689d35cfa819436abf92d2cdcc9a8.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('172', '47', '8157022bbfe6f3a27cb3a5af1bdb5a82.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('173', '48', '6e675f5582a533c079c5b7c738271433.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('174', '48', 'ade5c20aa1d29666963ba142a3e42767.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('175', '48', '2aa4db3bc644e61844fff964a8b63d82.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('176', '49', 'af6a6fbb6f6ebd371f7bcccce4225d28.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('177', '49', '6c69dd5fe7884f43bb4ea12af4b44d5c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('178', '49', '978539e24a9e68739f4a13329e3416ab.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('179', '50', '9dfeca0b7c552d4546f39df43705121c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('180', '50', 'c3069fe5b20e1a10b5c3818d76c01f6e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('181', '50', '97da462b0d9b8f6b0e3173d01a38ca6b.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('182', '50', '154586c1d909dd6fa63c4fa81d8e42ea.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('183', '50', '623edf3d8348be78f851dcdc97fdd12f.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('184', '51', 'b9bfbb7352beebdab9918ec8d4eea50c.png');
INSERT INTO `afa110_product_gallery` VALUES ('185', '51', 'b30161a93a697f95e4b75311f4f755d9.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('186', '51', '6fc8431d994f4ee65e3782a24dca3f34.png');
INSERT INTO `afa110_product_gallery` VALUES ('187', '52', '6b86ff41690de1f3f20427dc5550fef5.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('188', '52', '43d96a13a3d6357a0586e89c47382a53.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('189', '52', 'bfecd2becaf5999a26cfc9b5a1aae3cb.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('190', '53', '179c0b36d379f58d27a4bb428c19352b.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('191', '53', 'a6a835929ae89f316aa14d51d840173f.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('192', '53', '6587f2f97ee1335fd30229ae9d1cf4f9.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('193', '53', '84fd3ef998dd917861b35da4bf5af9c1.jpeg');
INSERT INTO `afa110_product_gallery` VALUES ('194', '54', '27211c6f61e872e2e1bd78ba1861e64e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('195', '54', '9e6db01c56b155559a2879ebfc6c3770.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('196', '54', '805004372edb93173bf7877e5e74ce39.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('197', '54', '5cd93de0cb2f476fe0fe79d988b329d0.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('198', '55', '5e3203a09c940fc39fc083519b0a55ac.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('199', '55', 'fe214d282b09a333a33604547949e1d2.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('200', '56', '31d1178380494743697fc94fdeac08ae.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('201', '56', '574f9dea430fd01bdaa31ce38491c63e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('202', '56', '185993160b28195cec463fe372bfc534.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('203', '56', '33c125731abdffffe252dbe9d72a0942.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('204', '57', '455b974aec341c7a6f34ae124265477d.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('205', '57', 'dab1b7cfc9fe43f04683091c232572f8.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('206', '57', '4115fa032e03c78927eb343827392e4a.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('207', '57', '474a1c5bc984c549870f34abfab43c55.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('208', '58', '19f556cb0e4695e64df98ce22ae9e98e.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('209', '58', 'df33bd3d4857c66e359be28a66fc547f.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('210', '58', '75a0a3b328b1d14aeab5b98f22176bba.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('211', '59', '722691d06f59850c3dacadac4c168cc3.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('212', '59', '3e7ac31f3ae214f0c2947947a03e257a.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('213', '59', '6cb7b98f80065478a9bfb5b7809f6f96.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('214', '60', 'e9a67d0e8028126197b9c2292ab3bd95.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('215', '60', 'ee1a3f5f176e90c8e6c90e91875089eb.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('216', '61', '9e5a98c53a0969e1e80abb1cf7af4f99.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('217', '61', '80fafaf414a84187d56192ca63ecd898.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('218', '62', 'afd1d8e3b0e2e5cfbe79770bd942f60c.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('219', '62', '5f357a23d82552363187934f00872d60.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('220', '62', 'a8b37be856d0f3b277d323998ae307de.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('221', '62', '65af96164ebf811a90c1c5459772cbab.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('222', '63', '8e912b0aeb2413d7cbcb0fea64f4ec25.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('223', '63', '009c492a85a1f887fc81e096a3f20fd1.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('224', '63', '1d93d02ded93798f305faf82aff933b2.jpg');
INSERT INTO `afa110_product_gallery` VALUES ('225', '63', '4759241b62a2f1432f9ec58c7331895b.png');

-- ----------------------------
-- Table structure for `afa110_product_specification`
-- ----------------------------
DROP TABLE IF EXISTS `afa110_product_specification`;
CREATE TABLE `afa110_product_specification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `processor_type` varchar(100) DEFAULT NULL,
  `processor_speed` varchar(100) DEFAULT NULL,
  `hard_drive_size` varchar(100) DEFAULT NULL,
  `installed_ram` varchar(100) DEFAULT NULL,
  `screen_size` varchar(100) DEFAULT NULL,
  `camera` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `operating_system` varchar(100) DEFAULT NULL,
  `bluetooth` varchar(100) DEFAULT NULL,
  `wifi` varchar(100) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `modem` varchar(100) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of afa110_product_specification
-- ----------------------------
INSERT INTO `afa110_product_specification` VALUES ('1', '1', 'Intel Core i7', '2.6 GHz', '1 TB', '8 GB', '15.6', 'Yes', 'Silver', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 09:36:09');
INSERT INTO `afa110_product_specification` VALUES ('2', '2', 'Intel Core i7', '2.6 GHz', '1 TB', '16 GB', '17.3 inches', 'Yes', 'Gray', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 09:54:28');
INSERT INTO `afa110_product_specification` VALUES ('3', '3', 'IntelÂ® Core i5', '2.3 GHz', '1 TB', '8 GB', '13.3 Inches', 'Yes', 'Smoky Brown', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:04:24');
INSERT INTO `afa110_product_specification` VALUES ('4', '4', 'IntelÂ® Core i7', '2.5 GHz', '1 TB', '8 GB', '15.6 inches', 'Yes', 'Dark Blue', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:12:04');
INSERT INTO `afa110_product_specification` VALUES ('5', '5', 'IntelÂ® Core i5', '2.3 GHz', '1 TB', '8 GB', '15.6 inches', 'Yes', 'Silver', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:20:41');
INSERT INTO `afa110_product_specification` VALUES ('6', '6', 'Intel Core i5', '2.3 GHz', '500GB', '4 GB', '15.6 inches', 'Yes', 'Silver', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:28:55');
INSERT INTO `afa110_product_specification` VALUES ('7', '7', 'Intel Core i7', '2.6 GHz', '1 TB', '12 GB', '17.3 inches', 'Yes', 'Gray', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:37:05');
INSERT INTO `afa110_product_specification` VALUES ('8', '9', 'Intel Core i7', '2.6 GHz', '1 TB', '16 GB', '17.3 inches', 'Yes', 'Gray', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:48:45');
INSERT INTO `afa110_product_specification` VALUES ('9', '8', 'core i5', '2.3 GHz', '500GB', '4GB', '15.6', 'Yes', 'WHITE/BLACK', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:51:23');
INSERT INTO `afa110_product_specification` VALUES ('10', '10', 'Intel Core i7', '2.5 GHz', '500GB', '12 GB', '13.3 Inches', 'Yes', 'Smoky Silver', 'Windows 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 10:58:59');
INSERT INTO `afa110_product_specification` VALUES ('11', '12', 'Intel Core i3', '2.0 GHz', '500GB', '4 GB', '15.6 inches', 'Yes', 'Blue', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 11:04:39');
INSERT INTO `afa110_product_specification` VALUES ('12', '11', 'Intel Core i3', '2.5GHz', '500GB', '4 GB', '14 Inches', 'Yes', 'SILVER', 'Ubuntu', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 11:05:07');
INSERT INTO `afa110_product_specification` VALUES ('13', '13', 'Intel Core i7', '2.6GHz', '?', '16 GB', '14 Inches', 'Yes', 'Black', 'DOS', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 11:15:41');
INSERT INTO `afa110_product_specification` VALUES ('14', '14', 'Intel Core i7', '2.6 GHz', '?', '8 GB', '12.5 Inches', 'Yes', 'Black', 'Windows 7 Pro', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 11:25:32');
INSERT INTO `afa110_product_specification` VALUES ('15', '15', 'Intel Core i7', '2.6 GHz', '?', '8 GB', '14.0 Inches', 'Yes', 'Black', 'Ubuntu', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 11:32:19');
INSERT INTO `afa110_product_specification` VALUES ('16', '16', 'Dual-core', '1.1GHz', '', '8 GB', '12 Inches', 'Yes', 'Gold', 'Mac OS X', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 11:47:34');
INSERT INTO `afa110_product_specification` VALUES ('17', '17', 'Intel Core i5', '1.6 GHz', '', '8 GB', '13.3 Inches', 'Yes', 'White', 'OS X El Capitan', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 11:58:50');
INSERT INTO `afa110_product_specification` VALUES ('18', '18', 'Intel Core i5', '1.6 GHz', '', '8 GB', '13.3 Inches', 'Yes', 'White ', 'Mac OS X Mavericks', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 12:13:07');
INSERT INTO `afa110_product_specification` VALUES ('19', '19', 'Intel Core i7', '2.8 GHz', '', '16GB', '15.4-inch Retina Display', 'Yes', 'Silver', 'Mac OS X Mavericks', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 12:20:00');
INSERT INTO `afa110_product_specification` VALUES ('20', '21', 'Intel Core i5', '2.0Ghz', '', '8GB', '13.3\"', 'Yes', 'White', 'MacOS Sierra', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 13:39:36');
INSERT INTO `afa110_product_specification` VALUES ('21', '22', 'Intel Core i5', '1.6 GHz', '', '4GB', '13.3 inches', 'Yes', 'White', 'OS X Yosemite', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 13:48:28');
INSERT INTO `afa110_product_specification` VALUES ('22', '23', 'Intel Core i5', '2.0 GHz', '', '8 GB', '13.3 inches', 'Yes', 'Silver', 'OS X Yosemite', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 13:57:56');
INSERT INTO `afa110_product_specification` VALUES ('23', '24', 'Intel Core i7', '2.5 GHz', '', '16GB', '15.4-inch Retina Display', 'Yes', 'Silver', 'Mac OS X Yosemite', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 14:07:59');
INSERT INTO `afa110_product_specification` VALUES ('24', '25', 'Intel Core M', '1.1 GHz', '', '8 GB', '12.0 inches', 'Yes', 'White', 'Mac OS X Yosemite', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 14:15:18');
INSERT INTO `afa110_product_specification` VALUES ('25', '26', 'Intel Core i7', '2.2 GHz', '', '8 GB', '13.3-inch', 'Yes', 'White', 'OS X Yosemite', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 14:25:53');
INSERT INTO `afa110_product_specification` VALUES ('26', '27', 'Intel Core i7', '2.0 GHz', '1 TB', '16 GB', '17.3 inches', 'Yes', 'Black', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 17:44:51');
INSERT INTO `afa110_product_specification` VALUES ('27', '28', 'Intel Core i7', '2.0 GHz', '1 TB', '8 GB', '15.6 Inches', 'Yes', 'Grey', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 18:00:19');
INSERT INTO `afa110_product_specification` VALUES ('28', '29', 'Intelï¿½ Core? i5', '1.7 GHz', '750 GB', '4 GB', '15.6', 'Yes', 'Silver', 'DOS', 'Yes', 'Yes', 'Yes', '?', '2017-02-12 18:25:33');
INSERT INTO `afa110_product_specification` VALUES ('29', '30', 'Intel Core i5-7th Generation', '2.50 GHz', '1TB', '8GB', '15.6', 'front-facing HD camera', 'Theoretical Gray', 'Windows 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 18:35:24');
INSERT INTO `afa110_product_specification` VALUES ('30', '31', 'Intel core i5', '2.5GHz', '?', '8 GB', '15.6 Inches', 'Yes', 'b', '15.6 Inches', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 18:46:08');
INSERT INTO `afa110_product_specification` VALUES ('31', '32', 'Intel Core i7', '2.5 GHz', '500GB', '4 GB', '15.6', 'Yes', 'Silver', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-12 18:52:03');
INSERT INTO `afa110_product_specification` VALUES ('32', '33', 'Intel® Core? i3', '2.5 GHz', '500GB', '4GB', '15.6 Inches', 'yes', 'Silver', 'Windows 8', 'yes', 'yes', 'no', 'no', '2017-02-12 20:50:17');
INSERT INTO `afa110_product_specification` VALUES ('33', '34', 'Intel Core i7-7th Generation', '2.70 GHz', '1TB', '8GB', '15.6', 'HP Webcam with integrated digital microphone', 'Jack Black', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 03:39:12');
INSERT INTO `afa110_product_specification` VALUES ('34', '35', 'Intel Core i7-7th Generation', '2.70 GHz', '1TB', '4GB', '15.6', 'HP Webcam with integrated digital microphone', 'Jack Black', 'Dos', 'Yes', 'YES', 'Yes', 'NO', '2017-02-13 03:48:36');
INSERT INTO `afa110_product_specification` VALUES ('35', '36', 'Intel Core i3', '2.0 GHz', '500GB', '4 GB', '15.6 inches', 'Yes', 'Black', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 04:20:55');
INSERT INTO `afa110_product_specification` VALUES ('36', '37', 'Intel Core i7', '2.5 GHz', '500 GB', '4 GB', '15.6 inches', 'Yes', 'Silver', 'Window 10', 'Yes', 'Yes', 'Yes', 'Yes', '2017-02-13 04:31:58');
INSERT INTO `afa110_product_specification` VALUES ('37', '38', 'Intel Core i3', '2.0 GHz', '500 GB', '4 GB', '15.6', 'Yes', 'Silver', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 04:39:47');
INSERT INTO `afa110_product_specification` VALUES ('38', '39', 'Intel Core i7', '2.5 GHz', '500 GB', '8 GB', '13.3 Inches', 'Yes', 'Black', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 04:48:54');
INSERT INTO `afa110_product_specification` VALUES ('39', '40', 'Intel Core i5', '2.3 GHz', '1TB', '4GB', '15.6 inch', 'Yes', 'Silver', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 04:57:29');
INSERT INTO `afa110_product_specification` VALUES ('40', '41', 'Intel Core i7', '2.5GHz', '1TB', '4 GB', '15.6 Inches', 'Yes', 'Silver', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 05:04:00');
INSERT INTO `afa110_product_specification` VALUES ('41', '42', 'Intel Core i7', '2.8Ghz', '1TB', '8 GB', '15.6 inches', 'Yes', 'Black', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 05:15:53');
INSERT INTO `afa110_product_specification` VALUES ('42', '43', 'Intel Core i5', '2.2 GHz', '500 GB', '4 GB', '15.6 Inches', 'Yes', 'Black', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 05:31:21');
INSERT INTO `afa110_product_specification` VALUES ('43', '44', 'Intel Core i7', '2.6 GHz', '1 TB', '8 GB', '14.0 Inches', 'Yes', 'Black', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 09:07:36');
INSERT INTO `afa110_product_specification` VALUES ('44', '45', 'Intel Core i3', '2.30 GHz', '500GB', '4GB', '15.6\" Inches', 'front-facing HD camera', 'Black', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 09:24:34');
INSERT INTO `afa110_product_specification` VALUES ('45', '46', 'Intel Core i5', '2.3 GHz', '1 TB', '4 GB', '15.6 inches', 'Yes', 'Black', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 09:34:37');
INSERT INTO `afa110_product_specification` VALUES ('46', '47', 'Intel Core i7', '2.20 GHz', '500 GB', '8 GB', '13.3 Inches', 'Yes', 'Silver', 'Window 10 home', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 09:46:33');
INSERT INTO `afa110_product_specification` VALUES ('47', '48', 'Intel Core i5', '2.5 GHz', '1 TB', '4 GB', '15.6 inches', 'Yes', 'Black Texture', 'Dos', 'Yes', 'Yes', 'Yes', 'Yes', '2017-02-13 09:58:44');
INSERT INTO `afa110_product_specification` VALUES ('48', '49', 'Intel Core i3', '2.1 Ghz', '500GB', '4 GB', '13.3 Inches', 'Yes', 'Silver', 'Chrome OS', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 10:06:31');
INSERT INTO `afa110_product_specification` VALUES ('49', '50', 'Intel Core i5', '2.3 GHz', '1 TB', '8 GB', '14.0 Inches', 'Yes', 'Black', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 10:11:24');
INSERT INTO `afa110_product_specification` VALUES ('50', '51', 'Intel Core i5', '2.5 GHz', '1TB', '4GB', '15.6 inches', 'Yes', 'Black Texture', 'Window 10', 'Yes', 'Yes', 'Yes', 'Yes', '2017-02-13 10:23:40');
INSERT INTO `afa110_product_specification` VALUES ('51', '52', 'Intel core Celeron', '2.16 GHz', '500 GB', '4GB', '15.6 inches', 'Yes', 'Black', 'Dos', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 10:30:29');
INSERT INTO `afa110_product_specification` VALUES ('52', '53', 'Intel core i3', '2 GHz', '500GB', '4 GB', '39.6 cm (15.6', 'Yes', 'Black/red', 'DOS', 'Yes', 'Yes', 'No', 'No', '2017-02-13 10:35:39');
INSERT INTO `afa110_product_specification` VALUES ('53', '54', 'Intel core i5', '2.30 GHz', '500GB', '4 GB', '39.6 cm (15.6', 'Yes', 'Black', 'DOS', 'Yes', 'Yes', 'No', 'No', '2017-02-13 10:45:53');
INSERT INTO `afa110_product_specification` VALUES ('54', '55', 'IntelÂ® Core i7', '2.6 GHz', '1 TB', '16GB', '15.6', 'Yes', 'Black', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 10:51:38');
INSERT INTO `afa110_product_specification` VALUES ('55', '56', 'Intel Core i3-6th Generation', '2.30 GHz', '500GB', '4GB', '14\"', 'Yes', 'Black', 'Windows 10 Home 64', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 10:57:00');
INSERT INTO `afa110_product_specification` VALUES ('56', '57', 'Intel Celeron 2957U', '1.4GHz', '500GB', '2GB', '15.6', 'Yes', 'Black', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 11:07:37');
INSERT INTO `afa110_product_specification` VALUES ('57', '58', ' Intel Atom x5-Z8300', '1.44GH', '32GB', '2GB', '10.1', 'Yes', 'Black', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 11:15:07');
INSERT INTO `afa110_product_specification` VALUES ('58', '59', 'CORE i3 5005U', '2 GHz', '500GB', '4 GB', '', 'Yes', 'Black', 'DOS', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 11:20:40');
INSERT INTO `afa110_product_specification` VALUES ('59', '60', 'Core i3', '2.0 GHz', '500GB', '4GB', '35.6 cm (14', 'Yes', 'White', 'Window 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 11:26:54');
INSERT INTO `afa110_product_specification` VALUES ('60', '61', 'Intel Pentium Quad Core', '2.16GHZ', '500GB', '2GB', '15.6', 'Yes', 'Black', 'DOS', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 11:31:42');
INSERT INTO `afa110_product_specification` VALUES ('61', '62', 'Intel Core i7 6500U ', '2.5 GHz', '500GB', '8GB', '15.6 Inches', 'Yes', 'Black', 'Windows 10', 'Yes', 'Yes', 'Yes', 'No', '2017-02-13 11:38:00');
INSERT INTO `afa110_product_specification` VALUES ('62', '63', 'Intel Core i5', 'Athlon 64 4200+', '1 TB HDD 5400 rpm', '8 GB SDRAM DDR3', '15.6 inches', 'yes', 'black', 'Windows', 'yes', 'yes', 'no', 'no', '2017-02-20 07:46:57');

-- ----------------------------
-- Table structure for `afa110_review`
-- ----------------------------
DROP TABLE IF EXISTS `afa110_review`;
CREATE TABLE `afa110_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_date` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `comment` text,
  `status` varchar(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of afa110_review
-- ----------------------------
INSERT INTO `afa110_review` VALUES ('1', 'February 21 2017', '9', 'PrincessSabir', 'princesssabir1@gmail.com', '', 'Aasim Your Web Is The Best N Very Nice ALLAH Bless U In Your All Sucsess I Wish U Happy With Work In Your Whole Life ', 'ACTIVE', '2018-02-27 19:54:52');
INSERT INTO `afa110_review` VALUES ('2', 'February 21 2017', '1', 'asim', 'asim.saleem.memon124@gmail.com', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'ACTIVE', '2018-02-27 19:54:54');
INSERT INTO `afa110_review` VALUES ('3', 'February 21 2017', '1', ';lsvd,/.', 'amir.saleem.memon124@gmail.com', 'sdl,c/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ACTIVE', '2018-02-27 19:54:55');
INSERT INTO `afa110_review` VALUES ('4', 'February 22 2017', '9', 'Ayaz Ahmed', 'ayzeetech@gmail.com', 'blog.ayzeetech.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ACTIVE', '2018-02-27 19:54:55');
INSERT INTO `afa110_review` VALUES ('5', 'February 27 2018', '9', 'ayaz', 'ayzeetech@gmail.com', 'blog.ayzeetech.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ACTIVE', '2018-02-27 19:54:56');
INSERT INTO `afa110_review` VALUES ('6', '15 03 2018', '1', 'ayaz ahmed', 'ayzeetech@gmail.com', 'blog.ayzeetech.com', 'Again and again comment for this website.', 'ACTIVE', '2018-03-15 20:47:22');

-- ----------------------------
-- View structure for `product_views`
-- ----------------------------
DROP VIEW IF EXISTS `product_views`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_views` AS select `afa110_product`.`id` AS `id`,`afa110_product`.`brand_id` AS `brand_id`,`afa110_product`.`create_date` AS `create_date`,`afa110_product`.`title` AS `title`,`afa110_product`.`slug` AS `slug`,`afa110_product`.`code` AS `code`,`afa110_product`.`product_condition` AS `product_condition`,`afa110_product`.`price` AS `price`,`afa110_product`.`description` AS `description`,`afa110_product`.`product_img` AS `product_img`,`afa110_product`.`views` AS `views`,`afa110_product`.`status` AS `status`,`afa110_product`.`meta_description` AS `meta_description`,`afa110_product`.`meta_keyword` AS `meta_keyword`,`afa110_product_gallery`.`id` AS `gallery_id`,`afa110_product_gallery`.`product_id` AS `gallery_product_id`,`afa110_product_gallery`.`gallery_img` AS `gallery_img`,`afa110_product_specification`.`id` AS `spec_id`,`afa110_product_specification`.`product_id` AS `product_id`,`afa110_product_specification`.`processor_type` AS `processor_type`,`afa110_product_specification`.`processor_speed` AS `processor_speed`,`afa110_product_specification`.`hard_drive_size` AS `hard_drive_size`,`afa110_product_specification`.`installed_ram` AS `installed_ram`,`afa110_product_specification`.`screen_size` AS `screen_size`,`afa110_product_specification`.`camera` AS `camera`,`afa110_product_specification`.`color` AS `color`,`afa110_product_specification`.`operating_system` AS `operating_system`,`afa110_product_specification`.`bluetooth` AS `bluetooth`,`afa110_product_specification`.`wifi` AS `wifi`,`afa110_product_specification`.`lan` AS `lan`,`afa110_product_specification`.`modem` AS `modem` from ((`afa110_product` join `afa110_product_gallery` on((`afa110_product`.`id` = `afa110_product_gallery`.`product_id`))) join `afa110_product_specification` on((`afa110_product`.`id` = `afa110_product_specification`.`product_id`))) ;
