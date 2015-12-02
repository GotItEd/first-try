/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : gotit

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-11-26 17:44:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clips
-- ----------------------------
DROP TABLE IF EXISTS `clips`;
CREATE TABLE `clips` (
`ID`  int(11) NOT NULL ,
`Link`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Rank`  int(255) NULL DEFAULT NULL ,
`GotIts`  int(255) NULL DEFAULT NULL ,
`Hashtags`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`AutoClass`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Auto-classification of clips (countries, levels, so on...)' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of clips
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gotits
-- ----------------------------
DROP TABLE IF EXISTS `gotits`;
CREATE TABLE `gotits` (
`UserID`  int(11) NOT NULL ,
`ClipID`  int(11) NULL DEFAULT NULL ,
`Rank`  int(1) NOT NULL ,
PRIMARY KEY (`UserID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of gotits
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
`UserID`  int(11) NOT NULL ,
`ClipID`  int(11) NULL DEFAULT NULL ,
`Date`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`UserID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for playlists
-- ----------------------------
DROP TABLE IF EXISTS `playlists`;
CREATE TABLE `playlists` (
`Name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Clips`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of playlists
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`ID`  int(11) NOT NULL ,
`UserName`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`Hashtags`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`Expert`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;
