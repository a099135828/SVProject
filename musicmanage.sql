/*
 Navicat Premium Data Transfer

 Source Server         : SQL
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : musicmanage

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 23/12/2024 16:48:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `albumid` int NOT NULL AUTO_INCREMENT COMMENT '专辑ID',
  `albumname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `artistid` int NOT NULL COMMENT '歌手ID',
  `publish_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `artistname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`albumid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (1, '起风了EP', 1, '2020-05-20', '2024-08-11 10:28:29', '2024-11-18 13:53:32', NULL);
INSERT INTO `album` VALUES (3, '猎户星座', 3, '2017-11-08', '2024-08-11 10:28:29', '2024-08-20 13:26:08', NULL);
INSERT INTO `album` VALUES (4, '小幸运', 4, '2015-07-10', '2024-08-11 10:28:29', '2024-08-20 13:26:10', NULL);
INSERT INTO `album` VALUES (5, '初学者', 5, '2016-07-18', '2024-08-11 10:28:29', '2024-08-20 13:26:11', NULL);
INSERT INTO `album` VALUES (6, '慢慢懂', 43, '2010-11-19', '2024-08-11 10:28:29', '2024-08-23 21:36:22', NULL);
INSERT INTO `album` VALUES (7, '遥远的她·Amou', 7, '1986-01-05', '2024-08-11 10:28:29', '2024-08-20 13:26:14', NULL);
INSERT INTO `album` VALUES (8, '后青春期的诗', 8, '2008-10-23', '2024-08-11 10:28:29', '2024-08-20 13:26:16', NULL);
INSERT INTO `album` VALUES (9, '她说', 9, '2016-07-21', '2024-08-11 10:28:29', '2024-08-20 13:26:17', NULL);
INSERT INTO `album` VALUES (10, '匆匆那年', 10, '2014-11-05', '2024-08-11 10:28:29', '2024-08-20 13:26:25', NULL);
INSERT INTO `album` VALUES (11, '急驶的马车', 11, '2022-05-11', '2024-08-13 15:23:34', '2024-08-23 20:38:44', NULL);
INSERT INTO `album` VALUES (12, 'home', 12, '2021-02-13', '2024-08-13 15:24:40', '2024-08-20 13:26:34', NULL);
INSERT INTO `album` VALUES (13, '老人と海', 13, '2021-08-18', '2024-08-13 15:31:13', '2024-08-20 13:26:36', NULL);
INSERT INTO `album` VALUES (14, 'ブルーバード', 14, '2008-07-09', '2024-08-13 15:45:07', '2024-08-20 13:26:37', NULL);
INSERT INTO `album` VALUES (15, 'Random Access Memories', 15, '2013-05-17', '2024-08-20 11:20:52', '2024-08-20 13:26:38', NULL);
INSERT INTO `album` VALUES (16, 'Motion', 16, '2014-10-31', '2024-08-20 11:20:52', '2024-08-20 13:26:40', NULL);
INSERT INTO `album` VALUES (17, 'Clarity', 17, '2012-10-02', '2024-08-20 11:20:52', '2024-08-20 13:26:41', NULL);
INSERT INTO `album` VALUES (19, 'True', 19, '2013-09-13', '2024-08-20 11:20:52', '2024-08-20 13:26:44', NULL);
INSERT INTO `album` VALUES (20, 'For You', 38, '2010-02-24', '2024-08-20 13:38:05', '2024-08-22 14:24:46', NULL);
INSERT INTO `album` VALUES (21, '我很忙', 2, '2007-11-01', '2024-08-20 15:49:46', '2024-08-20 15:49:46', NULL);
INSERT INTO `album` VALUES (22, '李荣浩', 20, '2016-05-01', '2024-08-20 15:49:46', '2024-08-20 15:49:46', NULL);
INSERT INTO `album` VALUES (23, '十二新作', 2, '2012-07-01', '2024-08-20 15:49:46', '2024-08-20 15:55:19', NULL);
INSERT INTO `album` VALUES (24, '蛋堡', 28, '2017-09-01', '2024-08-20 15:49:46', '2024-08-20 15:57:23', NULL);
INSERT INTO `album` VALUES (25, '新白娘子传奇电视剧原声带', 29, '1997-09-01', '2024-08-20 15:49:46', '2024-08-20 16:00:10', NULL);
INSERT INTO `album` VALUES (26, 'NCS: The Best of 2017', 30, '2023-01-01', '2024-08-20 18:00:53', '2024-08-20 18:00:53', NULL);
INSERT INTO `album` VALUES (27, '痴情冢', 31, '2023-02-01', '2024-08-20 18:00:53', '2024-08-20 18:00:53', NULL);
INSERT INTO `album` VALUES (28, '紅蓮華', 32, '2023-03-01', '2024-08-20 18:00:53', '2024-08-20 18:00:53', NULL);
INSERT INTO `album` VALUES (29, 'One Last Kiss', 33, '2023-04-01', '2024-08-20 18:00:53', '2024-08-20 18:00:53', NULL);
INSERT INTO `album` VALUES (30, '撒野', 34, '2017-06-12', '2024-08-20 18:00:53', '2024-08-20 18:00:53', NULL);
INSERT INTO `album` VALUES (31, '童话镇', 35, '2024-08-30', '2024-08-20 18:58:30', '2024-09-16 09:46:01', NULL);
INSERT INTO `album` VALUES (32, '和你等烟花', 36, '2024-09-14', '2024-08-20 19:02:44', '2024-09-16 09:46:05', NULL);
INSERT INTO `album` VALUES (33, '解解闷', 5, '2024-09-04', '2024-08-20 19:04:21', '2024-09-16 09:46:11', NULL);
INSERT INTO `album` VALUES (34, 'Bad for Me - EP', 37, '2012-07-31', '2024-08-22 14:08:27', '2024-08-22 14:09:13', NULL);
INSERT INTO `album` VALUES (35, '明天过后', 40, '2015-05-19', '2024-08-23 15:17:40', '2024-08-23 15:25:05', NULL);
INSERT INTO `album` VALUES (36, '第二天堂', 9, '2004-06-04', '2024-08-23 15:24:53', '2024-08-23 15:27:22', NULL);
INSERT INTO `album` VALUES (37, '摩天动物园', 22, '2019-12-27', '2024-08-23 15:33:59', '2024-08-23 15:33:59', NULL);
INSERT INTO `album` VALUES (38, '有形的翅膀', 41, '2012-10-12', '2024-08-23 16:04:19', '2024-08-23 16:04:19', NULL);
INSERT INTO `album` VALUES (39, '欧若拉', 41, '2004-12-01', '2024-08-23 16:07:13', '2024-08-23 16:07:13', NULL);
INSERT INTO `album` VALUES (40, 'Rainie & Love....? 雨爱', 39, '2010-01-01', '2024-08-23 16:24:08', '2024-08-23 16:24:08', NULL);
INSERT INTO `album` VALUES (41, '歌手2024 第5期', 43, '2024-01-12', '2024-08-23 16:28:49', '2024-08-23 16:29:15', NULL);
INSERT INTO `album` VALUES (42, '\r\nI\'m OK', 44, '\r\n1999-12-10', '2024-08-23 16:34:46', '2024-08-23 16:34:46', NULL);
INSERT INTO `album` VALUES (43, '微微一笑很倾城 电视原声带', 43, '2016-08-25', '2024-08-23 21:37:40', '2024-08-23 21:37:40', NULL);
INSERT INTO `album` VALUES (49, '12', 7, '2024-11-12', '2024-11-22 21:31:14', '2024-11-22 21:31:14', NULL);
INSERT INTO `album` VALUES (50, '1', 7, '2024-11-14', '2024-11-22 21:44:12', '2024-11-22 21:44:12', NULL);

-- ----------------------------
-- Table structure for artist
-- ----------------------------
DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist`  (
  `artistid` int NOT NULL AUTO_INCREMENT COMMENT '歌手ID',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `bio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `artist_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌手图片URL',
  `artist_follow` int NULL DEFAULT 0 COMMENT '关注数',
  `artist_like` int NULL DEFAULT 0 COMMENT '粉丝数',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `artistname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`artistid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artist
-- ----------------------------
INSERT INTO `artist` VALUES (1, '1990-01-02', '独立音乐人', '2024-08-11 10:51:44', '2024-08-22 14:17:04', 'http://p2.music.126.net/32A2relBTnrezWQojLABAQ==/109951164344452750.jpg?param=640y300', 150000, 50, '网络歌手', 'M', '中国', '买辣椒也用券');
INSERT INTO `artist` VALUES (2, '1979-01-18', '华语流行歌坛天王', '2024-08-11 10:51:44', '2024-08-22 14:17:08', 'http://p2.music.126.net/NWv6PtSBkyWZzqbJVzBr7g==/109951169164936450.jpg?param=640y300', 5000000, 200, '音乐制作人', 'F', '中国', '周杰伦');
INSERT INTO `artist` VALUES (3, '1973-08-16', '中国著名歌手', '2024-08-11 10:51:44', '2024-08-22 14:17:16', 'http://p2.music.126.net/0oR6SCYToM_XrmkM6BEEPA==/109951168527018363.jpg?param=640y300', 300000, 100, '音乐制作人', 'F', '中国', '朴树');
INSERT INTO `artist` VALUES (4, '1983-03-30', '台湾女歌手，原S.H.E成员之一', '2024-08-11 10:51:44', '2024-08-22 14:17:19', 'https://p1.music.126.net/dtbR1by00_UgPsCqCf_1mg==/109951165187969403.jpg?param=640y300', 750000, 250, '音乐制作人', 'M', '中国', '田馥甄');
INSERT INTO `artist` VALUES (5, '1983-07-17', '中国内地男歌手、音乐制作人', '2024-08-11 10:51:44', '2024-08-22 14:17:23', 'http://p2.music.126.net/XRdiK-vIvPo83d-EjUTdEQ==/109951168719786015.jpg?param=640y300', 1200000, 40, '歌手', 'F', '中国', '薛之谦');
INSERT INTO `artist` VALUES (6, '1986-07-12', '中国女歌手', '2024-08-11 10:51:44', '2024-08-22 14:17:37', 'http://p2.music.126.net/P4VSKGQ8cu-xOnidHCvtRQ==/109951165528990739.jpg?param=640y300', 200000, 60, '歌手', 'M', '中国', '金玟岐');
INSERT INTO `artist` VALUES (7, '1961-07-10', '香港著名歌手及演员', '2024-08-11 10:51:44', '2024-08-22 14:17:41', 'http://p2.music.126.net/bGTTVbPYHT24w2HkHrdXmQ==/109951166958310165.jpg?param=640y300', 15000000, 50, '歌手', 'F', '中国', '张学友');
INSERT INTO `artist` VALUES (8, '1979-05-05', '台湾著名摇滚乐团', '2024-08-11 10:51:44', '2024-08-22 14:17:47', 'http://p2.music.126.net/jJtHjeXXLNofowo6CXlPIA==/109951168184990889.jpg?param=640y300', 13000000, 20, '摇滚乐队', 'F', '中国', '五月天');
INSERT INTO `artist` VALUES (9, '1981-03-27', '新加坡华语流行歌手、音乐制作人', '2024-08-11 10:51:44', '2024-08-22 14:17:52', 'http://p2.music.126.net/78q0jUUJ0h08GxAs2G-tCA==/109951168529051968.jpg?param=640y300', 4000000, 150, '音乐制作人', 'F', '中国', '林俊杰');
INSERT INTO `artist` VALUES (10, '1969-08-08', '中国著名女歌手、演员', '2024-08-11 10:51:44', '2024-08-22 14:18:03', 'https://p1.music.126.net/EGHQp6IYf1bI8-27AVcyDQ==/109951169426922822.jpg?param=640y300', 12000000, 40, '歌手', 'M', '中国', '王菲');
INSERT INTO `artist` VALUES (11, '1984-10-14', '中国内地男歌手、粤语中国风音乐发起人', '2024-08-12 13:01:26', '2024-08-23 20:38:09', 'http://p1.music.126.net/uFRndbLC8hwCZ2gC_QfVHw==/109951166191570543.jpg?param=640y300', 3456633, 65, '粤语歌手', 'F', '中国', '崔开潮');
INSERT INTO `artist` VALUES (12, '1981-02-07', '欧美歌手', '2024-08-13 15:18:01', '2024-08-22 14:18:18', 'http://p1.music.126.net/f7t-R2oCCxPUETBtTTe5MQ==/109951165731319422.jpg?param=130y130', 1345, 0, '欧美歌手', 'M', '美国', 'Bleujetta');
INSERT INTO `artist` VALUES (13, '2017-02-03', '是由n-buna(ナブナ)与suis(スイ) 2人组成的摇滚乐队', '2024-08-13 15:29:48', '2024-08-22 14:27:18', 'http://p1.music.126.net/xZaCfseWjHuaN3B-SRnytw==/18876415625868480.jpg?param=640y300', 3514, 0, '日本歌手', 'M', '日本', 'ヨルシカ');
INSERT INTO `artist` VALUES (14, NULL, 'EPIC Records旗下乐团', '2024-08-13 15:42:27', '2024-08-22 14:27:44', 'http://p2.music.126.net/JPDOgd61khOpnj1Ae_jUpg==/109951169174611743.jpg?param=640y300', 1342, 0, '日本歌手', NULL, '日本', 'いきものがかり');
INSERT INTO `artist` VALUES (15, '1975-01-01', 'French electronic music duo.', '2024-08-20 11:19:53', '2024-08-23 15:15:58', 'https://example.com/artistimg1.jpg', 500000, 300, '电子', 'M', 'French', 'Daft Punk');
INSERT INTO `artist` VALUES (16, '1984-01-17', 'Scottish DJ, record producer, singer, and songwriter.', '2024-08-20 11:19:53', '2024-08-23 15:16:00', 'https://example.com/artistimg2.jpg', 450000, 280, '电子', 'M', 'Scottish', 'Calvin Harris');
INSERT INTO `artist` VALUES (17, '1989-09-02', 'German DJ, record producer, and songwriter.', '2024-08-20 11:19:53', '2024-08-23 15:16:01', 'https://example.com/artistimg3.jpg', 400000, 270, '电子', 'M', 'German', 'Zedd');
INSERT INTO `artist` VALUES (19, '1989-09-08', 'Swedish DJ, remixer, record producer, and songwriter.', '2024-08-20 11:19:53', '2024-08-23 15:16:04', 'https://example.com/artistimg5.jpg', 480000, 29, '电子', 'M', 'Swedish', 'Avicill');
INSERT INTO `artist` VALUES (20, '1985-07-11', '华语流行歌手、词曲创作人。', '2024-08-20 15:46:48', '2024-08-23 15:16:06', 'https://example.com/artist2.jpg', 8000000, 40, '国风, 流行', 'F', '中国', '李荣浩');
INSERT INTO `artist` VALUES (21, '1990-02-07', '中国内地男歌手、音乐创作人。', '2024-08-20 15:46:48', '2024-08-23 15:16:08', 'https://example.com/artist3.jpg', 7000000, 35, '国风, 摇滚', 'F', '中国', '华晨宇');
INSERT INTO `artist` VALUES (22, '1991-08-16', '华语流行音乐女歌手、词曲创作人。', '2024-08-20 15:46:48', '2024-08-23 15:16:10', 'https://example.com/artist4.jpg', 6000000, 30, '国风, 流行', 'M', '中国', '邓紫棋');
INSERT INTO `artist` VALUES (28, '1984-05-16', '中国内地男歌手、音乐创作人。', '2024-08-20 15:56:37', '2024-08-22 14:19:29', NULL, 0, 0, NULL, 'F', '中国', '胡彦斌');
INSERT INTO `artist` VALUES (29, '1969-12-05', '台湾著名歌手、歌唱家。', '2024-08-20 15:58:52', '2024-08-22 14:19:34', NULL, 0, 0, NULL, NULL, NULL, '高胜美');
INSERT INTO `artist` VALUES (30, '1980-01-01', '驻英国的歌手，词曲作者，制作人和音乐家。', '2024-08-20 17:58:50', '2024-08-23 15:15:47', 'http://p2.music.126.net/tqstMhUilyUY8k_DqkQkJQ==/109951165965305247.jpg?param=640y300', 5000, 40, '国风, 古风', 'F', '英国', 'Chris Linton');
INSERT INTO `artist` VALUES (31, '1990-05-15', '纯音乐', '2024-08-20 17:58:50', '2024-08-23 15:15:49', 'http://example.com/artist2.jpg', 3000, 35, '动漫, 音乐', '', '', '纯音乐');
INSERT INTO `artist` VALUES (32, '1985-03-20', '日本流行天后', '2024-08-20 17:58:50', '2024-08-23 15:15:50', 'http://p2.music.126.net/ELrbkzA3M_JcdnsZ3rnSxA==/109951169718130404.jpg?param=640y300', 7000, 60, '游戏, 音乐', 'M', '日本', 'LiSA');
INSERT INTO `artist` VALUES (33, '1995-07-30', '日本歌手', '2024-08-20 17:58:50', '2024-08-23 15:15:52', 'http://p1.music.126.net/LrAlAho1G7hPXbUyc0-3lg==/109951169481755560.jpg?param=640y300', 2000, 15, '动漫', 'M', '日本', '宇多田ヒカル');
INSERT INTO `artist` VALUES (34, '1988-11-11', '网络歌手', '2024-08-20 17:58:50', '2024-08-23 15:15:53', 'http://p2.music.126.net/6aqsr-QE6BIN9hZLDDDhGw==/109951165810499463.jpg?param=640y300', 4000, 30, '网络歌手', 'M', '中国', '凯瑟喵');
INSERT INTO `artist` VALUES (35, '1980-06-16', '中国香港女歌手', '2024-08-20 18:58:02', '2024-08-23 15:15:54', 'http://p2.music.126.net/sycsvq4_Fg8-lJsu4zPkww==/109951169038362318.jpg?param=640y300', 321512, 12, NULL, 'M', '中国', '容祖儿');
INSERT INTO `artist` VALUES (36, '1992-08-16', '歌手', '2024-08-20 19:01:32', '2024-08-23 15:15:44', 'http://p1.music.126.net/B8Na4RuAEtUoFtl9cRrGnw==/109951163316287090.jpg?param=640y300', 12344512, 153, NULL, 'F', '中国', '鹭卓');
INSERT INTO `artist` VALUES (37, NULL, '欧美歌手组合', '2024-08-22 14:01:43', '2024-08-23 15:16:16', 'http://p2.music.126.net/64-QuzfxFZlc0oLvVcGlag==/366137372061261.jpg?param=640y300', 2135, 124, NULL, 'M', NULL, 'Megan&Li');
INSERT INTO `artist` VALUES (38, NULL, '日本女歌手', '2024-08-22 14:23:05', '2024-08-22 14:23:16', 'http://p1.music.126.net/WFItI5PcP0t4NaOHkluufQ==/109951164075693087.jpg?param=640y300', 1235, 1235, NULL, 'M', '日本', 'AZU');
INSERT INTO `artist` VALUES (39, '1978-05-20', '中国内地女歌手', '2024-08-23 15:15:38', '2024-08-23 16:23:40', 'http://p2.music.126.net/M89REFvvLzYoWGaY49E09g==/109951167282433938.jpg?param=177y177', 23452342, 135, NULL, 'M', '中国', '杨丞琳');
INSERT INTO `artist` VALUES (40, '1978-05-12', '中国内地男歌手', '2024-08-23 15:15:39', '2024-08-23 16:02:40', 'http://p1.music.126.net/78q0jUUJ0h08GxAs2G-tCA==/109951168529051968.jpg?param=640y300', 23452342, 135, NULL, 'F', '中国', '张杰');
INSERT INTO `artist` VALUES (41, '1988-05-14', '中国内地女歌手', '2024-08-23 15:23:34', '2024-08-23 16:03:23', 'http://p1.music.126.net/DV7_R9yRIC2u7iMlLgPZPg==/109951167434894779.jpg?param=640y300', 235621, 245621, NULL, 'M', '中国', '张韶涵');
INSERT INTO `artist` VALUES (43, '1899-10-12', '中国内地男歌手', '2024-08-23 16:28:14', '2024-08-26 20:21:45', 'C:\\wangyiProject\\wangyi\\mobileimage\\汪苏泷.jpg', NULL, NULL, '音乐制作人', 'F', 'null', '汪苏泷');
INSERT INTO `artist` VALUES (44, '1876-02-23', '中国内地男歌手', '2024-08-23 16:33:41', '2024-08-23 16:33:44', NULL, 0, 0, NULL, NULL, NULL, '陶喆');

-- ----------------------------
-- Table structure for favorite_album
-- ----------------------------
DROP TABLE IF EXISTS `favorite_album`;
CREATE TABLE `favorite_album`  (
  `favorite_album_id` int NOT NULL AUTO_INCREMENT COMMENT '专辑收藏ID',
  `userid` int NOT NULL COMMENT '用户ID',
  `albumid` int NOT NULL COMMENT '专辑ID',
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`favorite_album_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorite_album
-- ----------------------------
INSERT INTO `favorite_album` VALUES (1, 1, 1, '2024-08-11 10:40:15', '2024-08-20 13:31:32');
INSERT INTO `favorite_album` VALUES (2, 2, 2, '2024-08-11 10:40:15', '2024-08-20 13:31:33');
INSERT INTO `favorite_album` VALUES (3, 1, 3, '2024-08-11 10:40:15', '2024-08-20 13:31:35');
INSERT INTO `favorite_album` VALUES (4, 2, 4, '2024-08-11 10:40:15', '2024-08-20 13:31:36');
INSERT INTO `favorite_album` VALUES (5, 2, 5, '2024-08-11 10:40:15', '2024-08-20 13:31:37');
INSERT INTO `favorite_album` VALUES (6, 1, 6, '2024-08-11 10:40:15', '2024-08-20 13:31:40');

-- ----------------------------
-- Table structure for favorite_song
-- ----------------------------
DROP TABLE IF EXISTS `favorite_song`;
CREATE TABLE `favorite_song`  (
  `favorite_s_id` int NOT NULL AUTO_INCREMENT COMMENT '歌曲收藏ID',
  `userid` int NOT NULL COMMENT '用户ID',
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `songid` int NOT NULL COMMENT '歌曲ID',
  `user_listen_times` int NULL DEFAULT NULL COMMENT '用户听歌次数',
  PRIMARY KEY (`favorite_s_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorite_song
-- ----------------------------
INSERT INTO `favorite_song` VALUES (33, 1, '2024-09-17 10:51:43', '2024-09-17 10:51:43', 2, NULL);
INSERT INTO `favorite_song` VALUES (37, 1, '2024-11-17 11:29:49', '2024-11-17 11:29:49', 6, NULL);
INSERT INTO `favorite_song` VALUES (38, 1, '2024-11-20 09:52:40', '2024-11-20 09:52:40', 67, NULL);
INSERT INTO `favorite_song` VALUES (39, 1, '2024-11-20 09:53:03', '2024-11-20 09:53:03', 58, NULL);
INSERT INTO `favorite_song` VALUES (40, 1, '2024-11-22 21:32:25', '2024-11-22 21:32:25', 75, NULL);
INSERT INTO `favorite_song` VALUES (41, 1, '2024-11-22 21:38:01', '2024-11-22 21:38:01', 59, NULL);
INSERT INTO `favorite_song` VALUES (42, 1, '2024-11-22 21:38:52', '2024-11-22 21:38:52', 44, NULL);
INSERT INTO `favorite_song` VALUES (43, 1, '2024-11-22 21:41:16', '2024-11-22 21:41:16', 69, NULL);

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `followid` int NOT NULL AUTO_INCREMENT COMMENT '关注ID',
  `userid` int NOT NULL COMMENT '用户ID',
  `artistid` int NOT NULL COMMENT '歌手ID',
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '关注时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`followid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (1, 1, 1, '2024-08-11 10:43:35', '2024-08-20 13:31:01');
INSERT INTO `follow` VALUES (2, 2, 2, '2024-08-11 10:43:35', '2024-08-20 13:31:03');
INSERT INTO `follow` VALUES (3, 1, 3, '2024-08-11 10:43:35', '2024-08-20 13:31:05');
INSERT INTO `follow` VALUES (4, 1, 4, '2024-08-11 10:43:35', '2024-08-20 13:31:07');
INSERT INTO `follow` VALUES (5, 2, 5, '2024-08-11 10:43:35', '2024-08-20 13:31:08');
INSERT INTO `follow` VALUES (6, 2, 9, '2024-08-11 10:43:35', '2024-08-20 13:31:10');
INSERT INTO `follow` VALUES (7, 2, 8, '2024-08-11 10:43:35', '2024-08-20 13:31:12');
INSERT INTO `follow` VALUES (8, 2, 7, '2024-08-11 10:43:35', '2024-08-20 13:31:13');
INSERT INTO `follow` VALUES (9, 1, 6, '2024-08-11 10:43:35', '2024-08-20 13:31:16');
INSERT INTO `follow` VALUES (10, 1, 40, '2024-08-25 09:10:04', '2024-08-25 09:10:04');
INSERT INTO `follow` VALUES (11, 1, 41, '2024-08-25 09:10:10', '2024-08-25 09:10:10');
INSERT INTO `follow` VALUES (12, 1, 42, '2024-08-25 09:10:15', '2024-08-25 09:10:15');
INSERT INTO `follow` VALUES (13, 1, 43, '2024-08-25 09:10:21', '2024-08-25 09:10:21');

-- ----------------------------
-- Table structure for heard_song
-- ----------------------------
DROP TABLE IF EXISTS `heard_song`;
CREATE TABLE `heard_song`  (
  `heard_song_id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `songid` int NULL DEFAULT NULL COMMENT '听过歌曲的id',
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `userid` int NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`heard_song_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 515 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of heard_song
-- ----------------------------
INSERT INTO `heard_song` VALUES (1, 1, '2023-09-01 09:28:17', '2024-08-13 11:24:48', 1);
INSERT INTO `heard_song` VALUES (2, 2, '2023-09-22 09:28:23', '2024-08-13 11:24:49', 1);
INSERT INTO `heard_song` VALUES (3, 1, '2023-09-23 09:32:13', '2024-08-13 11:24:50', 1);
INSERT INTO `heard_song` VALUES (4, 3, '2023-10-01 09:35:55', '2024-08-13 11:24:51', 2);
INSERT INTO `heard_song` VALUES (5, 1, '2023-10-01 09:42:56', '2024-08-13 11:24:58', 2);
INSERT INTO `heard_song` VALUES (6, 2, '2024-05-01 09:47:05', '2024-08-13 11:25:12', 1);
INSERT INTO `heard_song` VALUES (7, 1, '2024-08-01 09:47:23', '2024-08-13 11:25:12', 1);
INSERT INTO `heard_song` VALUES (8, 2, '2024-08-13 09:47:36', '2024-08-13 11:25:13', 2);
INSERT INTO `heard_song` VALUES (9, 1, '2024-08-13 09:47:47', '2024-08-13 11:25:20', 2);
INSERT INTO `heard_song` VALUES (10, 4, '2024-07-20 19:21:28', '2024-08-22 10:58:00', 1);
INSERT INTO `heard_song` VALUES (11, 5, '2024-07-20 19:21:41', '2024-08-22 10:58:07', 1);
INSERT INTO `heard_song` VALUES (12, 66, '2024-07-20 19:21:46', '2024-08-23 21:33:13', 1);
INSERT INTO `heard_song` VALUES (13, 66, '2024-07-20 19:21:49', '2024-08-23 21:33:14', 1);
INSERT INTO `heard_song` VALUES (14, 8, '2024-08-20 19:21:52', '2024-08-20 19:24:07', 1);
INSERT INTO `heard_song` VALUES (15, 56, '2024-08-20 19:21:54', '2024-08-22 09:53:05', 1);
INSERT INTO `heard_song` VALUES (16, 10, '2024-08-20 19:21:57', '2024-08-20 19:24:08', 1);
INSERT INTO `heard_song` VALUES (17, 11, '2024-08-20 19:21:59', '2024-08-20 19:24:08', 1);
INSERT INTO `heard_song` VALUES (18, 12, '2024-08-20 19:22:01', '2024-08-20 19:24:09', 1);
INSERT INTO `heard_song` VALUES (19, 13, '2024-08-20 19:22:03', '2024-08-20 19:24:10', 1);
INSERT INTO `heard_song` VALUES (20, 12, '2024-08-20 19:22:06', '2024-08-22 09:52:57', 1);
INSERT INTO `heard_song` VALUES (21, 56, '2024-08-20 19:22:09', '2024-08-22 09:53:03', 1);
INSERT INTO `heard_song` VALUES (22, 55, '2024-08-20 19:22:11', '2024-08-22 09:52:42', 1);
INSERT INTO `heard_song` VALUES (23, 17, '2024-08-20 19:22:14', '2024-08-20 19:24:12', 1);
INSERT INTO `heard_song` VALUES (24, 18, '2024-08-20 19:22:17', '2024-08-20 19:24:12', 1);
INSERT INTO `heard_song` VALUES (25, 12, '2024-08-20 19:22:20', '2024-08-22 09:52:53', 1);
INSERT INTO `heard_song` VALUES (26, 22, '2024-08-20 19:22:22', '2024-08-20 19:24:14', 1);
INSERT INTO `heard_song` VALUES (27, 55, '2024-08-20 19:22:27', '2024-08-22 09:52:39', 1);
INSERT INTO `heard_song` VALUES (28, 30, '2024-08-20 19:22:30', '2024-08-23 20:49:29', 1);
INSERT INTO `heard_song` VALUES (29, 12, '2024-08-20 19:22:33', '2024-08-20 19:24:15', 1);
INSERT INTO `heard_song` VALUES (30, 59, '2024-08-20 19:23:47', '2024-08-20 19:24:17', 1);
INSERT INTO `heard_song` VALUES (31, 58, '2024-08-20 19:23:51', '2024-08-20 19:24:17', 1);
INSERT INTO `heard_song` VALUES (32, 57, '2024-08-20 19:23:54', '2024-08-20 19:24:18', 1);
INSERT INTO `heard_song` VALUES (33, 56, '2024-08-20 19:23:56', '2024-08-20 19:24:18', 1);
INSERT INTO `heard_song` VALUES (34, 55, '2024-08-20 19:23:59', '2024-08-20 19:24:20', 1);
INSERT INTO `heard_song` VALUES (35, 54, '2024-08-20 19:24:02', '2024-08-20 19:24:21', 1);
INSERT INTO `heard_song` VALUES (36, 61, '2024-08-23 20:52:31', '2024-08-23 20:53:16', 1);
INSERT INTO `heard_song` VALUES (37, 74, '2024-08-23 20:52:36', '2024-08-23 20:53:16', 1);
INSERT INTO `heard_song` VALUES (38, 64, '2024-08-23 20:52:41', '2024-08-23 20:53:17', 1);
INSERT INTO `heard_song` VALUES (39, 70, '2024-08-23 20:52:44', '2024-08-23 20:53:18', 1);
INSERT INTO `heard_song` VALUES (40, 70, '2024-08-23 20:52:51', '2024-08-23 20:53:18', 1);
INSERT INTO `heard_song` VALUES (41, 69, '2024-08-23 20:52:54', '2024-08-23 20:53:19', 1);
INSERT INTO `heard_song` VALUES (42, 66, '2024-08-23 20:52:57', '2024-08-23 20:53:19', 1);
INSERT INTO `heard_song` VALUES (43, 65, '2024-08-23 20:53:00', '2024-08-23 20:53:21', 2);
INSERT INTO `heard_song` VALUES (44, 67, '2024-08-23 20:53:04', '2024-08-23 20:53:21', 2);
INSERT INTO `heard_song` VALUES (45, 68, '2024-08-23 20:53:07', '2024-08-23 20:53:22', 2);
INSERT INTO `heard_song` VALUES (46, 70, '2024-08-23 20:53:13', '2024-08-23 20:53:23', 2);
INSERT INTO `heard_song` VALUES (47, 66, '2024-08-23 20:53:29', '2024-08-23 20:53:38', 1);
INSERT INTO `heard_song` VALUES (48, 65, '2024-08-23 20:53:33', '2024-08-23 20:53:40', 2);
INSERT INTO `heard_song` VALUES (50, 1, '2024-08-30 14:01:45', '2024-08-30 14:01:45', 1);
INSERT INTO `heard_song` VALUES (52, 65, '2024-08-30 14:09:17', '2024-08-30 14:09:17', 1);
INSERT INTO `heard_song` VALUES (53, 6, '2024-08-30 14:10:43', '2024-08-30 14:10:43', 1);
INSERT INTO `heard_song` VALUES (54, 6, '2024-08-30 14:12:20', '2024-08-30 14:12:20', 1);
INSERT INTO `heard_song` VALUES (55, 6, '2024-08-30 14:12:27', '2024-08-30 14:12:27', 1);
INSERT INTO `heard_song` VALUES (56, 3, '2024-08-30 14:14:01', '2024-08-30 14:14:01', 1);
INSERT INTO `heard_song` VALUES (57, 62, '2024-08-30 14:19:03', '2024-08-30 14:19:03', 1);
INSERT INTO `heard_song` VALUES (58, 62, '2024-08-30 14:19:03', '2024-08-30 14:19:03', 1);
INSERT INTO `heard_song` VALUES (59, 6, '2024-08-30 14:19:46', '2024-08-30 14:19:46', 1);
INSERT INTO `heard_song` VALUES (78, 37, '2024-08-30 14:39:36', '2024-08-30 14:39:36', 1);
INSERT INTO `heard_song` VALUES (83, 63, '2024-08-30 14:43:14', '2024-08-30 14:43:14', 1);
INSERT INTO `heard_song` VALUES (328, 58, '2024-08-30 15:12:54', '2024-08-30 15:12:54', 1);
INSERT INTO `heard_song` VALUES (329, 75, '2024-08-30 15:16:40', '2024-08-30 15:16:40', 1);
INSERT INTO `heard_song` VALUES (330, 75, '2024-08-30 15:16:40', '2024-08-30 15:16:40', 1);
INSERT INTO `heard_song` VALUES (331, 37, '2024-08-30 15:16:40', '2024-08-30 15:16:40', 1);
INSERT INTO `heard_song` VALUES (332, 37, '2024-08-30 15:16:40', '2024-08-30 15:16:40', 1);
INSERT INTO `heard_song` VALUES (333, 6, '2024-08-30 15:34:59', '2024-08-30 15:34:59', 1);
INSERT INTO `heard_song` VALUES (336, 66, '2024-08-30 15:48:15', '2024-08-30 15:48:15', 1);
INSERT INTO `heard_song` VALUES (337, 45, '2024-08-30 15:48:15', '2024-08-30 15:48:15', 1);
INSERT INTO `heard_song` VALUES (339, 45, '2024-08-30 15:55:19', '2024-08-30 15:55:19', 1);
INSERT INTO `heard_song` VALUES (340, 66, '2024-08-30 15:57:43', '2024-08-30 15:57:43', 1);
INSERT INTO `heard_song` VALUES (345, 1, '2024-08-30 16:05:21', '2024-08-30 16:05:21', 1);
INSERT INTO `heard_song` VALUES (346, 6, '2024-08-30 16:10:49', '2024-08-30 16:10:49', 1);
INSERT INTO `heard_song` VALUES (347, 6, '2024-08-30 16:14:06', '2024-08-30 16:14:06', 1);
INSERT INTO `heard_song` VALUES (348, 36, '2024-08-30 16:14:06', '2024-08-30 16:14:06', 1);
INSERT INTO `heard_song` VALUES (349, 58, '2024-08-30 16:15:22', '2024-08-30 16:15:22', 1);
INSERT INTO `heard_song` VALUES (402, 65, '2024-08-30 16:39:40', '2024-08-30 16:39:40', 1);
INSERT INTO `heard_song` VALUES (403, 68, '2024-08-30 16:39:40', '2024-08-30 16:39:40', 1);
INSERT INTO `heard_song` VALUES (405, 49, '2024-08-30 16:51:44', '2024-08-30 16:51:44', 1);
INSERT INTO `heard_song` VALUES (406, 67, '2024-08-30 16:56:18', '2024-08-30 16:56:18', 1);
INSERT INTO `heard_song` VALUES (407, 70, '2024-08-30 17:01:44', '2024-08-30 17:01:44', 1);
INSERT INTO `heard_song` VALUES (408, 3, '2024-08-30 17:06:03', '2024-08-30 17:06:03', 1);
INSERT INTO `heard_song` VALUES (409, 67, '2024-08-30 17:06:03', '2024-08-30 17:06:03', 1);
INSERT INTO `heard_song` VALUES (410, 58, '2024-08-30 17:08:10', '2024-08-30 17:08:10', 1);
INSERT INTO `heard_song` VALUES (411, 57, '2024-08-30 17:11:56', '2024-08-30 17:11:56', 1);
INSERT INTO `heard_song` VALUES (412, 57, '2024-08-30 17:16:05', '2024-08-30 17:16:05', 1);
INSERT INTO `heard_song` VALUES (413, 9, '2024-08-30 17:16:20', '2024-08-30 17:16:20', 1);
INSERT INTO `heard_song` VALUES (414, 47, '2024-08-30 17:21:41', '2024-08-30 17:21:41', 1);
INSERT INTO `heard_song` VALUES (415, 59, '2024-08-30 17:21:41', '2024-08-30 17:21:41', 1);
INSERT INTO `heard_song` VALUES (416, 1, '2024-08-30 17:22:16', '2024-08-30 17:22:16', 1);
INSERT INTO `heard_song` VALUES (417, 60, '2024-08-30 17:27:42', '2024-08-30 17:27:42', 1);
INSERT INTO `heard_song` VALUES (418, 7, '2024-08-30 17:27:42', '2024-08-30 17:27:42', 1);
INSERT INTO `heard_song` VALUES (419, 6, '2024-08-30 17:28:34', '2024-08-30 17:28:34', 1);
INSERT INTO `heard_song` VALUES (420, 59, '2024-08-30 17:31:51', '2024-08-30 17:31:51', 1);
INSERT INTO `heard_song` VALUES (421, 66, '2024-08-30 17:31:51', '2024-08-30 17:31:51', 1);
INSERT INTO `heard_song` VALUES (422, 36, '2024-08-30 17:35:47', '2024-08-30 17:35:47', 1);
INSERT INTO `heard_song` VALUES (423, 75, '2024-08-30 17:36:27', '2024-08-30 17:36:27', 1);
INSERT INTO `heard_song` VALUES (424, 57, '2024-08-30 17:36:47', '2024-08-30 17:36:47', 1);
INSERT INTO `heard_song` VALUES (425, 52, '2024-08-30 17:40:38', '2024-08-30 17:40:38', 1);
INSERT INTO `heard_song` VALUES (426, 73, '2024-08-30 17:40:38', '2024-08-30 17:40:38', 1);
INSERT INTO `heard_song` VALUES (427, 57, '2024-08-30 17:42:09', '2024-08-30 17:42:09', 1);
INSERT INTO `heard_song` VALUES (428, 73, '2024-08-30 17:46:00', '2024-08-30 17:46:00', 1);
INSERT INTO `heard_song` VALUES (429, 2, '2024-08-30 17:50:29', '2024-08-30 17:50:29', 1);
INSERT INTO `heard_song` VALUES (430, 35, '2024-08-30 17:58:24', '2024-08-30 17:58:24', 1);
INSERT INTO `heard_song` VALUES (431, 44, '2024-08-30 18:01:57', '2024-08-30 18:01:57', 1);
INSERT INTO `heard_song` VALUES (432, 37, '2024-08-30 19:31:11', '2024-08-30 19:31:11', 1);
INSERT INTO `heard_song` VALUES (433, 36, '2024-08-30 19:31:13', '2024-08-30 19:31:13', 1);
INSERT INTO `heard_song` VALUES (434, 69, '2024-09-02 09:41:50', '2024-09-02 09:41:50', 1);
INSERT INTO `heard_song` VALUES (435, 1, '2024-09-02 09:41:59', '2024-09-02 09:41:59', 1);
INSERT INTO `heard_song` VALUES (436, 57, '2024-09-02 09:42:02', '2024-09-02 09:42:02', 1);
INSERT INTO `heard_song` VALUES (437, 50, '2024-09-02 09:42:58', '2024-09-02 09:42:58', 1);
INSERT INTO `heard_song` VALUES (439, 1, '2024-09-14 14:21:51', '2024-09-14 14:21:51', 1);
INSERT INTO `heard_song` VALUES (440, 64, '2024-09-16 10:54:03', '2024-09-16 10:54:03', 1);
INSERT INTO `heard_song` VALUES (441, 62, '2024-09-16 10:54:14', '2024-09-16 10:54:14', 1);
INSERT INTO `heard_song` VALUES (442, 75, '2024-09-16 11:16:56', '2024-09-16 11:16:56', 1);
INSERT INTO `heard_song` VALUES (443, 52, '2024-09-16 11:20:48', '2024-09-16 11:20:48', 1);
INSERT INTO `heard_song` VALUES (444, 70, '2024-09-16 11:20:48', '2024-09-16 11:20:48', 1);
INSERT INTO `heard_song` VALUES (445, 71, '2024-09-16 11:25:55', '2024-09-16 11:25:55', 1);
INSERT INTO `heard_song` VALUES (446, 1, '2024-09-16 14:35:48', '2024-09-16 14:35:48', 1);
INSERT INTO `heard_song` VALUES (447, 2, '2024-09-16 14:36:05', '2024-09-16 14:36:05', 1);
INSERT INTO `heard_song` VALUES (448, 6, '2024-09-16 15:21:27', '2024-09-16 15:21:27', 1);
INSERT INTO `heard_song` VALUES (449, 1, '2024-09-16 15:22:22', '2024-09-16 15:22:22', 1);
INSERT INTO `heard_song` VALUES (450, 6, '2024-09-16 15:23:00', '2024-09-16 15:23:00', 1);
INSERT INTO `heard_song` VALUES (451, 4, '2024-09-16 15:32:48', '2024-09-16 15:32:48', 1);
INSERT INTO `heard_song` VALUES (452, 7, '2024-09-16 15:33:01', '2024-09-16 15:33:01', 1);
INSERT INTO `heard_song` VALUES (453, 1, '2024-09-16 15:33:33', '2024-09-16 15:33:33', 1);
INSERT INTO `heard_song` VALUES (454, 1, '2024-09-16 16:05:22', '2024-09-16 16:05:22', 1);
INSERT INTO `heard_song` VALUES (455, 41, '2024-09-17 14:45:13', '2024-09-17 14:45:13', 1);
INSERT INTO `heard_song` VALUES (456, 10, '2024-09-17 17:57:55', '2024-09-17 17:57:55', 1);
INSERT INTO `heard_song` VALUES (457, 75, '2024-09-19 13:47:01', '2024-09-19 13:47:01', 1);
INSERT INTO `heard_song` VALUES (458, 1, '2024-09-22 14:59:17', '2024-09-22 14:59:17', 1);
INSERT INTO `heard_song` VALUES (459, 57, '2024-09-22 15:17:57', '2024-09-22 15:17:57', 1);
INSERT INTO `heard_song` VALUES (460, 58, '2024-09-22 15:33:11', '2024-09-22 15:33:11', 1);
INSERT INTO `heard_song` VALUES (461, 62, '2024-09-22 16:17:13', '2024-09-22 16:17:13', 1);
INSERT INTO `heard_song` VALUES (462, 70, '2024-09-22 16:58:31', '2024-09-22 16:58:31', 1);
INSERT INTO `heard_song` VALUES (463, 3, '2024-09-22 17:00:57', '2024-09-22 17:00:57', 1);
INSERT INTO `heard_song` VALUES (464, 42, '2024-09-22 17:02:52', '2024-09-22 17:02:52', 1);
INSERT INTO `heard_song` VALUES (465, 5, '2024-09-22 17:02:53', '2024-09-22 17:02:53', 1);
INSERT INTO `heard_song` VALUES (466, 67, '2024-09-22 17:14:31', '2024-09-22 17:14:31', 1);
INSERT INTO `heard_song` VALUES (467, 69, '2024-09-22 17:38:55', '2024-09-22 17:38:55', 1);
INSERT INTO `heard_song` VALUES (468, 8, '2024-09-22 17:51:16', '2024-09-22 17:51:16', 1);
INSERT INTO `heard_song` VALUES (469, 7, '2024-09-22 17:55:42', '2024-09-22 17:55:42', 1);
INSERT INTO `heard_song` VALUES (470, 70, '2024-09-22 18:00:01', '2024-09-22 18:00:01', 1);
INSERT INTO `heard_song` VALUES (471, 44, '2024-09-22 18:04:20', '2024-09-22 18:04:20', 1);
INSERT INTO `heard_song` VALUES (472, 75, '2024-11-02 15:55:55', '2024-11-02 15:55:55', 1);
INSERT INTO `heard_song` VALUES (473, 55, '2024-11-02 16:52:13', '2024-11-02 16:52:13', 1);
INSERT INTO `heard_song` VALUES (474, 6, '2024-11-02 16:52:42', '2024-11-02 16:52:42', 1);
INSERT INTO `heard_song` VALUES (475, 8, '2024-11-02 16:53:18', '2024-11-02 16:53:18', 1);
INSERT INTO `heard_song` VALUES (476, 6, '2024-11-02 16:53:41', '2024-11-02 16:53:41', 1);
INSERT INTO `heard_song` VALUES (477, 2, '2024-11-02 16:54:03', '2024-11-02 16:54:03', 1);
INSERT INTO `heard_song` VALUES (478, 1, '2024-11-02 16:54:46', '2024-11-02 16:54:46', 1);
INSERT INTO `heard_song` VALUES (479, 69, '2024-11-16 15:44:04', '2024-11-16 15:44:04', 1);
INSERT INTO `heard_song` VALUES (480, 69, '2024-11-16 15:44:09', '2024-11-16 15:44:09', 1);
INSERT INTO `heard_song` VALUES (481, 6, '2024-11-16 15:54:32', '2024-11-16 15:54:32', 1);
INSERT INTO `heard_song` VALUES (482, 56, '2024-11-16 15:55:07', '2024-11-16 15:55:07', 1);
INSERT INTO `heard_song` VALUES (483, 1, '2024-11-16 15:55:11', '2024-11-16 15:55:11', 1);
INSERT INTO `heard_song` VALUES (484, 72, '2024-11-16 15:55:17', '2024-11-16 15:55:17', 1);
INSERT INTO `heard_song` VALUES (485, 75, '2024-11-16 15:55:25', '2024-11-16 15:55:25', 1);
INSERT INTO `heard_song` VALUES (486, 49, '2024-11-16 16:00:56', '2024-11-16 16:00:56', 1);
INSERT INTO `heard_song` VALUES (487, 50, '2024-11-16 16:14:07', '2024-11-16 16:14:07', 1);
INSERT INTO `heard_song` VALUES (488, 55, '2024-11-16 16:16:08', '2024-11-16 16:16:08', 1);
INSERT INTO `heard_song` VALUES (489, 35, '2024-11-16 16:16:12', '2024-11-16 16:16:12', 1);
INSERT INTO `heard_song` VALUES (490, 69, '2024-11-16 16:42:20', '2024-11-16 16:42:20', 1);
INSERT INTO `heard_song` VALUES (491, 70, '2024-11-16 17:20:31', '2024-11-16 17:20:31', 1);
INSERT INTO `heard_song` VALUES (492, 36, '2024-11-16 17:20:38', '2024-11-16 17:20:38', 1);
INSERT INTO `heard_song` VALUES (493, 3, '2024-11-16 17:20:54', '2024-11-16 17:20:54', 1);
INSERT INTO `heard_song` VALUES (494, 1, '2024-11-16 17:21:29', '2024-11-16 17:21:29', 1);
INSERT INTO `heard_song` VALUES (495, 4, '2024-11-16 17:23:01', '2024-11-16 17:23:01', 1);
INSERT INTO `heard_song` VALUES (496, 3, '2024-11-16 17:23:12', '2024-11-16 17:23:12', 1);
INSERT INTO `heard_song` VALUES (497, 1, '2024-11-16 17:25:38', '2024-11-16 17:25:38', 1);
INSERT INTO `heard_song` VALUES (498, 57, '2024-11-16 17:29:34', '2024-11-16 17:29:34', 1);
INSERT INTO `heard_song` VALUES (499, 1, '2024-11-16 17:30:31', '2024-11-16 17:30:31', 1);
INSERT INTO `heard_song` VALUES (500, 1, '2024-11-16 17:34:08', '2024-11-16 17:34:08', 1);
INSERT INTO `heard_song` VALUES (501, 4, '2024-11-16 17:34:48', '2024-11-16 17:34:48', 1);
INSERT INTO `heard_song` VALUES (502, 4, '2024-11-16 17:37:26', '2024-11-16 17:37:26', 1);
INSERT INTO `heard_song` VALUES (503, 1, '2024-11-16 17:38:38', '2024-11-16 17:38:38', 1);
INSERT INTO `heard_song` VALUES (504, 6, '2024-11-16 17:38:51', '2024-11-16 17:38:51', 1);
INSERT INTO `heard_song` VALUES (505, 4, '2024-11-16 19:18:15', '2024-11-16 19:18:15', 1);
INSERT INTO `heard_song` VALUES (506, 1, '2024-11-16 19:23:55', '2024-11-16 19:23:55', 1);
INSERT INTO `heard_song` VALUES (507, 4, '2024-11-16 19:24:03', '2024-11-16 19:24:03', 1);
INSERT INTO `heard_song` VALUES (508, 6, '2024-11-16 19:24:24', '2024-11-16 19:24:24', 1);
INSERT INTO `heard_song` VALUES (509, 1, '2024-11-16 19:26:33', '2024-11-16 19:26:33', 1);
INSERT INTO `heard_song` VALUES (510, 6, '2024-11-16 19:26:52', '2024-11-16 19:26:52', 1);
INSERT INTO `heard_song` VALUES (511, 1, '2024-11-16 19:27:17', '2024-11-16 19:27:17', 1);
INSERT INTO `heard_song` VALUES (512, 49, '2024-11-17 11:30:35', '2024-11-17 11:30:35', 1);
INSERT INTO `heard_song` VALUES (513, 42, '2024-11-17 19:27:54', '2024-11-17 19:27:54', 1);
INSERT INTO `heard_song` VALUES (514, 71, '2024-11-17 19:44:58', '2024-11-17 19:44:58', 1);
INSERT INTO `heard_song` VALUES (515, 6, '2024-11-18 11:04:13', '2024-11-18 11:04:13', 1);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `manager_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `manager_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员姓名',
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号码',
  `psw` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`manager_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist`  (
  `playlist_id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int NULL DEFAULT NULL COMMENT '哪个用户创建的，如果是官方动态歌单（填artistid的表示是某一个歌手的热门歌曲集合；填写0的表示是其他类型的官方歌单）',
  `playlist_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌单名称',
  `collect` int NULL DEFAULT NULL COMMENT '收藏数量',
  `share` int NULL DEFAULT NULL COMMENT '转发数量',
  `comment` int NULL DEFAULT NULL COMMENT '评论数量',
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '歌单简介',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌单标签',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌单封面图片',
  `listen_times` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌单被点击次数',
  `is_official` bit(1) NULL DEFAULT NULL,
  `songid` int NULL DEFAULT NULL,
  PRIMARY KEY (`playlist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playlist
-- ----------------------------
INSERT INTO `playlist` VALUES (1, 1, '何其有幸遇见你', 36, 2, 0, NULL, '民谣', './mobileimage/playlist1.jpg', '4562', b'0', NULL);
INSERT INTO `playlist` VALUES (2, 1, '爱情不卑微不施舍，别以为你是谁', 1740023, 2689, 1335, NULL, '伤感', './mobileimage/playlist9.jpg', '1345135', b'0', NULL);
INSERT INTO `playlist` VALUES (3, 1, '网易云评论最多的前100首歌（已排序）', 15767, 234, 123, NULL, '欧美', './mobileimage/playlist7.jpg', '23453', b'0', NULL);
INSERT INTO `playlist` VALUES (4, 2, '荡涤四方求得一偶安宁', 421, 4, 3, NULL, '欧美', './mobileimage/playlist10.jpg', '1455', b'0', NULL);
INSERT INTO `playlist` VALUES (5, 2, '滚滚红尘，朝闻道夕可死矣', 355, 0, 6, NULL, '古风', './mobileimage/playlist4.jpg', '2566', b'0', NULL);
INSERT INTO `playlist` VALUES (6, 2, '【道诡异仙】“娃，你着相了', 64563, 355, 643, NULL, '说唱', './mobileimage/playlist2.jpg', '778543', b'0', NULL);
INSERT INTO `playlist` VALUES (7, 40, '听·张杰', 18745, 68, 53, NULL, '歌手热门歌曲集合', './mobileimage/singer3.jpg', '3874587', b'1', NULL);
INSERT INTO `playlist` VALUES (8, 22, '听·林俊杰', 3464, 14, 31, NULL, '歌手热门歌曲集合', './mobileimage/singer1.jpg', '458631', b'1', NULL);
INSERT INTO `playlist` VALUES (9, 9, '听·邓紫棋', 7853, 34, 53, NULL, '歌手热门歌曲集合', './mobileimage/singer2.jpg', '1349764', b'1', NULL);
INSERT INTO `playlist` VALUES (10, 0, '私人雷达', 45687345, 987875, 1239865, '反复聆听你喜欢的歌，红心越多，推荐越准~', '雷达歌单', NULL, '14987689076', b'1', NULL);
INSERT INTO `playlist` VALUES (11, 0, '时光雷达', 3389827, 387665, 34563, '你曾经挚爱的那些歌', '雷达歌单', NULL, '1037485736', b'1', NULL);
INSERT INTO `playlist` VALUES (12, 0, '神秘雷达', 2134141, 13414, 321412, NULL, '雷达歌单', NULL, '21454214', b'1', NULL);
INSERT INTO `playlist` VALUES (13, 0, '宝藏雷达', 21423154, 214214, 23152152, NULL, '雷达歌单', NULL, '3215121', b'1', NULL);
INSERT INTO `playlist` VALUES (14, 0, '乐迷雷达', 2522532, 25521, 1545235, NULL, '雷达歌单', NULL, '1235125', b'1', NULL);
INSERT INTO `playlist` VALUES (15, 0, '云村红心趋势', 123515, 12345, 1235342643, NULL, '雷达歌单', NULL, '124231512', b'1', NULL);
INSERT INTO `playlist` VALUES (16, 0, '新歌雷达', 23453125, 326523, 1545121, NULL, '雷达歌单', NULL, '325125125', b'1', NULL);
INSERT INTO `playlist` VALUES (17, 0, '曾经爱听', 125121, 51534, 1511242, NULL, '雷达歌单', NULL, '215125', b'1', NULL);
INSERT INTO `playlist` VALUES (18, 0, '音乐年轮', 5322, 2156, 21561, NULL, '雷达歌单', NULL, '415612', b'1', NULL);
INSERT INTO `playlist` VALUES (19, 0, '每周新发现', 21441, 1451, 12345, NULL, '雷达歌单', NULL, '12541', b'1', NULL);
INSERT INTO `playlist` VALUES (20, 0, '日系私人雷达', 14145, 14511, 15521, NULL, '雷达歌单', NULL, '21451', b'1', NULL);
INSERT INTO `playlist` VALUES (21, 0, '会员雷达', 321451, 1245, 1351, NULL, '雷达歌单', NULL, '512412', b'1', NULL);
INSERT INTO `playlist` VALUES (22, 0, '音乐播客', NULL, NULL, NULL, NULL, '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (23, 0, '相似艺人', NULL, NULL, NULL, '从你喜欢的艺人听起', '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (24, 0, '相似歌曲', NULL, NULL, NULL, '从你喜欢的歌听器', '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (25, 0, '私人漫游', NULL, NULL, NULL, '多种听歌模式随心播放', '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (26, 0, '电音日推', NULL, NULL, NULL, '你喜欢的电音歌曲', '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (27, 0, '热歌推荐', NULL, NULL, NULL, NULL, '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (28, 0, '私人雷达', NULL, NULL, NULL, NULL, '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (29, 0, '电音推荐', NULL, NULL, NULL, NULL, '内容一', NULL, NULL, b'1', NULL);
INSERT INTO `playlist` VALUES (30, 1, '华语民谣-治愈孤独患者的暖心民谣歌单', 356, 25, 24, NULL, NULL, './mobileimage/playlist11.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (31, 1, '100%耳朵怀孕好听到爆的歌', 234, 124, 134, NULL, NULL, './mobileimage/playlist8.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (32, 1, '网易云超好听的爆火歌曲推荐', 342, 73, 363, NULL, NULL, './mobileimage/playlist9.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (33, 1, '好听的歌没有完整版', 552, 774, 36, NULL, NULL, './mobileimage/playlist5.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (34, 1, '没必要那么极端.', 267, 36, 367, NULL, NULL, './mobileimage/playlist7.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (35, 2, '好听的神仙翻唱', 865, 347, 266, NULL, NULL, './mobileimage/playlist6.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (36, 2, '经典老歌，久听不厌', 357, 84, 256, NULL, NULL, './mobileimage/playlist13.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (37, 2, 'KTV麦霸必点歌曲', 844, 367, 256, NULL, NULL, './mobileimage/playlist12.jpg', NULL, b'0', NULL);
INSERT INTO `playlist` VALUES (38, 1, '好听到单曲循环', 336, 73, 256, NULL, NULL, './mobileimage/playlist14.jpg', NULL, b'0', NULL);

-- ----------------------------
-- Table structure for playlist_song
-- ----------------------------
DROP TABLE IF EXISTS `playlist_song`;
CREATE TABLE `playlist_song`  (
  `playlist_song_id` int NOT NULL AUTO_INCREMENT,
  `playlist_id` int NULL DEFAULT NULL COMMENT '歌单的id，歌曲属于那个歌单',
  `songid` int NULL DEFAULT NULL COMMENT '歌曲id',
  PRIMARY KEY (`playlist_song_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playlist_song
-- ----------------------------
INSERT INTO `playlist_song` VALUES (1, 1, 1);
INSERT INTO `playlist_song` VALUES (2, 1, 2);
INSERT INTO `playlist_song` VALUES (3, 1, 6);
INSERT INTO `playlist_song` VALUES (4, 1, 4);
INSERT INTO `playlist_song` VALUES (6, 1, 8);
INSERT INTO `playlist_song` VALUES (7, 1, 10);
INSERT INTO `playlist_song` VALUES (8, 2, 4);
INSERT INTO `playlist_song` VALUES (9, 2, 7);
INSERT INTO `playlist_song` VALUES (10, 2, 8);
INSERT INTO `playlist_song` VALUES (12, 3, 57);
INSERT INTO `playlist_song` VALUES (13, 3, 58);
INSERT INTO `playlist_song` VALUES (14, 3, 59);
INSERT INTO `playlist_song` VALUES (15, 4, 3);
INSERT INTO `playlist_song` VALUES (16, 4, 10);
INSERT INTO `playlist_song` VALUES (17, 4, 11);
INSERT INTO `playlist_song` VALUES (18, 5, 11);
INSERT INTO `playlist_song` VALUES (19, 5, 49);
INSERT INTO `playlist_song` VALUES (20, 5, 50);
INSERT INTO `playlist_song` VALUES (21, 6, 49);
INSERT INTO `playlist_song` VALUES (22, 6, 54);
INSERT INTO `playlist_song` VALUES (23, 30, 1);
INSERT INTO `playlist_song` VALUES (24, 30, 2);
INSERT INTO `playlist_song` VALUES (25, 30, 3);
INSERT INTO `playlist_song` VALUES (26, 31, 6);
INSERT INTO `playlist_song` VALUES (27, 31, 8);
INSERT INTO `playlist_song` VALUES (28, 31, 10);
INSERT INTO `playlist_song` VALUES (29, 31, 58);
INSERT INTO `playlist_song` VALUES (30, 32, 1);
INSERT INTO `playlist_song` VALUES (31, 33, 2);
INSERT INTO `playlist_song` VALUES (32, 34, 3);
INSERT INTO `playlist_song` VALUES (33, 35, 4);
INSERT INTO `playlist_song` VALUES (34, 36, 5);
INSERT INTO `playlist_song` VALUES (35, 37, 5);
INSERT INTO `playlist_song` VALUES (36, 38, 6);
INSERT INTO `playlist_song` VALUES (37, 7, 61);
INSERT INTO `playlist_song` VALUES (38, 7, 65);
INSERT INTO `playlist_song` VALUES (39, 8, 64);
INSERT INTO `playlist_song` VALUES (40, 8, 62);
INSERT INTO `playlist_song` VALUES (41, 8, 63);
INSERT INTO `playlist_song` VALUES (42, 9, 66);
INSERT INTO `playlist_song` VALUES (43, 9, 67);
INSERT INTO `playlist_song` VALUES (44, 1, 75);
INSERT INTO `playlist_song` VALUES (45, 1, 6);
INSERT INTO `playlist_song` VALUES (57, 33, 4);
INSERT INTO `playlist_song` VALUES (58, 1, 73);
INSERT INTO `playlist_song` VALUES (59, 33, 8);
INSERT INTO `playlist_song` VALUES (60, 38, 9);
INSERT INTO `playlist_song` VALUES (62, 38, 56);
INSERT INTO `playlist_song` VALUES (63, 38, 8);
INSERT INTO `playlist_song` VALUES (64, 38, 62);
INSERT INTO `playlist_song` VALUES (66, 38, 66);
INSERT INTO `playlist_song` VALUES (67, 1, 67);
INSERT INTO `playlist_song` VALUES (68, 1, 71);
INSERT INTO `playlist_song` VALUES (69, 1, 70);
INSERT INTO `playlist_song` VALUES (70, 30, 70);
INSERT INTO `playlist_song` VALUES (71, 1, 64);
INSERT INTO `playlist_song` VALUES (72, 38, 2);
INSERT INTO `playlist_song` VALUES (74, 34, 2);
INSERT INTO `playlist_song` VALUES (75, 1, 47);
INSERT INTO `playlist_song` VALUES (76, 34, 49);
INSERT INTO `playlist_song` VALUES (77, 34, 62);
INSERT INTO `playlist_song` VALUES (78, 38, 75);
INSERT INTO `playlist_song` VALUES (79, 38, 74);
INSERT INTO `playlist_song` VALUES (80, 38, 4);
INSERT INTO `playlist_song` VALUES (81, 38, 1);

-- ----------------------------
-- Table structure for podcast
-- ----------------------------
DROP TABLE IF EXISTS `podcast`;
CREATE TABLE `podcast`  (
  `podcast_id` int NOT NULL AUTO_INCREMENT COMMENT '播客id',
  `bio` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '播客简介',
  `component` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '由哪几首歌组成',
  `songs_num` int NULL DEFAULT NULL COMMENT '歌曲数量',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '播客标签',
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`podcast_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of podcast
-- ----------------------------
INSERT INTO `podcast` VALUES (1, '英文emo歌单，让这些个陪你渡过难熬的时刻', 'Love Is Gone (Acoustic)、Don’t Watch MeCry、echo（acoustic）', 3, NULL, 'emo、', '2024-08-13 09:33:29', '2024-08-13 14:52:22');
INSERT INTO `podcast` VALUES (2, '戏中有歌，歌中有戏，你听过“戏歌”吗？', '春晓-雨果,声声慢-张一山/孙萍,光亮-周深', 3, NULL, '古风、戏曲', '2024-08-13 09:33:35', '2024-08-13 14:55:22');
INSERT INTO `podcast` VALUES (3, '夜深人静，古风梦回华章，送你一夜安宁好眠', '请回答1988（钢琴版）,武家坡,三拜红尘凉,牵丝戏', 4, NULL, '古风、抒情', '2024-08-13 09:33:40', '2024-08-13 14:55:13');
INSERT INTO `podcast` VALUES (4, '张韶涵：世界以痛吻她，她却报之以歌~', '起风了,小幸运', 1, NULL, '流行', '2024-08-13 14:00:47', '2024-08-23 16:00:42');
INSERT INTO `podcast` VALUES (5, '让《雨爱》的秘密一直延续', '青花瓷,平凡之路,岁月神偷', 1, NULL, '流行', '2024-08-13 14:01:20', '2024-08-23 16:13:10');
INSERT INTO `podcast` VALUES (6, '吃CD长大的林俊杰，可并不是你以为的样子', '平凡之路,演员', 1, NULL, '流行', '2024-08-13 14:01:38', '2024-08-23 16:13:48');
INSERT INTO `podcast` VALUES (7, '盘点十大音综现场LIVE', NULL, NULL, NULL, NULL, '2024-08-23 16:14:59', '2024-08-23 16:14:59');
INSERT INTO `podcast` VALUES (8, '陶喆：他的歌可以听一辈子，”陶氏R&B“永不过时！', NULL, NULL, NULL, NULL, '2024-08-23 16:16:21', '2024-08-23 16:16:21');
INSERT INTO `podcast` VALUES (9, '人生总有怀念，这首歌响起时回忆变涌上心头', NULL, NULL, NULL, NULL, '2024-08-23 16:17:20', '2024-08-23 16:17:20');
INSERT INTO `podcast` VALUES (10, '【如果才华有名字】林俊杰', NULL, NULL, NULL, NULL, '2024-08-23 16:18:00', '2024-08-23 16:18:00');
INSERT INTO `podcast` VALUES (11, '张韶涵：人生可以不用依靠任何人，你就是自己的那座山', NULL, NULL, NULL, NULL, '2024-08-23 16:18:33', '2024-08-23 16:18:33');
INSERT INTO `podcast` VALUES (12, '《想你时风起》歌配不上唱，剧又配不上歌？', NULL, NULL, NULL, NULL, '2024-08-23 16:19:31', '2024-08-23 16:19:31');

-- ----------------------------
-- Table structure for podcast_song
-- ----------------------------
DROP TABLE IF EXISTS `podcast_song`;
CREATE TABLE `podcast_song`  (
  `podcast_song_id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `podcast_id` int NULL DEFAULT NULL COMMENT '播客id',
  `songid` int NULL DEFAULT NULL COMMENT '歌曲id',
  PRIMARY KEY (`podcast_song_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of podcast_song
-- ----------------------------
INSERT INTO `podcast_song` VALUES (1, 4, 68);
INSERT INTO `podcast_song` VALUES (2, 4, 69);
INSERT INTO `podcast_song` VALUES (3, 4, 70);
INSERT INTO `podcast_song` VALUES (4, 1, 44);
INSERT INTO `podcast_song` VALUES (5, 1, 45);
INSERT INTO `podcast_song` VALUES (6, 1, 47);
INSERT INTO `podcast_song` VALUES (7, 2, 11);
INSERT INTO `podcast_song` VALUES (8, 2, 50);
INSERT INTO `podcast_song` VALUES (9, 3, 2);
INSERT INTO `podcast_song` VALUES (10, 3, 49);
INSERT INTO `podcast_song` VALUES (11, 3, 54);
INSERT INTO `podcast_song` VALUES (12, 3, 63);
INSERT INTO `podcast_song` VALUES (13, 5, 71);
INSERT INTO `podcast_song` VALUES (14, 6, 62);
INSERT INTO `podcast_song` VALUES (15, 6, 63);
INSERT INTO `podcast_song` VALUES (16, 6, 64);
INSERT INTO `podcast_song` VALUES (17, 7, 72);
INSERT INTO `podcast_song` VALUES (18, 9, 49);
INSERT INTO `podcast_song` VALUES (19, 9, 56);
INSERT INTO `podcast_song` VALUES (20, 9, 61);
INSERT INTO `podcast_song` VALUES (21, 9, 62);
INSERT INTO `podcast_song` VALUES (22, 10, 63);
INSERT INTO `podcast_song` VALUES (23, 10, 62);
INSERT INTO `podcast_song` VALUES (24, 10, 64);
INSERT INTO `podcast_song` VALUES (25, 11, 68);
INSERT INTO `podcast_song` VALUES (26, 11, 69);
INSERT INTO `podcast_song` VALUES (27, 11, 70);
INSERT INTO `podcast_song` VALUES (28, 12, 54);
INSERT INTO `podcast_song` VALUES (29, 12, 71);
INSERT INTO `podcast_song` VALUES (30, 8, 73);
INSERT INTO `podcast_song` VALUES (31, 8, 74);

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `songid` int NOT NULL AUTO_INCREMENT COMMENT '歌曲ID',
  `songname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌曲名字',
  `artistid` int NULL DEFAULT NULL COMMENT '歌手ID',
  `albumid` int NULL DEFAULT NULL COMMENT '专辑ID',
  `gmt_create` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_original` bit(1) NULL DEFAULT b'0' COMMENT '是否原创',
  `is_original_singer` bit(1) NULL DEFAULT b'0' COMMENT '是否原唱',
  `three_days_views` int NULL DEFAULT NULL COMMENT '三天内播放量',
  `listen_times` int NULL DEFAULT NULL COMMENT '歌曲被听次数',
  `like_num` int NULL DEFAULT NULL COMMENT '歌曲被用户收藏的数量',
  `song_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面图片',
  `is_vip` bit(1) NULL DEFAULT b'0' COMMENT '是否需要vip',
  `reviews` int NULL DEFAULT NULL COMMENT '评论数量',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '音频来源',
  PRIMARY KEY (`songid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (1, '起风了', 1, 1, '2024-08-11 09:49:29', '2024-11-22 20:51:38', '1,7,18,22,41', b'1', b'1', 35521, 5621366, 24511, 'http://p1.music.126.net/diGAyEmpymX8G7JcnElncQ==/109951163699673355.jpg?param=177y177', NULL, 7625, './audio/起风了-买辣椒也用券.mp3');
INSERT INTO `song` VALUES (2, '青花瓷', 2, 21, '2024-08-11 09:49:29', '2024-08-25 16:15:15', '7,24,25', b'1', b'1', 56783, 1245673, 75367, 'https://p1.music.126.net/cUTk0ewrQtYGP2YpPZoUng==/3265549553028224.jpg?param=177y177', b'1', 36778, './audio/青花瓷 - 周杰伦.mp3');
INSERT INTO `song` VALUES (3, '平凡之路', 3, 3, '2024-08-11 09:49:29', '2024-08-25 16:20:36', '12,18,25,27,52', b'0', b'1', 14678, 7642215, 89764, 'http://p1.music.126.net/W_5XiCv3rGS1-J7EXpHSCQ==/18885211718782327.jpg?param=177y177', b'1', 256, './audio/平凡之路-朴树.mp3');
INSERT INTO `song` VALUES (4, '小幸运', 4, 4, '2024-08-11 09:49:29', '2024-08-25 16:22:00', '1,7,18,19,39', b'1', b'1', 73216, 6778532, 246672, 'http://p1.music.126.net/bwBsDMYJcFetIc-q_oWjAw==/109951163520335473.jpg?param=177y177', b'1', 7843, './audio/小幸运 - 田馥甄.mp3');
INSERT INTO `song` VALUES (5, '演员', 5, 5, '2024-08-11 09:49:29', '2024-08-25 16:23:02', '1,19,22', b'0', b'1', 78903, 677422, 98542, 'http://p1.music.126.net/hti_a0LADoFMBHvOBwAtRA==/1369991500930171.jpg?param=177y177', b'1', 78943, './audio/薛之谦 - 演员.mp3');
INSERT INTO `song` VALUES (6, '小星星', 43, 6, '2024-08-11 09:49:29', '2024-08-25 16:23:34', '1,18,19,22,40', b'0', b'1', 13778, 788424, 13678, 'http://p1.music.126.net/iz3dkH886lApZrJqtPWoiw==/109951165687445155.jpg?param=177y177', b'1', 456673, './audio/小星星-汪苏泷.mp3');
INSERT INTO `song` VALUES (7, '遥远的她', 7, 7, '2024-08-11 09:49:29', '2024-08-25 16:24:03', '23,28,30,38,39', b'1', b'1', 90733, 885532, 65322, 'http://p2.music.126.net/q918j0EtnA6-KIkXqQPG4g==/109951169427392853.jpg?param=130y130', b'1', 36672, './audio/遥远的她-张学友.mp3');
INSERT INTO `song` VALUES (8, '突然好想你', 8, 8, '2024-08-11 09:49:29', '2024-08-30 14:48:53', '2,18,39', b'0', b'1', 35778, 322678, 57893, 'http://p1.music.126.net/l0vGEnowGfj6DgFSGojyfQ==/109951168163397768.jpg?param=130y130', b'1', 2667, './audio/突然好想你 - 五月天.mp3');
INSERT INTO `song` VALUES (9, '她说', 9, 9, '2024-08-11 09:49:29', '2024-08-30 14:49:14', '1,23,51', b'0', b'1', 98642, 225667, 25785, 'http://p2.music.126.net/EtbYjpw06KOdTxisgUs4-w==/109951168852557941.jpg?param=177y177', b'0', 8909, './audio/1_她说+-+林俊杰.mp3');
INSERT INTO `song` VALUES (10, '匆匆那年', 10, 10, '2024-08-11 09:49:29', '2024-08-25 16:24:55', '18,19,31,39,41,42', b'0', b'1', 37789, 742135, 47884, 'http://p1.music.126.net/yXyeAl-7m0tqfx4AX7BDSQ==/2542070884980240.jpg?param=177y177', b'1', 8714, './audio/匆匆那年-王菲.mp3');
INSERT INTO `song` VALUES (11, '声声慢', 11, 11, '2024-08-12 12:48:42', '2024-08-30 14:49:49', '4,25', b'0', b'0', 12341, 64312, 2451, 'http://p2.music.126.net/qMiFV8V6zlOSS9D4FLwFMw==/109951162807427178.jpg?param=130y130', b'1', 111333, './audio/崔开潮-声声慢.mp3');
INSERT INTO `song` VALUES (12, 'home', 12, 12, '2024-08-13 15:20:01', '2024-08-30 14:50:07', '5', b'1', b'1', 123, 1244, 234, 'http://p1.music.126.net/f7t-R2oCCxPUETBtTTe5MQ==/109951165731319422.jpg?param=130y130', b'0', 245, './audio/Spectrum.mp3');
INSERT INTO `song` VALUES (13, '老人と海', 13, 13, '2024-08-13 15:27:20', '2024-08-30 14:50:24', '9', b'1', b'1', 1245, 431, 114, 'http://p1.music.126.net/5aHcGADR5i6biE5TSqf_aQ==/109951166295171725.jpg?param=130y130', b'1', 32124, './audio/老人と海+-+ヨルシカ.mp3');
INSERT INTO `song` VALUES (14, 'ブルーバード', 14, 14, '2024-08-13 15:41:03', '2024-08-30 14:51:00', '9,21,34', b'0', b'1', 1233, 421, 524, 'http://p2.music.126.net/kE5vu_BVgwVHFVAjzKXSjg==/109951166200194461.jpg?param=130y130', b'1', 24451, './audio/花たんしゅーず - wave.mp3');
INSERT INTO `song` VALUES (30, 'Get Lucky', 15, 15, '2024-08-20 11:22:34', '2024-08-30 14:51:08', '5', b'1', b'1', 300, 1500, 200, 'http://p1.music.126.net/GHFv5eordjbjzdXTh8i_8g==/109951167934241950.jpg?param=130y130', b'0', 50, './audio/Clarity+-+Zedd.mp3');
INSERT INTO `song` VALUES (31, 'Summer', 16, 16, '2024-08-20 11:22:34', '2024-08-30 14:51:19', '5', b'1', b'0', 320, 1600, 210, 'http://p2.music.126.net/StPsWm7wLhwzNEFheoa8lQ==/109951169143146810.jpg?param=130y130', b'1', 55, './audio/SUMMER+-+BROCKHAMPTON.mp3');
INSERT INTO `song` VALUES (32, 'Clarity', 17, 17, '2024-08-20 11:22:34', '2024-08-30 14:51:42', '5', b'0', b'1', 340, 1700, 220, 'http://p2.music.126.net/OlBzjDbNwho_qiEZnodWUg==/2539871861609412.jpg?param=130y130', b'0', 60, './audio/Clarity+-+Zedd.mp3');
INSERT INTO `song` VALUES (34, 'Wake Me Up', 19, 19, '2024-08-20 11:22:34', '2024-08-30 14:51:43', '5', b'0', b'0', 380, 1900, 240, 'http://p2.music.126.net/vKdjFbqJTHofBq7uEYLKRw==/2535473814614183.jpg?param=130y130', b'0', 70, './audio/wake+me+up+-+-OKID.mp3');
INSERT INTO `song` VALUES (35, 'One More Time', 15, 15, '2024-08-20 11:22:34', '2024-08-30 14:51:45', '5', b'1', b'1', 400, 2000, 250, 'http://p1.music.126.net/8A2OEOO6jgJ9F0aCiYVUvg==/109951163620388927.jpg?param=130y130', b'0', 75, './audio/One+More+Time+-+MYNAME.mp3');
INSERT INTO `song` VALUES (36, 'Outside', 16, 16, '2024-08-20 11:22:34', '2024-08-30 14:51:46', '5', b'0', b'1', 420, 2100, 260, 'http://p2.music.126.net/5PR1zXsb5MpWW9fC_lqk2Q==/109951164795221871.jpg?param=130y130', b'1', 80, './audio/Outside-TheWeeknd.mp3');
INSERT INTO `song` VALUES (37, 'Stay the Night', 17, 17, '2024-08-20 11:22:34', '2024-08-30 14:51:47', '5', b'1', b'0', 440, 2200, 270, 'http://p1.music.126.net/LgtWd_1uSZrpwBeGYqeQnQ==/109951168033799220.jpg?param=130y130', b'0', 85, './audio/Stay+the+Night+-+Zedd.mp3');
INSERT INTO `song` VALUES (39, 'Hey Brother', 19, 19, '2024-08-20 11:22:34', '2024-08-30 14:51:48', '5', b'0', b'0', 480, 2400, 290, 'http://p2.music.126.net/vKdjFbqJTHofBq7uEYLKRw==/2535473814614183.jpg?param=130y130', b'0', 95, './audio/sprites-EthanBortnick.mp3');
INSERT INTO `song` VALUES (40, 'Instant Crush', 15, 15, '2024-08-20 11:22:34', '2024-08-30 14:51:51', '5', b'1', b'1', 500, 2500, 300, 'http://p2.music.126.net/GHFv5eordjbjzdXTh8i_8g==/109951167934241950.jpg?param=130y130', b'0', 100, './audio/The+Nights+-+Avicii.mp3');
INSERT INTO `song` VALUES (41, 'Blame', 16, 16, '2024-08-20 11:22:34', '2024-08-30 14:51:52', '5', b'1', b'0', 520, 2600, 310, 'http://p1.music.126.net/MDdK9YhsYXDPtEYDVRH3mg==/109951165970553209.jpg?param=130y130', b'1', 105, './audio/Stay+the+Night+-+Zedd.mp3');
INSERT INTO `song` VALUES (42, 'Spectrum', 17, 17, '2024-08-20 11:22:34', '2024-08-30 14:51:56', '5', b'0', b'1', 540, 2700, 320, 'http://p1.music.126.net/OlBzjDbNwho_qiEZnodWUg==/2539871861609412.jpg?param=130y130', b'0', 110, './audio/Spectrum.mp3');
INSERT INTO `song` VALUES (44, 'The Nights', 19, 19, '2024-08-20 11:22:34', '2024-08-30 14:51:58', '5', b'0', b'0', 580, 2900, 340, 'http://p1.music.126.net/6FE-03uc2xJJWcE-aKIejw==/3246857838267604.jpg?param=130y130', b'0', 120, './audio/The+Nights+-+Avicii.mp3');
INSERT INTO `song` VALUES (45, 'Boys Like You', 37, 34, '2024-08-20 11:22:34', '2024-08-30 14:51:59', '5', b'1', b'1', 600, 3000, 350, 'http://p1.music.126.net/rltCB_IhT7_Tul4dVteDCQ==/2286984185839064.jpg?param=130y130', b'0', 125, './audio/Boys Like You.mp3');
INSERT INTO `song` VALUES (46, 'Bad for Me', 37, 34, '2024-08-20 11:22:34', '2024-08-30 14:52:00', '5', b'1', b'0', 620, 3100, 360, 'http://p1.music.126.net/rltCB_IhT7_Tul4dVteDCQ==/2286984185839064.jpg?param=130y130', b'1', 130, './audio/Bad for Me.mp3');
INSERT INTO `song` VALUES (47, 'Dare', 37, 34, '2024-08-20 11:22:34', '2024-08-30 14:52:03', '5', b'1', b'0', 640, 3200, 370, 'http://p1.music.126.net/rltCB_IhT7_Tul4dVteDCQ==/2286984185839064.jpg?param=130y130', b'1', 135, './audio/Dare.mp3');
INSERT INTO `song` VALUES (49, '红尘客栈', 2, 23, '2024-08-20 16:02:18', '2024-08-30 14:58:33', '1,4', b'1', b'1', 300000, 1800000, 90000, 'https://y.qq.com/music/photo_new/T002R300x300M000003Ow85E3pnoqi_1.jpg?max_age=2592000', b'0', 80014, './audio/红尘客栈-周杰伦.mp3');
INSERT INTO `song` VALUES (50, '月光', 28, 24, '2024-08-20 16:02:18', '2024-08-30 15:00:57', '1,24,54', b'1', b'1', 350000, 1400000, 80000, 'http://p2.music.126.net/A1yJLb3qBJODaV68XoIRZQ==/109951164016069144.jpg?param=130y130', b'0', 700142, './audio/月光+-+胡彦斌.mp3');
INSERT INTO `song` VALUES (51, '千年等一回', 29, 25, '2024-08-20 16:02:18', '2024-08-30 15:01:37', '4,19,54', b'1', b'1', 3466, 1750, 130000, 'http://p1.music.126.net/7iw-NUtIDjGXgcjNn0ZudA==/109951167387939221.jpg?param=130y130', b'0', 1000124, './audio/千年等一回+-+高胜美.mp3');
INSERT INTO `song` VALUES (52, 'Fearless Pt. II', 30, 26, '2024-08-20 18:03:28', '2024-08-30 15:07:42', '36', b'1', b'1', 5000, 15000, 1200, 'http://p1.music.126.net/3SQ_6LQUshSnNYell1NavQ==/109951163571170695.jpg?param=130y130', b'0', 30035135, './audio/LostSky、ChrisLinton-FearlessPt.II.mp3');
INSERT INTO `song` VALUES (53, '紅蓮華', 32, 28, '2024-08-20 18:03:28', '2024-08-30 15:08:02', '9', b'1', b'0', 6000, 18000, 1500, 'http://p2.music.126.net/90cd-XI5j0XlCSA4anuJMA==/109951166199033558.jpg?param=130y130', b'1', 4002552, './audio/紅蓮華+-+LiSA.mp3');
INSERT INTO `song` VALUES (54, '千与千寻', 31, 27, '2024-08-20 18:03:28', '2024-08-30 15:08:14', '9', b'0', b'1', 7000, 20000, 2500, 'http://p2.music.126.net/ACx8FuJZn0rwVBkyV3lmZg==/109951167952261699.jpg?param=130y130', b'0', 50015, './audio/いつも何度でも-久石让.木村弓.mp3');
INSERT INTO `song` VALUES (55, 'One Last Kiss', 33, 29, '2024-08-20 18:03:28', '2024-08-30 15:08:22', '9', b'1', b'1', 8000, 22000, 3000, 'http://p2.music.126.net/l3G4LigZnOxFE9lB4bz_LQ==/109951165791860501.jpg?param=130y130', b'1', 6001235, './audio/1_One+Last+Kiss+(Live)+-+宇多田光.mp3');
INSERT INTO `song` VALUES (56, '撒野', 34, 30, '2024-08-20 18:03:28', '2024-08-30 15:08:33', '35', b'0', b'1', 9000, 250001, 3500, 'http://p1.music.126.net/cTMQotCcZqabLkv7c1zntA==/109951166267066450.jpg?param=130y130', b'0', 7001351, './audio/撒野-凯瑟喵.mp3');
INSERT INTO `song` VALUES (57, '童话镇', 35, 31, '2024-08-20 18:59:55', '2024-08-30 15:08:50', '19,40', b'0', b'1', 125621, 125621, 25125, 'http://p1.music.126.net/AmdNYt2fNQnYBBOzw1mpKQ==/109951169826214140.jpg?param=177y177', b'1', 515235, './audio/容祖儿-童话镇.mp3');
INSERT INTO `song` VALUES (58, '和你等烟花', 36, 32, '2024-08-20 19:03:04', '2024-08-30 15:09:04', '18,19,40', b'0', b'1', 2462, 2346625, 42362, 'http://p2.music.126.net/kqjxcw0rgmTV4MBTTfsyQw==/109951169871520994.jpg?param=177y177', b'1', 2464123, './audio/和你等烟花-鹭卓(极高音质).mp3');
INSERT INTO `song` VALUES (59, '解解闷', 5, 33, '2024-08-20 19:04:56', '2024-08-30 15:09:14', '1', b'1', b'1', 1353125, 123541, 34125, 'http://p1.music.126.net/tnIVERNNnFj4gYAUjjFUDw==/109951169838671124.jpg?param=177y177', b'1', 151314, './audio/薛之谦-解解闷.mp3');
INSERT INTO `song` VALUES (60, 'For You', 38, 20, '2024-08-22 14:25:18', '2024-08-30 15:07:29', '21', b'0', b'1', 25624, 215235, 12521, 'http://p1.music.126.net/WFItI5PcP0t4NaOHkluufQ==/109951164075693087.jpg?param=640y300', b'0', 21456, './audio/AZU - For You.mp3');
INSERT INTO `song` VALUES (61, '明天过后', 40, 35, '2024-08-23 15:19:59', '2024-08-30 15:07:17', '7,23', b'1', b'1', 31255, 32414521, 23145, 'http://p2.music.126.net/ixIs5kkukgNYMmeDsc35_g==/29686813955450.jpg?param=130y130', b'1', 14511, './audio/明天过后-张杰.mp3');
INSERT INTO `song` VALUES (62, '美人鱼', 9, 36, '2024-08-23 15:25:32', '2024-08-30 15:06:33', '1,19,40', b'1', b'1', 35151, 25512521, 26621, 'http://p2.music.126.net/_0OAhWhIbg-nOP-6e4o-SA==/109951168111265583.jpg?param=130y130', b'1', 31512, './audio/美人鱼-林俊杰.mp3');
INSERT INTO `song` VALUES (63, '江南', 9, 36, '2024-08-23 15:27:52', '2024-08-30 15:07:04', '1,39', b'1', b'1', 3256, 624135, 21356, 'http://p2.music.126.net/_0OAhWhIbg-nOP-6e4o-SA==/109951168111265583.jpg?param=130y130', b'1', 4125, './audio/林俊杰-江南.mp3');
INSERT INTO `song` VALUES (64, '第二天堂', 9, 36, '2024-08-23 15:28:22', '2024-08-30 15:06:52', '7', b'1', b'1', 346236, 2566225, 1235, 'http://p2.music.126.net/_0OAhWhIbg-nOP-6e4o-SA==/109951168111265583.jpg?param=130y130', b'1', 2155, './audio/第二天堂+-+林俊杰.mp3');
INSERT INTO `song` VALUES (65, '天下', 40, 35, '2024-08-23 15:29:00', '2024-08-30 15:06:44', '24', b'1', b'1', 6326236, 2135612, 5621, 'http://p2.music.126.net/ixIs5kkukgNYMmeDsc35_g==/29686813955450.jpg?param=130y130', b'1', 32155, './audio/张杰-天下.mp3');
INSERT INTO `song` VALUES (66, '句号', 22, 37, '2024-08-23 15:34:36', '2024-08-30 15:05:45', '7', b'0', b'1', 345632, 6426144, 3562, 'http://p2.music.126.net/KTo5oSxH3CPA5PBTeFKDyA==/109951164581432409.jpg?param=177y177', b'1', 2355, './audio/句号-G.E.M.邓紫棋.mp3');
INSERT INTO `song` VALUES (67, '摩天动物园', 22, 37, '2024-08-23 15:34:51', '2024-08-30 15:05:29', '7', b'1', b'1', 234562, 326622, 234556, 'http://p2.music.126.net/KTo5oSxH3CPA5PBTeFKDyA==/109951164581432409.jpg?param=177y177', b'1', 3251, './audio/G.E.M.+邓紫棋+-+摩天动物园.flac.mp3');
INSERT INTO `song` VALUES (68, '有形的翅膀', 41, 38, '2024-08-23 16:05:15', '2024-08-30 15:03:57', '18,41,47', b'1', b'1', 321554, 326244, 5725, 'http://p1.music.126.net/pcic3NwD7xdvHLvuT5jWWQ==/109951168308921434.jpg?param=130y130', b'1', 2567, './audio/有形的翅膀-张韶涵.mp3');
INSERT INTO `song` VALUES (69, '淋雨一直走', 41, 38, '2024-08-23 16:05:31', '2024-08-30 15:03:28', '18,40,41', b'1', b'1', 12355, 2662235, 75265, 'http://p1.music.126.net/pcic3NwD7xdvHLvuT5jWWQ==/109951168308921434.jpg?param=130y130', b'1', 472, './audio/淋雨一直走+-+张韶涵.mp3');
INSERT INTO `song` VALUES (70, '欧若拉', 41, 39, '2024-08-23 16:06:48', '2024-08-30 15:03:06', '1,40', b'0', b'1', 3562346, 32662235, 2627, 'http://p2.music.126.net/JxIljYkVznSrZTUQEAg-gg==/109951167379867279.jpg?param=130y130', b'1', 277, './audio/欧若拉+-+张韶涵.mp3');
INSERT INTO `song` VALUES (71, '雨爱', 39, 40, '2024-08-23 16:24:42', '2024-08-25 16:26:43', '19,23', b'0', b'1', 32462, 36274, 86537, 'http://p2.music.126.net/M89REFvvLzYoWGaY49E09g==/109951167282433938.jpg?param=177y177', b'1', 347, './audio/杨丞琳-雨爱.mp3');
INSERT INTO `song` VALUES (72, '你在，不在 (live)', 43, 41, '2024-08-23 16:29:41', '2024-08-30 15:02:43', '1', b'0', b'0', 23462462, 4724345, 5677, 'http://p1.music.126.net/la6-9Bo6WY7pupYPzK-gYg==/109951169665666559.jpg?param=130y130', b'1', 2367, './audio/汪苏泷-你在，不在.mp3');
INSERT INTO `song` VALUES (73, '天天', 44, 42, '2024-08-23 16:35:07', '2024-08-30 15:02:12', '1,19', b'1', b'1', 23662, 72522345, 32646, 'http://p2.music.126.net/tMQXBMTy8pGjGggX1j0YNQ==/109951169389595068.jpg?param=177y177', b'1', 2467, './audio/1_陶喆-天天.mp3');
INSERT INTO `song` VALUES (74, '小镇姑娘', 44, 42, '2024-08-23 16:35:46', '2024-08-25 16:26:22', '19,31,46', b'1', b'1', 246613, 542672345, 23673, 'http://p2.music.126.net/tMQXBMTy8pGjGggX1j0YNQ==/109951169389595068.jpg?param=177y177', b'1', 23467, './audio/陶喆-小镇姑娘.mp3');
INSERT INTO `song` VALUES (75, '一笑倾城', 43, 43, '2024-08-23 21:39:00', '2024-08-25 16:25:53', '1,7,18,19,32,40,42', b'1', b'1', 4265632, 326622135, 32466, 'http://p1.music.126.net/XtQbs_V1OAvtZo9tmJFAJA==/1369991503018202.jpg?param=130y130', b'1', 256213, './audio/一笑倾城-汪苏泷.mp3');

-- ----------------------------
-- Table structure for song_tag
-- ----------------------------
DROP TABLE IF EXISTS `song_tag`;
CREATE TABLE `song_tag`  (
  `s_t_id` int NOT NULL AUTO_INCREMENT,
  `songid` int NULL DEFAULT NULL,
  `tagid` int NULL DEFAULT NULL,
  PRIMARY KEY (`s_t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 317 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song_tag
-- ----------------------------
INSERT INTO `song_tag` VALUES (17, 32, 5);
INSERT INTO `song_tag` VALUES (18, 33, 5);
INSERT INTO `song_tag` VALUES (19, 34, 5);
INSERT INTO `song_tag` VALUES (20, 35, 5);
INSERT INTO `song_tag` VALUES (21, 36, 5);
INSERT INTO `song_tag` VALUES (22, 37, 5);
INSERT INTO `song_tag` VALUES (23, 38, 5);
INSERT INTO `song_tag` VALUES (24, 39, 5);
INSERT INTO `song_tag` VALUES (25, 40, 5);
INSERT INTO `song_tag` VALUES (26, 41, 5);
INSERT INTO `song_tag` VALUES (27, 42, 5);
INSERT INTO `song_tag` VALUES (28, 43, 5);
INSERT INTO `song_tag` VALUES (29, 44, 5);
INSERT INTO `song_tag` VALUES (30, 45, 5);
INSERT INTO `song_tag` VALUES (31, 46, 5);
INSERT INTO `song_tag` VALUES (32, 47, 5);
INSERT INTO `song_tag` VALUES (36, 48, 24);
INSERT INTO `song_tag` VALUES (44, 40, 22);
INSERT INTO `song_tag` VALUES (100, 2, 7);
INSERT INTO `song_tag` VALUES (101, 2, 24);
INSERT INTO `song_tag` VALUES (102, 2, 25);
INSERT INTO `song_tag` VALUES (103, 3, 12);
INSERT INTO `song_tag` VALUES (104, 3, 18);
INSERT INTO `song_tag` VALUES (105, 3, 25);
INSERT INTO `song_tag` VALUES (106, 3, 27);
INSERT INTO `song_tag` VALUES (108, 4, 1);
INSERT INTO `song_tag` VALUES (109, 4, 7);
INSERT INTO `song_tag` VALUES (110, 4, 18);
INSERT INTO `song_tag` VALUES (111, 4, 19);
INSERT INTO `song_tag` VALUES (112, 4, 39);
INSERT INTO `song_tag` VALUES (113, 5, 1);
INSERT INTO `song_tag` VALUES (114, 5, 19);
INSERT INTO `song_tag` VALUES (115, 5, 22);
INSERT INTO `song_tag` VALUES (116, 6, 1);
INSERT INTO `song_tag` VALUES (117, 6, 18);
INSERT INTO `song_tag` VALUES (118, 6, 19);
INSERT INTO `song_tag` VALUES (119, 6, 22);
INSERT INTO `song_tag` VALUES (120, 6, 40);
INSERT INTO `song_tag` VALUES (121, 7, 23);
INSERT INTO `song_tag` VALUES (122, 7, 28);
INSERT INTO `song_tag` VALUES (123, 7, 30);
INSERT INTO `song_tag` VALUES (124, 7, 38);
INSERT INTO `song_tag` VALUES (125, 7, 39);
INSERT INTO `song_tag` VALUES (126, 10, 18);
INSERT INTO `song_tag` VALUES (127, 10, 19);
INSERT INTO `song_tag` VALUES (128, 10, 31);
INSERT INTO `song_tag` VALUES (129, 10, 39);
INSERT INTO `song_tag` VALUES (130, 10, 41);
INSERT INTO `song_tag` VALUES (131, 10, 42);
INSERT INTO `song_tag` VALUES (132, 75, 1);
INSERT INTO `song_tag` VALUES (133, 75, 7);
INSERT INTO `song_tag` VALUES (134, 75, 18);
INSERT INTO `song_tag` VALUES (135, 75, 19);
INSERT INTO `song_tag` VALUES (136, 75, 32);
INSERT INTO `song_tag` VALUES (137, 75, 40);
INSERT INTO `song_tag` VALUES (138, 75, 42);
INSERT INTO `song_tag` VALUES (139, 74, 19);
INSERT INTO `song_tag` VALUES (140, 74, 31);
INSERT INTO `song_tag` VALUES (141, 74, 46);
INSERT INTO `song_tag` VALUES (142, 71, 19);
INSERT INTO `song_tag` VALUES (143, 71, 23);
INSERT INTO `song_tag` VALUES (218, 8, 2);
INSERT INTO `song_tag` VALUES (219, 8, 18);
INSERT INTO `song_tag` VALUES (220, 8, 39);
INSERT INTO `song_tag` VALUES (221, 9, 1);
INSERT INTO `song_tag` VALUES (222, 9, 23);
INSERT INTO `song_tag` VALUES (223, 9, 51);
INSERT INTO `song_tag` VALUES (224, 11, 4);
INSERT INTO `song_tag` VALUES (225, 11, 25);
INSERT INTO `song_tag` VALUES (226, 12, 5);
INSERT INTO `song_tag` VALUES (227, 13, 9);
INSERT INTO `song_tag` VALUES (228, 14, 9);
INSERT INTO `song_tag` VALUES (229, 14, 21);
INSERT INTO `song_tag` VALUES (230, 14, 34);
INSERT INTO `song_tag` VALUES (231, 30, 5);
INSERT INTO `song_tag` VALUES (232, 31, 5);
INSERT INTO `song_tag` VALUES (233, 49, 1);
INSERT INTO `song_tag` VALUES (234, 49, 4);
INSERT INTO `song_tag` VALUES (235, 50, 1);
INSERT INTO `song_tag` VALUES (236, 50, 24);
INSERT INTO `song_tag` VALUES (237, 50, 54);
INSERT INTO `song_tag` VALUES (238, 51, 4);
INSERT INTO `song_tag` VALUES (239, 51, 19);
INSERT INTO `song_tag` VALUES (240, 51, 54);
INSERT INTO `song_tag` VALUES (241, 73, 1);
INSERT INTO `song_tag` VALUES (242, 73, 19);
INSERT INTO `song_tag` VALUES (243, 72, 1);
INSERT INTO `song_tag` VALUES (244, 70, 1);
INSERT INTO `song_tag` VALUES (245, 70, 40);
INSERT INTO `song_tag` VALUES (246, 69, 18);
INSERT INTO `song_tag` VALUES (247, 69, 40);
INSERT INTO `song_tag` VALUES (248, 69, 41);
INSERT INTO `song_tag` VALUES (249, 68, 18);
INSERT INTO `song_tag` VALUES (250, 68, 41);
INSERT INTO `song_tag` VALUES (251, 68, 47);
INSERT INTO `song_tag` VALUES (252, 67, 7);
INSERT INTO `song_tag` VALUES (253, 66, 7);
INSERT INTO `song_tag` VALUES (254, 62, 1);
INSERT INTO `song_tag` VALUES (255, 62, 19);
INSERT INTO `song_tag` VALUES (256, 62, 40);
INSERT INTO `song_tag` VALUES (257, 65, 24);
INSERT INTO `song_tag` VALUES (258, 64, 7);
INSERT INTO `song_tag` VALUES (259, 63, 1);
INSERT INTO `song_tag` VALUES (260, 63, 39);
INSERT INTO `song_tag` VALUES (261, 61, 7);
INSERT INTO `song_tag` VALUES (262, 61, 23);
INSERT INTO `song_tag` VALUES (263, 60, 21);
INSERT INTO `song_tag` VALUES (264, 52, 36);
INSERT INTO `song_tag` VALUES (265, 53, 9);
INSERT INTO `song_tag` VALUES (266, 54, 9);
INSERT INTO `song_tag` VALUES (267, 55, 9);
INSERT INTO `song_tag` VALUES (268, 56, 35);
INSERT INTO `song_tag` VALUES (269, 57, 19);
INSERT INTO `song_tag` VALUES (270, 57, 40);
INSERT INTO `song_tag` VALUES (271, 58, 18);
INSERT INTO `song_tag` VALUES (272, 58, 19);
INSERT INTO `song_tag` VALUES (273, 58, 40);
INSERT INTO `song_tag` VALUES (274, 59, 1);
INSERT INTO `song_tag` VALUES (292, 115, 1);
INSERT INTO `song_tag` VALUES (293, 115, 2);
INSERT INTO `song_tag` VALUES (294, 116, 1);
INSERT INTO `song_tag` VALUES (305, 1, 1);
INSERT INTO `song_tag` VALUES (306, 1, 7);
INSERT INTO `song_tag` VALUES (307, 1, 18);
INSERT INTO `song_tag` VALUES (308, 1, 22);
INSERT INTO `song_tag` VALUES (309, 1, 41);

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `tagid` int NOT NULL AUTO_INCREMENT,
  `style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tagid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (1, '流行', '风格');
INSERT INTO `tag` VALUES (2, '摇滚', '风格');
INSERT INTO `tag` VALUES (3, '爵士', '风格');
INSERT INTO `tag` VALUES (4, '古典', '风格');
INSERT INTO `tag` VALUES (5, '电子', '风格');
INSERT INTO `tag` VALUES (6, '嘻哈', '风格');
INSERT INTO `tag` VALUES (7, '华语', '语种');
INSERT INTO `tag` VALUES (8, '欧美', '语种');
INSERT INTO `tag` VALUES (9, '日系', '语种');
INSERT INTO `tag` VALUES (10, '韩系', '语种');
INSERT INTO `tag` VALUES (11, '法语', '语种');
INSERT INTO `tag` VALUES (12, '学习', '场景');
INSERT INTO `tag` VALUES (13, '运动', '场景');
INSERT INTO `tag` VALUES (14, '睡眠', '场景');
INSERT INTO `tag` VALUES (15, '驾车', '场景');
INSERT INTO `tag` VALUES (16, '聚会', '场景');
INSERT INTO `tag` VALUES (17, '说唱', '风格');
INSERT INTO `tag` VALUES (18, '青春', '主题');
INSERT INTO `tag` VALUES (19, '爱情', '主题');
INSERT INTO `tag` VALUES (20, '戏腔', '风格');
INSERT INTO `tag` VALUES (21, '二次元', '风格');
INSERT INTO `tag` VALUES (22, '网络歌曲', '风格');
INSERT INTO `tag` VALUES (23, '悲伤', '心情');
INSERT INTO `tag` VALUES (24, '国风', '风格');
INSERT INTO `tag` VALUES (25, '慢节奏', '节奏');
INSERT INTO `tag` VALUES (26, '快节奏', '节奏');
INSERT INTO `tag` VALUES (27, '生活', '主题');
INSERT INTO `tag` VALUES (28, '民谣', '风格');
INSERT INTO `tag` VALUES (29, '70年代', '时代');
INSERT INTO `tag` VALUES (30, '80年代', '时代');
INSERT INTO `tag` VALUES (31, '90年代', '时代');
INSERT INTO `tag` VALUES (32, '00年代', '时代');
INSERT INTO `tag` VALUES (33, '友情', '主题');
INSERT INTO `tag` VALUES (34, '动漫', '主题');
INSERT INTO `tag` VALUES (35, '小说', '主题');
INSERT INTO `tag` VALUES (36, '游戏', '主题');
INSERT INTO `tag` VALUES (38, '粤语', '语种');
INSERT INTO `tag` VALUES (39, '怀旧', '情感');
INSERT INTO `tag` VALUES (40, '欢快', '情感');
INSERT INTO `tag` VALUES (41, '治愈', '情感');
INSERT INTO `tag` VALUES (42, '校园', '主题');
INSERT INTO `tag` VALUES (44, '儿童', '主题');
INSERT INTO `tag` VALUES (45, '地铁', '场景');
INSERT INTO `tag` VALUES (46, '乡村', '风格');
INSERT INTO `tag` VALUES (47, '感动', '心情');
INSERT INTO `tag` VALUES (48, '思念', '心情');
INSERT INTO `tag` VALUES (49, '旅行', '场景');
INSERT INTO `tag` VALUES (50, '夜晚', '场景');
INSERT INTO `tag` VALUES (51, '钢琴', '主题');
INSERT INTO `tag` VALUES (53, 'KTV', '主题');
INSERT INTO `tag` VALUES (54, '电视剧OST', '主题');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birthdate` date NULL DEFAULT NULL,
  `follow_artists` int NULL DEFAULT 0 COMMENT '关注歌手数量',
  `follower` int NULL DEFAULT 0 COMMENT '关注者数量',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_vip` tinyint(1) NULL DEFAULT NULL COMMENT '是否VIP用户，0为否，1为是',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'http://p1.music.126.net/SUeqMM8HOIpHv9Nhl9qt9w==/109951165647004069.jpg?param=180y180',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `grade` int NULL DEFAULT 0 COMMENT '用户等级',
  `register_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '沈于欣', '11111', '12345678910', '2000-08-08', 4, 9, '浙江杭州', 1, 'http://p1.music.126.net/SUeqMM8HOIpHv9Nhl9qt9w==/109951165647004069.jpg?param=180y180', '2024-08-11 09:49:29', '2024-08-11 09:49:29', 3, NULL);
INSERT INTO `user` VALUES (2, 'bbb', '222222', '13522222222', '2005-09-06', 5, 1, '浙江杭州', 0, 'http://p1.music.126.net/SUeqMM8HOIpHv9Nhl9qt9w==/109951165647004069.jpg?param=180y180', '2024-08-11 09:49:29', '2024-08-11 09:49:29', 2, NULL);
INSERT INTO `user` VALUES (16, 'ccc', '33333', NULL, NULL, NULL, 0, NULL, NULL, 'http://p1.music.126.net/SUeqMM8HOIpHv9Nhl9qt9w==/109951165647004069.jpg?param=180y180', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (17, '123', '1234214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (24, 'dddd', '12355445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (25, 'syx', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (27, '135', '1457325', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userid` int NOT NULL AUTO_INCREMENT,
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isvip` bit(1) NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birthdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_vip` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- View structure for s_ar
-- ----------------------------
DROP VIEW IF EXISTS `s_ar`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `s_ar` AS select `sa`.`songid` AS `songid`,`sa`.`songname` AS `songname`,`sa`.`artistid` AS `artistid`,`sa`.`albumid` AS `albumid`,`sa`.`gmt_create` AS `gmt_create`,`sa`.`gmt_modified` AS `gmt_modified`,`sa`.`tags` AS `tags`,`sa`.`is_original` AS `is_original`,`sa`.`is_original_singer` AS `is_original_singer`,`sa`.`three_days_views` AS `three_days_views`,`sa`.`listen_times` AS `listen_times`,`sa`.`like_num` AS `like_num` from `sa` order by rand() limit 2;

-- ----------------------------
-- View structure for sa
-- ----------------------------
DROP VIEW IF EXISTS `sa`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `sa` AS select `song`.`songid` AS `songid`,`song`.`songname` AS `songname`,`song`.`artistid` AS `artistid`,`song`.`albumid` AS `albumid`,`song`.`gmt_create` AS `gmt_create`,`song`.`gmt_modified` AS `gmt_modified`,`song`.`tags` AS `tags`,`song`.`is_original` AS `is_original`,`song`.`is_original_singer` AS `is_original_singer`,`song`.`three_days_views` AS `three_days_views`,`song`.`listen_times` AS `listen_times`,`song`.`like_num` AS `like_num` from `song` order by `song`.`listen_times` desc limit 5;

SET FOREIGN_KEY_CHECKS = 1;
