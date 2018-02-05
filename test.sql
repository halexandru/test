/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 05/02/2018 00:44:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for general
-- ----------------------------
DROP TABLE IF EXISTS `general`;
CREATE TABLE `general`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_us` varchar(5000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_change` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of general
-- ----------------------------
INSERT INTO `general` VALUES (1, '<p>Esports is known as electronic sports or pro gaming, were various professional <a href=\"/best-esports-players\">players</a> and their <a href=\"/best-esports-teams\">teams</a> play organized esports tournaments. The various genres in esports include real-time strategy, fighting, shooting and the multiplayer battle arena. World famous tournaments such asÂ <a href=\"/league-of-legends-betting-esports-betting-at-esportsonly-com\">League of Legends</a>Â World Championships,Â <a href=\"/call-of-duty-betting\">Call of Duty</a>Â World League,Â <a href=\"/overwatch-betting\">Overwatch</a>,Â <a href=\"/dota-2-betting\">Dota2</a>, <a href=\"/fifa-betting\">FIFA</a> andÂ <a href=\"/csgo-betting-sites\">CSGOÂ </a>Championships and soÂ manyÂ more provide live streams of the competition together with great prize pools amounting to millions of dollars. We are also offering our users the ease to followÂ live <a href=\"/esports-tournaments\">esports tournaments</a> on this site.</p><p><span>EsportsOnly.com is part of an affiliate gaming company that has over 15 years of experience under its belt in the field of online Poker and Casino. OurÂ reputation ofÂ proficiency and professionalism has been proven successful over the years. We constantly strive for excellence, staying ahead of our competition and keeping up to date with the latest in <a href=\"/best-esports-betting-sites\">esports betting</a>, offering the very <a href=\"[sitetree_link,id=]\">best esports odds</a> from our top <a href=\"/partner-reviews\">esports partners</a>.</span></p><p><span>We are an affiliate business with aÂ </span>great<span>Â return on investment using the very latest front and backend technology so as to provide a secure online experience for our users. We believe that strong relationships between ourÂ </span>company<span>Â and our affiliate partners within the eSports sectorÂ isÂ key for our business to grow in the awesome journey of the ever-growing eSports gaming industry.Â </span></p>', '2018-02-04 11:37:36');

-- ----------------------------
-- Table structure for latest_articles
-- ----------------------------
DROP TABLE IF EXISTS `latest_articles`;
CREATE TABLE `latest_articles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `short_description` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `published_date` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_change` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of latest_articles
-- ----------------------------
INSERT INTO `latest_articles` VALUES (1, 'Esports world update: Upcoming Events and shocking situations.', 'Esports world update: Upcoming Events and shocking situations.', 'A brief esports world update of upcoming events, scene updates as well as some unexpected news such as Mail.Ru acquiring esports giant ESForce.', '/esports-world-update-upcoming-events-and-shocking-situations', 'News', 'Jan 24, 2018', '2018-02-04 11:37:24');
INSERT INTO `latest_articles` VALUES (2, 'Valve Rescinds Dota 2 Event in Philippines Allegedly Due To Drug-Related Issues', 'Valve Rescinds Dota 2 Event in Philippines Allegedly Due To Drug-Related Issues', 'Valve have decided to cancel The Galaxy Battles in the Philippines allegedly due to esports players having to undergo drug testing before entering the country.', '/valve-cancels-dota-2-event-in-philippines-due-to-drug-testing-of-players', 'DOTA 2 ', 'Jan 04, 2018', '2018-02-04 11:37:24');
INSERT INTO `latest_articles` VALUES (3, 'NALCS: Which is Better, TSM or TL?', 'NALCS: Which is Better, TSM or TL?', 'Out of all the new rosters about to go for NALCS, TSM and Team Liquid look the strongest. Team Liquid went for the vets while TSM decided to import from EU.', '/nalcs-which-is-better-tsm-or-tl', 'League Of Legends ', 'Dec 18, 2017', '2018-02-04 11:37:24');
INSERT INTO `latest_articles` VALUES (4, 'The Overwatch League Pre-season Day 3 Recap', 'The Overwatch League Pre-season Day 3 Recap', 'Day two of the Overwatch League Pre-Season was a relaxing run through just a couple matches, unlike day three in which we had 6 exciting back to back matches.', '/the-overwatch-league-pre-season-day-3-recap', 'Overwatch ', 'Dec 14, 2017', '2018-02-04 11:37:24');
INSERT INTO `latest_articles` VALUES (5, 'Esports world update: Upcoming Events and shocking situations.', 'Esports world update: Upcoming Events and shocking situations.', 'A brief esports world update of upcoming events, scene updates as well as some unexpected news such as Mail.Ru acquiring esports giant ESForce.', '/esports-world-update-upcoming-events-and-shocking-situations', 'News', 'Jan 24, 2018', '2018-02-04 11:37:35');
INSERT INTO `latest_articles` VALUES (6, 'Valve Rescinds Dota 2 Event in Philippines Allegedly Due To Drug-Related Issues', 'Valve Rescinds Dota 2 Event in Philippines Allegedly Due To Drug-Related Issues', 'Valve have decided to cancel The Galaxy Battles in the Philippines allegedly due to esports players having to undergo drug testing before entering the country.', '/valve-cancels-dota-2-event-in-philippines-due-to-drug-testing-of-players', 'DOTA 2 ', 'Jan 04, 2018', '2018-02-04 11:37:35');
INSERT INTO `latest_articles` VALUES (7, 'NALCS: Which is Better, TSM or TL?', 'NALCS: Which is Better, TSM or TL?', 'Out of all the new rosters about to go for NALCS, TSM and Team Liquid look the strongest. Team Liquid went for the vets while TSM decided to import from EU.', '/nalcs-which-is-better-tsm-or-tl', 'League Of Legends ', 'Dec 18, 2017', '2018-02-04 11:37:35');
INSERT INTO `latest_articles` VALUES (8, 'The Overwatch League Pre-season Day 3 Recap', 'The Overwatch League Pre-season Day 3 Recap', 'Day two of the Overwatch League Pre-Season was a relaxing run through just a couple matches, unlike day three in which we had 6 exciting back to back matches.', '/the-overwatch-league-pre-season-day-3-recap', 'Overwatch ', 'Dec 14, 2017', '2018-02-04 11:37:35');

