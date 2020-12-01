/*
 Navicat Premium Data Transfer

 Source Server         : A
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : amzmpomy_barbers

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 27/10/2020 18:23:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barberid` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES (1, 43, 'sadahghfddah', '2020-09-18 01:35:10', '2020-09-18 01:35:10');
INSERT INTO `announcement` VALUES (2, 43, '5454545454', '2020-09-18 01:36:15', '2020-09-18 01:36:15');
INSERT INTO `announcement` VALUES (3, 43, 'sadfgdah', '2020-09-18 01:36:45', '2020-09-18 01:36:45');
INSERT INTO `announcement` VALUES (4, 43, 'ewwwwe', '2020-09-18 01:40:55', '2020-09-18 01:40:55');

-- ----------------------------
-- Table structure for aspnetusers
-- ----------------------------
DROP TABLE IF EXISTS `aspnetusers`;
CREATE TABLE `aspnetusers`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `emailconfirmed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passwordhash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `securitystamp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonenumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonenumberconfirmed` int(11) NOT NULL,
  `twofactorenabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lockoutenddateutc` datetime(0) NOT NULL,
  `lockoutenabled` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accessfailedcount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for barbers
-- ----------------------------
DROP TABLE IF EXISTS `barbers`;
CREATE TABLE `barbers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `n_id_user` int(11) NOT NULL,
  `n_id_user_barber` int(11) NOT NULL,
  `block` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sz_etc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barbers
-- ----------------------------
INSERT INTO `barbers` VALUES (23, 31, 30, '0', NULL, '2020-09-17 02:26:35', '2020-09-17 02:26:35');
INSERT INTO `barbers` VALUES (24, 31, 34, '0', NULL, '2020-09-17 05:41:40', '2020-09-17 05:41:40');
INSERT INTO `barbers` VALUES (25, 31, 35, '0', NULL, '2020-09-17 09:01:54', '2020-09-17 09:01:54');
INSERT INTO `barbers` VALUES (30, 44, 43, '0', NULL, NULL, NULL);
INSERT INTO `barbers` VALUES (31, 46, 30, '0', NULL, '2020-09-18 09:47:15', '2020-09-18 09:47:15');
INSERT INTO `barbers` VALUES (32, 46, 35, '0', NULL, '2020-09-18 09:49:23', '2020-09-18 09:49:23');
INSERT INTO `barbers` VALUES (33, 33, 30, '0', NULL, '2020-09-19 04:36:25', '2020-09-19 04:36:25');
INSERT INTO `barbers` VALUES (34, 48, 34, '0', NULL, '2020-09-22 18:34:42', '2020-09-22 18:34:42');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barberid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `serviceid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'all services have to  splite <,>',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` int(11) NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:requested, 1:cancelled, 2:confirmed, 3:completed, 4:noshow',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 30, 31, '7', '2020-09-17', '09:30 AM', 1, 3, '2020-09-17 02:27:09', '2020-09-17 02:33:53');
INSERT INTO `book` VALUES (2, 30, 31, '7', '2020-09-17', '09:45 AM', 1, 4, '2020-09-17 02:32:54', '2020-09-17 02:34:19');
INSERT INTO `book` VALUES (3, 30, 31, '7', '2020-09-17', '10:00 AM', 1, 3, '2020-09-17 02:33:19', '2020-09-18 01:18:49');
INSERT INTO `book` VALUES (4, 30, 31, '9', '2020-09-17', '11:00 AM', 1, 0, '2020-09-17 04:59:24', '2020-09-17 04:59:24');
INSERT INTO `book` VALUES (5, 30, 31, '8', '2020-09-24', '02:30 PM', 1, 0, '2020-09-17 05:00:18', '2020-09-17 05:00:18');
INSERT INTO `book` VALUES (6, 34, 31, '10', '2020-09-20', '09:30 AM', 1, 2, '2020-09-17 05:54:28', '2020-09-17 05:56:51');
INSERT INTO `book` VALUES (7, 30, 31, '7', '2020-09-18', '10:15 AM', 1, 3, '2020-09-17 06:45:04', '2020-09-17 06:46:58');
INSERT INTO `book` VALUES (8, 30, 31, '9', '2020-09-17', '09:30 AM', 1, 2, '2020-09-17 09:12:26', '2020-09-17 09:13:04');
INSERT INTO `book` VALUES (9, 30, 31, '8', '2020-09-17', '09:45 AM', 1, 0, '2020-09-17 09:17:15', '2020-09-17 09:17:15');
INSERT INTO `book` VALUES (10, 30, 31, '8', '2020-09-17', '09:00 AM', 1, 2, '2020-09-17 09:19:49', '2020-09-18 01:19:05');
INSERT INTO `book` VALUES (11, 30, 31, '7', '2020-09-18', '09:00 AM', 1, 2, '2020-09-18 08:21:45', '2020-09-18 08:23:09');
INSERT INTO `book` VALUES (12, 34, 31, '10', '2020-09-20', '09:30 AM', 1, 0, '2020-09-18 08:34:11', '2020-09-18 08:34:11');
INSERT INTO `book` VALUES (13, 30, 31, '8', '2020-09-19', '09:30 AM', 1, 0, '2020-09-18 08:34:57', '2020-09-18 08:34:57');
INSERT INTO `book` VALUES (14, 30, 46, '8', '2020-09-18', '09:10 AM', 0, 0, '2020-09-18 09:47:15', '2020-09-18 09:47:15');
INSERT INTO `book` VALUES (15, 35, 46, '11', '2020-09-18', '09:10 AM', 0, 0, '2020-09-18 09:49:22', '2020-09-18 09:49:22');
INSERT INTO `book` VALUES (16, 30, 31, '7', '2020-09-19', '09:00 AM', 1, 0, '2020-09-18 23:00:02', '2020-09-18 23:00:02');
INSERT INTO `book` VALUES (17, 30, 31, '7', '2020-09-19', '09:50 AM', 1, 0, '2020-09-18 23:01:18', '2020-09-18 23:01:18');
INSERT INTO `book` VALUES (18, 30, 31, '7', '2020-09-19', '10:00 AM', 1, 0, '2020-09-19 03:24:23', '2020-09-19 03:24:23');
INSERT INTO `book` VALUES (19, 30, 31, '8', '2020-09-19', '09:40 AM', 1, 2, '2020-09-19 03:24:54', '2020-09-19 03:25:14');
INSERT INTO `book` VALUES (20, 30, 33, '7', '2020-09-19', '08:00 AM', 1, 2, '2020-09-19 04:36:25', '2020-09-19 04:39:15');
INSERT INTO `book` VALUES (21, 30, 33, '7', '2020-09-19', '08:30 AM', 1, 3, '2020-09-19 04:38:22', '2020-09-19 04:39:48');
INSERT INTO `book` VALUES (22, 30, 31, '7', '2020-09-19', '01:30 PM', 1, 2, '2020-09-19 08:08:40', '2020-09-19 08:09:01');
INSERT INTO `book` VALUES (23, 34, 31, '10', '2020-09-20', '11:00 AM', 1, 0, '2020-09-20 01:00:17', '2020-09-20 01:00:17');
INSERT INTO `book` VALUES (24, 30, 31, '7', '2020-09-21', '09:20 AM', 1, 1, '2020-09-20 01:06:32', '2020-09-20 01:08:23');
INSERT INTO `book` VALUES (25, 30, 31, '7', '2020-09-21', '09:20 AM', 1, 4, '2020-09-20 02:33:34', '2020-09-20 02:34:25');
INSERT INTO `book` VALUES (26, 30, 31, '7', '2020-09-21', '09:20 AM', 1, 4, '2020-09-20 02:34:59', '2020-09-20 02:35:16');
INSERT INTO `book` VALUES (27, 30, 31, '7', '2020-09-22', '10:10 AM', 1, 2, '2020-09-20 02:40:21', '2020-09-20 02:40:47');
INSERT INTO `book` VALUES (28, 30, 31, '7', '2020-09-21', '10:20 AM', 1, 0, '2020-09-20 06:51:34', '2020-09-20 06:51:34');
INSERT INTO `book` VALUES (29, 30, 31, '7', '2020-09-21', '10:00 AM', 1, 3, '2020-09-21 05:38:22', '2020-09-21 05:38:48');
INSERT INTO `book` VALUES (30, 30, 31, '7', '2020-09-22', '09:20 AM', 1, 4, '2020-09-21 05:41:33', '2020-09-21 05:42:54');
INSERT INTO `book` VALUES (31, 30, 31, '7', '2020-09-22', '09:20 AM', 1, 0, '2020-09-22 05:49:47', '2020-09-22 05:49:47');
INSERT INTO `book` VALUES (32, 30, 31, '7', '2020-09-22', '10:00 AM', 1, 2, '2020-09-22 05:56:33', '2020-09-22 05:56:58');
INSERT INTO `book` VALUES (33, 30, 31, '7', '2020-09-23', '10:00 AM', 1, 0, '2020-09-22 06:06:57', '2020-09-22 06:06:57');
INSERT INTO `book` VALUES (34, 34, 48, '10', '2020-09-23', '03:40 PM', 0, 0, '2020-09-22 18:34:41', '2020-09-22 18:34:41');
INSERT INTO `book` VALUES (35, 30, 31, '7', '2020-09-23', '10:10 AM', 1, 2, '2020-09-22 22:44:11', '2020-09-22 22:44:36');
INSERT INTO `book` VALUES (36, 34, 48, '10', '2020-09-23', '09:30 AM', 0, 0, '2020-09-23 03:58:45', '2020-09-23 03:58:45');
INSERT INTO `book` VALUES (37, 30, 31, '7', '2020-09-26', '08:20 AM', 0, 0, '2020-09-25 20:47:55', '2020-09-25 20:47:55');
INSERT INTO `book` VALUES (38, 30, 31, '7', '2020-09-28', '09:20 AM', 1, 0, '2020-09-26 23:32:34', '2020-09-26 23:32:34');
INSERT INTO `book` VALUES (39, 30, 31, '7', '2020-09-28', '09:30 AM', 1, 0, '2020-09-27 05:07:44', '2020-09-27 05:07:44');
INSERT INTO `book` VALUES (40, 30, 31, '7', '2020-09-29', '09:10 AM', 1, 2, '2020-09-29 09:46:39', '2020-09-29 09:47:14');
INSERT INTO `book` VALUES (41, 30, 31, '7', '2020-09-29', '09:30 AM', 1, 2, '2020-09-29 09:50:18', '2020-09-29 09:51:07');
INSERT INTO `book` VALUES (42, 30, 31, '7', '2020-09-29', '03:30 PM', 1, 0, '2020-09-30 02:02:47', '2020-09-30 02:02:47');

-- ----------------------------
-- Table structure for book_setting
-- ----------------------------
DROP TABLE IF EXISTS `book_setting`;
CREATE TABLE `book_setting`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barberid` int(11) NOT NULL,
  `auto_confirm` int(11) NOT NULL DEFAULT 0 COMMENT '0:disable, 1:enable',
  `multi_service` int(11) NOT NULL DEFAULT 0 COMMENT '0:disable, 1:enable',
  `require_phone` int(11) NOT NULL DEFAULT 0 COMMENT '0:disable, 1:enable',
  `auto_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `bookinterval` int(11) NOT NULL DEFAULT 10,
  `last_limit_hour` int(11) NOT NULL DEFAULT 0,
  `last_limit_min` int(11) NOT NULL DEFAULT 0,
  `future_limit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '12 month',
  `requrring_limit` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_setting
-- ----------------------------
INSERT INTO `book_setting` VALUES (12, 29, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-17 01:54:21', '2020-09-17 01:54:21');
INSERT INTO `book_setting` VALUES (13, 30, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-17 02:04:59', '2020-09-17 02:04:59');
INSERT INTO `book_setting` VALUES (14, 34, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-17 05:20:49', '2020-09-17 05:20:49');
INSERT INTO `book_setting` VALUES (15, 35, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-17 06:06:19', '2020-09-17 06:06:19');
INSERT INTO `book_setting` VALUES (16, 36, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-17 23:32:15', '2020-09-17 23:32:15');
INSERT INTO `book_setting` VALUES (17, 39, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-18 00:02:00', '2020-09-18 00:02:00');
INSERT INTO `book_setting` VALUES (18, 42, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-18 00:31:22', '2020-09-18 00:31:22');
INSERT INTO `book_setting` VALUES (19, 43, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-18 01:23:49', '2020-09-18 01:23:49');
INSERT INTO `book_setting` VALUES (20, 47, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-18 09:51:33', '2020-09-18 09:51:33');
INSERT INTO `book_setting` VALUES (21, 49, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-27 05:14:29', '2020-09-27 05:14:29');
INSERT INTO `book_setting` VALUES (22, 51, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-09-28 08:58:34', '2020-09-28 08:58:34');
INSERT INTO `book_setting` VALUES (23, 52, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-14 11:47:49', '2020-10-14 11:47:49');
INSERT INTO `book_setting` VALUES (24, 59, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-14 12:09:25', '2020-10-14 12:09:25');
INSERT INTO `book_setting` VALUES (25, 60, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-14 12:10:28', '2020-10-14 12:10:28');
INSERT INTO `book_setting` VALUES (26, 62, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-14 12:15:03', '2020-10-14 12:15:03');
INSERT INTO `book_setting` VALUES (27, 63, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-15 08:51:34', '2020-10-15 08:51:34');
INSERT INTO `book_setting` VALUES (28, 69, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-16 15:50:30', '2020-10-16 15:50:30');
INSERT INTO `book_setting` VALUES (29, 71, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-16 15:51:48', '2020-10-16 15:51:48');
INSERT INTO `book_setting` VALUES (30, 76, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-16 16:59:51', '2020-10-16 16:59:51');
INSERT INTO `book_setting` VALUES (31, 79, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-16 17:25:11', '2020-10-16 17:25:11');
INSERT INTO `book_setting` VALUES (32, 80, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-16 17:35:44', '2020-10-16 17:35:44');
INSERT INTO `book_setting` VALUES (33, 81, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-16 17:36:07', '2020-10-16 17:36:07');
INSERT INTO `book_setting` VALUES (34, 89, 0, 0, 0, NULL, 0, 0, 0, '0', 0, '2020-10-16 18:55:14', NULL);
INSERT INTO `book_setting` VALUES (35, 90, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, NULL, NULL);
INSERT INTO `book_setting` VALUES (36, 91, 0, 0, 0, NULL, 10, 0, 0, '12 month', 0, '2020-10-16 19:01:11', NULL);

-- ----------------------------
-- Table structure for bookcomment
-- ----------------------------
DROP TABLE IF EXISTS `bookcomment`;
CREATE TABLE `bookcomment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bookid` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookcomment
-- ----------------------------
INSERT INTO `bookcomment` VALUES (17, 1, 30, 'Thanks for accepting my appointment', '2020-09-17 02:30:09', '2020-09-17 02:30:09');
INSERT INTO `bookcomment` VALUES (18, 1, 31, 'Please be here on time', '2020-09-17 02:31:03', '2020-09-17 02:31:03');
INSERT INTO `bookcomment` VALUES (19, 6, 31, 'llego?', '2020-09-17 05:55:17', '2020-09-17 05:55:17');
INSERT INTO `bookcomment` VALUES (20, 6, 31, 'llego?', '2020-09-17 05:55:20', '2020-09-17 05:55:20');
INSERT INTO `bookcomment` VALUES (21, 6, 34, 'sii', '2020-09-17 05:55:45', '2020-09-17 05:55:45');
INSERT INTO `bookcomment` VALUES (22, 6, 34, 'listo', '2020-09-17 05:57:10', '2020-09-17 05:57:10');
INSERT INTO `bookcomment` VALUES (23, 6, 31, 'ok', '2020-09-17 05:57:12', '2020-09-17 05:57:12');
INSERT INTO `bookcomment` VALUES (24, 6, 31, 'Mira very ahora Como cliente', '2020-09-17 05:57:48', '2020-09-17 05:57:48');
INSERT INTO `bookcomment` VALUES (25, 6, 31, 'Mira very ahora Como cliente', '2020-09-17 05:57:48', '2020-09-17 05:57:48');
INSERT INTO `bookcomment` VALUES (26, 6, 34, 'ok', '2020-09-17 05:58:15', '2020-09-17 05:58:15');
INSERT INTO `bookcomment` VALUES (27, 6, 31, 'ok', '2020-09-17 05:59:22', '2020-09-17 05:59:22');
INSERT INTO `bookcomment` VALUES (28, 7, 30, 'Hello', '2020-09-17 06:46:28', '2020-09-17 06:46:28');
INSERT INTO `bookcomment` VALUES (29, 7, 31, 'hello', '2020-09-17 06:46:49', '2020-09-17 06:46:49');
INSERT INTO `bookcomment` VALUES (30, 7, 30, 'Testing', '2020-09-17 06:46:49', '2020-09-17 06:46:49');
INSERT INTO `bookcomment` VALUES (31, 7, 31, 'test', '2020-09-17 06:47:01', '2020-09-17 06:47:01');
INSERT INTO `bookcomment` VALUES (32, 7, 31, 'test', '2020-09-17 06:47:02', '2020-09-17 06:47:02');
INSERT INTO `bookcomment` VALUES (33, 7, 30, 'one more', '2020-09-17 06:47:23', '2020-09-17 06:47:23');
INSERT INTO `bookcomment` VALUES (34, 7, 31, 'test', '2020-09-17 06:47:45', '2020-09-17 06:47:45');
INSERT INTO `bookcomment` VALUES (35, 7, 31, 'test', '2020-09-17 06:47:46', '2020-09-17 06:47:46');
INSERT INTO `bookcomment` VALUES (36, 7, 30, '????', '2020-09-17 06:48:02', '2020-09-17 06:48:02');
INSERT INTO `bookcomment` VALUES (37, 11, 31, 'ok', '2020-09-18 08:23:43', '2020-09-18 08:23:43');
INSERT INTO `bookcomment` VALUES (38, 14, 46, 'hi, I am Sim', '2020-09-18 09:47:48', '2020-09-18 09:47:48');
INSERT INTO `bookcomment` VALUES (39, 14, 46, 'How are you?', '2020-09-18 09:47:58', '2020-09-18 09:47:58');
INSERT INTO `bookcomment` VALUES (40, 19, 30, 'test', '2020-09-19 03:25:29', '2020-09-19 03:25:29');
INSERT INTO `bookcomment` VALUES (41, 19, 30, 'test', '2020-09-19 03:26:08', '2020-09-19 03:26:08');
INSERT INTO `bookcomment` VALUES (42, 21, 30, 'ahora the debe mostrar UN mensajito en la campanita', '2020-09-19 04:40:31', '2020-09-19 04:40:31');
INSERT INTO `bookcomment` VALUES (43, 21, 33, 'sii', '2020-09-19 04:41:33', '2020-09-19 04:41:33');
INSERT INTO `bookcomment` VALUES (44, 21, 30, 'Bueno ya casi lo voy a poner en el app store', '2020-09-19 04:43:08', '2020-09-19 04:43:08');
INSERT INTO `bookcomment` VALUES (45, 21, 33, 'ohhh ok', '2020-09-19 04:43:49', '2020-09-19 04:43:49');
INSERT INTO `bookcomment` VALUES (46, 5, 31, 'trae pincho', '2020-09-19 08:09:35', '2020-09-19 08:09:35');
INSERT INTO `bookcomment` VALUES (47, 27, 31, 'hell', '2020-09-20 02:41:22', '2020-09-20 02:41:22');
INSERT INTO `bookcomment` VALUES (48, 29, 31, 'hello', '2020-09-21 05:39:25', '2020-09-21 05:39:25');
INSERT INTO `bookcomment` VALUES (49, 32, 31, 'hello', '2020-09-22 05:57:29', '2020-09-22 05:57:29');
INSERT INTO `bookcomment` VALUES (50, 40, 31, 'test', '2020-09-29 09:47:34', '2020-09-29 09:47:34');

-- ----------------------------
-- Table structure for cuts
-- ----------------------------
DROP TABLE IF EXISTS `cuts`;
CREATE TABLE `cuts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `n_id_user` int(11) NOT NULL,
  `sz_cuts` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sz_etc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuts
-- ----------------------------
INSERT INTO `cuts` VALUES (5, 31, '/uploads/cut/091620202023165f625814482f2uploadImage.png', NULL, '2020-09-17 02:23:16', '2020-09-17 02:23:16');
INSERT INTO `cuts` VALUES (6, 31, '/uploads/cut/091620202023295f625821dd2a4uploadImage.png', NULL, '2020-09-17 02:23:29', '2020-09-17 02:23:29');
INSERT INTO `cuts` VALUES (7, 46, '/uploads/cut/091820200346005f6411586c83auploadImage.png', NULL, '2020-09-18 09:46:00', '2020-09-18 09:46:00');

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barberid` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES (5, 30, '/uploads/gallery/092920200340225f729086b0cc9uploadImage.png', '2020-09-29 09:40:22', '2020-09-29 09:40:22');
INSERT INTO `gallery` VALUES (6, 30, '/uploads/gallery/092920200340415f72909948956uploadImage.png', '2020-09-29 09:40:41', '2020-09-29 09:40:41');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barberid` int(11) NOT NULL,
  `bio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (3, 30, 'Contact', '7320000000', '2020-09-17 02:11:07', '2020-09-17 02:11:07');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barberid` int(11) NOT NULL,
  `locationType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `streetAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sunday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `monday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tuesday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wednesday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `thursday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `friday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `saturday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (6, 30, 'Commercial (Shop, Studio, etc.)', 'Trumper Barbershop', '200 Meister Ave', 'na', 'Branchburg', 'NJ', '08876', 'USA', NULL, '09:00-12:00,12:30-18:00', '09:00-12:00,12:30-18:00', '09:00-12:00,12:30-18:00', '09:00-12:00,12:30-18:00', '08:00-12:00,12:30-19:00', '08:00-12:00,13:00-19:00', '40.6045522', '-74.7155491', '2020-09-17 02:08:51', '2020-09-17 05:13:13');
INSERT INTO `location` VALUES (7, 34, 'Commercial (Shop, Studio, etc.)', 'barber 1', 'av. República de colombia, ciudad real 2', '1', 'santodomingo', 'santodomingo', '10801', 'República Dominicana', '09:00-12:00,13:00-18:00', NULL, NULL, '09:00-12:00,13:00-18:00', NULL, NULL, NULL, '18.5083181', '-69.9817038', '2020-09-17 05:24:52', '2020-09-19 04:31:48');
INSERT INTO `location` VALUES (8, 35, 'Commercial (Shop, Studio, etc.)', 'Obama Barbershop', '63 Pennsylvania way', 'na', 'North Brunswick', 'NJ', '08902', 'USA', NULL, '09:00-12:00,14:00-18:00', '09:00-12:00,14:00-18:00', '09:00-12:00,14:00-18:00', '09:00-12:00,14:00-18:00', '09:00-12:00,14:00-18:00', '09:00-12:00,14:00-18:00', '40.4560369', '-74.4729665', '2020-09-17 06:07:57', '2020-09-17 06:08:52');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_05_06_184313_create_review_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_05_06_184814_create_barbers_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_05_06_194813_create_cuts_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_08_12_192058_create_gallery_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_08_13_114330_create_support_feedback_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_08_13_114331_create_book_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_08_13_114337_create_location_table', 1);
INSERT INTO `migrations` VALUES (14, '2020_08_13_114338_create_info_table', 1);
INSERT INTO `migrations` VALUES (15, '2020_08_13_114339_create_service_table', 1);
INSERT INTO `migrations` VALUES (16, '2020_09_03_091154_create_book_comment_table', 1);
INSERT INTO `migrations` VALUES (17, '2020_09_03_091258_create_notification_table', 1);
INSERT INTO `migrations` VALUES (18, '2020_09_03_091343_create_announcement_table', 1);
INSERT INTO `migrations` VALUES (19, '2020_09_03_091343_create_book_setting_table', 1);

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `senderid` int(11) NOT NULL,
  `receiverid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0:book, 1:review, 2:announcement, 3:bookcomment',
  `currentstate` int(11) NOT NULL COMMENT 'current book state, current barber rate',
  `show` int(11) NOT NULL DEFAULT 0 COMMENT '0:unread, 1:read',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 252 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES (128, 31, 30, 1, 0, 0, 1, '2020-09-17 02:27:10', '2020-09-17 02:28:32');
INSERT INTO `notification` VALUES (129, 30, 31, 1, 0, 2, 1, '2020-09-17 02:28:50', '2020-09-17 02:29:03');
INSERT INTO `notification` VALUES (130, 30, 31, 17, 3, -1, 1, '2020-09-17 02:30:09', '2020-09-17 02:30:25');
INSERT INTO `notification` VALUES (131, 31, 30, 18, 3, -1, 1, '2020-09-17 02:31:03', '2020-09-17 02:33:48');
INSERT INTO `notification` VALUES (132, 31, 30, 2, 0, 0, 1, '2020-09-17 02:32:55', '2020-09-17 02:33:48');
INSERT INTO `notification` VALUES (133, 31, 30, 3, 0, 0, 1, '2020-09-17 02:33:20', '2020-09-17 02:33:48');
INSERT INTO `notification` VALUES (134, 30, 31, 1, 0, 3, 1, '2020-09-17 02:33:53', '2020-09-17 02:40:17');
INSERT INTO `notification` VALUES (135, 30, 31, 2, 0, 4, 1, '2020-09-17 02:34:12', '2020-09-17 02:40:17');
INSERT INTO `notification` VALUES (136, 30, 31, 2, 0, 4, 1, '2020-09-17 02:34:19', '2020-09-17 02:40:17');
INSERT INTO `notification` VALUES (137, 30, 31, 3, 0, 2, 1, '2020-09-17 02:34:33', '2020-09-17 02:40:17');
INSERT INTO `notification` VALUES (138, 31, 30, -1, 1, 4, 1, '2020-09-17 04:57:47', '2020-09-17 04:58:10');
INSERT INTO `notification` VALUES (139, 31, 30, 4, 0, 0, 1, '2020-09-17 04:59:24', '2020-09-17 04:59:40');
INSERT INTO `notification` VALUES (140, 31, 30, 5, 0, 0, 1, '2020-09-17 05:00:18', '2020-09-17 05:12:30');
INSERT INTO `notification` VALUES (141, 31, 34, 6, 0, 0, 1, '2020-09-17 05:54:28', '2020-09-17 05:54:58');
INSERT INTO `notification` VALUES (142, 31, 34, 19, 3, -1, 1, '2020-09-17 05:55:17', '2020-09-17 05:55:32');
INSERT INTO `notification` VALUES (143, 31, 34, 20, 3, -1, 1, '2020-09-17 05:55:20', '2020-09-17 05:55:32');
INSERT INTO `notification` VALUES (144, 34, 31, 21, 3, -1, 1, '2020-09-17 05:55:45', '2020-09-17 05:56:18');
INSERT INTO `notification` VALUES (145, 34, 31, 6, 0, 2, 1, '2020-09-17 05:56:51', '2020-09-17 05:56:53');
INSERT INTO `notification` VALUES (146, 34, 31, 22, 3, -1, 1, '2020-09-17 05:57:10', '2020-09-17 05:58:44');
INSERT INTO `notification` VALUES (147, 31, 34, 23, 3, -1, 1, '2020-09-17 05:57:12', '2020-09-17 05:57:25');
INSERT INTO `notification` VALUES (148, 31, 34, 25, 3, -1, 1, '2020-09-17 05:57:48', '2020-09-17 05:58:04');
INSERT INTO `notification` VALUES (149, 31, 34, 24, 3, -1, 1, '2020-09-17 05:57:48', '2020-09-17 05:58:04');
INSERT INTO `notification` VALUES (150, 34, 31, 26, 3, -1, 1, '2020-09-17 05:58:15', '2020-09-17 05:58:44');
INSERT INTO `notification` VALUES (151, 31, 34, 27, 3, -1, 0, '2020-09-17 05:59:22', '2020-09-17 05:59:22');
INSERT INTO `notification` VALUES (152, 31, 30, 7, 0, 0, 1, '2020-09-17 06:45:04', '2020-09-17 06:46:15');
INSERT INTO `notification` VALUES (153, 30, 31, 7, 0, 2, 1, '2020-09-17 06:46:19', '2020-09-17 06:46:42');
INSERT INTO `notification` VALUES (154, 30, 31, 28, 3, -1, 1, '2020-09-17 06:46:28', '2020-09-17 06:46:42');
INSERT INTO `notification` VALUES (155, 31, 30, 29, 3, -1, 1, '2020-09-17 06:46:49', '2020-09-17 06:47:09');
INSERT INTO `notification` VALUES (156, 30, 31, 30, 3, -1, 1, '2020-09-17 06:46:49', '2020-09-17 06:47:25');
INSERT INTO `notification` VALUES (157, 30, 31, 7, 0, 3, 1, '2020-09-17 06:46:58', '2020-09-17 06:47:25');
INSERT INTO `notification` VALUES (158, 31, 30, 31, 3, -1, 1, '2020-09-17 06:47:01', '2020-09-17 06:47:09');
INSERT INTO `notification` VALUES (159, 31, 30, 32, 3, -1, 1, '2020-09-17 06:47:02', '2020-09-17 06:47:09');
INSERT INTO `notification` VALUES (160, 30, 31, 33, 3, -1, 1, '2020-09-17 06:47:24', '2020-09-17 06:47:25');
INSERT INTO `notification` VALUES (161, 31, 30, 34, 3, -1, 1, '2020-09-17 06:47:46', '2020-09-17 06:47:54');
INSERT INTO `notification` VALUES (162, 31, 30, 35, 3, -1, 1, '2020-09-17 06:47:47', '2020-09-17 06:47:54');
INSERT INTO `notification` VALUES (163, 30, 31, 36, 3, -1, 1, '2020-09-17 06:48:02', '2020-09-17 06:48:22');
INSERT INTO `notification` VALUES (164, 31, 30, 8, 0, 0, 1, '2020-09-17 09:12:26', '2020-09-17 09:13:00');
INSERT INTO `notification` VALUES (165, 30, 31, 8, 0, 2, 1, '2020-09-17 09:13:04', '2020-09-17 09:16:48');
INSERT INTO `notification` VALUES (166, 31, 30, 9, 0, 0, 1, '2020-09-17 09:17:16', '2020-09-17 09:20:18');
INSERT INTO `notification` VALUES (167, 31, 30, 10, 0, 0, 1, '2020-09-17 09:19:50', '2020-09-17 09:20:18');
INSERT INTO `notification` VALUES (176, 30, 31, 3, 0, 3, 1, '2020-09-18 01:18:49', '2020-09-18 08:23:33');
INSERT INTO `notification` VALUES (177, 30, 31, 10, 0, 2, 1, '2020-09-18 01:19:05', '2020-09-18 08:23:33');
INSERT INTO `notification` VALUES (183, 43, 44, 1, 2, -1, 0, '2020-09-18 01:35:10', '2020-09-18 01:35:10');
INSERT INTO `notification` VALUES (184, 43, 44, 2, 2, -1, 0, '2020-09-18 01:36:15', '2020-09-18 01:36:15');
INSERT INTO `notification` VALUES (185, 43, 44, 3, 2, -1, 0, '2020-09-18 01:36:45', '2020-09-18 01:36:45');
INSERT INTO `notification` VALUES (186, 43, 44, 4, 2, -1, 0, '2020-09-18 01:40:55', '2020-09-18 01:40:55');
INSERT INTO `notification` VALUES (187, 31, 30, 11, 0, 0, 1, '2020-09-18 08:21:46', '2020-09-18 08:22:20');
INSERT INTO `notification` VALUES (188, 30, 31, 11, 0, 2, 1, '2020-09-18 08:23:09', '2020-09-18 08:23:33');
INSERT INTO `notification` VALUES (189, 31, 30, 37, 3, -1, 1, '2020-09-18 08:23:43', '2020-09-18 23:00:49');
INSERT INTO `notification` VALUES (190, 31, 34, 12, 0, 0, 0, '2020-09-18 08:34:11', '2020-09-18 08:34:11');
INSERT INTO `notification` VALUES (191, 31, 30, 13, 0, 0, 1, '2020-09-18 08:34:57', '2020-09-18 23:00:49');
INSERT INTO `notification` VALUES (192, 46, 30, 14, 0, 0, 1, '2020-09-18 09:47:15', '2020-09-18 23:00:49');
INSERT INTO `notification` VALUES (193, 46, 30, 38, 3, -1, 1, '2020-09-18 09:47:49', '2020-09-18 23:00:49');
INSERT INTO `notification` VALUES (194, 46, 30, 39, 3, -1, 1, '2020-09-18 09:47:58', '2020-09-18 23:00:49');
INSERT INTO `notification` VALUES (195, 46, 35, 15, 0, 0, 0, '2020-09-18 09:49:23', '2020-09-18 09:49:23');
INSERT INTO `notification` VALUES (196, 31, 30, 16, 0, 0, 1, '2020-09-18 23:00:03', '2020-09-18 23:00:49');
INSERT INTO `notification` VALUES (197, 31, 30, 17, 0, 0, 1, '2020-09-18 23:01:18', '2020-09-19 03:25:10');
INSERT INTO `notification` VALUES (198, 31, 30, 18, 0, 0, 1, '2020-09-19 03:24:23', '2020-09-19 03:25:10');
INSERT INTO `notification` VALUES (199, 31, 30, 19, 0, 0, 1, '2020-09-19 03:24:54', '2020-09-19 03:25:10');
INSERT INTO `notification` VALUES (200, 30, 31, 19, 0, 2, 1, '2020-09-19 03:25:14', '2020-09-19 03:26:22');
INSERT INTO `notification` VALUES (201, 30, 31, 40, 3, -1, 1, '2020-09-19 03:25:29', '2020-09-19 03:26:22');
INSERT INTO `notification` VALUES (202, 30, 31, 41, 3, -1, 1, '2020-09-19 03:26:08', '2020-09-19 03:26:22');
INSERT INTO `notification` VALUES (203, 33, 30, 20, 0, 0, 1, '2020-09-19 04:36:25', '2020-09-19 04:38:53');
INSERT INTO `notification` VALUES (204, 33, 30, 21, 0, 0, 1, '2020-09-19 04:38:22', '2020-09-19 04:38:53');
INSERT INTO `notification` VALUES (205, 30, 33, 20, 0, 2, 1, '2020-09-19 04:39:15', '2020-09-19 04:39:50');
INSERT INTO `notification` VALUES (206, 30, 33, 21, 0, 2, 1, '2020-09-19 04:39:42', '2020-09-19 04:39:50');
INSERT INTO `notification` VALUES (207, 30, 33, 21, 0, 3, 1, '2020-09-19 04:39:48', '2020-09-19 04:39:50');
INSERT INTO `notification` VALUES (208, 30, 33, 42, 3, -1, 1, '2020-09-19 04:40:31', '2020-09-19 04:40:42');
INSERT INTO `notification` VALUES (209, 33, 30, 43, 3, -1, 1, '2020-09-19 04:41:33', '2020-09-19 04:42:04');
INSERT INTO `notification` VALUES (210, 30, 33, 44, 3, -1, 1, '2020-09-19 04:43:08', '2020-09-19 04:43:35');
INSERT INTO `notification` VALUES (211, 33, 30, 45, 3, -1, 1, '2020-09-19 04:43:49', '2020-09-19 04:44:07');
INSERT INTO `notification` VALUES (212, 31, 30, 22, 0, 0, 1, '2020-09-19 08:08:40', '2020-09-19 08:08:54');
INSERT INTO `notification` VALUES (213, 30, 31, 22, 0, 2, 1, '2020-09-19 08:09:01', '2020-09-19 08:35:57');
INSERT INTO `notification` VALUES (214, 31, 30, 46, 3, -1, 1, '2020-09-19 08:09:35', '2020-09-19 08:09:48');
INSERT INTO `notification` VALUES (215, 31, 34, 23, 0, 0, 0, '2020-09-20 01:00:17', '2020-09-20 01:00:17');
INSERT INTO `notification` VALUES (216, 31, 30, 24, 0, 0, 1, '2020-09-20 01:06:33', '2020-09-20 01:07:14');
INSERT INTO `notification` VALUES (217, 30, 31, 24, 0, 2, 1, '2020-09-20 01:07:18', '2020-09-20 01:07:33');
INSERT INTO `notification` VALUES (218, 30, 31, 24, 0, 1, 1, '2020-09-20 01:08:23', '2020-09-20 01:08:27');
INSERT INTO `notification` VALUES (219, 31, 30, 25, 0, 0, 1, '2020-09-20 02:33:34', '2020-09-20 02:33:58');
INSERT INTO `notification` VALUES (220, 30, 31, 25, 0, 4, 1, '2020-09-20 02:34:15', '2020-09-20 02:35:43');
INSERT INTO `notification` VALUES (221, 30, 31, 25, 0, 4, 1, '2020-09-20 02:34:20', '2020-09-20 02:35:43');
INSERT INTO `notification` VALUES (222, 30, 31, 25, 0, 4, 1, '2020-09-20 02:34:25', '2020-09-20 02:35:43');
INSERT INTO `notification` VALUES (223, 31, 30, 26, 0, 0, 1, '2020-09-20 02:34:59', '2020-09-20 02:35:13');
INSERT INTO `notification` VALUES (224, 30, 31, 26, 0, 4, 1, '2020-09-20 02:35:16', '2020-09-20 02:35:43');
INSERT INTO `notification` VALUES (225, 31, 30, 27, 0, 0, 1, '2020-09-20 02:40:21', '2020-09-20 02:40:41');
INSERT INTO `notification` VALUES (226, 30, 31, 27, 0, 2, 1, '2020-09-20 02:40:47', '2020-09-20 02:41:04');
INSERT INTO `notification` VALUES (227, 31, 30, 47, 3, -1, 1, '2020-09-20 02:41:22', '2020-09-20 02:41:33');
INSERT INTO `notification` VALUES (228, 31, 30, 28, 0, 0, 1, '2020-09-20 06:51:35', '2020-09-21 05:38:36');
INSERT INTO `notification` VALUES (229, 31, 30, 29, 0, 0, 1, '2020-09-21 05:38:22', '2020-09-21 05:38:36');
INSERT INTO `notification` VALUES (230, 30, 31, 29, 0, 3, 1, '2020-09-21 05:38:48', '2020-09-21 05:39:15');
INSERT INTO `notification` VALUES (231, 31, 30, 48, 3, -1, 1, '2020-09-21 05:39:25', '2020-09-21 05:39:27');
INSERT INTO `notification` VALUES (232, 31, 30, 30, 0, 0, 1, '2020-09-21 05:41:33', '2020-09-21 05:42:50');
INSERT INTO `notification` VALUES (233, 30, 31, 30, 0, 4, 1, '2020-09-21 05:42:54', '2020-09-22 05:57:11');
INSERT INTO `notification` VALUES (234, 31, 30, 31, 0, 0, 1, '2020-09-22 05:49:47', '2020-09-22 05:56:53');
INSERT INTO `notification` VALUES (235, 31, 30, 32, 0, 0, 1, '2020-09-22 05:56:34', '2020-09-22 05:56:53');
INSERT INTO `notification` VALUES (236, 30, 31, 32, 0, 2, 1, '2020-09-22 05:56:58', '2020-09-22 05:57:11');
INSERT INTO `notification` VALUES (237, 31, 30, 49, 3, -1, 1, '2020-09-22 05:57:29', '2020-09-22 05:57:41');
INSERT INTO `notification` VALUES (238, 31, 30, 33, 0, 0, 1, '2020-09-22 06:06:57', '2020-09-22 06:07:42');
INSERT INTO `notification` VALUES (239, 48, 34, 34, 0, 0, 0, '2020-09-22 18:34:42', '2020-09-22 18:34:42');
INSERT INTO `notification` VALUES (240, 31, 30, 35, 0, 0, 1, '2020-09-22 22:44:11', '2020-09-22 22:44:26');
INSERT INTO `notification` VALUES (241, 30, 31, 35, 0, 2, 1, '2020-09-22 22:44:36', '2020-09-22 22:44:49');
INSERT INTO `notification` VALUES (242, 48, 34, 36, 0, 0, 0, '2020-09-23 03:58:45', '2020-09-23 03:58:45');
INSERT INTO `notification` VALUES (243, 31, 30, 37, 0, 0, 1, '2020-09-25 20:47:55', '2020-09-29 09:47:10');
INSERT INTO `notification` VALUES (244, 31, 30, 38, 0, 0, 1, '2020-09-26 23:32:35', '2020-09-29 09:47:10');
INSERT INTO `notification` VALUES (245, 31, 30, 39, 0, 0, 1, '2020-09-27 05:07:44', '2020-09-29 09:47:10');
INSERT INTO `notification` VALUES (246, 31, 30, 40, 0, 0, 1, '2020-09-29 09:46:39', '2020-09-29 09:47:10');
INSERT INTO `notification` VALUES (247, 30, 31, 40, 0, 2, 1, '2020-09-29 09:47:14', '2020-09-29 09:47:27');
INSERT INTO `notification` VALUES (248, 31, 30, 50, 3, -1, 1, '2020-09-29 09:47:34', '2020-09-29 09:47:38');
INSERT INTO `notification` VALUES (249, 31, 30, 41, 0, 0, 1, '2020-09-29 09:50:18', '2020-09-29 09:50:59');
INSERT INTO `notification` VALUES (250, 30, 31, 41, 0, 2, 1, '2020-09-29 09:51:07', '2020-09-29 09:51:29');
INSERT INTO `notification` VALUES (251, 31, 30, 42, 0, 0, 1, '2020-09-30 02:02:48', '2020-09-30 02:03:30');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('00010c97668fa29b32f1eeda02c88270840dbe920316497b64c8fe37d2a416f9adf1a4ab04aa0512', 10, 1, 'authToken', '[]', 0, '2020-09-13 02:13:23', '2020-09-13 02:13:23', '2021-09-12 20:13:23');
INSERT INTO `oauth_access_tokens` VALUES ('0230ffdd32d0fe3d40704f504cfec5735376f6809790cd8f1e73d463d5d5688c4bb1914cdaca63a2', 15, 1, 'authToken', '[]', 0, '2020-09-13 01:49:02', '2020-09-13 01:49:02', '2021-09-12 19:49:02');
INSERT INTO `oauth_access_tokens` VALUES ('03e0936237c15be5f9dde5e32149525d205d7c33508fef4707608f1ca72b9b1e4e7ba38683b8ea94', 11, 1, 'authToken', '[]', 0, '2020-09-12 07:44:59', '2020-09-12 07:44:59', '2021-09-12 01:44:59');
INSERT INTO `oauth_access_tokens` VALUES ('051261278f0122f02520a49980539de6d99b31bb58c616b78a25b72e507e9874160928cfd0983308', 3, 1, 'authToken', '[]', 0, '2020-09-12 02:06:10', '2020-09-12 02:06:10', '2021-09-11 20:06:10');
INSERT INTO `oauth_access_tokens` VALUES ('056c8b5441e15b764e5645343f137a853e837ab01f2c63f963d309a5148ba5bd6cab293694286c92', 30, 1, 'authToken', '[]', 0, '2020-09-25 20:45:32', '2020-09-25 20:45:32', '2021-09-25 14:45:32');
INSERT INTO `oauth_access_tokens` VALUES ('05838988c2c581d25aee8f830435710492b95fd2d2fe6616264c4f50640c509802357276f85f27dc', 2, 1, 'authToken', '[]', 0, '2020-09-14 18:15:26', '2020-09-14 18:15:26', '2021-09-14 12:15:26');
INSERT INTO `oauth_access_tokens` VALUES ('05b5d2d1f8ffddf2053113ba488b085d77ccb5ce7606d0b13464cd4877c6346567fa64fd23133b1d', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:27:34', '2020-09-12 02:27:34', '2021-09-11 20:27:34');
INSERT INTO `oauth_access_tokens` VALUES ('06cb3da7af1e666fa890cfbc8fb6c573ea34e333f050ad4a2c5115368e3845fda7297224f98b48df', 10, 1, 'authToken', '[]', 0, '2020-09-13 02:34:08', '2020-09-13 02:34:08', '2021-09-12 20:34:08');
INSERT INTO `oauth_access_tokens` VALUES ('076002cb4c03d325c34c5e2609cd6dca990f6d82b2e40b595d65185fe3d511612b78985e3ff0adca', 40, 1, 'authToken', '[]', 0, '2020-09-18 00:03:21', '2020-09-18 00:03:21', '2021-09-17 18:03:21');
INSERT INTO `oauth_access_tokens` VALUES ('0770e79031a43e4507aaa667ef7feb1709e51ae1388d7a6ae5882b0f064d20f5b947143aaba07bab', 3, 1, 'authToken', '[]', 0, '2020-09-12 01:02:01', '2020-09-12 01:02:01', '2021-09-11 19:02:01');
INSERT INTO `oauth_access_tokens` VALUES ('08943b40254db094360f7b5dc0b6feaa66356accd54014b22bf1e6fecac52538f07e9f0b1330879a', 2, 1, 'authToken', '[]', 0, '2020-09-15 14:03:26', '2020-09-15 14:03:26', '2021-09-15 08:03:26');
INSERT INTO `oauth_access_tokens` VALUES ('09314aa8cfd5102b9832aeff41d3c47d98d65e3671c4864262b06726b6f4184d45fee8eabb57e205', 30, 1, 'authToken', '[]', 0, '2020-09-29 09:39:56', '2020-09-29 09:39:56', '2021-09-29 03:39:56');
INSERT INTO `oauth_access_tokens` VALUES ('098b696f04148ae90cb82a2e300a23bb238395241cb0c0d536eefb86d69740033fd456024fc48775', 12, 1, 'authToken', '[]', 0, '2020-09-14 06:33:59', '2020-09-14 06:33:59', '2021-09-14 00:33:59');
INSERT INTO `oauth_access_tokens` VALUES ('0c4fe14eee9fa9c7b2b438f3fdf1e8722d41a2e4ce26f0e8cb0c8c82451c053b419b8ab8327c4d74', 2, 1, 'authToken', '[]', 0, '2020-09-13 13:37:53', '2020-09-13 13:37:53', '2021-09-13 07:37:53');
INSERT INTO `oauth_access_tokens` VALUES ('0d7a7e8b727869ffa690b0358674390404b276df425d3273e18cabfb574167cfe9779e8209a7c097', 2, 1, 'authToken', '[]', 0, '2020-09-12 01:47:23', '2020-09-12 01:47:23', '2021-09-11 19:47:23');
INSERT INTO `oauth_access_tokens` VALUES ('0d8d5faa61b3907b77ba98035371ca73cdbbf4f0cc637304d31a65766957995dfcace6859ee90974', 47, 1, 'authToken', '[]', 0, '2020-09-18 09:51:44', '2020-09-18 09:51:44', '2021-09-18 03:51:44');
INSERT INTO `oauth_access_tokens` VALUES ('0df4e2f12cb674e0254a03a75f45dfedd571c9e9c628cee8e7ab81716908ff0ae2fa794932b8881c', 2, 1, 'authToken', '[]', 0, '2020-09-13 09:34:13', '2020-09-13 09:34:13', '2021-09-13 03:34:13');
INSERT INTO `oauth_access_tokens` VALUES ('0e8aecedf60a46e66de82c3bc11f326e8951d6f653d77dbd9c029ae731855dfff30d09cf908eee3b', 31, 1, 'authToken', '[]', 0, '2020-09-27 05:10:52', '2020-09-27 05:10:52', '2021-09-26 23:10:52');
INSERT INTO `oauth_access_tokens` VALUES ('0f9c14c3ab35bdf53191dfac1487a39bfeaf97cdb3b79fb244e23ae92308e3964069902e957d06f7', 2, 1, 'authToken', '[]', 0, '2020-09-12 04:11:42', '2020-09-12 04:11:42', '2021-09-11 22:11:42');
INSERT INTO `oauth_access_tokens` VALUES ('102c1b9a7cf22147691702c6511e9f90a0db9548b3532033b8764a6be63d26873dad70d96969a7fc', 3, 1, 'authToken', '[]', 0, '2020-09-14 17:01:10', '2020-09-14 17:01:10', '2021-09-14 11:01:10');
INSERT INTO `oauth_access_tokens` VALUES ('113a5a4433e5abd3d0c1081342c462b1fdff713c16bab8f0e6b7b0db56c218b34c58b4a72b3d4a2b', 2, 1, 'authToken', '[]', 0, '2020-09-13 13:27:01', '2020-09-13 13:27:01', '2021-09-13 07:27:01');
INSERT INTO `oauth_access_tokens` VALUES ('136c5c96c3dddd616fa470f6d6d562b23bfcf77a445c1f4b938dff614e1160de2fa4049a0826e15e', 14, 1, 'authToken', '[]', 0, '2020-09-13 01:49:23', '2020-09-13 01:49:23', '2021-09-12 19:49:23');
INSERT INTO `oauth_access_tokens` VALUES ('136e19c37188b6455e31ae12e783f07f49fc19a1d08dba95b842ee76a4a3027897466eeea82cfdee', 33, 1, 'authToken', '[]', 0, '2020-09-19 03:42:27', '2020-09-19 03:42:27', '2021-09-18 21:42:27');
INSERT INTO `oauth_access_tokens` VALUES ('13fd1ae72c3a9f5246f570a8c5f31ea5d818b21942d5cfada802f5bc68e74c8223901ab9b7b28817', 20, 1, 'authToken', '[]', 0, '2020-09-13 23:58:10', '2020-09-13 23:58:10', '2021-09-13 17:58:10');
INSERT INTO `oauth_access_tokens` VALUES ('146feaa1b0ff1ebb8b39bb723890d9187ebe364a0a028ef4e46699e036429014dc16634a81750c58', 3, 1, 'authToken', '[]', 0, '2020-09-13 13:00:37', '2020-09-13 13:00:37', '2021-09-13 07:00:37');
INSERT INTO `oauth_access_tokens` VALUES ('150683f18afde22e1482059704999528eec0c534a049f5867706ff22ba257092cf8a53f81dd92fe2', 12, 1, 'authToken', '[]', 0, '2020-09-13 02:33:50', '2020-09-13 02:33:50', '2021-09-12 20:33:50');
INSERT INTO `oauth_access_tokens` VALUES ('15308a9a425e6234a96a1688747f5e7f89f8e6a770f5a3f3d52861643e732d1132790831ab561dd2', 36, 1, 'authToken', '[]', 0, '2020-09-17 23:37:06', '2020-09-17 23:37:06', '2021-09-17 17:37:06');
INSERT INTO `oauth_access_tokens` VALUES ('176d61af132ba87c2238603f7ecc2b105948b641ff1000ac4857087d6678bfedab3a6175b3983466', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:28:15', '2020-09-12 02:28:15', '2021-09-11 20:28:15');
INSERT INTO `oauth_access_tokens` VALUES ('1790de0d73f39a16deb6663ca83abc38381ea15fe42b6c2b1b159dd54276833d7fde51bbcde1f9a1', 3, 1, 'authToken', '[]', 0, '2020-09-12 07:08:51', '2020-09-12 07:08:51', '2021-09-12 01:08:51');
INSERT INTO `oauth_access_tokens` VALUES ('18c9e4ea37466c490996ba7251c6eb3c8c2500d73c1847ad4f800af3d46f8c391c43d1caafef9ebf', 3, 1, 'authToken', '[]', 0, '2020-09-14 21:56:37', '2020-09-14 21:56:37', '2021-09-14 15:56:37');
INSERT INTO `oauth_access_tokens` VALUES ('18cc67f595088181a3f4c98facb3d7c43a7905c07aa960c44a16b78d6809856215e73228db274c59', 12, 1, 'authToken', '[]', 0, '2020-09-12 22:21:40', '2020-09-12 22:21:40', '2021-09-12 16:21:40');
INSERT INTO `oauth_access_tokens` VALUES ('192b3d7dc70aabcae50d30d4f9c369ea63a7c404f435b4d1eac69490ed329dc0e2115a6abcb470d1', 30, 1, 'authToken', '[]', 0, '2020-09-17 02:16:36', '2020-09-17 02:16:36', '2021-09-16 20:16:36');
INSERT INTO `oauth_access_tokens` VALUES ('1a87a150fe84e86df96716bf2dc68401e612d5021db769b3e15d989b85a83a52e687ae5d13ca485a', 21, 1, 'authToken', '[]', 0, '2020-09-14 00:26:06', '2020-09-14 00:26:06', '2021-09-13 18:26:06');
INSERT INTO `oauth_access_tokens` VALUES ('1a8ecd4e4db158bde94ecd9ac9060dc4f4f738f8b07af4b9fa63d9b03f30f190e593f5d0e324df5e', 31, 1, 'authToken', '[]', 0, '2020-09-17 02:21:38', '2020-09-17 02:21:38', '2021-09-16 20:21:38');
INSERT INTO `oauth_access_tokens` VALUES ('1ed6d9b9269f92145fc4cfd0d970942b0e827a386302bf4c5ba3a6c221e0c2b6c51d22ee25a142bd', 30, 1, 'authToken', '[]', 0, '2020-09-29 07:27:43', '2020-09-29 07:27:43', '2021-09-29 01:27:43');
INSERT INTO `oauth_access_tokens` VALUES ('1fe9288fd0154951510ffd5937bbc0d1aae14ab428ab6494ea3520df010e8803b5b6df81c8ded457', 3, 1, 'authToken', '[]', 0, '2020-09-12 03:44:41', '2020-09-12 03:44:41', '2021-09-11 21:44:41');
INSERT INTO `oauth_access_tokens` VALUES ('20793615480be4dbc145e73ffc331b964f5bd676ec816f04f332d0fc43879e79df36209f20e1baca', 2, 1, 'authToken', '[]', 0, '2020-09-12 01:30:25', '2020-09-12 01:30:25', '2021-09-11 19:30:25');
INSERT INTO `oauth_access_tokens` VALUES ('20824fb63ba2ca3150547cd8e2d61ba6a32c5169da375de749856a36326d63f7fce93e75d20e32a1', 3, 1, 'authToken', '[]', 0, '2020-09-12 02:15:21', '2020-09-12 02:15:21', '2021-09-11 20:15:21');
INSERT INTO `oauth_access_tokens` VALUES ('227a039e015ecc84c643ab8ec6035e2a612895df151ad82307a0dfff55b627005a26a7f03e2be6c0', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:58:20', '2020-09-12 02:58:20', '2021-09-11 20:58:20');
INSERT INTO `oauth_access_tokens` VALUES ('233ab585439654287255977ab2ab38a4c49f254d9a2aea3a90750e6374b6d3c5fa27759cd1a4277b', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:40:32', '2020-09-12 02:40:32', '2021-09-11 20:40:32');
INSERT INTO `oauth_access_tokens` VALUES ('23dff810d5a7ca01221c9df581c1021382b01a4aea3f016a700cc99cdcf1b392c09414bf2f1e7c54', 12, 1, 'authToken', '[]', 0, '2020-09-15 08:55:57', '2020-09-15 08:55:57', '2021-09-15 02:55:57');
INSERT INTO `oauth_access_tokens` VALUES ('2514d35cb3aade236744b17f4d87ff103aa7a93416f70fa591c02ea5d9f2dfa17d6097718ded4671', 10, 1, 'authToken', '[]', 0, '2020-09-14 00:10:27', '2020-09-14 00:10:27', '2021-09-13 18:10:27');
INSERT INTO `oauth_access_tokens` VALUES ('255186279404a6b85e6c58570e7af620aa05e63f06a8f9ecb92c9d2c57a2d1d275ad0eaa6c6e510e', 63, 1, 'authToken', '[]', 0, '2020-10-26 13:04:13', '2020-10-26 13:04:13', '2021-10-26 13:04:13');
INSERT INTO `oauth_access_tokens` VALUES ('26982944e3fc1b2518c7bba80c497f5316c46c9716cbcf86fc85a6d91b5c6160415d999a5692b3e1', 22, 1, 'authToken', '[]', 0, '2020-09-14 00:33:41', '2020-09-14 00:33:41', '2021-09-13 18:33:41');
INSERT INTO `oauth_access_tokens` VALUES ('288a940b1da02a59e97cdff26f13388adaaee5f083d328b7dae6c3b7eef8168d9e48f4c823f4cd01', 28, 1, 'authToken', '[]', 0, '2020-09-16 15:45:05', '2020-09-16 15:45:05', '2021-09-16 09:45:05');
INSERT INTO `oauth_access_tokens` VALUES ('2a79df6a2e3e729af3b7607da4a54f490bbcc90db75d2daf58c255b2925bb010c71707bf98e42774', 35, 1, 'authToken', '[]', 0, '2020-09-17 06:06:19', '2020-09-17 06:06:19', '2021-09-17 00:06:19');
INSERT INTO `oauth_access_tokens` VALUES ('2ad9b65d524d62189789d0447964e02d8d00db6179549d1dc84f0a364f2119d8086311dcfbb7d8fa', 2, 1, 'authToken', '[]', 0, '2020-09-12 03:27:07', '2020-09-12 03:27:07', '2021-09-11 21:27:07');
INSERT INTO `oauth_access_tokens` VALUES ('2ae359f9731f511b1e1ee1eaeef08e904ec0aedaeb9f34ff0e3abf31c4c2e5a09474b5598b1a33dd', 13, 1, 'authToken', '[]', 0, '2020-09-12 11:20:04', '2020-09-12 11:20:04', '2021-09-12 05:20:04');
INSERT INTO `oauth_access_tokens` VALUES ('2cdbe122ab5115d51073a810fe407f5aa788693f81e1ce811845661dc6cce8a246ebe295fbbad814', 30, 1, 'authToken', '[]', 0, '2020-09-17 06:46:06', '2020-09-17 06:46:06', '2021-09-17 00:46:06');
INSERT INTO `oauth_access_tokens` VALUES ('2e3e3e1a3e278560d98330b44abb4fcecf18cb850fcd23694b12a939968bd1329ce52fa450e29c0c', 49, 1, 'authToken', '[]', 0, '2020-09-27 05:14:53', '2020-09-27 05:14:53', '2021-09-26 23:14:53');
INSERT INTO `oauth_access_tokens` VALUES ('2e972f3d052140386205c19fb968592fb5d23d8317aa980f10c4d3c0064f9e28650895427e2d7ac1', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:23:26', '2020-09-12 02:23:26', '2021-09-11 20:23:26');
INSERT INTO `oauth_access_tokens` VALUES ('2f88bb9d1119a02bc9a5a935bb349acde3696d78e3ced29a01ff82ae857e6b916bb2356b70804824', 27, 1, 'authToken', '[]', 0, '2020-09-15 13:36:15', '2020-09-15 13:36:15', '2021-09-15 07:36:15');
INSERT INTO `oauth_access_tokens` VALUES ('2fa2e7aee283494cdcd7cad7ff6d717261ce0739883faab5a770b041b1900591b8fc03216960cb6e', 10, 1, 'authToken', '[]', 0, '2020-09-12 08:34:11', '2020-09-12 08:34:11', '2021-09-12 02:34:11');
INSERT INTO `oauth_access_tokens` VALUES ('301aad9aac8d9fd90931ec9fbed122099242989367e53729c4fb03f40fa1a287f5a05f405a5e7050', 42, 1, 'authToken', '[]', 0, '2020-09-18 00:31:22', '2020-09-18 00:31:22', '2021-09-17 18:31:22');
INSERT INTO `oauth_access_tokens` VALUES ('31dfbbe168d00ec15c935f0fc67fc5f7fb9a105c1c60fefc854bb66c6ef231bc49ba466bd0c6bf51', 3, 1, 'authToken', '[]', 0, '2020-09-12 01:28:51', '2020-09-12 01:28:51', '2021-09-11 19:28:51');
INSERT INTO `oauth_access_tokens` VALUES ('325a885630d8549da44a039f2872683b09bc95bdeeb6f72c9ba2f1f5e75ed16c4e1ffceb048a8001', 12, 1, 'authToken', '[]', 0, '2020-09-14 00:17:26', '2020-09-14 00:17:26', '2021-09-13 18:17:26');
INSERT INTO `oauth_access_tokens` VALUES ('326c40fccf06f54014e0b7e61c94f58a72e675828cc0fa0180a7795a3b9787da8868be56597dd18d', 24, 1, 'authToken', '[]', 0, '2020-09-14 10:46:09', '2020-09-14 10:46:09', '2021-09-14 04:46:09');
INSERT INTO `oauth_access_tokens` VALUES ('330cd4a6e063e923ea07be51b0a6dc60063007f14f74683dbca39d3c64cdf294a8a45b39598ec722', 12, 1, 'authToken', '[]', 0, '2020-09-14 03:29:15', '2020-09-14 03:29:15', '2021-09-13 21:29:15');
INSERT INTO `oauth_access_tokens` VALUES ('333648b414d320592db025bc8260446dd71f1ad068c949160ec7d595777fb34926baaf22d974f119', 31, 1, 'authToken', '[]', 0, '2020-09-26 23:31:29', '2020-09-26 23:31:29', '2021-09-26 17:31:29');
INSERT INTO `oauth_access_tokens` VALUES ('334d8606a008cfe72510aa24a8bb95901f59fd8677c85ef80b3f2ea567b44024e1e6d608cea99f86', 42, 1, 'authToken', '[]', 0, '2020-09-18 00:46:04', '2020-09-18 00:46:04', '2021-09-17 18:46:04');
INSERT INTO `oauth_access_tokens` VALUES ('3427bea7f54d6661a05206df6b8825b4068aad71778ef4e0b73f58a2b32375e141d342beace413f8', 25, 1, 'authToken', '[]', 0, '2020-09-14 22:03:53', '2020-09-14 22:03:53', '2021-09-14 16:03:53');
INSERT INTO `oauth_access_tokens` VALUES ('34f93537c16ea611814b182be83157b95b026d952012e22e4772bdb0ee313067e5b2e07eb7b63c3d', 10, 1, 'authToken', '[]', 0, '2020-09-12 08:14:11', '2020-09-12 08:14:11', '2021-09-12 02:14:11');
INSERT INTO `oauth_access_tokens` VALUES ('35038849a8a4a7d40abb53c12b9b80f6a8aa1bd8f8002b2b9a60eaf0cdd2fb524366977043f849ed', 3, 1, 'authToken', '[]', 0, '2020-09-12 01:44:37', '2020-09-12 01:44:37', '2021-09-11 19:44:37');
INSERT INTO `oauth_access_tokens` VALUES ('35076b097d98db9b27ff38d81e0cea0aaa18d7fcd021c9b6f3d3d3dfd2aa7e8d52f065aee8f3ee53', 10, 1, 'authToken', '[]', 0, '2020-09-12 08:24:16', '2020-09-12 08:24:16', '2021-09-12 02:24:16');
INSERT INTO `oauth_access_tokens` VALUES ('351c0e0174ad2ba035d8d07446c1f4341cafb7e02be775895b50c45f70dbd71ddcf65abb28ec1bbf', 48, 1, 'authToken', '[]', 0, '2020-09-22 18:32:06', '2020-09-22 18:32:06', '2021-09-22 12:32:06');
INSERT INTO `oauth_access_tokens` VALUES ('369015abaf030ea07f3c8f29155222fcd8c6d8f7b64c2696300379b01875c5abe737dd4d90017674', 46, 1, 'authToken', '[]', 0, '2020-09-18 09:44:19', '2020-09-18 09:44:19', '2021-09-18 03:44:19');
INSERT INTO `oauth_access_tokens` VALUES ('36c3db8e09fe3f8e361d745dfee25ba844fea75dcd42b1eaf6306a695664ed3b4ee75ce2464d1aa2', 60, 1, 'authToken', '[]', 0, '2020-10-14 17:52:42', '2020-10-14 17:52:42', '2021-10-14 17:52:42');
INSERT INTO `oauth_access_tokens` VALUES ('3778e710fcaec4c3738109f714c24416c66a1906e8ba2e61f6be975f837816616f0af71c99909b55', 3, 1, 'authToken', '[]', 0, '2020-09-11 18:04:26', '2020-09-11 18:04:26', '2021-09-11 12:04:26');
INSERT INTO `oauth_access_tokens` VALUES ('379130ed20c33806e35f9f3570ab0f89e6dc67b1e7ac5c3ae961d5c7fac891b5502028838af93f43', 2, 1, 'authToken', '[]', 0, '2020-09-12 01:53:32', '2020-09-12 01:53:32', '2021-09-11 19:53:32');
INSERT INTO `oauth_access_tokens` VALUES ('37d61cc4715d5b8d4b3cf13757d07c22c6cd71caf150251ba1894e41261a94aff312272a9c115233', 63, 1, 'authToken', '[]', 0, '2020-10-26 13:26:22', '2020-10-26 13:26:22', '2021-10-26 13:26:22');
INSERT INTO `oauth_access_tokens` VALUES ('3811cba7a5449d6eff8bc9d0f4925a4076e7923f22c0f9289dcfff9995b71f0d0f601c67d228a046', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:27:47', '2020-09-12 02:27:47', '2021-09-11 20:27:47');
INSERT INTO `oauth_access_tokens` VALUES ('38d24721daeb51a90c3ac3eb99040f19aeebc5412afd073408ccdd073b70c768979f1ba396a7bcda', 3, 1, 'authToken', '[]', 0, '2020-09-13 09:35:10', '2020-09-13 09:35:10', '2021-09-13 03:35:10');
INSERT INTO `oauth_access_tokens` VALUES ('3944e373cf9f0d801a19c51f4a7b0ba9f1adcfeb2405608c02987616e23b3b6dca288f344eb8012b', 3, 1, 'authToken', '[]', 0, '2020-09-15 15:37:03', '2020-09-15 15:37:03', '2021-09-15 09:37:03');
INSERT INTO `oauth_access_tokens` VALUES ('39b503c803d74d56951fa572c76a64b6f78a4d1b3ab135d43e83477fb8527a073d3e8d847c7d26fb', 62, 1, 'authToken', '[]', 0, '2020-10-14 12:15:03', '2020-10-14 12:15:03', '2021-10-14 12:15:03');
INSERT INTO `oauth_access_tokens` VALUES ('3ae85a255f3ee29bc4fd0542aa1bdee1bfb6551b3f2f33cff0da8a202ce3c4cfb9eb4fb17dc04d40', 44, 1, 'authToken', '[]', 0, '2020-09-18 01:25:15', '2020-09-18 01:25:15', '2021-09-17 19:25:15');
INSERT INTO `oauth_access_tokens` VALUES ('3b0069dcbfe06b506dfbd17948c47968690e76aa8e1cd98fe2320496188779b404814043f89928f2', 12, 1, 'authToken', '[]', 0, '2020-09-14 02:23:57', '2020-09-14 02:23:57', '2021-09-13 20:23:57');
INSERT INTO `oauth_access_tokens` VALUES ('3bab72bf9a6ece03854b8d9b831ba591f5bcf66bf739da92ea2966dfbb251efa4d749bcdc0106a79', 12, 1, 'authToken', '[]', 0, '2020-09-12 22:55:07', '2020-09-12 22:55:07', '2021-09-12 16:55:07');
INSERT INTO `oauth_access_tokens` VALUES ('3c0a092f96d588d401172b3f199d7644ac37cd5bfff517bb518cccbce7a8f36ac28c70a287d62a54', 12, 1, 'authToken', '[]', 0, '2020-09-12 10:26:47', '2020-09-12 10:26:47', '2021-09-12 04:26:47');
INSERT INTO `oauth_access_tokens` VALUES ('3c112340da7ab4f288c34c11de622071a217d47fa99a390dfd634f6ff14e28549aa09248be60cbce', 2, 1, 'authToken', '[]', 0, '2020-09-11 18:08:49', '2020-09-11 18:08:49', '2021-09-11 12:08:49');
INSERT INTO `oauth_access_tokens` VALUES ('3e26191e729aba3686cc4007f14bec28938540c26b921e2f522ab160858200ba3141818bb17999d4', 48, 1, 'authToken', '[]', 0, '2020-09-22 18:32:22', '2020-09-22 18:32:22', '2021-09-22 12:32:22');
INSERT INTO `oauth_access_tokens` VALUES ('3e4a97227c40610894fa05944a9f3e9e5e4b56749ae8be1a769da70fa52bde85f9bc6f5f62f5f37f', 2, 1, 'authToken', '[]', 0, '2020-09-14 18:51:20', '2020-09-14 18:51:20', '2021-09-14 12:51:20');
INSERT INTO `oauth_access_tokens` VALUES ('3ea2cfa94ab2080b6ef58dc13dcb554f131f220032790466bf784dc12c3502898885451b6276f346', 32, 1, 'authToken', '[]', 0, '2020-09-17 03:29:29', '2020-09-17 03:29:29', '2021-09-16 21:29:29');
INSERT INTO `oauth_access_tokens` VALUES ('3f2aa5672a8c794ff8ae6068dee3d2bc4f5cc48c544d1a9b3c2604c9943f55b23be4199bd3b16bf7', 2, 1, 'authToken', '[]', 0, '2020-09-12 03:51:01', '2020-09-12 03:51:01', '2021-09-11 21:51:01');
INSERT INTO `oauth_access_tokens` VALUES ('3f369b27adfa52e07caad294648be0cc80d51aef8a7b3624a2551e53493f9b21a00264504d22629c', 2, 1, 'authToken', '[]', 0, '2020-09-13 17:07:18', '2020-09-13 17:07:18', '2021-09-13 11:07:18');
INSERT INTO `oauth_access_tokens` VALUES ('3f91a342e7a57133cba459007ecefccb9714f9f541458c91c55b72aadfa50767552ae6834344b583', 31, 1, 'authToken', '[]', 0, '2020-09-25 20:47:02', '2020-09-25 20:47:02', '2021-09-25 14:47:02');
INSERT INTO `oauth_access_tokens` VALUES ('40fb8a75508d9ac0f972cb200c9f13c6b998a18c13fa479cf1eaeef3f917f1d8d34e8425cc6aa46e', 80, 1, 'authToken', '[]', 0, '2020-10-16 17:35:44', '2020-10-16 17:35:44', '2021-10-16 17:35:44');
INSERT INTO `oauth_access_tokens` VALUES ('42a44b72f300feae8f7b2f489ee574296b4c3143f4785b29f955c9ee34eaac15ca911e6c275104c3', 14, 1, 'authToken', '[]', 0, '2020-09-13 01:28:09', '2020-09-13 01:28:09', '2021-09-12 19:28:09');
INSERT INTO `oauth_access_tokens` VALUES ('43a2eece289182e500888d9c555745fd9afd324bc1431eec02973766de32bde05e7f8b83abfdc5fe', 17, 1, 'authToken', '[]', 0, '2020-09-13 03:28:09', '2020-09-13 03:28:09', '2021-09-12 21:28:09');
INSERT INTO `oauth_access_tokens` VALUES ('45f2fed1f46d81f55af2712c9c91ed5c4caba711a87876db50be76e0bf558b43b4f42736bd7c8362', 48, 1, 'authToken', '[]', 0, '2020-09-22 21:06:47', '2020-09-22 21:06:47', '2021-09-22 15:06:47');
INSERT INTO `oauth_access_tokens` VALUES ('4721f68bc2e7ea5e8aa2220ca8cd5d2ddaeb8338d8a98ba3796e46d444b0cacf567add28862fc183', 10, 1, 'authToken', '[]', 0, '2020-09-12 07:18:37', '2020-09-12 07:18:37', '2021-09-12 01:18:37');
INSERT INTO `oauth_access_tokens` VALUES ('47b422c668ce8f41df8c5d9aa37b19c187bb34cfac73a86ec97592d6ff14c459a1dbb7c6dcbd6a66', 2, 1, 'authToken', '[]', 0, '2020-09-14 20:22:19', '2020-09-14 20:22:19', '2021-09-14 14:22:19');
INSERT INTO `oauth_access_tokens` VALUES ('47f93c40795d6152e1e98ab875225131c3a42a12cfb5eaf3fdacc73105f6c8898d797574dd40c372', 2, 1, 'authToken', '[]', 0, '2020-09-14 16:57:07', '2020-09-14 16:57:07', '2021-09-14 10:57:07');
INSERT INTO `oauth_access_tokens` VALUES ('49545bdcc709107d732b4da7963b2a4063094ef7bde84b92a443159da1de7e044e7a78b9f1d8187f', 12, 1, 'authToken', '[]', 0, '2020-09-14 05:02:29', '2020-09-14 05:02:29', '2021-09-13 23:02:29');
INSERT INTO `oauth_access_tokens` VALUES ('49917d367e137ea62e09bb225c37bd9057973d0fe32748eb30421b635d127d81a6d93b0cdcae8eb2', 7, 1, 'authToken', '[]', 0, '2020-09-12 02:18:44', '2020-09-12 02:18:44', '2021-09-11 20:18:44');
INSERT INTO `oauth_access_tokens` VALUES ('4a382c68bf210af04fda600e4d3eefc87b068ec273f346f82fbd7a72508f5146b8e245ac1e3ccfd2', 12, 1, 'authToken', '[]', 0, '2020-09-12 22:11:23', '2020-09-12 22:11:23', '2021-09-12 16:11:23');
INSERT INTO `oauth_access_tokens` VALUES ('4bfbe1ddc4b76a4591ad1b76b0210f4f2f170bc7f014d7f2bfe33798e31fba4bfc2c7af7ad409549', 3, 1, 'authToken', '[]', 0, '2020-09-15 13:37:08', '2020-09-15 13:37:08', '2021-09-15 07:37:08');
INSERT INTO `oauth_access_tokens` VALUES ('4c9f8e245f0b27f23f5707a8543a29e038eb9b4d5afc3141a8d002559ecb0dd7eb6244d14bb7a309', 12, 1, 'authToken', '[]', 0, '2020-09-13 02:11:15', '2020-09-13 02:11:15', '2021-09-12 20:11:15');
INSERT INTO `oauth_access_tokens` VALUES ('4d00ea8af9695e72d35ac31ecfc8559f46b381b9df69c444e8886b8f775047cbd0966dbb11cd3922', 19, 1, 'authToken', '[]', 0, '2020-09-13 23:47:15', '2020-09-13 23:47:15', '2021-09-13 17:47:15');
INSERT INTO `oauth_access_tokens` VALUES ('4f45a17e44e77ec8ecfe8d10e204365b5134b4d2016cccb9bc72d3c6474fa83130d7b404b3ebba6e', 50, 1, 'authToken', '[]', 0, '2020-09-27 05:16:50', '2020-09-27 05:16:50', '2021-09-26 23:16:50');
INSERT INTO `oauth_access_tokens` VALUES ('502571c0c31642477efbc9f1bbabd42ab3b69377661a777d738f6d2c3b66825ed520713290d7e224', 41, 1, 'authToken', '[]', 0, '2020-09-18 00:51:33', '2020-09-18 00:51:33', '2021-09-17 18:51:33');
INSERT INTO `oauth_access_tokens` VALUES ('503527bb218ac17534c67f849ec5dddf8c1adebe18e9b85913600656799460efb9b536c4a6b96469', 38, 1, 'authToken', '[]', 0, '2020-09-17 23:48:23', '2020-09-17 23:48:23', '2021-09-17 17:48:23');
INSERT INTO `oauth_access_tokens` VALUES ('505e345ddbfa76b9472f9ca034f810e0459e3774d43ee7fb13b03b90b93677d7744f3cfcb534abca', 34, 1, 'authToken', '[]', 0, '2020-09-19 04:30:08', '2020-09-19 04:30:08', '2021-09-18 22:30:08');
INSERT INTO `oauth_access_tokens` VALUES ('507c4ee15f846a258137064462c44228454694dd766e1f13dd3bab7a786ba404fe137970c72c1887', 34, 1, 'authToken', '[]', 0, '2020-09-17 05:42:53', '2020-09-17 05:42:53', '2021-09-16 23:42:53');
INSERT INTO `oauth_access_tokens` VALUES ('50b0c1d811d863c884852e372a88ec1df7642939c73115f36b4fffb1d89cf160338d16fb00e5b399', 3, 1, 'authToken', '[]', 0, '2020-09-12 01:56:37', '2020-09-12 01:56:37', '2021-09-11 19:56:37');
INSERT INTO `oauth_access_tokens` VALUES ('5181a423da5892b1c94db8d8aff5cbebd81004b291216e09c22d64a961b3861dd4d510564225a3dd', 69, 1, 'authToken', '[]', 0, '2020-10-16 15:50:28', '2020-10-16 15:50:28', '2021-10-16 15:50:28');
INSERT INTO `oauth_access_tokens` VALUES ('51c7bf6fbd03bdd643b1b920dcc01a2c9b96cdfa8ec86150092c6bfef2958daf0f9552d7113e6caf', 12, 1, 'authToken', '[]', 0, '2020-09-14 02:28:06', '2020-09-14 02:28:06', '2021-09-13 20:28:06');
INSERT INTO `oauth_access_tokens` VALUES ('51d3d76efc0eb7a029b2cdb57e0442434b020e47aad2524dec50bc299eac5513e51e3bc428b18ed4', 3, 1, 'authToken', '[]', 0, '2020-09-12 03:53:51', '2020-09-12 03:53:51', '2021-09-11 21:53:51');
INSERT INTO `oauth_access_tokens` VALUES ('535116c8f3a86af334bb36faa672b57f49c53eb041a87247f4e0369e62de6a6d4f6f60e56b4af1a3', 10, 1, 'authToken', '[]', 0, '2020-09-14 22:20:45', '2020-09-14 22:20:45', '2021-09-14 16:20:45');
INSERT INTO `oauth_access_tokens` VALUES ('5383bc3050684ae4dad2cc65f9c6fec1cc32112c16ca93b4838be1fdd58cf8afa04e1da8bbee72a1', 30, 1, 'authToken', '[]', 0, '2020-09-18 22:23:19', '2020-09-18 22:23:19', '2021-09-18 16:23:19');
INSERT INTO `oauth_access_tokens` VALUES ('53aaee8b857f2dd5b3c7905f35724a4f4f226ba3090a5f4767fdb6becc240cec1eb644b27ad5e8e9', 10, 1, 'authToken', '[]', 0, '2020-09-12 08:42:20', '2020-09-12 08:42:20', '2021-09-12 02:42:20');
INSERT INTO `oauth_access_tokens` VALUES ('545faf5d00c12efa5e069abdc3dd59faacc10d8f11f59f45aa58ba6c008f5a04c4e55306161303a6', 10, 1, 'authToken', '[]', 0, '2020-09-14 02:21:51', '2020-09-14 02:21:51', '2021-09-13 20:21:51');
INSERT INTO `oauth_access_tokens` VALUES ('555fa9dadcea010183e546d1d5dd6aa300388e05d009b32ed1455a43d60d62f39880923c1d9327e8', 36, 1, 'authToken', '[]', 0, '2020-09-17 23:49:05', '2020-09-17 23:49:05', '2021-09-17 17:49:05');
INSERT INTO `oauth_access_tokens` VALUES ('56d7f7304f9e7deabd5f28a67c54f91cdbfbd0b5303c40d6b82362f317b7a3408455e44c6f20c5ee', 3, 1, 'authToken', '[]', 0, '2020-09-12 00:49:51', '2020-09-12 00:49:51', '2021-09-11 18:49:51');
INSERT INTO `oauth_access_tokens` VALUES ('570c2154654f2cb6b47b02cd2d42b48eb12af65470a289d84c6b8e2a1c8ea21401c55083dcd32bf4', 2, 1, 'authToken', '[]', 0, '2020-09-16 15:52:53', '2020-09-16 15:52:53', '2021-09-16 09:52:53');
INSERT INTO `oauth_access_tokens` VALUES ('57407071a2feaba9a0434540665a68d1468bac6040a0dbab28c3dec9e68d898efb05331b614ca80f', 2, 1, 'authToken', '[]', 0, '2020-09-16 16:01:09', '2020-09-16 16:01:09', '2021-09-16 10:01:09');
INSERT INTO `oauth_access_tokens` VALUES ('5834d9f731fc0b3d968d16a847a1e369889326e6cfa16f52ddc35ba73254c74549d24fe0d8640881', 2, 1, 'authToken', '[]', 0, '2020-09-12 04:22:43', '2020-09-12 04:22:43', '2021-09-11 22:22:43');
INSERT INTO `oauth_access_tokens` VALUES ('585fb754ccdfe933b0844799e1ad15a219a6d297ab64e010fd8ece6fac6372a95249447a4f9bc9e7', 12, 1, 'authToken', '[]', 0, '2020-09-12 08:21:04', '2020-09-12 08:21:04', '2021-09-12 02:21:04');
INSERT INTO `oauth_access_tokens` VALUES ('586a673da776b803a15982315afd5846e06e7b12ea2988fd2351a54f8209346a379ebdc27bf73d26', 35, 1, 'authToken', '[]', 0, '2020-09-29 09:45:08', '2020-09-29 09:45:08', '2021-09-29 03:45:08');
INSERT INTO `oauth_access_tokens` VALUES ('58a53e3e943b8d88c4b2192e0e2e9a880c331bbc8d949f98ba820ec5a99975d587e282ee0a02a5da', 2, 1, 'authToken', '[]', 0, '2020-09-13 13:12:16', '2020-09-13 13:12:16', '2021-09-13 07:12:16');
INSERT INTO `oauth_access_tokens` VALUES ('5950cce6147e97830875cc9db7a36a00c76dabd969d578a6dca2e741fc30420258865991653424f7', 31, 1, 'authToken', '[]', 0, '2020-09-18 22:59:07', '2020-09-18 22:59:07', '2021-09-18 16:59:07');
INSERT INTO `oauth_access_tokens` VALUES ('5ccf992a9916ea84e486f682f8e900317179250628ef1e0dcef5344f14205245fec73115aea6adce', 2, 1, 'authToken', '[]', 0, '2020-09-12 01:39:30', '2020-09-12 01:39:30', '2021-09-11 19:39:30');
INSERT INTO `oauth_access_tokens` VALUES ('5d370872df510ab19558c681efaf71cd9b346439611abdba45af8e374d5154b4dd84a3d7037cb970', 12, 1, 'authToken', '[]', 0, '2020-09-12 11:11:53', '2020-09-12 11:11:53', '2021-09-12 05:11:53');
INSERT INTO `oauth_access_tokens` VALUES ('5d3ca23352cd5d61af7c6b02082552c42e66ae71a5c180fb4955654295f24963e196bcc10580104c', 2, 1, 'authToken', '[]', 0, '2020-09-12 03:46:23', '2020-09-12 03:46:23', '2021-09-11 21:46:23');
INSERT INTO `oauth_access_tokens` VALUES ('5e65359bdb9fe42912c7a2876bc7f417009dc06252e9e17efb81a7125c9bd2e1454fb0f8129b3b46', 19, 1, 'authToken', '[]', 0, '2020-09-13 23:47:45', '2020-09-13 23:47:45', '2021-09-13 17:47:45');
INSERT INTO `oauth_access_tokens` VALUES ('5e8a4b2b6c8510af9cd11a14be1ad2e6bb62751e24ea30b0303598c30f7d9deefdef1a6456970087', 3, 1, 'authToken', '[]', 0, '2020-09-12 02:35:04', '2020-09-12 02:35:04', '2021-09-11 20:35:04');
INSERT INTO `oauth_access_tokens` VALUES ('5feb9f65ee87fb90892cb3122fb5eb15899931d54569194dd5aec7422e5c741603d9f62e30b69abe', 49, 1, 'authToken', '[]', 0, '2020-09-27 05:14:28', '2020-09-27 05:14:28', '2021-09-26 23:14:28');
INSERT INTO `oauth_access_tokens` VALUES ('6092351e4c8b05dd92697c6571b966b4ee4ca9a54b76413f5021756d2c3c650ab3cb5794c4ede039', 12, 1, 'authToken', '[]', 0, '2020-09-12 08:45:34', '2020-09-12 08:45:34', '2021-09-12 02:45:34');
INSERT INTO `oauth_access_tokens` VALUES ('60ea5c37c67bbe3d5d6a2659969389369073b3688327fc67e3a7b0cc203aeb6acf948cfea4844357', 2, 1, 'authToken', '[]', 0, '2020-09-13 08:33:04', '2020-09-13 08:33:04', '2021-09-13 02:33:04');
INSERT INTO `oauth_access_tokens` VALUES ('6159f354fef86640b132f02279ffec28df6939a37b1dcf497691e6837b4f5816d21c2a61071850ee', 30, 1, 'authToken', '[]', 0, '2020-09-17 02:05:21', '2020-09-17 02:05:21', '2021-09-16 20:05:21');
INSERT INTO `oauth_access_tokens` VALUES ('6338ade7edd5900a892ed591527f0ccf4c5cfd188d37bd7fd60104505096214ce15d0446e5c8306e', 3, 1, 'authToken', '[]', 0, '2020-09-12 04:01:52', '2020-09-12 04:01:52', '2021-09-11 22:01:52');
INSERT INTO `oauth_access_tokens` VALUES ('63df640069c739da4928cfb02e2f8675e9e3ecf73171c420ca8681fb658f0e02384945b17023f3f0', 12, 1, 'authToken', '[]', 0, '2020-09-14 00:11:15', '2020-09-14 00:11:15', '2021-09-13 18:11:15');
INSERT INTO `oauth_access_tokens` VALUES ('64aa173cd1c3261f802ef0e100ab3569ccf470d977e6f9c92518455ec7812ab105b53fe2ed4cf65c', 3, 1, 'authToken', '[]', 0, '2020-09-12 03:32:11', '2020-09-12 03:32:11', '2021-09-11 21:32:11');
INSERT INTO `oauth_access_tokens` VALUES ('658deab8b193aa78f96ffc8461eb3bc8a7204f09fbd85bacbbe1471bcdf2c1beb12e987c7f2b5ed7', 3, 1, 'authToken', '[]', 0, '2020-09-13 09:09:18', '2020-09-13 09:09:18', '2021-09-13 03:09:18');
INSERT INTO `oauth_access_tokens` VALUES ('68087fd873f466e21387c258236dfe461bb651a58ad0736dc2e95c0e8a91f9b9a1fb70a9005026d2', 3, 1, 'authToken', '[]', 0, '2020-09-11 18:09:25', '2020-09-11 18:09:25', '2021-09-11 12:09:25');
INSERT INTO `oauth_access_tokens` VALUES ('6ad834bd06caa1b770ff41438c97be35edf57b11e65e8669cc0ae639c8bba1e4fc87151785033346', 20, 1, 'authToken', '[]', 0, '2020-09-13 23:58:51', '2020-09-13 23:58:51', '2021-09-13 17:58:51');
INSERT INTO `oauth_access_tokens` VALUES ('6aed7932353fedc31c30b273e544d8f4074eb7ff4a86a0802708e2d49b06ba112e8b2403da78f12d', 17, 1, 'authToken', '[]', 0, '2020-09-13 03:47:02', '2020-09-13 03:47:02', '2021-09-12 21:47:02');
INSERT INTO `oauth_access_tokens` VALUES ('6af7ba882821c7783a80c4bbeb505b40e5a03804103faf20ed2da77d35350b34e89526ab234e130f', 12, 1, 'authToken', '[]', 0, '2020-09-12 08:41:05', '2020-09-12 08:41:05', '2021-09-12 02:41:05');
INSERT INTO `oauth_access_tokens` VALUES ('6b5a371e03739784392d4150a462383aedfec23fd41069ea65a117a4d744b0e00596d1524c6bced3', 3, 1, 'authToken', '[]', 0, '2020-09-12 01:18:48', '2020-09-12 01:18:48', '2021-09-11 19:18:48');
INSERT INTO `oauth_access_tokens` VALUES ('6f732a32f024f9da4978a2e61e32a48292ee34c993fd0d5aafcb2150634b9567e24a29920195c0a0', 59, 1, 'authToken', '[]', 0, '2020-10-14 12:09:21', '2020-10-14 12:09:21', '2021-10-14 12:09:21');
INSERT INTO `oauth_access_tokens` VALUES ('704a32a7eccf73e0eaea33272a4ecea8c4274c15b58c3dc304ed4d95678b3a8a943b3c6cc1307570', 33, 1, 'authToken', '[]', 0, '2020-09-19 03:46:55', '2020-09-19 03:46:55', '2021-09-18 21:46:55');
INSERT INTO `oauth_access_tokens` VALUES ('70909d7fd374f78a7482466e41384ad31097d583bcc3f7f7c371a3089369e569e25496c384bbb10e', 17, 1, 'authToken', '[]', 0, '2020-09-13 03:48:38', '2020-09-13 03:48:38', '2021-09-12 21:48:38');
INSERT INTO `oauth_access_tokens` VALUES ('7091ec5a894b49f434fe7dc420afe1b4048731468af18d55c66d0af96702eddef3dce860f33a8f95', 12, 1, 'authToken', '[]', 0, '2020-09-12 08:36:38', '2020-09-12 08:36:38', '2021-09-12 02:36:38');
INSERT INTO `oauth_access_tokens` VALUES ('710153ef0c6b196ad1d62de402b26e116d7c5ae23d6fde53cf05721562b0623969246f37ae8925ea', 31, 1, 'authToken', '[]', 0, '2020-09-19 02:57:42', '2020-09-19 02:57:42', '2021-09-18 20:57:42');
INSERT INTO `oauth_access_tokens` VALUES ('717b5614d04de93c79bffb663be2b831ff19c5ec6829c0893d852cebf22f44a879ac243a525cfeb3', 3, 1, 'authToken', '[]', 0, '2020-09-12 03:22:22', '2020-09-12 03:22:22', '2021-09-11 21:22:22');
INSERT INTO `oauth_access_tokens` VALUES ('73917b5e4d3e4e33371f05c18f8d7cdbffa6be77e484f6c844625ed8f90b13c73bd955a0b2eb18f7', 12, 1, 'authToken', '[]', 0, '2020-09-13 05:35:01', '2020-09-13 05:35:01', '2021-09-12 23:35:01');
INSERT INTO `oauth_access_tokens` VALUES ('74bd5fbb52474503e457847e5cb0f37dd63c004bbdf6b1272dde7cb2c5872f4b3e4ffba3825b9f6f', 12, 1, 'authToken', '[]', 0, '2020-09-12 09:29:47', '2020-09-12 09:29:47', '2021-09-12 03:29:47');
INSERT INTO `oauth_access_tokens` VALUES ('77763ebdee157af81c0fa59642e7b066de0bd5ce50f9a6cf4bb335c87bc3998265757f1254ba27ab', 12, 1, 'authToken', '[]', 0, '2020-09-13 23:16:28', '2020-09-13 23:16:28', '2021-09-13 17:16:28');
INSERT INTO `oauth_access_tokens` VALUES ('77cffce4589dbdee17c095b803ac96d8fde0c8be0866577d18b99410d2af72e9feaf47c540bdf3a6', 51, 1, 'authToken', '[]', 0, '2020-09-28 08:58:34', '2020-09-28 08:58:34', '2021-09-28 02:58:34');
INSERT INTO `oauth_access_tokens` VALUES ('786e07a83873c418d3a2cc26b61b7a856046a8acefeaa4a67f4acd7651d9c21a6cbac3af17b437f5', 3, 1, 'authToken', '[]', 0, '2020-09-12 07:10:22', '2020-09-12 07:10:22', '2021-09-12 01:10:22');
INSERT INTO `oauth_access_tokens` VALUES ('79ddae335e80a8c864faae8ff681fad9607d7b9e93f4bd4b6357aa068eab08e34c39c886058dd115', 33, 1, 'authToken', '[]', 0, '2020-09-17 05:58:51', '2020-09-17 05:58:51', '2021-09-16 23:58:51');
INSERT INTO `oauth_access_tokens` VALUES ('7a7ba277ad521effb73af422f76342f83df92e891ad0800667a8fdf8947eae5aa6b4e3bbc039cd0b', 45, 1, 'authToken', '[]', 0, '2020-09-18 01:46:04', '2020-09-18 01:46:04', '2021-09-17 19:46:04');
INSERT INTO `oauth_access_tokens` VALUES ('7ae91db2ea704eb1c5c24209ed37badefbf6104c65beffa83923b86b2948e68129e973c35be114cf', 26, 1, 'authToken', '[]', 0, '2020-09-15 08:41:23', '2020-09-15 08:41:23', '2021-09-15 02:41:23');
INSERT INTO `oauth_access_tokens` VALUES ('7c488e42a7eaffe4b84ded48c605afcd3779417336e8957184adf2d2f9186f7e2ad19dc3be987361', 12, 1, 'authToken', '[]', 0, '2020-09-12 11:25:27', '2020-09-12 11:25:27', '2021-09-12 05:25:27');
INSERT INTO `oauth_access_tokens` VALUES ('7e4df6b7c5a9e3073c2845859911b51fb59f938673f87df4b478c7c855758b847d143ad38580ef41', 51, 1, 'authToken', '[]', 0, '2020-09-28 09:12:07', '2020-09-28 09:12:07', '2021-09-28 03:12:07');
INSERT INTO `oauth_access_tokens` VALUES ('7f65c7c812e5d6c19f84a91c5051f463d0b98f9c0822edab005a50c62a5aa6accac1fdbe1ae26490', 30, 1, 'authToken', '[]', 0, '2020-09-19 03:50:13', '2020-09-19 03:50:13', '2021-09-18 21:50:13');
INSERT INTO `oauth_access_tokens` VALUES ('812122dcc1a660a5ce67f00332646f2c2e7d46712d1fa4dd8c614ce5a9c6db6dede273bab30d227a', 10, 1, 'authToken', '[]', 0, '2020-09-13 01:54:35', '2020-09-13 01:54:35', '2021-09-12 19:54:35');
INSERT INTO `oauth_access_tokens` VALUES ('838a761cae44915daa1f680ab1c2e3f4fc82460f02ce2da6e1b43bc282a0d2d553842818be2e8b0b', 12, 1, 'authToken', '[]', 0, '2020-09-13 23:42:40', '2020-09-13 23:42:40', '2021-09-13 17:42:40');
INSERT INTO `oauth_access_tokens` VALUES ('857b2e3fdedd795abf40ada0a19580e9353a8dae2db56c0511851c2df515b1b6245776b723c72dd6', 10, 1, 'authToken', '[]', 0, '2020-09-15 04:11:18', '2020-09-15 04:11:18', '2021-09-14 22:11:18');
INSERT INTO `oauth_access_tokens` VALUES ('870cb5071d8ffd8d7483e24ea159e10f899219123cc3288faf998ce04aea8cc1905ce08122107f80', 39, 1, 'authToken', '[]', 0, '2020-09-18 00:04:16', '2020-09-18 00:04:16', '2021-09-17 18:04:16');
INSERT INTO `oauth_access_tokens` VALUES ('87c40c5a1f2f27c27fe76a681e51d731b1d91865af37695e1e4111b61587106645cca6d222150047', 3, 1, 'authToken', '[]', 0, '2020-09-12 04:25:23', '2020-09-12 04:25:23', '2021-09-11 22:25:23');
INSERT INTO `oauth_access_tokens` VALUES ('882d64142500217179fc3566c1da5f6bcf210d28ca65c8da77c06e51f454fc8f12eb5276e41b2e46', 50, 1, 'authToken', '[]', 0, '2020-09-27 05:16:09', '2020-09-27 05:16:09', '2021-09-26 23:16:09');
INSERT INTO `oauth_access_tokens` VALUES ('8846d4dc5cadc0be9b2abb05cf66f5ed57c6844fd8268829a397b8994ce0e6c766a8feeea615034f', 14, 1, 'authToken', '[]', 0, '2020-09-13 01:38:18', '2020-09-13 01:38:18', '2021-09-12 19:38:18');
INSERT INTO `oauth_access_tokens` VALUES ('888d3a069735f55820593c8d1025e86dab64779ae073a58edfffa470ca417fb1d26e166736286d7f', 6, 1, 'authToken', '[]', 0, '2020-09-12 01:08:50', '2020-09-12 01:08:50', '2021-09-11 19:08:50');
INSERT INTO `oauth_access_tokens` VALUES ('888e1ba42160f40cd874142d8dfb1a477842a3f34a5a130c9f8aa2b2ae0ff763bee858d5db9ca13e', 10, 1, 'authToken', '[]', 0, '2020-09-12 22:15:29', '2020-09-12 22:15:29', '2021-09-12 16:15:29');
INSERT INTO `oauth_access_tokens` VALUES ('889ab195d4095ab6c65f90ef5589a87bcc72c2696dff03cdd35df6e183b0904ea884cee21e401227', 30, 1, 'authToken', '[]', 0, '2020-09-23 07:12:30', '2020-09-23 07:12:30', '2021-09-23 01:12:30');
INSERT INTO `oauth_access_tokens` VALUES ('88a22000f055b091e6611ff2c9c952ca127657542ca7ed9c02153063a57a7823cac7a696ee50e0a7', 44, 1, 'authToken', '[]', 0, '2020-09-18 01:25:52', '2020-09-18 01:25:52', '2021-09-17 19:25:52');
INSERT INTO `oauth_access_tokens` VALUES ('88a561b69eac83ba9ad984204856bf69f849fe39c9788a3a1eac7cc0b415032ee852709a1a4d5d68', 2, 1, 'authToken', '[]', 0, '2020-09-12 04:15:16', '2020-09-12 04:15:16', '2021-09-11 22:15:16');
INSERT INTO `oauth_access_tokens` VALUES ('88d39ae36eaaef67b0f6d551caf1fb91e52281d465969ec6c09c32a4f0375002402ca588ff4a6a24', 17, 1, 'authToken', '[]', 0, '2020-09-13 03:27:48', '2020-09-13 03:27:48', '2021-09-12 21:27:48');
INSERT INTO `oauth_access_tokens` VALUES ('897a13c378797f5b5c4cd389ecbbfa881677ffbe78b424741b7761f1c8c9457d31d42047fb48f438', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:29:58', '2020-09-12 02:29:58', '2021-09-11 20:29:58');
INSERT INTO `oauth_access_tokens` VALUES ('89fa6ab754187eddbdca7815c251f2b269e9bb9dfad1ca383304a6523d221b1c14c35ade39a33097', 18, 1, 'authToken', '[]', 0, '2020-09-13 16:59:21', '2020-09-13 16:59:21', '2021-09-13 10:59:21');
INSERT INTO `oauth_access_tokens` VALUES ('8a148e97262e7bb3cb4a9cccaceb82eef66159a4b956fc2c5a68cad947a570495d4e8be53fdbe240', 10, 1, 'authToken', '[]', 0, '2020-09-14 06:32:46', '2020-09-14 06:32:46', '2021-09-14 00:32:46');
INSERT INTO `oauth_access_tokens` VALUES ('8a51d168ad5047b68c5cad2b8bef98bfdee67852deddef5c85677fd394485a19e3ad6287a5023b69', 10, 1, 'authToken', '[]', 0, '2020-09-12 08:15:24', '2020-09-12 08:15:24', '2021-09-12 02:15:24');
INSERT INTO `oauth_access_tokens` VALUES ('8a7e17c0426787c7a0a3dc5e34b715a601c988bfcf83a9601884530e81330b679fce31cccd7b35f9', 25, 1, 'authToken', '[]', 0, '2020-09-14 22:02:35', '2020-09-14 22:02:35', '2021-09-14 16:02:35');
INSERT INTO `oauth_access_tokens` VALUES ('8a962a45523ec35714dff10037d13322208bba2862ff161cf4b8be0ba410e767313db2c667d39c4e', 23, 1, 'authToken', '[]', 0, '2020-09-14 04:30:21', '2020-09-14 04:30:21', '2021-09-13 22:30:21');
INSERT INTO `oauth_access_tokens` VALUES ('8af73cbd0f238341113b2ed702ec5d41ffdf6ef3bc99687c7c8a5d3f2cf3da184080f07e1949eebf', 46, 1, 'authToken', '[]', 0, '2020-09-18 09:43:59', '2020-09-18 09:43:59', '2021-09-18 03:43:59');
INSERT INTO `oauth_access_tokens` VALUES ('8bff710664156355a1dca87e6534f5a5ad699d19c7d95c3bd6a23a0d34b069f482d18556aada9fe0', 2, 1, 'authToken', '[]', 0, '2020-09-11 18:03:49', '2020-09-11 18:03:49', '2021-09-11 12:03:49');
INSERT INTO `oauth_access_tokens` VALUES ('8e56c4a92a996114aca0ed7825b217ec13e2c1defe155dbd7fbb6ecc7c1670f69e228a293784c37c', 43, 1, 'authToken', '[]', 0, '2020-09-18 01:23:49', '2020-09-18 01:23:49', '2021-09-17 19:23:49');
INSERT INTO `oauth_access_tokens` VALUES ('8ed8447220662d31b7e9c3c76e8cf10187a249d241a9d2799a03324a88ca85b549e6f74ab4073708', 10, 1, 'authToken', '[]', 0, '2020-09-12 10:16:59', '2020-09-12 10:16:59', '2021-09-12 04:16:59');
INSERT INTO `oauth_access_tokens` VALUES ('9025a2dedbbd557464b1fc14b94430391e01078317c64d628296fd773d1cf6cd577bc50dadf64e99', 36, 1, 'authToken', '[]', 0, '2020-09-17 23:32:15', '2020-09-17 23:32:15', '2021-09-17 17:32:15');
INSERT INTO `oauth_access_tokens` VALUES ('90404b57d2e5618b7d44913c4f387ca68e393cde0b40265c1f5abed8cbe30a833dad212cf1599a1f', 12, 1, 'authToken', '[]', 0, '2020-09-13 23:29:57', '2020-09-13 23:29:57', '2021-09-13 17:29:57');
INSERT INTO `oauth_access_tokens` VALUES ('90b2a9577bd78aaa676acd0ec5b0530f1abe15b176922da58e74a0001ff7ed2caa450b80abc4ec3e', 32, 1, 'authToken', '[]', 0, '2020-09-17 05:00:18', '2020-09-17 05:00:18', '2021-09-16 23:00:18');
INSERT INTO `oauth_access_tokens` VALUES ('912ac5e5a0cf1cc9e7eb81c276e7a437e3bedaa928f0392728e56d82430b8e462cbae087b5eb2760', 6, 1, 'authToken', '[]', 0, '2020-09-12 01:09:18', '2020-09-12 01:09:18', '2021-09-11 19:09:18');
INSERT INTO `oauth_access_tokens` VALUES ('912e44006c9699907ba4e579a1439f088c537483fefd1a4fa33e5bc9cdf6ddfee234b2c7981c3708', 30, 1, 'authToken', '[]', 0, '2020-09-18 06:47:27', '2020-09-18 06:47:27', '2021-09-18 00:47:27');
INSERT INTO `oauth_access_tokens` VALUES ('91877dd8903085578a34644d35acfaae00944824daeeecc17016106dd8149a631470df99c126b870', 10, 1, 'authToken', '[]', 0, '2020-09-12 07:45:49', '2020-09-12 07:45:49', '2021-09-12 01:45:49');
INSERT INTO `oauth_access_tokens` VALUES ('92a6b9746f11eb2f4d76494aa3a3fbd6845dae64ebaf4240d15b13fc59eaf4c8befd3e0536df26cf', 3, 1, 'authToken', '[]', 0, '2020-09-14 22:04:12', '2020-09-14 22:04:12', '2021-09-14 16:04:12');
INSERT INTO `oauth_access_tokens` VALUES ('93ac6eea90b1b16a6eda69fa2d6b54c758abd720198b6df4e66693a80b6b639f41cc9149f13f5e4b', 46, 1, 'authToken', '[]', 0, '2020-09-19 00:50:38', '2020-09-19 00:50:38', '2021-09-18 18:50:38');
INSERT INTO `oauth_access_tokens` VALUES ('93aed6708cad5fae0fa93a44d0f86400d224856d9ac0d2e44f433d9f1378458993d45adc3e89a3a2', 60, 1, 'authToken', '[]', 0, '2020-10-14 12:15:09', '2020-10-14 12:15:09', '2021-10-14 12:15:09');
INSERT INTO `oauth_access_tokens` VALUES ('94b5bed1ebcc24fbe9b78b9fa365d3a3400092a84c3fcdf76d2220b31a9c98229c2ca94a812a10bf', 52, 1, 'authToken', '[]', 0, '2020-10-14 11:47:46', '2020-10-14 11:47:46', '2021-10-14 11:47:46');
INSERT INTO `oauth_access_tokens` VALUES ('977e7dc414959037bd86e48b312e8f1632603005736d4f4705164e6b14e4877b1b693e82247cc7a7', 39, 1, 'authToken', '[]', 0, '2020-09-18 00:02:16', '2020-09-18 00:02:16', '2021-09-17 18:02:16');
INSERT INTO `oauth_access_tokens` VALUES ('981025e135e350c8f98c5764a8f1b4f15854f768a20ce089224a41381396078354cc2844d94efb35', 34, 1, 'authToken', '[]', 0, '2020-09-17 05:20:49', '2020-09-17 05:20:49', '2021-09-16 23:20:49');
INSERT INTO `oauth_access_tokens` VALUES ('9813222caaa539978050791a5543950d91daec4441656c88989e0d0229b3b13e7df98f1bcae6e42b', 31, 1, 'authToken', '[]', 0, '2020-09-24 09:34:47', '2020-09-24 09:34:47', '2021-09-24 03:34:47');
INSERT INTO `oauth_access_tokens` VALUES ('989d182e99012a639847c2ecef1bd1710c7007ca82217fb4e9599904b49d4ca04a5c53f82fe2771c', 34, 1, 'authToken', '[]', 0, '2020-09-17 05:21:21', '2020-09-17 05:21:21', '2021-09-16 23:21:21');
INSERT INTO `oauth_access_tokens` VALUES ('98ad19c76e0442651cf2a3966bd013c75f405f1a2630a6da101ffe4b7fc5119ddfbb24f45b5d8fad', 30, 1, 'authToken', '[]', 0, '2020-09-17 03:33:47', '2020-09-17 03:33:47', '2021-09-16 21:33:47');
INSERT INTO `oauth_access_tokens` VALUES ('99f7617766b653ad9bf8ae5e0e6acdb90e76757dc5fd3b9955b3862305d75cf4fa37eeec59a3437e', 2, 1, 'authToken', '[]', 0, '2020-09-16 15:56:19', '2020-09-16 15:56:19', '2021-09-16 09:56:19');
INSERT INTO `oauth_access_tokens` VALUES ('9bd325cbfae489a83143bf5a16c1b977ee6bf759375f98198b6be80de33a5411779bf244618bb5d0', 45, 1, 'authToken', '[]', 0, '2020-09-18 01:45:50', '2020-09-18 01:45:50', '2021-09-17 19:45:50');
INSERT INTO `oauth_access_tokens` VALUES ('9c30ce3594e2cedc3c4886bd3b140a325fcd95e212139a4d142d3811dc9e8c6ce04ad8cab5419c9d', 10, 1, 'authToken', '[]', 0, '2020-09-12 22:51:54', '2020-09-12 22:51:54', '2021-09-12 16:51:54');
INSERT INTO `oauth_access_tokens` VALUES ('9cd4c32286e41ffb361d574d151eb27faa88e81cb4257d7d781ef97357c44374c7933ee3dd50c7f5', 10, 1, 'authToken', '[]', 0, '2020-09-14 03:21:59', '2020-09-14 03:21:59', '2021-09-13 21:21:59');
INSERT INTO `oauth_access_tokens` VALUES ('9ff1b1944ac4ec87785307ae53af9bcc272f8c11fcc4519456d81b0d333c65292caae56a837da647', 71, 1, 'authToken', '[]', 0, '2020-10-16 15:51:48', '2020-10-16 15:51:48', '2021-10-16 15:51:48');
INSERT INTO `oauth_access_tokens` VALUES ('a0bb53c7b620ea7fd0e2b632901c122f7f0497ce33730fc5c7f827be1049297175048f6649a70411', 10, 1, 'authToken', '[]', 0, '2020-09-13 23:24:50', '2020-09-13 23:24:50', '2021-09-13 17:24:50');
INSERT INTO `oauth_access_tokens` VALUES ('a48047bb793b4a2df38e554c349378fc4e3c8bb6e6704a1037225e48e38b938f23e9ce84f77b2a30', 5, 1, 'authToken', '[]', 0, '2020-09-12 00:48:12', '2020-09-12 00:48:12', '2021-09-11 18:48:12');
INSERT INTO `oauth_access_tokens` VALUES ('a48252510987ec284e4f631a4dedb4798bdb70a54b19cd0408d0909f5e3b1bdfe1537a1984e1ae12', 27, 1, 'authToken', '[]', 0, '2020-09-15 21:48:47', '2020-09-15 21:48:47', '2021-09-15 15:48:47');
INSERT INTO `oauth_access_tokens` VALUES ('a486a9158a1e616e2affe15f8dbc48cd72d303f14532cefd59cfbddd07ce669245d273828959a9ce', 63, 1, 'authToken', '[]', 0, '2020-10-26 12:41:03', '2020-10-26 12:41:03', '2021-10-26 12:41:03');
INSERT INTO `oauth_access_tokens` VALUES ('a488f954bce12681174bd648eb0c76df2561ea312b78a0252037944eec7241c9c066e7b7d8f6389b', 3, 1, 'authToken', '[]', 0, '2020-09-15 05:58:12', '2020-09-15 05:58:12', '2021-09-14 23:58:12');
INSERT INTO `oauth_access_tokens` VALUES ('a4d2e18aa2ecd2b5f24b1e58a91fd9aacdb650c155a67031ef07e32086f9d8e27dcf0f37d1b78291', 3, 1, 'authToken', '[]', 0, '2020-09-13 20:02:43', '2020-09-13 20:02:43', '2021-09-13 14:02:43');
INSERT INTO `oauth_access_tokens` VALUES ('a4ed8ddc82f02ebc9a3249ddd1c0001285d9fd8772ace1b6f9f0d7af28239bc68c5ae37eee7afedb', 8, 1, 'authToken', '[]', 0, '2020-09-12 03:43:42', '2020-09-12 03:43:42', '2021-09-11 21:43:42');
INSERT INTO `oauth_access_tokens` VALUES ('a514565e21741c42263aeffbcd7b80d6825218bc9a86267817a7fe1da121857f79f1f065242fbd3f', 31, 1, 'authToken', '[]', 0, '2020-09-18 08:20:55', '2020-09-18 08:20:55', '2021-09-18 02:20:55');
INSERT INTO `oauth_access_tokens` VALUES ('a63e8210970442989b14a7b46c989e24eb0f6b8f2290babb566650463468b3cdb0872c9ff41181de', 30, 1, 'authToken', '[]', 0, '2020-09-17 02:04:58', '2020-09-17 02:04:58', '2021-09-16 20:04:58');
INSERT INTO `oauth_access_tokens` VALUES ('a7059d188f3c20d9787d19639304fbefba5aca8080592d660392364f8984cc3cefe05d570b9798de', 63, 1, 'authToken', '[]', 0, '2020-10-26 12:39:35', '2020-10-26 12:39:35', '2021-10-26 12:39:35');
INSERT INTO `oauth_access_tokens` VALUES ('a85ec584bd4bb5ca74bfe125193610e3d79a5717f4f06c446a4c60226c38e481d837a44294e86177', 3, 1, 'authToken', '[]', 0, '2020-09-12 04:00:01', '2020-09-12 04:00:01', '2021-09-11 22:00:01');
INSERT INTO `oauth_access_tokens` VALUES ('a95098d15e95d414ac98556b052039700d861c749830407c69e8fa85a5b88c205121c9884de66df7', 63, 1, 'authToken', '[]', 0, '2020-10-26 10:53:45', '2020-10-26 10:53:45', '2021-10-26 10:53:45');
INSERT INTO `oauth_access_tokens` VALUES ('aa1398dc9ccdbaae1858e644022ba48f5c1b20b620a089a36780c7a210842e890121d683e35348fc', 16, 1, 'authToken', '[]', 0, '2020-09-13 01:54:06', '2020-09-13 01:54:06', '2021-09-12 19:54:06');
INSERT INTO `oauth_access_tokens` VALUES ('aa6b8164acab9732be7ac8b0c803e547b59ff207ac3c67e94094ccce6133e86a825561d9aa77af87', 3, 1, 'authToken', '[]', 0, '2020-09-12 03:49:07', '2020-09-12 03:49:07', '2021-09-11 21:49:07');
INSERT INTO `oauth_access_tokens` VALUES ('aa8d93cd5a85906da5c926d9e397612c6e7528011eb28887e3bf7f3ec25a4de6cd66b548d158ee43', 60, 1, 'authToken', '[]', 0, '2020-10-14 12:13:30', '2020-10-14 12:13:30', '2021-10-14 12:13:30');
INSERT INTO `oauth_access_tokens` VALUES ('ab068affa4e24182561f0176aa2f5fdc4d071ba2d87ea57fd1807cc59b11794a58d3f1e90f533113', 12, 1, 'authToken', '[]', 0, '2020-09-13 02:17:33', '2020-09-13 02:17:33', '2021-09-12 20:17:33');
INSERT INTO `oauth_access_tokens` VALUES ('adcf5c96a2fd2688120c1a6fb97e182decca1cad126b3a2a28ecaef01e787f233faac4919f7300eb', 3, 1, 'authToken', '[]', 0, '2020-09-15 15:38:07', '2020-09-15 15:38:07', '2021-09-15 09:38:07');
INSERT INTO `oauth_access_tokens` VALUES ('ae7a3f77761939a5ce25bd0bbf34d9004f2b068ae516f7e11dbf7733000c886166a8769c14722d30', 33, 1, 'authToken', '[]', 0, '2020-09-17 05:05:36', '2020-09-17 05:05:36', '2021-09-16 23:05:36');
INSERT INTO `oauth_access_tokens` VALUES ('ae96d80f1a95e6290ab864af606e5076182593eb9ebf0e2f8b9b6c2aa5edab1acaa3895bfadeac94', 10, 1, 'authToken', '[]', 0, '2020-09-12 10:14:58', '2020-09-12 10:14:58', '2021-09-12 04:14:58');
INSERT INTO `oauth_access_tokens` VALUES ('afd277f3ed062de53350130cf30b2cd8dc63424b71a272c3d4a61d35f081fed3e1ed9acab7be0be7', 2, 1, 'authToken', '[]', 0, '2020-09-15 06:07:39', '2020-09-15 06:07:39', '2021-09-15 00:07:39');
INSERT INTO `oauth_access_tokens` VALUES ('b086e3a25cde7208ee0f8c517a75cc5c1c2126faf00d79f871ce96735120e3fb7c790363101d51fc', 14, 1, 'authToken', '[]', 0, '2020-09-14 00:31:23', '2020-09-14 00:31:23', '2021-09-13 18:31:23');
INSERT INTO `oauth_access_tokens` VALUES ('b1b03b6ad2490b0f5baf24f6d392ac60dfad1adacd59671b34d1bae2e862a4dd82e83f0d6d2f5304', 23, 1, 'authToken', '[]', 0, '2020-09-14 04:30:54', '2020-09-14 04:30:54', '2021-09-13 22:30:54');
INSERT INTO `oauth_access_tokens` VALUES ('b1e57a63593949a68dbd053ab4e7e30fef6f6d88738134ce646320a26aecd7df3a23af7d96829d8a', 10, 1, 'authToken', '[]', 0, '2020-09-14 02:25:44', '2020-09-14 02:25:44', '2021-09-13 20:25:44');
INSERT INTO `oauth_access_tokens` VALUES ('b2179971d50d25949da7c8686d44ee8c93fce780a9e9c025be70a96d0e4f65cdc4ddc91e2a845f89', 10, 1, 'authToken', '[]', 0, '2020-09-15 21:20:22', '2020-09-15 21:20:22', '2021-09-15 15:20:22');
INSERT INTO `oauth_access_tokens` VALUES ('b5a08d2ee77df60e5674d8da18b2845e6f636b5e63491f4c6f36b137b890dfbd1a11f6a64ae5e893', 10, 1, 'authToken', '[]', 0, '2020-09-12 07:18:10', '2020-09-12 07:18:10', '2021-09-12 01:18:10');
INSERT INTO `oauth_access_tokens` VALUES ('b6537582a55837556260b94cc685f9b376717b91f337d286f2752095ceddf158e4542bc45c19e3ce', 3, 1, 'authToken', '[]', 0, '2020-09-12 02:59:08', '2020-09-12 02:59:08', '2021-09-11 20:59:08');
INSERT INTO `oauth_access_tokens` VALUES ('b68b86bedc0dfbcb2ae4641ee90e636ae1e922d258a28b4b07e24b6fbb87996b335fd23113a7fa08', 63, 1, 'authToken', '[]', 0, '2020-10-26 12:40:59', '2020-10-26 12:40:59', '2021-10-26 12:40:59');
INSERT INTO `oauth_access_tokens` VALUES ('b71f5217a7f05139f63146fc5adb253de5eac9aaa3a55313dac1fa8ff274b5768478ca8224f24641', 37, 1, 'authToken', '[]', 0, '2020-09-17 23:32:46', '2020-09-17 23:32:46', '2021-09-17 17:32:46');
INSERT INTO `oauth_access_tokens` VALUES ('b7d0bb4041e0997b92332f87a393405bf9a5b444d073d9c91cb9ed9c6a49a33ec03df3780f874ed2', 12, 1, 'authToken', '[]', 0, '2020-09-13 05:27:19', '2020-09-13 05:27:19', '2021-09-12 23:27:19');
INSERT INTO `oauth_access_tokens` VALUES ('b7e195630380cb596af95dcf09eb7d2ba91f0f79b430651010dfe9e2df6a50b45d39d2d5b3584e37', 47, 1, 'authToken', '[]', 0, '2020-09-18 09:51:33', '2020-09-18 09:51:33', '2021-09-18 03:51:33');
INSERT INTO `oauth_access_tokens` VALUES ('b8b751c7a3a5460a194866ac4e8d3035b7115dcf9b5b668ff0116d43f3b07cfb24c65fd920ad5646', 16, 1, 'authToken', '[]', 0, '2020-09-13 01:53:30', '2020-09-13 01:53:30', '2021-09-12 19:53:30');
INSERT INTO `oauth_access_tokens` VALUES ('b9d8489f7d54604967153b90e47f389c04a3ea4bde515773a17fe631847579f1a9f0a2fdb4d01cfb', 2, 1, 'authToken', '[]', 0, '2020-09-12 03:31:54', '2020-09-12 03:31:54', '2021-09-11 21:31:54');
INSERT INTO `oauth_access_tokens` VALUES ('bb6d22393cf46a4dc1b8481ffa7bc48a2ab56fcea06745efc33240dc5f070a02f552e485d1f205b8', 2, 1, 'authToken', '[]', 0, '2020-09-15 17:55:00', '2020-09-15 17:55:00', '2021-09-15 11:55:00');
INSERT INTO `oauth_access_tokens` VALUES ('bc9e40d3869c2ed81584818012c15550cb414de7324bc0fce3ec35c8f679947979a967d2af7e7d10', 2, 1, 'authToken', '[]', 0, '2020-09-16 15:46:15', '2020-09-16 15:46:15', '2021-09-16 09:46:15');
INSERT INTO `oauth_access_tokens` VALUES ('bccecd726d1ef8b58ecb22281fe1949048ec2683cbf1233063ce9da50f5d94bf51644e03e97661d3', 31, 1, 'authToken', '[]', 0, '2020-09-17 02:20:43', '2020-09-17 02:20:43', '2021-09-16 20:20:43');
INSERT INTO `oauth_access_tokens` VALUES ('bd00a8847c175af90f8f3e41f78a41154128fc27f81395ea0145630e6064f2b5fa826aa2bb876ca0', 40, 1, 'authToken', '[]', 0, '2020-09-18 00:03:13', '2020-09-18 00:03:13', '2021-09-17 18:03:13');
INSERT INTO `oauth_access_tokens` VALUES ('bd05c634724067d726846001708f0dfdab80e16e2d2646c53aa57a58c43efd13f1ce730099518a0a', 10, 1, 'authToken', '[]', 0, '2020-09-13 23:39:23', '2020-09-13 23:39:23', '2021-09-13 17:39:23');
INSERT INTO `oauth_access_tokens` VALUES ('bd4adc523fe2386ba663104c2228546a31ee9fe82a696a994a2470507275d5caa0dd2f8b57ae4baa', 29, 1, 'authToken', '[]', 0, '2020-09-17 01:54:21', '2020-09-17 01:54:21', '2021-09-16 19:54:21');
INSERT INTO `oauth_access_tokens` VALUES ('bd9796cca3cf3d2dec0af36b25913e2e1317cce3cbc2f1510cd8a824b83b493fe5425d4566d1e3bd', 2, 1, 'authToken', '[]', 0, '2020-09-13 09:35:47', '2020-09-13 09:35:47', '2021-09-13 03:35:47');
INSERT INTO `oauth_access_tokens` VALUES ('be34be5e70b1d99ad8805faf67c2e48eb40c340ecb990ee3f8b13dabd90ae477d223f1d763b10ccd', 3, 1, 'authToken', '[]', 0, '2020-09-12 01:40:49', '2020-09-12 01:40:49', '2021-09-11 19:40:49');
INSERT INTO `oauth_access_tokens` VALUES ('bf370ebf8b5131fdc829ea3b557a667bae4462f491bcf4cc852ac276d88883a1a70b5456df4c4b56', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:57:47', '2020-09-12 02:57:47', '2021-09-11 20:57:47');
INSERT INTO `oauth_access_tokens` VALUES ('bf436aa9c3f0c75b07d62d47a84b44a2f57710b0303ff94287c7c5a9d1de5719f4a95566de05d774', 12, 1, 'authToken', '[]', 0, '2020-09-12 10:16:05', '2020-09-12 10:16:05', '2021-09-12 04:16:05');
INSERT INTO `oauth_access_tokens` VALUES ('bfcf7df2d4ac1410fe1672d86cbe3c9da4d38d55399119e9c15f25080cbe6e1ce2fa9eb1f94f9ae2', 2, 1, 'authToken', '[]', 0, '2020-09-16 16:06:44', '2020-09-16 16:06:44', '2021-09-16 10:06:44');
INSERT INTO `oauth_access_tokens` VALUES ('bff6067c3b8172c0294d0cd492f7a23c5e4197a28fab2149b661d17a05ec7f4350664b66e7413daa', 2, 1, 'authToken', '[]', 0, '2020-09-12 03:10:22', '2020-09-12 03:10:22', '2021-09-11 21:10:22');
INSERT INTO `oauth_access_tokens` VALUES ('c0718e96a33e723402db2b4a7872f54fa319832543de271abe904d0eb27eaa46c19c43c3947eee1a', 60, 1, 'authToken', '[]', 0, '2020-10-14 12:10:28', '2020-10-14 12:10:28', '2021-10-14 12:10:28');
INSERT INTO `oauth_access_tokens` VALUES ('c074cfc0dc5149a38fbd8a0b2291fa34fdb4001efd1f474995a827bb7f347c9ac3b8a68bea6e9844', 25, 1, 'authToken', '[]', 0, '2020-09-14 22:01:54', '2020-09-14 22:01:54', '2021-09-14 16:01:54');
INSERT INTO `oauth_access_tokens` VALUES ('c141995e0b31c7c40a51ebfea9710373796d11bbd3ed66bf53485c0cd68d1344cd6745e91ea1c258', 2, 1, 'authToken', '[]', 0, '2020-09-13 13:38:32', '2020-09-13 13:38:32', '2021-09-13 07:38:32');
INSERT INTO `oauth_access_tokens` VALUES ('c28720192301df518d76f1db6dc2c5d409d3fb27817760d076e13c7219a3b196ea4f1682554a8d69', 10, 1, 'authToken', '[]', 0, '2020-09-12 08:44:29', '2020-09-12 08:44:29', '2021-09-12 02:44:29');
INSERT INTO `oauth_access_tokens` VALUES ('c2c4b92b440ef07a3f2cdfd290c8e577a906004e25b3072b25a55803995a7830111fb52636253ef1', 2, 1, 'authToken', '[]', 0, '2020-09-13 13:24:06', '2020-09-13 13:24:06', '2021-09-13 07:24:06');
INSERT INTO `oauth_access_tokens` VALUES ('c3e179a6bae707249aa2139f9d03c144dfeaec92e8aae2cd64faff0189534b83377511e196f10523', 4, 1, 'authToken', '[]', 0, '2020-09-12 00:41:48', '2020-09-12 00:41:48', '2021-09-11 18:41:48');
INSERT INTO `oauth_access_tokens` VALUES ('c54387ac1a8538ef8dee7b3b8edc27fa8f0cc6469c73c5c8e18eae9c463c02548b6fa3a2893ee00c', 31, 1, 'authToken', '[]', 0, '2020-09-17 02:22:46', '2020-09-17 02:22:46', '2021-09-16 20:22:46');
INSERT INTO `oauth_access_tokens` VALUES ('c57500e115affdaf8eaa67d598a031baa5f85bafeb6a3e5272331cf1cac7b1b13d4060f6fe17ac0e', 18, 1, 'authToken', '[]', 0, '2020-09-15 13:37:31', '2020-09-15 13:37:31', '2021-09-15 07:37:31');
INSERT INTO `oauth_access_tokens` VALUES ('c5d7f21f290989354896a5e4d71ba5380b61bd5bc4e090d0e64d571363816f667a15733ebe36ff96', 63, 1, 'authToken', '[]', 0, '2020-10-26 12:40:02', '2020-10-26 12:40:02', '2021-10-26 12:40:02');
INSERT INTO `oauth_access_tokens` VALUES ('c730792551cc62252476f27c6130749f8ffebb69cce34e95ea9911e24d663d0064bf4b009b98eccc', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:17:57', '2020-09-12 02:17:57', '2021-09-11 20:17:57');
INSERT INTO `oauth_access_tokens` VALUES ('c82ae318310401f46e560228db258e96ef63713079e82971fa9bb5afe57a602409afb788dbefbd41', 4, 1, 'authToken', '[]', 0, '2020-09-12 00:41:30', '2020-09-12 00:41:30', '2021-09-11 18:41:30');
INSERT INTO `oauth_access_tokens` VALUES ('c86fb94dba3996761df098351db15fa2aecb3aaa61ffba7c99588da3e8a6593017eaf9e777f0f828', 3, 1, 'authToken', '[]', 0, '2020-09-13 07:23:21', '2020-09-13 07:23:21', '2021-09-13 01:23:21');
INSERT INTO `oauth_access_tokens` VALUES ('c9b9563f6db742832048938551920b49100f1d3b220f260764e4966f565da9f0676be682b1e64f0f', 35, 1, 'authToken', '[]', 0, '2020-09-24 09:34:12', '2020-09-24 09:34:12', '2021-09-24 03:34:12');
INSERT INTO `oauth_access_tokens` VALUES ('ca52e82d74ce00a3029d3669070a404a9ca8bdcdc284e0cbed2e8668ed10500d53780e7574e2ff9a', 34, 1, 'authToken', '[]', 0, '2020-09-19 03:45:57', '2020-09-19 03:45:57', '2021-09-18 21:45:57');
INSERT INTO `oauth_access_tokens` VALUES ('cb4cbffbf55af07d6e2f14cfe703b89b321390e708e134237cf9deb156815bee49e6bf9c954b65c9', 79, 1, 'authToken', '[]', 0, '2020-10-16 17:25:11', '2020-10-16 17:25:11', '2021-10-16 17:25:11');
INSERT INTO `oauth_access_tokens` VALUES ('cbd3bbaea28f19b2cac00b966b3620e39b6f4e45c2b83b7e7c2a3f5d8ad554e792ee10e0dedfd986', 2, 1, 'authToken', '[]', 0, '2020-09-12 19:02:33', '2020-09-12 19:02:33', '2021-09-12 13:02:33');
INSERT INTO `oauth_access_tokens` VALUES ('ccce5301fe60b3b97e80c003da2167b1ea1fe4556d8f1bd39ed566513dd258c19a04a9981acfc051', 9, 1, 'authToken', '[]', 0, '2020-09-12 04:11:25', '2020-09-12 04:11:25', '2021-09-11 22:11:25');
INSERT INTO `oauth_access_tokens` VALUES ('ccf22bd940e64b9736e3331505bfcf13ba9d3a5ed67207437e111eb9da7d98e0fec26586575102c9', 10, 1, 'authToken', '[]', 0, '2020-09-12 08:03:53', '2020-09-12 08:03:53', '2021-09-12 02:03:53');
INSERT INTO `oauth_access_tokens` VALUES ('ce713c8a18f3e3e8bc153375759f2c2b7098fb77a0566fc3417867ebf3044c04c69369526bb54b0d', 12, 1, 'authToken', '[]', 0, '2020-09-15 04:14:44', '2020-09-15 04:14:44', '2021-09-14 22:14:44');
INSERT INTO `oauth_access_tokens` VALUES ('d00b92aac4fce6cc1c457030e80902eea9b360892693d5e965229a158e22b4473f2a9b235a0f7c00', 3, 1, 'authToken', '[]', 0, '2020-09-13 13:07:11', '2020-09-13 13:07:11', '2021-09-13 07:07:11');
INSERT INTO `oauth_access_tokens` VALUES ('d058c8f5ce700ecc8b94da91e4f54c685fe3541b77507ae03b0fddf620380ee77e087e49073c551e', 33, 1, 'authToken', '[]', 0, '2020-09-19 04:35:04', '2020-09-19 04:35:04', '2021-09-18 22:35:04');
INSERT INTO `oauth_access_tokens` VALUES ('d0d47cdc33255a0e2452d3ee02ba1c4aeff28b854db63bebb5d7eefb805c66baed757397ca6ef5bf', 33, 1, 'authToken', '[]', 0, '2020-09-17 05:28:33', '2020-09-17 05:28:33', '2021-09-16 23:28:33');
INSERT INTO `oauth_access_tokens` VALUES ('d0e3e64b295ad5d29d9047e3d96112fb86a21a4c27d7f17ddf93db7d242198b0692725f6ac9bc402', 18, 1, 'authToken', '[]', 0, '2020-09-13 16:59:37', '2020-09-13 16:59:37', '2021-09-13 10:59:37');
INSERT INTO `oauth_access_tokens` VALUES ('d47c07cb5cd693e7b8f34ef6ceeecaf0ce384f25e162b0837e6f99d08239c4d290059876bcf5021a', 10, 1, 'authToken', '[]', 0, '2020-09-14 03:29:56', '2020-09-14 03:29:56', '2021-09-13 21:29:56');
INSERT INTO `oauth_access_tokens` VALUES ('d5758f41028ae78cf2254ee38bbe0b749fbf5e453cff9e23054ec84e0952fef21a25d855686f2d66', 76, 1, 'authToken', '[]', 0, '2020-10-16 16:59:49', '2020-10-16 16:59:49', '2021-10-16 16:59:49');
INSERT INTO `oauth_access_tokens` VALUES ('d668d925f60dec10a12dd90b808e39493c79db6d32bce8e7b801552bc8a1253a378f469672d96c5d', 12, 1, 'authToken', '[]', 0, '2020-09-12 08:11:32', '2020-09-12 08:11:32', '2021-09-12 02:11:32');
INSERT INTO `oauth_access_tokens` VALUES ('d72f03985f2e75b5fba810e5db8e268ee42bb8390903c707b5088c656a92e02804d039a0f747d41e', 31, 1, 'authToken', '[]', 0, '2020-09-29 09:45:47', '2020-09-29 09:45:47', '2021-09-29 03:45:47');
INSERT INTO `oauth_access_tokens` VALUES ('d855866c071d46e5f6d10c016cf8032e8e815b78d360c33ec831c965d330901bfd1d18a6f41b8613', 41, 1, 'authToken', '[]', 0, '2020-09-18 00:30:54', '2020-09-18 00:30:54', '2021-09-17 18:30:54');
INSERT INTO `oauth_access_tokens` VALUES ('d962baac93b8b0a7164a3b02a2adac92841692fed1a26e639e993b7552c8284d4f5fd732b722e6f2', 2, 1, 'authToken', '[]', 0, '2020-09-13 13:18:38', '2020-09-13 13:18:38', '2021-09-13 07:18:38');
INSERT INTO `oauth_access_tokens` VALUES ('da61a2b1dcd6713bec4e7bfd0f6c4696b5d1f02cf90421af5c0e5d16edb0d14c0292641ffc3e1eb6', 63, 1, 'authToken', '[]', 0, '2020-10-26 10:52:13', '2020-10-26 10:52:13', '2021-10-26 10:52:13');
INSERT INTO `oauth_access_tokens` VALUES ('db5025e56ded594699c64600613db669a21638c98ed7b5f6df65d26e6d271d73c72f77621a2f06a6', 2, 1, 'authToken', '[]', 0, '2020-09-12 02:54:06', '2020-09-12 02:54:06', '2021-09-11 20:54:06');
INSERT INTO `oauth_access_tokens` VALUES ('dc08a34da5363254e8d2f2943e6156fd0867f4c33d4a37175ec117f3f0b5d6978b361ef733914137', 81, 1, 'authToken', '[]', 0, '2020-10-16 17:36:07', '2020-10-16 17:36:07', '2021-10-16 17:36:07');
INSERT INTO `oauth_access_tokens` VALUES ('dc09822dabff1b18e11b1ff0c5f497f2ef3dce2eb4fe81740004d74634756899d30c5c19398c1cfe', 2, 1, 'authToken', '[]', 0, '2020-09-13 17:08:49', '2020-09-13 17:08:49', '2021-09-13 11:08:49');
INSERT INTO `oauth_access_tokens` VALUES ('dca6d4e4ff113122bf748dd2d2ea994fbcc1bed4517adfb230b3bd55e7cf507f1a89e271e6b87bfb', 30, 1, 'authToken', '[]', 0, '2020-09-19 03:23:42', '2020-09-19 03:23:42', '2021-09-18 21:23:42');
INSERT INTO `oauth_access_tokens` VALUES ('ddb44505d336bc0be36efc639ef7dd41a5da9e90615bf330695797e5e2467e6a6397fb609ec59bd1', 2, 1, 'authToken', '[]', 0, '2020-09-13 13:31:01', '2020-09-13 13:31:01', '2021-09-13 07:31:01');
INSERT INTO `oauth_access_tokens` VALUES ('ddc32cbe20fc92917a39c64b7b1ba34db42b1dd7c42b74821f67177ee2bc0b5c0f0176decceb6d1b', 46, 1, 'authToken', '[]', 0, '2020-09-19 04:13:21', '2020-09-19 04:13:21', '2021-09-18 22:13:21');
INSERT INTO `oauth_access_tokens` VALUES ('de75780ea38ce4e37a2608809075aa0f26b4fc20356f17858c90a5eeb219c65c48dc5b631c688269', 39, 1, 'authToken', '[]', 0, '2020-09-18 00:02:00', '2020-09-18 00:02:00', '2021-09-17 18:02:00');
INSERT INTO `oauth_access_tokens` VALUES ('df36601fdc7d74ae28b910bd997dad7d9165b4960628e4621bc0c5cd4811839f998579500dcae695', 10, 1, 'authToken', '[]', 0, '2020-09-13 01:21:55', '2020-09-13 01:21:55', '2021-09-12 19:21:55');
INSERT INTO `oauth_access_tokens` VALUES ('df74b9721b9ffc5f6e62e495f6cc248c01223cdc847b6754823e467d17e51245506cc878494afac3', 44, 1, 'authToken', '[]', 0, '2020-09-18 01:32:23', '2020-09-18 01:32:23', '2021-09-17 19:32:23');
INSERT INTO `oauth_access_tokens` VALUES ('dfe312eb152d9820a402ca05fb9e7201b6267e6885012bca663e35b11ae28138864da176f008dd72', 12, 1, 'authToken', '[]', 0, '2020-09-12 08:40:27', '2020-09-12 08:40:27', '2021-09-12 02:40:27');
INSERT INTO `oauth_access_tokens` VALUES ('e031375f2777d7525fdd39baf9685babf3dfef167c3aa7c4fe8f7df855573769b164f45bbfb24728', 14, 1, 'authToken', '[]', 0, '2020-09-13 01:28:46', '2020-09-13 01:28:46', '2021-09-12 19:28:46');
INSERT INTO `oauth_access_tokens` VALUES ('e06e5003166909fd1f93d26e2fedf66ee6e6bd73cd1f935271cc852a8aba9cd27b793a7e6d4482f6', 2, 1, 'authToken', '[]', 0, '2020-09-12 04:07:18', '2020-09-12 04:07:18', '2021-09-11 22:07:18');
INSERT INTO `oauth_access_tokens` VALUES ('e227214d987a78b3bd8647d13d928f92d109fc57f744f087c4904cf06e96456e3a3c46a23f7b6823', 12, 1, 'authToken', '[]', 0, '2020-09-12 07:47:46', '2020-09-12 07:47:46', '2021-09-12 01:47:46');
INSERT INTO `oauth_access_tokens` VALUES ('e31d80ebf1d013a3e7dcb945db4b00496798c2e7d6fb15b5aaf5e21fe3815a0b5dcd5a6c9ec2f84e', 35, 1, 'authToken', '[]', 0, '2020-09-17 06:06:37', '2020-09-17 06:06:37', '2021-09-17 00:06:37');
INSERT INTO `oauth_access_tokens` VALUES ('e477b28a5c65aa05554c1eb1d8710c0af47712f97892eb84599f84b9e982a955d3c1ac55799671ac', 24, 1, 'authToken', '[]', 0, '2020-09-14 10:45:02', '2020-09-14 10:45:02', '2021-09-14 04:45:02');
INSERT INTO `oauth_access_tokens` VALUES ('e5b5c26898b9b00af9222375c62d3590d39d000caa3acf3529e1b0d0b27a14a40a7370e2488086e5', 22, 1, 'authToken', '[]', 0, '2020-09-14 00:34:28', '2020-09-14 00:34:28', '2021-09-13 18:34:28');
INSERT INTO `oauth_access_tokens` VALUES ('e67abf19054492a88764b74686418b7427a7bb1a132b4842171bdca45fe8f541aa036010073216b3', 27, 1, 'authToken', '[]', 0, '2020-09-15 13:35:55', '2020-09-15 13:35:55', '2021-09-15 07:35:55');
INSERT INTO `oauth_access_tokens` VALUES ('e6d7559f4f57a180b52f9be408c62e9a5dd38c4fb2483cce810270eb69db98d1b6af250d1839e50b', 33, 1, 'authToken', '[]', 0, '2020-09-17 05:05:04', '2020-09-17 05:05:04', '2021-09-16 23:05:04');
INSERT INTO `oauth_access_tokens` VALUES ('eb2e2cb15cea36c1a1242f21e8be7119c0efe75605d020b4845a4d7c0ff5d9761decf53466d7e27e', 2, 1, 'authToken', '[]', 0, '2020-09-12 01:21:22', '2020-09-12 01:21:22', '2021-09-11 19:21:22');
INSERT INTO `oauth_access_tokens` VALUES ('eb7e57e2708ad91eae4c75a25031ab5ae82cf4fac64115f34d7cad2d5eb63955de94c1738d7e1f47', 43, 1, 'authToken', '[]', 0, '2020-09-18 01:26:00', '2020-09-18 01:26:00', '2021-09-17 19:26:00');
INSERT INTO `oauth_access_tokens` VALUES ('ebe5d8748f944c7b8261f83e2b3f86a7488d4106e7753147af441ffc5a904630cf450dc6e7cf88c0', 31, 1, 'authToken', '[]', 0, '2020-09-19 03:41:37', '2020-09-19 03:41:37', '2021-09-18 21:41:37');
INSERT INTO `oauth_access_tokens` VALUES ('ed43996874100b5f903dc653e0d2dbb4c6fe84273eaa15b8e2da583e9594f8e445bb8d66023b9813', 60, 1, 'authToken', '[]', 0, '2020-10-14 12:13:16', '2020-10-14 12:13:16', '2021-10-14 12:13:16');
INSERT INTO `oauth_access_tokens` VALUES ('ee491ffb9c0afbca6f51ed53e7bfcbf1413d048102d5b7b202f9a4683074ec455bd07c0f0ff2d4d2', 2, 1, 'authToken', '[]', 0, '2020-09-16 15:55:07', '2020-09-16 15:55:07', '2021-09-16 09:55:07');
INSERT INTO `oauth_access_tokens` VALUES ('f28441d049af055614e57792f9b97a65a0c261b7b80b745495c2ebefc1091c8defc58257ff7f5e71', 10, 1, 'authToken', '[]', 0, '2020-09-13 05:31:26', '2020-09-13 05:31:26', '2021-09-12 23:31:26');
INSERT INTO `oauth_access_tokens` VALUES ('f2959aaad05e2b361a21358c05dd63e21723b68a0b4f564f91d046811ac8eb3ff22d611b9f959cc0', 63, 1, 'authToken', '[]', 0, '2020-10-15 08:51:33', '2020-10-15 08:51:33', '2021-10-15 08:51:33');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'fU5YV9gHqvUrdWjF70tzdYxdBLx5glM8UR3mGKqB', NULL, 'http://localhost', 1, 0, 0, '2020-09-11 15:00:03', '2020-09-11 15:00:03');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'eVbuKDaYQtWUFGa8Diqzf5zJYPGipbnl4MNSfh6D', 'users', 'http://localhost', 0, 1, 0, '2020-09-11 15:00:03', '2020-09-11 15:00:03');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2020-09-11 15:00:03', '2020-09-11 15:00:03');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `n_snd_user` int(11) NOT NULL,
  `n_rcv_user` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `sz_etc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (6, 31, 30, 'Good barber', 4, NULL, '2020-09-17 04:57:47', '2020-09-17 04:57:47');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `barberid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `hour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (7, 30, 'Haircut', 20, '', '30', 'Any type of haircut you desire ????', '2020-09-17 02:12:10', '2020-09-17 02:12:52');
INSERT INTO `service` VALUES (8, 30, 'Blowout', 30, NULL, '40', 'The best blowout', '2020-09-17 02:13:42', '2020-09-17 02:13:42');
INSERT INTO `service` VALUES (9, 30, 'Shave', 15, NULL, '15', 'We\'re the best', '2020-09-17 02:14:34', '2020-09-17 02:14:34');
INSERT INTO `service` VALUES (10, 34, 'barber 1', 25, NULL, '30', 'corte', '2020-09-17 05:52:46', '2020-09-19 04:33:16');
INSERT INTO `service` VALUES (11, 35, 'Haircut', 25, NULL, '30', 'The best haircut', '2020-09-17 06:09:53', '2020-09-17 06:09:53');
INSERT INTO `service` VALUES (12, 35, 'Shave', 15, NULL, '15', 'We\'re the best', '2020-09-17 06:10:32', '2020-09-17 06:10:32');

-- ----------------------------
-- Table structure for supportfeedback
-- ----------------------------
DROP TABLE IF EXISTS `supportfeedback`;
CREATE TABLE `supportfeedback`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1:feedback, 2:support',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '/uploads/avatar/default.png',
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barber` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `iphone_device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rate` double(2, 1) NOT NULL DEFAULT 0 COMMENT 'client:-1, range: 0~5',
  `star` int(11) NOT NULL DEFAULT 0 COMMENT 'client:-1, range: 0~5',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (29, '/uploads/avatar/default.png', 'user', 'test', 1, 'test.user@gmail.com', NULL, '$2y$10$AlDz1Hf7VtJj8ZWH0dqKSuBloKqeH5s.osqchMj9EZ2rgfMWBqRJG', 'fOIUYGuzxn0:APA91bHnzAR2wtd8VSXjfvXxWokUmDghnErVSJwadlEgJ4mgpWTPweitgGlbXNXoAX_C-BYUauCcUyabsMlnozeKRudm3O-JiAsx9FuGsar9OI_yfuuk8ridix02y_2fjQar3MUEsTsJ', NULL, 0.0, 0, NULL, '2020-09-17 01:54:21', '2020-09-17 01:54:21');
INSERT INTO `users` VALUES (30, '/uploads/avatar/091620202220335f627391aea8euploadImage.png', 'Trumper', 'Barber', 1, 'user01@gmail.com', NULL, '$2y$10$Ft9SB3R6Iqgq9Jd/9HEaUuL4iPB7KaJEwKitP2.Ps2TNdJVRwlA6y', NULL, NULL, 4.0, 4, NULL, '2020-09-17 02:04:58', '2020-09-29 09:39:56');
INSERT INTO `users` VALUES (31, '/uploads/avatar/091620202254315f627b875b6ecuploadImage.png', 'Trumper', 'Client', 0, 'barber@gmail.com', NULL, '$2a$10$y7ub.ndhAPtOQ1bVPEF0/OPFE06U.J.0JNEz739.jCFCqAPJDpuDe', NULL, NULL, 0.0, 0, NULL, '2020-09-17 02:20:43', '2020-09-29 09:45:47');
INSERT INTO `users` VALUES (32, '/uploads/avatar/default.png', 'melvin', 'sanchez', 0, 'amelvin21@gmail.com', NULL, '$2y$10$Eb.BmnLAH17qinRnn12ANu5/ORmDXvtaPcRnFT8bmNB5FGCgoCMSu', 'f6W1f77n86M:APA91bHCaKxOiDGonX7fs1c5q3os8NaVyDRuYnXuvJBI9LeVBaj_-AtseCR0cdvKBzLCvsO1HGtWqeNEpcGU5XOGUDolYA53So_X9-1RWucCZroIyiDsf65wUTXIBNNarZgb3OP_tyMD', NULL, 0.0, 0, NULL, '2020-09-17 03:29:29', '2020-09-17 03:29:29');
INSERT INTO `users` VALUES (33, '/uploads/avatar/default.png', 'amelvin', 'sanchez', 0, 'melvin25@gmail.com', NULL, '$2y$10$oe8QRDxEZqTkVwbBd689H.czin2G2BNW/XOc.VNGGZvSWMc/mTzC2', 'c9_0bGJJrwU:APA91bGlbp_soExs9shyujA4TD93Fs0HfrQ1MgvvCAhrkbXHd5dWKGPs7XafarPxdC5xsB0Sd3d5e2qS0jiWhfKaMFcmNCHDM6IdCfMI7ujZH0QDIQ2tEMfg9ufTQ9qUDnPZ-5nd7HhX', NULL, 0.0, 0, NULL, '2020-09-17 05:05:04', '2020-09-19 04:35:04');
INSERT INTO `users` VALUES (34, '/uploads/avatar/default.png', 'melvin', 'sanchez', 1, 'melvin26@gmail.com', NULL, '$2y$10$PunRd/p22iI4QEujaobc6uVjO668JijGrf/OI2eGkqOoc8otYlwfm', 'c9_0bGJJrwU:APA91bGlbp_soExs9shyujA4TD93Fs0HfrQ1MgvvCAhrkbXHd5dWKGPs7XafarPxdC5xsB0Sd3d5e2qS0jiWhfKaMFcmNCHDM6IdCfMI7ujZH0QDIQ2tEMfg9ufTQ9qUDnPZ-5nd7HhX', NULL, 0.0, 0, NULL, '2020-09-17 05:20:49', '2020-09-19 04:30:08');
INSERT INTO `users` VALUES (35, '/uploads/avatar/091720200006525f628c7c70f79uploadImage.png', 'Obama', 'Barber', 1, 'obama@gmail.com', NULL, '$2y$10$N5cMjksEZSEYlXBMSr7BD.3zdDgdbBqWDCIDsRbIFYFOe/LZShLSi', NULL, NULL, 0.0, 0, NULL, '2020-09-17 06:06:19', '2020-09-29 09:45:09');
INSERT INTO `users` VALUES (43, '/uploads/avatar/default.png', 'barber', 'barber', 1, '1barber@gmail.com', NULL, '$2a$10$y7ub.ndhAPtOQ1bVPEF0/OPFE06U.J.0JNEz739.jCFCqAPJDpuDe', 'fjTEk4fTjg8:APA91bGzcr5BT8dwsHfM0_xXDSiDMzw5UAoO-jfoUjfjgZCE9PZxFTxnnA439-VQSkFrHBW9056VV8vvJ2hyIb2SWC-uooIfGrkJFMjnVIAbHvonW58rQRQl4Q2c3NqHb3_fuOLlum5o', NULL, 0.0, 0, NULL, '2020-09-18 01:23:49', '2020-09-18 01:23:49');
INSERT INTO `users` VALUES (44, '/uploads/avatar/default.png', 'test', 'test', 0, 'test@gmail.com', NULL, '$2y$10$mZoKuAAOcNa4hun3qqDc3eoNs5.orEq7.Zu5krZv8mgDUI/BiUgku', 'cnn1jvDl6RI:APA91bFSBilOJMT1XrOodB-92qDkE4tiYWHjAfU4Z0E0MpLTltjsrIQQJ31ucJ7pgmhP5qdpaasaR70_N-taMpAAzO-n9WbYt89P0qP4b1ZZpBBf1S9Dq3NhSHwJxudUS-FTpWchl5-g', NULL, 0.0, 0, NULL, '2020-09-18 01:25:15', '2020-09-18 01:25:15');
INSERT INTO `users` VALUES (45, '/uploads/avatar/default.png', 'a', 'a', 0, 'a@a.com', NULL, '$2y$10$pT.I/ttBAHr/tR4uV2edn.7ZtHX4TpBIRURxp5OpcczCPCOaB9L4.', 'fViSnvsfzLQ:APA91bEEVmhVB0_deHLdkWAtkAIvlIascuYDoH_mIolMDtgoVLyTcLQT_1ffBIbLcajNX-rCBaKAmimKgliyWfS5S658Vmnq-y7IxXsQrqGVFJoxZ36iz8WT_SPPIY5EQSLOA8w2Pw7R', NULL, 0.0, 0, NULL, '2020-09-18 01:45:49', '2020-09-18 01:45:49');
INSERT INTO `users` VALUES (46, '/uploads/avatar/091820200345335f64113db7bcfuploadImage.png', 'sim', 'suntack', 0, 'test.client@gmail.com', NULL, '$2y$10$jsrEkPBk8LsW9s9xETWGQumbjYBSZmKsFhP.1OYC8hn3hTOzok7V2', 'eZU7Xo4Dtc8:APA91bGAATVX89v0n4xfNq_PyywjIbLnMKlj3t7qibvZSV8S-JyPinpr46JusIkjg9oALDrIKNhSKhC1GwExYZ8cSs2hNHetboUullwC3TtJ_cAItng_VuQLTgyWDtoKI3QYafHsUPTF', NULL, 0.0, 0, NULL, '2020-09-18 09:43:59', '2020-09-19 04:13:21');
INSERT INTO `users` VALUES (47, '/uploads/avatar/default.png', 'barber', 'sim', 1, 'sim@gmail.com', NULL, '$2y$10$apjFNWkZ5XEXpLzRx1W3juOM0PinIiqgpowLC8vaASVKtCBbo8S3e', 'dKFpWZY8rc4:APA91bEAwVMvrtJfXYJbuGDZzGj6HUWLWACXdzTDXHz9-v1arUGVjwXJrWSvgM4ufNdbKj4zsqUIx6pA1nerT9zxqf0E1lFRWLex7IDjXAp5B1v3Q42v1I20N6fmWshzZ8mJXOov-hmy', NULL, 0.0, 0, NULL, '2020-09-18 09:51:33', '2020-09-18 09:51:33');
INSERT INTO `users` VALUES (48, '/uploads/avatar/default.png', 'king', 'kin', 0, 'king@gmail.com', NULL, '$2y$10$h6rmgjHgn5Syc6MSpd6CgOatPEInTTGydMCiwxcO.j7esrJ1Usxi6', 'dvvcOfLfO8g:APA91bFR1G3M0jliK9CeRuzb815K0lCD_mRBxWZICFfK_QRUZbRvbSPK818tl45IHIem13GEtvjVxJiiQbMHIJ9yxcUdDjmp3gNqPcDghPJ6-twbQbwIM27WA7mEsPUSlET4UDn8gDyP', NULL, 0.0, 0, NULL, '2020-09-22 18:32:06', '2020-09-22 21:06:47');
INSERT INTO `users` VALUES (49, '/uploads/avatar/default.png', 'Barber', 'Tes05', 1, 'test05@gmail.com', NULL, '$2y$10$4OeQw8dX8Gm6AsVU3Sp81uAfK52/pUPHL52ZGJBeGkOxp6n97WyDq', NULL, NULL, 0.0, 0, NULL, '2020-09-27 05:14:28', '2020-09-27 05:14:53');
INSERT INTO `users` VALUES (50, '/uploads/avatar/default.png', 'Client', 'Test06', 0, 'cupidgracer@gmail.com', NULL, '123', NULL, NULL, 0.0, 0, NULL, '2020-09-27 05:16:09', '2020-09-27 05:16:50');
INSERT INTO `users` VALUES (51, '/uploads/avatar/092820200312355f7138830b52fuploadImage.png', 'Barber', 'Test07', 1, 'test07@gmail.com', NULL, '$2y$10$ilRUKvftLIa6aKKnLc1IOuezKW/ignYO/GN1GZrh/we0R/rgyfAyW', NULL, NULL, 0.0, 0, NULL, '2020-09-28 08:58:34', '2020-09-28 09:12:35');
INSERT INTO `users` VALUES (52, '/uploads/avatar/default.png', 'test_firstname', 'test_lastname', 1, 'test_email@wef.com', NULL, '$2y$10$Ck1x/964CzMsnaUOuf58ZOCyXTKPSfZ8J8iseEERR2tH39zEfj94G', NULL, NULL, 0.0, 0, NULL, '2020-10-14 11:47:41', '2020-10-14 11:47:41');
INSERT INTO `users` VALUES (59, '/uploads/avatar/default.png', 'test_firstname', 'test_lastname', 1, 'test_email@wsef.com', NULL, '$2y$10$KT//g2y6K6zVEHHB2ou3ROfiNMZdmTOyVtTAjTlWTKookBz6wzde.', NULL, NULL, 0.0, 0, NULL, '2020-10-14 12:09:16', '2020-10-14 12:09:16');
INSERT INTO `users` VALUES (60, '/uploads/avatar/default.png', 'test_firstname', 'test_lastname', 1, 'test@test.com', NULL, '$2y$10$znsfDjrOwanWIBl6TyPfL.rhraInRjUQoWCcJo2.I2diLRxd/0P9e', NULL, NULL, 0.0, 0, NULL, '2020-10-14 12:10:28', '2020-10-14 17:52:43');
INSERT INTO `users` VALUES (62, '/uploads/avatar/default.png', 'test_firstname', 'test_lastname', 1, 'test1@test.com', NULL, '$2y$10$eWfV5lX9fqtG5ULdILkjze/ROjPpKohxPxmxSsuTM2gaf1fjjVUO2', NULL, NULL, 0.0, 0, NULL, '2020-10-14 12:15:03', '2020-10-14 12:15:03');
INSERT INTO `users` VALUES (63, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'qwe@wer.com', NULL, '$2y$10$B41bQLR1qbr0hKg0lBkjC.GA2VUOSSoV9rxdiKyUxdQWifYVxYaXO', NULL, NULL, 0.0, 0, NULL, '2020-10-15 08:51:31', '2020-10-26 13:26:22');
INSERT INTO `users` VALUES (69, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'qwe@wedr.com', NULL, '$2y$10$lRCS0FqltfNzr0tlQFf0ZOfegwlVeCcBvCxyZS.mNWun2zKlQPdja', NULL, NULL, 0.0, 0, NULL, '2020-10-16 15:50:24', '2020-10-16 15:50:24');
INSERT INTO `users` VALUES (71, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'q@wewer.com', NULL, '$2y$10$oAkm5/I1y9rQKM4fNMJDuux4WkHve4TYr/euCF6/Ftczp3Q9r9MH6', NULL, NULL, 0.0, 0, NULL, '2020-10-16 15:51:47', '2020-10-16 15:51:47');
INSERT INTO `users` VALUES (72, NULL, 'efef', 'weff', 1, 'qw5e@wsedr.com', NULL, 'qwe', NULL, NULL, 0.0, 0, NULL, NULL, NULL);
INSERT INTO `users` VALUES (75, NULL, 'efef', 'weff', 1, 'qw5eq@wsedr.com', NULL, 'qwe', NULL, NULL, 0.0, 0, NULL, NULL, NULL);
INSERT INTO `users` VALUES (76, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'q@wewwer.com', NULL, '$2y$10$Z57lRz0Vpbg3SQYe97PY1Oy2VgWoiTrCiLkAz9wI2.EpBNGDqSSO.', NULL, NULL, 0.0, 0, NULL, '2020-10-16 16:59:48', '2020-10-16 16:59:48');
INSERT INTO `users` VALUES (77, NULL, 'efef', 'weff', 1, 'qw5weq@wsedr.com', NULL, 'qwe', NULL, NULL, 0.0, 0, NULL, NULL, NULL);
INSERT INTO `users` VALUES (78, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp@test.net', NULL, 'AP0+R1tJRyx5rE/HHX5IOv2FhbeSoWH3fWl3iD9GFVZ5yasHUkeGXnc5nrs272moaw==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:22:54', NULL);
INSERT INTO `users` VALUES (79, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'laravel@test.com', NULL, '$2y$10$mu.RzXMcKgqhJsFD3R50FOH0JHPu3Tv.RTKo2dY6qWv8yzKlD6Gsm', NULL, NULL, 0.0, 0, NULL, '2020-10-16 17:25:11', '2020-10-16 17:25:11');
INSERT INTO `users` VALUES (80, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'laravel1@test.com', NULL, '$2y$10$v36dg5rILRsMUbTjcJmKj.8O1hxruF5e4azA3wmwcC3G5FEXshlyO', NULL, NULL, 0.0, 0, NULL, '2020-10-16 17:35:44', '2020-10-16 17:35:44');
INSERT INTO `users` VALUES (81, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'laravel2@test.com', NULL, '$2y$10$QmG.UlcCd6Y1rpG.NW4PW..QsTM4i7jBQAKu3j37YOooJ.Cu7BE3.', NULL, NULL, 0.0, 0, NULL, '2020-10-16 17:36:07', '2020-10-16 17:36:07');
INSERT INTO `users` VALUES (82, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp1@test.net', NULL, 'ALHKMi59nOFoUzDUL5JKLACperrzBJIaXdka2zHQM/e9KgypNW1y/TR9Lhp0taaOsQ==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:36:17', NULL);
INSERT INTO `users` VALUES (83, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp2@test.net', NULL, 'AA6iqdMFyK87SzJXs+xNcRGWvSvMH2+6IV8dDHrCJ2E3GRqWEVL4HaRQ+bbB72zsIQ==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:39:50', NULL);
INSERT INTO `users` VALUES (84, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp3@test.net', NULL, 'AABbPFwC43EmEWmA/t/vNn4QHq57E1nIlFAaitNoo6wfVpYYxWFBPD5KNFYqtFCQJw==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:41:43', NULL);
INSERT INTO `users` VALUES (85, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp4@test.net', NULL, 'ACcEjcAHyPtumuLluJz58i+UNLJLRa0O07vqXkGcXNT9JJrFjJBJTh9m6LewGxfLog==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:43:39', NULL);
INSERT INTO `users` VALUES (86, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp5@test.net', NULL, 'AFMfkmuN6jwld3b80gcR/JN8GAnsTNqCiL3kWAJLePuQNfUYYLR1JosvMWWVoEstLg==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:45:00', NULL);
INSERT INTO `users` VALUES (87, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp6@test.net', NULL, 'ADmfk5D6nhEajKl0jO/vsMc/PdGN2d+UXkEWg62YOAHCJUf0CcDFTCluIv01IVAxOA==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:46:26', NULL);
INSERT INTO `users` VALUES (88, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp7@test.net', NULL, 'ABAxmGJI65CI6QqxSYMSyLdWNZFapSx9PUtCbZ5NglMlzfl7zjqvCxrgDx/zPU11ug==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:47:29', NULL);
INSERT INTO `users` VALUES (89, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp8@test.net', NULL, 'AHhahvW8f1hRnYNcbn5K+ZfiKH/YCChanswq/8vLOLr/FMkRDjedbo/wpnrkU9Znog==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:55:13', NULL);
INSERT INTO `users` VALUES (90, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp9@test.net', NULL, 'AL3f+peC1VJm/lJ6zwvmLIRAbst9gI8lz9aCZwQxjLk3GLqNsDam3Ae/myuwH5yHZA==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 18:57:00', NULL);
INSERT INTO `users` VALUES (91, '/uploads/avatar/default.png', 'efef', 'weff', 1, 'asp10@test.net', NULL, 'ADR4Th5mzyfMKjFYA2FkXzKSuKLqNLBLcO+uv2G0QruAkpyPvSizBsjcYJIVYJTKyQ==', NULL, NULL, 0.0, 0, NULL, '2020-10-16 19:01:11', NULL);

SET FOREIGN_KEY_CHECKS = 1;