-- ----------------------------
-- Table structure for toplist
-- ----------------------------
DROP TABLE IF EXISTS `toplist`;
CREATE TABLE `toplist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `operatorlogo` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_change` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of toplist
-- ----------------------------
INSERT INTO `toplist` VALUES (1, '1', '/assets/Uploads/Articles/_resampled/FillWyIyNDAiLCIxNjAiXQ/cs-go-logo.jpg', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">Get Up To â‚¬30 In Free Bets When You Bet â‚¬10</small>\n		\n	', '5.0', '/content/betway-esports', '2018-02-04 11:37:24');
INSERT INTO `toplist` VALUES (2, '2', '/assets/Uploads/Articles/_resampled/FillWyIyNDAiLCIxNjAiXQ/league_of_legends_wallpaper___blue.png', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">Deposit with money or bitcoin. Use Code: ESPONLY</small>\n		\n	', '4.9', '/content/gg-bet', '2018-02-04 11:37:24');
INSERT INTO `toplist` VALUES (3, '3', '/assets/Review/gg-bet/_resampled/FitWyI5MCIsIjU0Il0/GGbet-Logo2.png', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">First Deposit Bonus Up To â‚¬100 | Second Deposit Bonus Up To â‚¬300 </small>\n		\n	', '4.7', '/content/arcanebet', '2018-02-04 11:37:24');
INSERT INTO `toplist` VALUES (4, '4', '/assets/Review/arcanebet/_resampled/FitWyI5MCIsIjU0Il0/arcanebet-logo-square-small.jpg', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">Best Live Odds - Up to $200 Free Bet</small>\n		\n	', '5.0', '/content/spinpalace-sports', '2018-02-04 11:37:24');
INSERT INTO `toplist` VALUES (5, '5', '/assets/Review/spinpalace-sports-2/_resampled/FitWyI5MCIsIjU0Il0/spinpalace-sports-small.png', '\n		\n			<small class=\"toplist_bonus_title\">Free Bet</small>\n			<div class=\"toplist_bonus_amount\">\n				\n					Register and get <br class=\"toplist_bonus_sep\" />&nbsp;<strong class=\"toplist_bonus_highlight\">$10 Free</strong> Bet\n				\n			', '4.5', '/content/pinnacle', '2018-02-04 11:37:24');
INSERT INTO `toplist` VALUES (6, '6', '/assets/Uploads/PartnerLogos/_resampled/FitWyI5MCIsIjU0Il0/Pinnacle-logo2.jpg', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">100% Deposit Bonus up to â‚¬133.7</small>\n		\n	', '4.5', '/content/betspawn', '2018-02-04 11:37:24');
INSERT INTO `toplist` VALUES (7, '1', '/assets/Uploads/Articles/_resampled/FillWyIyNDAiLCIxNjAiXQ/cs-go-logo.jpg', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">Get Up To â‚¬30 In Free Bets When You Bet â‚¬10</small>\n		\n	', '5.0', '/content/betway-esports', '2018-02-04 11:37:35');
INSERT INTO `toplist` VALUES (8, '2', '/assets/Uploads/Articles/_resampled/FillWyIyNDAiLCIxNjAiXQ/league_of_legends_wallpaper___blue.png', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">Deposit with money or bitcoin. Use Code: ESPONLY</small>\n		\n	', '4.9', '/content/gg-bet', '2018-02-04 11:37:35');
INSERT INTO `toplist` VALUES (9, '3', '/assets/Review/gg-bet/_resampled/FitWyI5MCIsIjU0Il0/GGbet-Logo2.png', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">First Deposit Bonus Up To â‚¬100 | Second Deposit Bonus Up To â‚¬300 </small>\n		\n	', '4.7', '/content/arcanebet', '2018-02-04 11:37:35');
INSERT INTO `toplist` VALUES (10, '4', '/assets/Review/arcanebet/_resampled/FitWyI5MCIsIjU0Il0/arcanebet-logo-square-small.jpg', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">Best Live Odds - Up to $200 Free Bet</small>\n		\n	', '5.0', '/content/spinpalace-sports', '2018-02-04 11:37:35');
INSERT INTO `toplist` VALUES (11, '5', '/assets/Review/spinpalace-sports-2/_resampled/FitWyI5MCIsIjU0Il0/spinpalace-sports-small.png', '\n		\n			<small class=\"toplist_bonus_title\">Free Bet</small>\n			<div class=\"toplist_bonus_amount\">\n				\n					Register and get <br class=\"toplist_bonus_sep\" />&nbsp;<strong class=\"toplist_bonus_highlight\">$10 Free</strong> Bet\n				\n			', '4.5', '/content/pinnacle', '2018-02-04 11:37:35');
INSERT INTO `toplist` VALUES (12, '6', '/assets/Uploads/PartnerLogos/_resampled/FitWyI5MCIsIjU0Il0/Pinnacle-logo2.jpg', '\n		\n			<small class=\"toplist_bonus_title toplist_bonus_title-noAmount\">100% Deposit Bonus up to â‚¬133.7</small>\n		\n	', '4.5', '/content/betspawn', '2018-02-04 11:37:36');

SET FOREIGN_KEY_CHECKS = 1;
