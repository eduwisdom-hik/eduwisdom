/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : eduwisdom

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-09-11 09:04:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for flag
-- ----------------------------
DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag` (
  `id` decimal(19,0) NOT NULL,
  `user_item_flag` decimal(2,0) NOT NULL COMMENT '0 represent 基于用户推荐 1 represent 基于项目推荐',
  `gmt_create` datetime NOT NULL,
  `create_person_id` decimal(19,0) NOT NULL,
  `gmt_modify` datetime DEFAULT NULL,
  `modify_person_id` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flag
-- ----------------------------
INSERT INTO `flag` VALUES ('1', '0', '2017-08-31 14:31:35', '3791532340293158890', null, null);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` decimal(19,0) NOT NULL,
  `log_type` varchar(40) NOT NULL,
  `log_content` varchar(200) NOT NULL,
  `user_id` decimal(19,0) NOT NULL,
  `user_date` datetime NOT NULL,
  `user_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('903076291744501760', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158891', '2017-08-31 10:05:40', '10.70.1.123');
INSERT INTO `log` VALUES ('903076320689393664', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 10:05:47', '10.70.1.123');
INSERT INTO `log` VALUES ('903076461538316288', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 10:06:21', '10.70.1.123');
INSERT INTO `log` VALUES ('903076482547585024', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158891', '2017-08-31 10:06:26', '10.70.1.123');
INSERT INTO `log` VALUES ('903078906452643840', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-08-31 10:16:04', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903079232941461504', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158891', '2017-08-31 10:17:22', '10.70.1.123');
INSERT INTO `log` VALUES ('903080280942841856', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 10:21:32', '10.70.1.123');
INSERT INTO `log` VALUES ('903080801653100544', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 10:23:36', '10.70.1.123');
INSERT INTO `log` VALUES ('903080822897250304', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 10:23:41', '10.70.1.123');
INSERT INTO `log` VALUES ('903080929029918720', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 10:24:06', '10.70.1.102');
INSERT INTO `log` VALUES ('903081997575000064', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-08-31 10:28:21', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903085706711273472', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 10:43:05', '10.70.1.123');
INSERT INTO `log` VALUES ('903085782472986624', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 10:43:23', '10.70.1.123');
INSERT INTO `log` VALUES ('903086256949432320', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 10:45:16', '10.70.1.123');
INSERT INTO `log` VALUES ('903086281452556288', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 10:45:22', '10.70.1.123');
INSERT INTO `log` VALUES ('903087530457567232', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158890', '2017-08-31 10:50:20', '10.70.12.134');
INSERT INTO `log` VALUES ('903089712061878272', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 10:59:00', '10.70.1.102');
INSERT INTO `log` VALUES ('903089744404156416', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158812', '2017-08-31 10:59:08', '10.70.1.102');
INSERT INTO `log` VALUES ('903093004234002432', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 11:12:05', '10.70.1.123');
INSERT INTO `log` VALUES ('903093016078716928', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 11:12:08', '10.70.1.123');
INSERT INTO `log` VALUES ('903093473438208000', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 11:13:57', '10.70.1.123');
INSERT INTO `log` VALUES ('903093494200012800', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 11:14:02', '10.70.1.123');
INSERT INTO `log` VALUES ('903093534029123584', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 11:14:11', '10.70.1.123');
INSERT INTO `log` VALUES ('903093547291512832', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-08-31 11:14:14', '10.70.1.123');
INSERT INTO `log` VALUES ('903094037899251712', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158812', '2017-08-31 11:16:11', '10.70.1.102');
INSERT INTO `log` VALUES ('903094065648766976', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158891', '2017-08-31 11:16:18', '10.70.1.102');
INSERT INTO `log` VALUES ('903096010430091264', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-08-31 11:24:02', '10.70.1.123');
INSERT INTO `log` VALUES ('903096021524025344', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 11:24:04', '10.70.1.123');
INSERT INTO `log` VALUES ('903096396301864960', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 11:25:34', '10.70.1.123');
INSERT INTO `log` VALUES ('903096418850443264', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158897', '2017-08-31 11:25:39', '10.70.1.123');
INSERT INTO `log` VALUES ('903097882628984832', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158891', '2017-08-31 11:31:28', '10.70.1.102');
INSERT INTO `log` VALUES ('903098044873052160', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 11:32:07', '10.70.1.102');
INSERT INTO `log` VALUES ('903098694772068352', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158899', '2017-08-31 11:34:42', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903099879792971776', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158897', '2017-08-31 11:39:24', '10.70.1.123');
INSERT INTO `log` VALUES ('903099894900854784', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 11:39:28', '10.70.1.123');
INSERT INTO `log` VALUES ('903100243128750080', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-08-31 11:40:51', '10.70.1.123');
INSERT INTO `log` VALUES ('903100283020775424', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 11:41:00', '10.70.1.123');
INSERT INTO `log` VALUES ('903101101883133952', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 11:44:16', '10.70.1.102');
INSERT INTO `log` VALUES ('903101136561639424', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158812', '2017-08-31 11:44:24', '10.70.1.102');
INSERT INTO `log` VALUES ('903102771631362048', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158812', '2017-08-31 11:50:54', '10.70.1.102');
INSERT INTO `log` VALUES ('903102801352200192', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158891', '2017-08-31 11:51:01', '10.70.1.102');
INSERT INTO `log` VALUES ('903103602195828736', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 11:54:12', '127.0.0.1');
INSERT INTO `log` VALUES ('903103802704531456', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 11:55:00', '127.0.0.1');
INSERT INTO `log` VALUES ('903103833285201920', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 11:55:07', '127.0.0.1');
INSERT INTO `log` VALUES ('903103919817887744', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158891', '2017-08-31 11:55:28', '10.70.1.102');
INSERT INTO `log` VALUES ('903105155640201216', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 12:00:22', '127.0.0.1');
INSERT INTO `log` VALUES ('903105637058220032', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 12:02:17', '127.0.0.1');
INSERT INTO `log` VALUES ('903105659338362880', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 12:02:22', '127.0.0.1');
INSERT INTO `log` VALUES ('903105884853506048', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 12:03:16', '127.0.0.1');
INSERT INTO `log` VALUES ('903105905816637440', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-08-31 12:03:21', '127.0.0.1');
INSERT INTO `log` VALUES ('903105963496706048', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-08-31 12:03:35', '127.0.0.1');
INSERT INTO `log` VALUES ('903105976880730112', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 12:03:38', '127.0.0.1');
INSERT INTO `log` VALUES ('903107254209875968', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 12:08:42', '127.0.0.1');
INSERT INTO `log` VALUES ('903130530822885376', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158810', '2017-08-31 13:41:12', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903133757849079808', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-08-31 13:54:01', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903136847654424576', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 14:06:18', '10.70.1.102');
INSERT INTO `log` VALUES ('903137800310886400', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-08-31 14:10:05', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903138114405535744', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-08-31 14:11:20', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903138155337748480', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158899', '2017-08-31 14:11:30', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903138238292692992', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158899', '2017-08-31 14:11:50', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903138263320104960', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158810', '2017-08-31 14:11:56', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903139933873639424', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158810', '2017-08-31 14:18:34', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903139955851792384', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-08-31 14:18:39', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903141256467714048', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 14:23:49', '10.70.1.102');
INSERT INTO `log` VALUES ('903141316832137216', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 14:24:04', '10.70.1.102');
INSERT INTO `log` VALUES ('903141630779985920', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 14:25:18', '127.0.0.1');
INSERT INTO `log` VALUES ('903141814649884672', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 14:26:02', '10.70.1.102');
INSERT INTO `log` VALUES ('903142374681743360', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 14:28:16', '127.0.0.1');
INSERT INTO `log` VALUES ('903142632367198208', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-08-31 14:29:17', '10.70.1.105');
INSERT INTO `log` VALUES ('903142726772592640', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158895', '2017-08-31 14:29:40', '10.70.1.102');
INSERT INTO `log` VALUES ('903146339905441792', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-08-31 14:44:01', '127.0.0.1');
INSERT INTO `log` VALUES ('903146359970992128', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 14:44:06', '127.0.0.1');
INSERT INTO `log` VALUES ('903146456813277184', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-08-31 14:44:29', '127.0.0.1');
INSERT INTO `log` VALUES ('903146474056060928', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-08-31 14:44:33', '127.0.0.1');
INSERT INTO `log` VALUES ('903146527688626176', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-08-31 14:44:46', '127.0.0.1');
INSERT INTO `log` VALUES ('903146540330258432', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158897', '2017-08-31 14:44:49', '127.0.0.1');
INSERT INTO `log` VALUES ('903146584664051712', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158897', '2017-08-31 14:45:00', '127.0.0.1');
INSERT INTO `log` VALUES ('903146597376987136', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158898', '2017-08-31 14:45:03', '127.0.0.1');
INSERT INTO `log` VALUES ('903161781495664640', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-08-31 15:45:23', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903173310769139712', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158895', '2017-08-31 16:31:12', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903173673882619904', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158895', '2017-08-31 16:32:38', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903173702869454848', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 16:32:45', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903174568095649792', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-08-31 16:36:11', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903176712920109056', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 16:44:43', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903176758537359360', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158890', '2017-08-31 16:44:54', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903177842123214848', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158890', '2017-08-31 16:49:12', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903178603238395904', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-08-31 16:52:13', '10.70.1.105');
INSERT INTO `log` VALUES ('903178885720576000', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158894', '2017-08-31 16:53:21', '10.70.1.102');
INSERT INTO `log` VALUES ('903179090255810560', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '3791532340293158890', '2017-08-31 16:54:10', '10.70.7.181');
INSERT INTO `log` VALUES ('903179223450128384', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-08-31 16:54:41', '10.70.1.105');
INSERT INTO `log` VALUES ('903185188417310720', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158894', '2017-08-31 17:18:23', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903186711494922240', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-08-31 17:24:27', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903197804606918656', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158896', '2017-08-31 18:08:31', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903198371525824512', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158898', '2017-08-31 18:10:47', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903421101017796608', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-01 08:55:49', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903426635729080320', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-09-01 09:17:49', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903430195887869952', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158894', '2017-09-01 09:31:58', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903433087269081088', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158811', '2017-09-01 09:43:27', '10.70.1.102');
INSERT INTO `log` VALUES ('903435099767443456', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-09-01 09:51:27', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903437338066161664', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-09-01 10:00:21', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903438006990540800', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-09-01 10:03:00', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903448402170351616', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-01 10:44:18', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903448895659577344', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-01 10:46:16', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903451862391459840', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-09-01 10:58:03', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903453924638461952', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 MicroMessenger/6.5.2.501 NetType/WIFI WindowsWechat', '3791532340293158894', '2017-09-01 11:06:15', '10.70.12.134');
INSERT INTO `log` VALUES ('903456581683908608', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158895', '2017-09-01 11:16:49', '10.70.1.102');
INSERT INTO `log` VALUES ('903467058338074624', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 11:58:26', '127.0.0.1');
INSERT INTO `log` VALUES ('903467528884457472', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-09-01 12:00:19', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903502556012089344', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-01 14:19:30', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903506037913554944', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-01 14:33:20', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903506479947059200', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-01 14:35:05', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903516814347210752', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 15:16:09', '127.0.0.1');
INSERT INTO `log` VALUES ('903517449050263552', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-09-01 15:18:41', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903518372510175232', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 15:22:21', '127.0.0.1');
INSERT INTO `log` VALUES ('903518398997204992', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-09-01 15:22:27', '127.0.0.1');
INSERT INTO `log` VALUES ('903519717996761088', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-09-01 15:27:42', '127.0.0.1');
INSERT INTO `log` VALUES ('903519733796704256', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 15:27:45', '127.0.0.1');
INSERT INTO `log` VALUES ('903520142984613888', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 15:29:23', '127.0.0.1');
INSERT INTO `log` VALUES ('903520158981689344', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-09-01 15:29:27', '127.0.0.1');
INSERT INTO `log` VALUES ('903521185839583232', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158896', '2017-09-01 15:33:31', '127.0.0.1');
INSERT INTO `log` VALUES ('903521211928154112', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158897', '2017-09-01 15:33:38', '127.0.0.1');
INSERT INTO `log` VALUES ('903522219911680000', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '3791532340293158890', '2017-09-01 15:37:38', '127.0.0.1');
INSERT INTO `log` VALUES ('903530802091003904', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '3791532340293158890', '2017-09-01 16:11:44', '127.0.0.1');
INSERT INTO `log` VALUES ('903531688393576448', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158890', '2017-09-01 16:15:15', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('903532811204562944', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158897', '2017-09-01 16:19:43', '127.0.0.1');
INSERT INTO `log` VALUES ('903532825851072512', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158995', '2017-09-01 16:19:47', '127.0.0.1');
INSERT INTO `log` VALUES ('903532860546355200', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158995', '2017-09-01 16:19:55', '127.0.0.1');
INSERT INTO `log` VALUES ('903532879114539008', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158991', '2017-09-01 16:19:59', '127.0.0.1');
INSERT INTO `log` VALUES ('903532912761245696', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158991', '2017-09-01 16:20:07', '127.0.0.1');
INSERT INTO `log` VALUES ('903532935343378432', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158992', '2017-09-01 16:20:13', '127.0.0.1');
INSERT INTO `log` VALUES ('903532977571631104', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158992', '2017-09-01 16:20:23', '127.0.0.1');
INSERT INTO `log` VALUES ('903532995590361088', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158993', '2017-09-01 16:20:27', '127.0.0.1');
INSERT INTO `log` VALUES ('903533021402107904', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158993', '2017-09-01 16:20:33', '127.0.0.1');
INSERT INTO `log` VALUES ('903533038078660608', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158994', '2017-09-01 16:20:37', '127.0.0.1');
INSERT INTO `log` VALUES ('903536438639988736', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158995', '2017-09-01 16:34:08', '127.0.0.1');
INSERT INTO `log` VALUES ('903536837983866880', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158995', '2017-09-01 16:35:43', '127.0.0.1');
INSERT INTO `log` VALUES ('903536856929538048', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158991', '2017-09-01 16:35:48', '127.0.0.1');
INSERT INTO `log` VALUES ('903537672595836928', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158991', '2017-09-01 16:39:02', '127.0.0.1');
INSERT INTO `log` VALUES ('903537686957133824', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-09-01 16:39:06', '127.0.0.1');
INSERT INTO `log` VALUES ('903537974006910976', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-09-01 16:40:14', '127.0.0.1');
INSERT INTO `log` VALUES ('903538011021643776', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 16:40:23', '127.0.0.1');
INSERT INTO `log` VALUES ('903539584271519744', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158894', '2017-09-01 16:46:38', '127.0.0.1');
INSERT INTO `log` VALUES ('903539963038142464', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '3791532340293158894', '2017-09-01 16:48:08', '10.70.1.102');
INSERT INTO `log` VALUES ('903540329217658880', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-09-01 16:49:36', '10.70.1.105');
INSERT INTO `log` VALUES ('903541678030327808', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158895', '2017-09-01 16:54:57', '10.70.1.105');
INSERT INTO `log` VALUES ('903545367629533184', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-09-01 17:09:37', '127.0.0.1');
INSERT INTO `log` VALUES ('903545394754097152', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-09-01 17:09:43', '127.0.0.1');
INSERT INTO `log` VALUES ('903545414970642432', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 17:09:48', '127.0.0.1');
INSERT INTO `log` VALUES ('903545927699140608', '退出系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158895', '2017-09-01 17:11:50', '127.0.0.1');
INSERT INTO `log` VALUES ('903546010851217408', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-09-01 17:12:10', '127.0.0.1');
INSERT INTO `log` VALUES ('903546427450462208', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '3791532340293158890', '2017-09-01 17:13:50', '127.0.0.1');
INSERT INTO `log` VALUES ('904880049147219968', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.109 Safari/537.36', '3791532340293158890', '2017-09-05 09:33:10', '127.0.0.1');
INSERT INTO `log` VALUES ('905240303194214400', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-06 09:24:41', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('905990896296792064', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', '3791532340293158898', '2017-09-08 11:07:16', '0:0:0:0:0:0:0:1');
INSERT INTO `log` VALUES ('907045475088207872', '登录系统', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '3791532340293158895', '2017-09-11 08:57:48', '127.0.0.1');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` decimal(19,0) NOT NULL,
  `msg_content` text,
  `receive_user_id` decimal(19,0) NOT NULL,
  `send_user_id` decimal(19,0) NOT NULL,
  `send_time` datetime NOT NULL,
  `send_user_ip` varchar(15) NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL COMMENT '0-unread, 1-read',
  `read_time` datetime DEFAULT NULL,
  `read_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `is_read` (`is_read`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('903177737664073728', '平台公告', '3791532340293158810', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073729', '平台公告', '3791532340293158811', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073730', '平台公告', '3791532340293158812', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073731', '平台公告', '3791532340293158813', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073732', '平台公告', '3791532340293158890', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '1', '2017-08-31 16:48:57', '0:0:0:0:0:0:0:1');
INSERT INTO `message` VALUES ('903177737664073733', '平台公告', '3791532340293158891', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073734', '平台公告', '3791532340293158892', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073735', '平台公告', '3791532340293158893', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073736', '平台公告', '3791532340293158894', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '1', '2017-09-01 11:06:23', '10.70.12.134');
INSERT INTO `message` VALUES ('903177737664073737', '平台公告', '3791532340293158895', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '1', '2017-09-01 11:18:16', '10.70.1.102');
INSERT INTO `message` VALUES ('903177737664073738', '平台公告', '3791532340293158896', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073739', '平台公告', '3791532340293158897', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073740', '平台公告', '3791532340293158898', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);
INSERT INTO `message` VALUES ('903177737664073741', '平台公告', '3791532340293158899', '3791532340293158890', '2017-08-31 16:48:47', '0:0:0:0:0:0:0:1', '0', null, null);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` decimal(19,0) NOT NULL,
  `resource_name` varchar(40) NOT NULL,
  `resource_description` text,
  `role_type` tinyint(4) NOT NULL COMMENT 'resource表中：role_type字段1：表示普通用户 2：表示第三方机构 3：表示管理员',
  `resource_tag` varchar(200) DEFAULT NULL,
  `resource_type` tinyint(4) unsigned NOT NULL COMMENT '0-图片；1-文档；2-音频；3-视频',
  `resource_download_count` int(11) unsigned NOT NULL DEFAULT '0',
  `resource_browse_count` int(11) unsigned NOT NULL DEFAULT '0',
  `resource_server_path` varchar(200) NOT NULL,
  `user_id` decimal(19,0) NOT NULL,
  `verify_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0-正在审核，1-审核通过，2-审核不通过',
  `gmt_create` datetime NOT NULL,
  `gmt_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='resource表中：role_type字段1：表示普通用户 2：表示第三方机构 3：表示管理员';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('903081114854363136', 'AngularJS权威教程', 'AngularJS权威教程', '1', '编程', '1', '0', '4', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\AngularJS权威教程1504146290874.pdf', '3791532340293158894', '1', '2017-08-31 10:24:50', '2017-08-31 10:24:50');
INSERT INTO `resource` VALUES ('903081249101451264', 'Head First 设计模式', 'Head First 设计模式', '1', '编程', '1', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\Head First 设计模式1504146322881.pdf', '3791532340293158894', '1', '2017-08-31 10:25:22', '2017-08-31 10:25:22');
INSERT INTO `resource` VALUES ('903081742469042176', 'JavaScript权威指南(第6版)(中文版)', 'JavaScript权威指南(第6版)(中文版)', '1', '编程', '1', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\JavaScript权威指南(第6版)(中文版)1504146440509.pdf', '3791532340293158894', '1', '2017-08-31 10:27:20', '2017-08-31 10:27:20');
INSERT INTO `resource` VALUES ('903081918378151936', '多线程编程技术开发资料', '多线程编程技术开发资料', '1', '计算机', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\多线程编程技术开发资料1504146482449.pdf', '3791532340293158894', '1', '2017-08-31 10:28:02', '2017-08-31 10:28:02');
INSERT INTO `resource` VALUES ('903082038301691904', '跟张维迎学经济学', '跟张维迎学经济学', '1', '经济', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\跟张维迎学经济学1504146511041.pdf', '3791532340293158894', '1', '2017-08-31 10:28:31', '2017-08-31 10:28:31');
INSERT INTO `resource` VALUES ('903082459829243904', '智慧教育资源推荐平台设计', '清晰的描述了智慧教育的开发过程和实现原理', '1', '教育，智慧', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504146611541.docx', '3791532340293158898', '1', '2017-08-31 10:30:11', '2017-08-31 10:30:11');
INSERT INTO `resource` VALUES ('903082982821203968', '边上班边学英语', '边上班边学英语', '1', '英语', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\边上班边学英语1504146736232.mp3', '3791532340293158894', '1', '2017-08-31 10:32:16', '2017-08-31 10:32:16');
INSERT INTO `resource` VALUES ('903083055458160640', '高数', '高数', '1', '数学', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\高数1504146753550.mp3', '3791532340293158894', '1', '2017-08-31 10:32:33', '2017-08-31 10:32:33');
INSERT INTO `resource` VALUES ('903083115319267328', '篮球哲学', '篮球哲学', '1', '体育', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\篮球哲学1504146767822.mp3', '3791532340293158894', '1', '2017-08-31 10:32:47', '2017-08-31 10:32:47');
INSERT INTO `resource` VALUES ('903083209632387072', '人工智能', '人工智能', '1', '软件', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\人工智能1504146790308.mp3', '3791532340293158894', '1', '2017-08-31 10:33:10', '2017-08-31 10:33:10');
INSERT INTO `resource` VALUES ('903083217773531136', '百度echarts的使用实例和效果', '展示了百度echarts的使用效果包括柱状图，饼状图和折线图', '1', '软件开发，echarts', '0', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504146792249.png', '3791532340293158898', '1', '2017-08-31 10:33:12', '2017-08-31 10:33:12');
INSERT INTO `resource` VALUES ('903083246772948992', '职场英语写作技巧', null, '1', '英语，职场', '3', '1', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504146799163.txt', '3791532340293158811', '1', '2017-08-31 10:33:19', '2017-08-31 10:33:19');
INSERT INTO `resource` VALUES ('903083320173268992', '投篮姿势揭秘', '投篮姿势揭秘', '1', '体育', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\投篮姿势揭秘1504146816663.mp3', '3791532340293158894', '1', '2017-08-31 10:33:36', '2017-08-31 10:33:36');
INSERT INTO `resource` VALUES ('903083553993134080', '职场英语入门', null, '1', '英语，职场', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504146872410.txt', '3791532340293158811', '1', '2017-08-31 10:34:32', '2017-08-31 10:34:32');
INSERT INTO `resource` VALUES ('903083855169327104', '软件开发的流程和技巧', '讲述软件开发的过程', '1', '软件开发，其他', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504146944216.pptx', '3791532340293158898', '1', '2017-08-31 10:35:44', '2017-08-31 10:35:44');
INSERT INTO `resource` VALUES ('903083864400990208', '职场面试口语教你说', null, '1', '英语，面试，职场', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504146946417.txt', '3791532340293158811', '1', '2017-08-31 10:35:46', '2017-08-31 10:35:46');
INSERT INTO `resource` VALUES ('903083976212746240', '动物世界', '动物世界', '1', '科学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\动物世界1504146973075.mp4', '3791532340293158894', '1', '2017-08-31 10:36:13', '2017-08-31 10:36:13');
INSERT INTO `resource` VALUES ('903084071125651456', '动物世界', '动物世界', '1', '科学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\动物世界1504146995704.mp4', '3791532340293158894', '1', '2017-08-31 10:36:35', '2017-08-31 10:36:35');
INSERT INTO `resource` VALUES ('903084203380445184', '老梁看电影', '老梁看电影', '1', '文学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\老梁看电影1504147027236.mp4', '3791532340293158894', '1', '2017-08-31 10:37:07', '2017-08-31 10:37:07');
INSERT INTO `resource` VALUES ('903084295969705984', '十一月肖邦', '十一月肖邦', '1', '文学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\十一月肖邦1504147049311.mp4', '3791532340293158894', '1', '2017-08-31 10:37:29', '2017-08-31 10:37:29');
INSERT INTO `resource` VALUES ('903084439595257856', '高考英语听力汇总', '集合了近几年开高考听力', '1', '高考，英语', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504147083554.png', '3791532340293158898', '1', '2017-08-31 10:38:03', '2017-08-31 10:38:03');
INSERT INTO `resource` VALUES ('903084703433756672', '英语语法速成班', null, '1', '英语，语法', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147146457.txt', '3791532340293158811', '1', '2017-08-31 10:39:06', '2017-08-31 10:39:06');
INSERT INTO `resource` VALUES ('903084763009650688', '易中天品三国', '易中天品三国', '1', '文学', '3', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\易中天品三国1504147160662.mp4', '3791532340293158894', '1', '2017-08-31 10:39:20', '2017-08-31 10:39:20');
INSERT INTO `resource` VALUES ('903085169806807040', '英语简历速成', null, '1', '英语，简历，职场', '3', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147257650.txt', '3791532340293158811', '1', '2017-08-31 10:40:57', '2017-08-31 10:40:57');
INSERT INTO `resource` VALUES ('903085393858138112', '人工智能的发展现状和未来趋势', '全面讲述了人工智能的发展过程和趋势', '1', '新技术，人工智能', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\OA使用操作指南--计划总结沟通反馈流程1504147311068.docx', '3791532340293158898', '1', '2017-08-31 10:41:51', '2017-08-31 10:41:51');
INSERT INTO `resource` VALUES ('903085411952365568', '吉他入门', '吉他入门', '1', '音乐', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\吉他入门1504147315382.jpg', '3791532340293158894', '1', '2017-08-31 10:41:55', '2017-08-31 10:41:55');
INSERT INTO `resource` VALUES ('903085467510116352', '聆听音乐', '聆听音乐', '1', '音乐', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\聆听音乐1504147328628.jpg', '3791532340293158894', '1', '2017-08-31 10:42:08', '2017-08-31 10:42:08');
INSERT INTO `resource` VALUES ('903085548346937344', '数学之美', '数学之美', '1', '数学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\数学之美1504147347901.jpg', '3791532340293158894', '1', '2017-08-31 10:42:27', '2017-08-31 10:42:27');
INSERT INTO `resource` VALUES ('903085617209020416', '这才是最好的数学', '这才是最好的数学', '1', '数学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\这才是最好的数学1504147364319.jpg', '3791532340293158894', '1', '2017-08-31 10:42:44', '2017-08-31 10:42:44');
INSERT INTO `resource` VALUES ('903085673890844672', '走进其妙的数学世界', '走进其妙的数学世界', '1', '数学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\走进其妙的数学世界1504147377833.jpg', '3791532340293158894', '1', '2017-08-31 10:42:57', '2017-08-31 10:42:57');
INSERT INTO `resource` VALUES ('903085791553654784', 'SVN的使用手册', '讲述了SVN的操作和使用方法', '1', '工具', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\SVN 用户操作手册1504147405886.doc', '3791532340293158898', '1', '2017-08-31 10:43:25', '2017-08-31 10:43:25');
INSERT INTO `resource` VALUES ('903085931429498880', '经典MVC设计模式图', null, '1', '编程，MVC', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147439234.txt', '3791532340293158811', '1', '2017-08-31 10:43:59', '2017-08-31 10:43:59');
INSERT INTO `resource` VALUES ('903086432275533824', '计算机网络结构', null, '1', '计算机网络', '0', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147558646.txt', '3791532340293158811', '1', '2017-08-31 10:45:58', '2017-08-31 10:45:58');
INSERT INTO `resource` VALUES ('903086514823630848', '双曲线解题技巧和经典习题讲解', '细致讲解了双曲线的解题方法', '1', '高中课程，数学', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新员工入职手续汇总报表（研究院）_201707011504147578327.xls', '3791532340293158898', '1', '2017-08-31 10:46:18', '2017-08-31 10:46:18');
INSERT INTO `resource` VALUES ('903086580057640960', '物联网架构', null, '1', '物联网', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147593880.txt', '3791532340293158811', '1', '2017-08-31 10:46:33', '2017-08-31 10:46:33');
INSERT INTO `resource` VALUES ('903086885855956992', 'JAVA学习整体框架和指南', '描述了java的知识体系和学习过程', '1', '软件开发，JAVA', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504147666788.png', '3791532340293158898', '1', '2017-08-31 10:47:46', '2017-08-31 10:47:46');
INSERT INTO `resource` VALUES ('903087119076036608', 'SSM开发框架', null, '1', 'SSH，web开发', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147722392.txt', '3791532340293158811', '1', '2017-08-31 10:48:42', '2017-08-31 10:48:42');
INSERT INTO `resource` VALUES ('903087318313865216', '大学英语六级听力201706', null, '1', '英语六级', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147769894.txt', '3791532340293158811', '1', '2017-08-31 10:49:29', '2017-08-31 10:49:29');
INSERT INTO `resource` VALUES ('903087365269098496', '图解GIS在智慧城市建设和开发过程中的作用', '讲述了GIS在智慧城市建设中的用处', '1', '软件开发，GIS', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504147781089.png', '3791532340293158898', '1', '2017-08-31 10:49:41', '2017-08-31 10:49:41');
INSERT INTO `resource` VALUES ('903087463046713344', '大学英语六级听力201612', null, '1', '英语六级，听力', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504147804401.txt', '3791532340293158811', '1', '2017-08-31 10:50:04', '2017-08-31 10:50:04');
INSERT INTO `resource` VALUES ('903088130847019008', '小程序开发工具全新上线', '为提升小程序开发体验，帮助开发者更高效地开发小程序代码，微信开发者工具全新改版，现面向所有开发者开放。', '1', '软件开发，小程序', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504147963617.docx', '3791532340293158898', '1', '2017-08-31 10:52:43', '2017-08-31 10:52:43');
INSERT INTO `resource` VALUES ('903088500377784320', 'Django编写RESTful API（四）：认证和权限', '按照前面几篇文章里那样做，使用Django编写RESTful API的基本功能已经像模像样了。我们可以通过不同的URL访问到不同的资源，通过不同的HTTP请求来实现对资源的不同操作。', '1', '软件开发，Django', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504148051720.docx', '3791532340293158898', '1', '2017-08-31 10:54:11', '2017-08-31 10:54:11');
INSERT INTO `resource` VALUES ('903088577313902592', '大学英语六级听力201606', null, '1', '英语六级，听力', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148070063.txt', '3791532340293158811', '1', '2017-08-31 10:54:30', '2017-08-31 10:54:30');
INSERT INTO `resource` VALUES ('903088937495564288', '大学英语六级听力201512', null, '1', '英语六级，听力', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148155937.txt', '3791532340293158811', '1', '2017-08-31 10:55:55', '2017-08-31 10:55:55');
INSERT INTO `resource` VALUES ('903088975227523072', '缓存一致性和跨服务器查询的数据异构解决方案canal', '你的项目数据量上去了之后，通常会遇到两种情况，第一种情况应是最大可能的使用cache来对抗上层的高并发，第二种情况同样也是需要使用\r\n分表对抗上层的高并发。。。逼逼逼起来容易，做起来并不那么乐观，由此引入的问题，不见得你有好的解决方案，下面就具体分享下。\r\n\r\n ', '1', '软件开发，高并发', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504148164933.png', '3791532340293158898', '1', '2017-08-31 10:56:04', '2017-08-31 10:56:04');
INSERT INTO `resource` VALUES ('903089140927696896', '英语六级词汇表', null, '1', '词汇，六级', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148204439.txt', '3791532340293158811', '1', '2017-08-31 10:56:44', '2017-08-31 10:56:44');
INSERT INTO `resource` VALUES ('903089260515692544', '英语四级词汇表', null, '1', '词汇，英语四级', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148232951.txt', '3791532340293158811', '1', '2017-08-31 10:57:12', '2017-08-31 10:57:12');
INSERT INTO `resource` VALUES ('903089368795844608', '雅思英语词汇', null, '1', '词汇，雅思', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148258767.txt', '3791532340293158811', '1', '2017-08-31 10:57:38', '2017-08-31 10:57:38');
INSERT INTO `resource` VALUES ('903089589940523008', '白鹿原', '白鹿原', '1', '文学', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\白鹿原1504148311492.pdf', '3791532340293158895', '1', '2017-08-31 10:58:31', '2017-08-31 10:58:31');
INSERT INTO `resource` VALUES ('903089638133075968', 'springmvc拦截器', null, '1', 'springmvc，拦截器', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148322982.txt', '3791532340293158811', '1', '2017-08-31 10:58:42', '2017-08-31 10:58:42');
INSERT INTO `resource` VALUES ('903089654402781184', '呼啸山庄', '呼啸山庄', '1', '文学', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\呼啸山庄1504148326861.pdf', '3791532340293158895', '1', '2017-08-31 10:58:46', '2017-08-31 10:58:46');
INSERT INTO `resource` VALUES ('903089701039247360', '活着', '活着', '1', '文学', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\活着1504148337980.pdf', '3791532340293158895', '1', '2017-08-31 10:58:57', '2017-08-31 10:58:57');
INSERT INTO `resource` VALUES ('903089702180098048', ' TOEFL高中直通车冲分班', '帮助初中学生升入美、加优秀高中，并帮助高中生转学至美、加优秀高中，接受优质教育。该班授课系统全面的学员讲解TOEFL考试需要的基础知识以及答题技巧，专门为去美国读高中的学生设计。', '1', 'TOEFL', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504148338252.png', '3791532340293158898', '1', '2017-08-31 10:58:58', '2017-08-31 10:58:58');
INSERT INTO `resource` VALUES ('903089755925909504', '平凡的世界', '平凡的世界', '1', '文学', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\平凡的世界1504148351066.pdf', '3791532340293158895', '1', '2017-08-31 10:59:11', '2017-08-31 10:59:11');
INSERT INTO `resource` VALUES ('903089814553890816', '围城', '围城', '1', '文学', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\围城1504148365044.pdf', '3791532340293158895', '1', '2017-08-31 10:59:25', '2017-08-31 10:59:25');
INSERT INTO `resource` VALUES ('903090181349969920', '出国英语口语速成', null, '1', '口语，出国', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148452495.txt', '3791532340293158812', '1', '2017-08-31 11:00:52', '2017-08-31 11:00:52');
INSERT INTO `resource` VALUES ('903090303207084032', '四级无忧计划', '1、提供全程个性化、一站式四级英语复习辅导方案。\r\n2、全程配备学习顾问对学员进行复习规划指导。\r\n3、服务内容包括：全年规划、精细学习计划、学习资料、精品课程、阶段测评、跟踪答', '1', '四六级，四级', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504148481548.docx', '3791532340293158898', '1', '2017-08-31 11:01:21', '2017-08-31 11:01:21');
INSERT INTO `resource` VALUES ('903090431556980736', '范特西', '范特西', '1', '音乐', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\范特西1504148512148.mp3', '3791532340293158895', '1', '2017-08-31 11:01:52', '2017-08-31 11:01:52');
INSERT INTO `resource` VALUES ('903090473915256832', '魔杰座', '魔杰座', '1', '音乐', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\魔杰座1504148522248.mp3', '3791532340293158895', '1', '2017-08-31 11:02:02', '2017-08-31 11:02:02');
INSERT INTO `resource` VALUES ('903090505057964032', '初中知识体系图解', '直观详细的图解中学的知识体系', '1', '初中', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504148529673.png', '3791532340293158898', '1', '2017-08-31 11:02:09', '2017-08-31 11:02:09');
INSERT INTO `resource` VALUES ('903090521432526848', '七里香', '七里香', '1', '音乐', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\七里香1504148533577.mp3', '3791532340293158895', '1', '2017-08-31 11:02:13', '2017-08-31 11:02:13');
INSERT INTO `resource` VALUES ('903090567544705024', '我很忙', '我很忙', '1', '音乐', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\我很忙1504148544571.mp3', '3791532340293158895', '1', '2017-08-31 11:02:24', '2017-08-31 11:02:24');
INSERT INTO `resource` VALUES ('903090617578557440', '依然范特西', '依然范特西', '1', '音乐', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\依然范特西1504148556500.mp3', '3791532340293158895', '1', '2017-08-31 11:02:36', '2017-08-31 11:02:36');
INSERT INTO `resource` VALUES ('903090811208601600', '英语语法大全', null, '1', '语法', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148602665.txt', '3791532340293158812', '1', '2017-08-31 11:03:22', '2017-08-31 11:03:22');
INSERT INTO `resource` VALUES ('903091018138783744', 'IT英语常用（专业）术语', null, '1', 'IT英语', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148652001.txt', '3791532340293158812', '1', '2017-08-31 11:04:12', '2017-08-31 11:04:12');
INSERT INTO `resource` VALUES ('903091209935917056', '日常生活英语单词大全', null, '1', '生活英语', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148697729.txt', '3791532340293158812', '1', '2017-08-31 11:04:57', '2017-08-31 11:04:57');
INSERT INTO `resource` VALUES ('903091570608312320', '英语口语之职场电话', null, '1', '职场英语', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148783720.txt', '3791532340293158812', '1', '2017-08-31 11:06:23', '2017-08-31 11:06:23');
INSERT INTO `resource` VALUES ('903091663105298432', '【词汇语法写作全能升级】 初中·新概念精学精练班 1+2+3册 ', '品质录播课+智能在线测试+QQ学习群助教辅助练习，新东方一线新概念名师带你突破听说读写困境，扎实提升。', '1', '英语，听力', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504148805773.pptx', '3791532340293158898', '1', '2017-08-31 11:06:45', '2017-08-31 11:06:45');
INSERT INTO `resource` VALUES ('903091816792985600', '职场沟通英语教学', null, '1', '职场英语', '3', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148842415.txt', '3791532340293158812', '1', '2017-08-31 11:07:22', '2017-08-31 11:07:22');
INSERT INTO `resource` VALUES ('903092001770180608', 'canvas粒子系统的构建', '本文将从最基本的imageData对象的理论知识说开去，详细介绍canvas粒子系统的构建', '1', '软件开发，机器学习', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504148886517.png', '3791532340293158898', '1', '2017-08-31 11:08:06', '2017-08-31 11:08:06');
INSERT INTO `resource` VALUES ('903092140710694912', 'Linux安装教程', null, '1', 'Linux', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148919643.txt', '3791532340293158812', '1', '2017-08-31 11:08:39', '2017-08-31 11:08:39');
INSERT INTO `resource` VALUES ('903092227251769344', 'Java并发包中CopyOnWrite容器相关类简介', '本文是主要介绍，并发容器CopyOnWriteArrayList和CopyOnWriteArraySet（不含重复元素的并发容器）的基本原理和使用示例。', '1', '软件开发，高并发', '1', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504148940276.docx', '3791532340293158898', '1', '2017-08-31 11:09:00', '2017-08-31 11:09:00');
INSERT INTO `resource` VALUES ('903092366053871616', 'J.T.S-哥哥坏', 'J.T.S-哥哥坏', '1', '音乐', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\J.T.S-哥哥坏1504148973369.mp4', '3791532340293158895', '1', '2017-08-31 11:09:33', '2017-08-31 11:09:33');
INSERT INTO `resource` VALUES ('903092418436534272', 'SBS群星-拉着手', 'SBS群星-拉着手', '1', '音乐', '3', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\SBS群星-拉着手1504148985858.mp4', '3791532340293158895', '1', '2017-08-31 11:09:45', '2017-08-31 11:09:45');
INSERT INTO `resource` VALUES ('903092461084217344', 'JDK环境变量配置', null, '1', 'JDK配置', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504148996026.txt', '3791532340293158812', '1', '2017-08-31 11:09:56', '2017-08-31 11:09:56');
INSERT INTO `resource` VALUES ('903092548711616512', '刘心武谈红学(上) ', '刘心武谈红学(上) ', '1', '文学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\刘心武谈红学(上) 1504149016917.mp4', '3791532340293158895', '1', '2017-08-31 11:10:16', '2017-08-31 11:10:16');
INSERT INTO `resource` VALUES ('903092619951869952', '刘心武谈红学(下) ', '刘心武谈红学(下) ', '1', '文学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\刘心武谈红学(下) 1504149033903.mp4', '3791532340293158895', '1', '2017-08-31 11:10:33', '2017-08-31 11:10:33');
INSERT INTO `resource` VALUES ('903092670182854656', '钢琴的基本练法', '钢琴的基本练法', '1', '音乐', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\钢琴的基本练法1504149045879.jpg', '3791532340293158895', '1', '2017-08-31 11:10:45', '2017-08-31 11:10:45');
INSERT INTO `resource` VALUES ('903092703867310080', 'Tomcat安装配置', null, '1', 'Tomcat', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149053910.txt', '3791532340293158812', '1', '2017-08-31 11:10:53', '2017-08-31 11:10:53');
INSERT INTO `resource` VALUES ('903092755583078400', '解释性研究', '解释性研究', '1', '科学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\解释性研究1504149066240.jpg', '3791532340293158895', '1', '2017-08-31 11:11:06', '2017-08-31 11:11:06');
INSERT INTO `resource` VALUES ('903092762000363520', '这可能是新手最容易入门的JVM讲解（不过是一场恋爱）', '首先，本篇文章并没有涉及原理，而是在笔者撸了《深入理解Java虚拟机》好几遍的基础上讲解自己的经验，从一个新手到现在明白JVM是个什么玩意，怎么去理解和明白，讲解这样一个经验而已。这篇文章并对JVM并没有挖掘得很深，在下目前也没有这个能力（笔者目前只是一个正在找工作的大四狗罢了），只是尽量以通熟易懂的方式，让读者理解JVM是个什么玩意。下面开始我的讲解。', '1', '软件开发，JAVA开发', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504149067770.docx', '3791532340293158898', '1', '2017-08-31 11:11:07', '2017-08-31 11:11:07');
INSERT INTO `resource` VALUES ('903092829407023104', '描述性研究', '描述性研究', '1', '科学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\描述性研究1504149083841.jpg', '3791532340293158895', '1', '2017-08-31 11:11:23', '2017-08-31 11:11:23');
INSERT INTO `resource` VALUES ('903092857773101056', 'eclipse使用教程', null, '1', 'eclipse', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149090604.txt', '3791532340293158812', '1', '2017-08-31 11:11:30', '2017-08-31 11:11:30');
INSERT INTO `resource` VALUES ('903092902182391808', '探索性研究', '探索性研究', '1', '科学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\探索性研究1504149101192.jpg', '3791532340293158895', '1', '2017-08-31 11:11:41', '2017-08-31 11:11:41');
INSERT INTO `resource` VALUES ('903092978388701184', '应用研究', '应用研究', '1', '科学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\应用研究1504149119361.jpg', '3791532340293158895', '1', '2017-08-31 11:11:59', '2017-08-31 11:11:59');
INSERT INTO `resource` VALUES ('903093094889689088', 'maven在eclipse中的配置', null, '1', 'maven，eclipse', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149147137.txt', '3791532340293158812', '1', '2017-08-31 11:12:27', '2017-08-31 11:12:27');
INSERT INTO `resource` VALUES ('903093416605388800', 'JavaScript跨域总结与解决办法', 'JavaScript出于安全方面的考虑，不允许跨域调用其他页面的对象。但在安全限制的同时也给注入iframe或是ajax应用上带来了不少麻烦。这里把涉及到跨域的一些问题简单地整理一下', '1', '软件开发，JavaScript', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504149223840.pptx', '3791532340293158898', '1', '2017-08-31 11:13:43', '2017-08-31 11:13:43');
INSERT INTO `resource` VALUES ('903093482753757184', '雅思英语听力500题', null, '1', '雅思，英语听力', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149239611.txt', '3791532340293158812', '1', '2017-08-31 11:13:59', '2017-08-31 11:13:59');
INSERT INTO `resource` VALUES ('903093707786555392', '英语听力基础训练100题', null, '1', '英语听力，基础', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149293263.txt', '3791532340293158812', '1', '2017-08-31 11:14:53', '2017-08-31 11:14:53');
INSERT INTO `resource` VALUES ('903093900439326720', '出国实用会话', null, '1', '出国英语，听力', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149339195.txt', '3791532340293158812', '1', '2017-08-31 11:15:39', '2017-08-31 11:15:39');
INSERT INTO `resource` VALUES ('903094222037585920', 'Java基础教程', null, '1', 'Java', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149415870.txt', '3791532340293158891', '1', '2017-08-31 11:16:55', '2017-08-31 11:16:55');
INSERT INTO `resource` VALUES ('903094338681180160', 'Java web基础教程', null, '1', 'Java web', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149443680.txt', '3791532340293158891', '1', '2017-08-31 11:17:23', '2017-08-31 11:17:23');
INSERT INTO `resource` VALUES ('903094739509841920', 'Java多线程开发', null, '1', 'Java，多线程', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149539245.txt', '3791532340293158891', '1', '2017-08-31 11:18:59', '2017-08-31 11:18:59');
INSERT INTO `resource` VALUES ('903094895508590592', '搏击健身操', '搏击健身操', '1', '体育', '0', '1', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\搏击健身操1504149576438.jpg', '3791532340293158896', '1', '2017-08-31 11:19:36', '2017-08-31 11:19:36');
INSERT INTO `resource` VALUES ('903094896716550144', 'Java多线程编程实战指南', null, '1', 'Java，多线程', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149576726.txt', '3791532340293158891', '1', '2017-08-31 11:19:36', '2017-08-31 11:19:36');
INSERT INTO `resource` VALUES ('903094974667689984', '曹志林围棋入门讲座', '曹志林围棋入门讲座', '1', '体育,科学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\曹志林围棋入门讲座1504149595311.jpg', '3791532340293158896', '1', '2017-08-31 11:19:55', '2017-08-31 11:19:55');
INSERT INTO `resource` VALUES ('903095023564886016', '李玲蔚羽毛球-实战技巧', '李玲蔚羽毛球-实战技巧', '1', '体育', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\李玲蔚羽毛球-实战技巧1504149606969.jpg', '3791532340293158896', '1', '2017-08-31 11:20:06', '2017-08-31 11:20:06');
INSERT INTO `resource` VALUES ('903095087972618240', '围棋入门', '围棋入门', '1', '体育,科学', '0', '1', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\围棋入门1504149622325.jpg', '3791532340293158896', '1', '2017-08-31 11:20:22', '2017-08-31 11:20:22');
INSERT INTO `resource` VALUES ('903095146562850816', '中国摔跤教程', '中国摔跤教程', '1', '体育', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\中国摔跤教程1504149636293.jpg', '3791532340293158896', '1', '2017-08-31 11:20:36', '2017-08-31 11:20:36');
INSERT INTO `resource` VALUES ('903095196974190592', '曹家浮沉之谜 ', '曹家浮沉之谜 ', '1', '文学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\曹家浮沉之谜 1504149648313.mp4', '3791532340293158896', '1', '2017-08-31 11:20:48', '2017-08-31 11:20:48');
INSERT INTO `resource` VALUES ('903095244336271360', '贾府婚配之谜 ', '贾府婚配之谜 ', '1', '文学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\贾府婚配之谜 1504149659605.mp4', '3791532340293158896', '1', '2017-08-31 11:20:59', '2017-08-31 11:20:59');
INSERT INTO `resource` VALUES ('903095290813353984', '秦可卿出身之谜 ', '秦可卿出身之谜 ', '1', '文学', '3', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\秦可卿出身之谜 1504149670686.mp4', '3791532340293158896', '1', '2017-08-31 11:21:10', '2017-08-31 11:21:10');
INSERT INTO `resource` VALUES ('903095347700699136', '五子棋初步', '五子棋初步', '1', '科学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\五子棋初步1504149684249.mp4', '3791532340293158896', '1', '2017-08-31 11:21:24', '2017-08-31 11:21:24');
INSERT INTO `resource` VALUES ('903095389568241664', '张卫平教你打篮球', '张卫平教你打篮球', '1', '体育', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\张卫平教你打篮球1504149694231.mp4', '3791532340293158896', '1', '2017-08-31 11:21:34', '2017-08-31 11:21:34');
INSERT INTO `resource` VALUES ('903095450498895872', '二十四式太极拳', '二十四式太极拳', '1', '体育', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\二十四式太极拳1504149708758.pdf', '3791532340293158896', '1', '2017-08-31 11:21:48', '2017-08-31 11:21:48');
INSERT INTO `resource` VALUES ('903095466055569408', '流利生活口语初级', null, '1', '口语', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149712467.txt', '3791532340293158891', '1', '2017-08-31 11:21:52', '2017-08-31 11:21:52');
INSERT INTO `resource` VALUES ('903095494492950528', '虎鹤双形拳', '虎鹤双形拳', '1', '体育', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\虎鹤双形拳1504149719247.pdf', '3791532340293158896', '1', '2017-08-31 11:21:59', '2017-08-31 11:21:59');
INSERT INTO `resource` VALUES ('903095547060162560', '空手道教程', '空手道教程', '1', '体育', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\空手道教程1504149731780.pdf', '3791532340293158896', '1', '2017-08-31 11:22:11', '2017-08-31 11:22:11');
INSERT INTO `resource` VALUES ('903095549631270912', '流利生活口语中级', null, '1', '口语', '2', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149732393.txt', '3791532340293158891', '1', '2017-08-31 11:22:12', '2017-08-31 11:22:12');
INSERT INTO `resource` VALUES ('903095645118795776', '流利生活口语高级', null, '1', '口语', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149755159.txt', '3791532340293158891', '1', '2017-08-31 11:22:35', '2017-08-31 11:22:35');
INSERT INTO `resource` VALUES ('903095651003404288', '中国足球内幕', '中国足球内幕', '1', '体育,科学', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\中国足球内幕1504149756562.pdf', '3791532340293158896', '1', '2017-08-31 11:22:36', '2017-08-31 11:22:36');
INSERT INTO `resource` VALUES ('903095721597734912', '少林八极拳', '少林八极拳', '1', '体育', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\少林八极拳1504149773393.mp3', '3791532340293158896', '1', '2017-08-31 11:22:53', '2017-08-31 11:22:53');
INSERT INTO `resource` VALUES ('903095770750783488', '跆拳道基础训练教程', '跆拳道基础训练教程', '1', '体育', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\跆拳道基础训练教程1504149785111.mp3', '3791532340293158896', '1', '2017-08-31 11:23:05', '2017-08-31 11:23:05');
INSERT INTO `resource` VALUES ('903095811905294336', '温莎普拉提', '温莎普拉提', '1', '体育', '2', '1', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\温莎普拉提1504149794924.mp3', '3791532340293158896', '1', '2017-08-31 11:23:14', '2017-08-31 11:23:14');
INSERT INTO `resource` VALUES ('903095830226014208', '流利商务口语初中级', null, '1', '口语，商务', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149799292.txt', '3791532340293158891', '1', '2017-08-31 11:23:19', '2017-08-31 11:23:19');
INSERT INTO `resource` VALUES ('903095858852139008', '杨俊敏博士擒拿技术解析', '杨俊敏博士擒拿技术解析', '1', '科学', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\杨俊敏博士擒拿技术解析1504149806117.mp3', '3791532340293158896', '1', '2017-08-31 11:23:26', '2017-08-31 11:23:26');
INSERT INTO `resource` VALUES ('903095916079222784', '中国武术与武林气质', '中国武术与武林气质', '1', '体育', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\中国武术与武林气质1504149819761.mp3', '3791532340293158896', '1', '2017-08-31 11:23:39', '2017-08-31 11:23:39');
INSERT INTO `resource` VALUES ('903095966649946112', '大学英语语法汇总', null, '1', '大学英语，语法', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149831818.txt', '3791532340293158891', '1', '2017-08-31 11:23:51', '2017-08-31 11:23:51');
INSERT INTO `resource` VALUES ('903096165833248768', '英语邮件范文', null, '1', '英语，邮件', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149879307.txt', '3791532340293158891', '1', '2017-08-31 11:24:39', '2017-08-31 11:24:39');
INSERT INTO `resource` VALUES ('903096292710944768', '职场英语沟通小贴士', null, '1', '职场英语', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504149909557.txt', '3791532340293158891', '1', '2017-08-31 11:25:09', '2017-08-31 11:25:09');
INSERT INTO `resource` VALUES ('903097077893042176', 'web界面布局参考', null, '1', 'web界面', '0', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504150096759.txt', '3791532340293158891', '1', '2017-08-31 11:28:16', '2017-08-31 11:28:16');
INSERT INTO `resource` VALUES ('903097204728795136', '登录界面设计', null, '1', '登录界面', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504150126999.txt', '3791532340293158891', '1', '2017-08-31 11:28:46', '2017-08-31 11:28:46');
INSERT INTO `resource` VALUES ('903097367648145408', '单选按钮CSS样式参考', null, '1', '单选按钮，CSS', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504150165842.txt', '3791532340293158891', '1', '2017-08-31 11:29:25', '2017-08-31 11:29:25');
INSERT INTO `resource` VALUES ('903097555708153856', '卫星地图显示示例', null, '1', '地图', '0', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504150210679.txt', '3791532340293158891', '1', '2017-08-31 11:30:10', '2017-08-31 11:30:10');
INSERT INTO `resource` VALUES ('903097736038060032', '杭州市企业分布图', null, '1', '企业分布，图片', '0', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504150253673.txt', '3791532340293158891', '1', '2017-08-31 11:30:53', '2017-08-31 11:30:53');
INSERT INTO `resource` VALUES ('903098610974068736', '编写有效用例', '编写有效用例', '1', '计算机,编程,软件', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\编写有效用例1504150462274.mp3', '3791532340293158897', '1', '2017-08-31 11:34:22', '2017-08-31 11:34:22');
INSERT INTO `resource` VALUES ('903098767228669952', '面向对象方法原理与实践', '面向对象方法原理与实践', '1', '计算机,软件,编程', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\面向对象方法原理与实践1504150499528.mp3', '3791532340293158897', '1', '2017-08-31 11:34:59', '2017-08-31 11:34:59');
INSERT INTO `resource` VALUES ('903098831615430656', '面向对象分析与设计（原书第2版）', '面向对象分析与设计（原书第2版）', '1', '计算机,软件,编程', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\面向对象分析与设计（原书第2版）1504150514879.mp3', '3791532340293158897', '1', '2017-08-31 11:35:14', '2017-08-31 11:35:14');
INSERT INTO `resource` VALUES ('903098893930205184', '面向对象软件构造（英文版.第2版）', '面向对象软件构造（英文版.第2版）', '1', '计算机,软件,编程', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\面向对象软件构造（英文版.第2版）1504150529736.mp3', '3791532340293158897', '1', '2017-08-31 11:35:29', '2017-08-31 11:35:29');
INSERT INTO `resource` VALUES ('903098961781460992', '探索需求－设计前的质量', '探索需求－设计前的质量', '1', '计算机,软件,编程', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\探索需求－设计前的质量1504150545913.mp3', '3791532340293158897', '1', '2017-08-31 11:35:45', '2017-08-31 11:35:45');
INSERT INTO `resource` VALUES ('903099042110771200', '成为技术领导者——解决问题的有机方法', '成为技术领导者——解决问题的有机方法', '1', '计算机,软件,编程', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\成为技术领导者——解决问题的有机方法1504150565065.mp4', '3791532340293158897', '1', '2017-08-31 11:36:05', '2017-08-31 11:36:05');
INSERT INTO `resource` VALUES ('903099103775428608', '程序开发心理学', '程序开发心理学', '1', '计算机,软件,编程', '3', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\程序开发心理学1504150579767.mp4', '3791532340293158897', '1', '2017-08-31 11:36:19', '2017-08-31 11:36:19');
INSERT INTO `resource` VALUES ('903099165440086016', '系统化思维导论', '系统化思维导论', '1', '计算机,软件,编程', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\系统化思维导论1504150594469.mp4', '3791532340293158897', '1', '2017-08-31 11:36:34', '2017-08-31 11:36:34');
INSERT INTO `resource` VALUES ('903099219949260800', '系统设计的一般原理', '系统设计的一般原理', '1', '计算机,软件,编程', '3', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\系统设计的一般原理1504150607465.mp4', '3791532340293158897', '1', '2017-08-31 11:36:47', '2017-08-31 11:36:47');
INSERT INTO `resource` VALUES ('903099272684244992', '质量·软件·管理（第1卷）—— 系统思维', '质量·软件·管理（第1卷）—— 系统思维', '1', '计算机,软件,编程', '3', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\质量·软件·管理（第1卷）—— 系统思维1504150620038.mp4', '3791532340293158897', '1', '2017-08-31 11:37:00', '2017-08-31 11:37:00');
INSERT INTO `resource` VALUES ('903099346189422592', '计算机程序设计艺术', '计算机程序设计艺术', '1', '计算机', '0', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\计算机程序设计艺术1504150637562.jpg', '3791532340293158897', '1', '2017-08-31 11:37:17', '2017-08-31 11:37:17');
INSERT INTO `resource` VALUES ('903099406025363456', '深入理解计算机系统', '深入理解计算机系统', '1', '计算机,软件,编程', '0', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\深入理解计算机系统1504150651829.jpg', '3791532340293158897', '1', '2017-08-31 11:37:31', '2017-08-31 11:37:31');
INSERT INTO `resource` VALUES ('903099463650906112', '数据结构与算法分析 —— C语言描述（原书第2版）', '数据结构与算法分析 —— C语言描述（原书第2版）', '1', '计算机,软件,编程', '0', '0', '4', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\数据结构与算法分析 —— C语言描述（原书第2版）1504150665568.jpg', '3791532340293158897', '1', '2017-08-31 11:37:45', '2017-08-31 11:37:45');
INSERT INTO `resource` VALUES ('903099516083900416', '算法导论', '算法导论', '1', '计算机,软件,编程', '0', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\算法导论1504150678069.jpg', '3791532340293158897', '1', '2017-08-31 11:37:58', '2017-08-31 11:37:58');
INSERT INTO `resource` VALUES ('903099565455052800', '自动机理论、语言和计算导论（第2版）', '自动机理论、语言和计算导论（第2版）', '1', '计算机,软件,编程', '0', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\自动机理论、语言和计算导论（第2版）1504150689840.jpg', '3791532340293158897', '1', '2017-08-31 11:38:09', '2017-08-31 11:38:09');
INSERT INTO `resource` VALUES ('903099620534652928', '人件', '人件', '1', '计算机,软件,编程', '1', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\人件1504150702972.pdf', '3791532340293158897', '1', '2017-08-31 11:38:22', '2017-08-31 11:38:22');
INSERT INTO `resource` VALUES ('903099673751982080', '中国历史上哪位皇帝为权残杀12位公子10位公主', '核心提示： 如果说胡亥和赵高密谋夺权，是他人生之路犯的第一大错误，那么，在赵高的帮助下，罗织罪名，滥杀有功之臣和无辜，是他犯的第二大错误。这一错误，让他丧失了做人的最基本要求', '1', '历史', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504150715660.png', '3791532340293158899', '1', '2017-08-31 11:38:35', '2017-08-31 11:38:35');
INSERT INTO `resource` VALUES ('903099674263687168', '人件集 —— 人性化的软件开发', '人件集 —— 人性化的软件开发', '1', '计算机,软件,编程', '1', '0', '4', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\人件集 —— 人性化的软件开发1504150715782.pdf', '3791532340293158897', '1', '2017-08-31 11:38:35', '2017-08-31 11:38:35');
INSERT INTO `resource` VALUES ('903099722208776192', '人月神话', '人月神话', '1', '计算机,软件,编程', '1', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\人月神话1504150727213.pdf', '3791532340293158897', '1', '2017-08-31 11:38:47', '2017-08-31 11:38:47');
INSERT INTO `resource` VALUES ('903099783168790528', '软件工程 — 实践者的研究方法（原书第5版）', '软件工程 — 实践者的研究方法（原书第5版）', '1', '计算机,软件,编程', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\软件工程 — 实践者的研究方法（原书第5版）1504150741747.pdf', '3791532340293158897', '1', '2017-08-31 11:39:01', '2017-08-31 11:39:01');
INSERT INTO `resource` VALUES ('903099865020633088', '敏捷软件开发-原则、模式与实践', '敏捷软件开发-原则、模式与实践', '1', '计算机,软件,编程', '1', '0', '4', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\敏捷软件开发-原则、模式与实践1504150761262.pdf', '3791532340293158897', '1', '2017-08-31 11:39:21', '2017-08-31 11:39:21');
INSERT INTO `resource` VALUES ('903099913909440512', ' 刘邦的帅才气质', '在危难之际，行事果断，有撼天动地的胆魄，是历史上许多成大事业者所具备的精神气质。我们回顾《史记》，汉高祖刘邦便充溢着这样的精气神。', '1', '历史', '3', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504150772918.docx', '3791532340293158899', '1', '2017-08-31 11:39:32', '2017-08-31 11:39:32');
INSERT INTO `resource` VALUES ('903100086517633024', ' 江西发现汤显祖墓葬具体位置', '经过野外考古，考古工作者在江西抚州文昌里一带的汤显祖家族墓园中基本确认汤显祖墓葬的具体位置；墓园中还出土了由汤显祖亲自撰文或书丹的墓志铭，对汤显祖文化研究和传承具有重要意义。', '1', '历史', '1', '0', '5', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504150814071.pptx', '3791532340293158899', '1', '2017-08-31 11:40:14', '2017-08-31 11:40:14');
INSERT INTO `resource` VALUES ('903100409617453056', '哪位开国大将曾以最年轻中将身份参加北伐战争？', '核心提示： 1924年，父亲学成回国，先被派往安源煤矿从事工运工作，后担任国民革命军第二军第六师党代表，以最年轻的“中将”身份参加了北伐战争。', '1', '历史', '1', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504150891104.docx', '3791532340293158899', '1', '2017-08-31 11:41:31', '2017-08-31 11:41:31');
INSERT INTO `resource` VALUES ('903100670343778304', 'springmvc常用标签', null, '1', 'springmvc', '1', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504150953266.txt', '3791532340293158811', '1', '2017-08-31 11:42:33', '2017-08-31 11:42:33');
INSERT INTO `resource` VALUES ('903100762391973888', ' 日本九州大学发现冰心《春水》手稿 距今已95年', '九州大学研究生院语言文化研究所教授中里见敬的研究团队近日确认，九州大学附属图书馆滨文库内收藏的《春水》手稿为中国著名现代作家冰心的亲笔手稿，从其执笔至今，已有95年的历史。', '1', '文学', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504150975212.docx', '3791532340293158899', '1', '2017-08-31 11:42:55', '2017-08-31 11:42:55');
INSERT INTO `resource` VALUES ('903100820294340608', '大学英语六级听力201506', null, '1', '英语六级，听力', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504150989017.txt', '3791532340293158811', '1', '2017-08-31 11:43:09', '2017-08-31 11:43:09');
INSERT INTO `resource` VALUES ('903101062091771904', 'springmvc工作原理', null, '1', 'springmvc', '0', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151046666.txt', '3791532340293158811', '1', '2017-08-31 11:44:06', '2017-08-31 11:44:06');
INSERT INTO `resource` VALUES ('903101089438633984', ' 	 2017年中考历史考前梳理：第20单元-第二次世界大战课件', '二战', '1', '历史', '1', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504151053186.pptx', '3791532340293158899', '1', '2017-08-31 11:44:13', '2017-08-31 11:44:13');
INSERT INTO `resource` VALUES ('903101424798404608', '34、锁问题与线程queue', '学习一些与锁相关的点，例如递归锁，信号量，Event，还会学习我们已经很熟悉的队列，不过这次的队列是作为一个模块出现的', '1', '软件开发，高并发', '0', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504151133142.png', '3791532340293158899', '1', '2017-08-31 11:45:33', '2017-08-31 11:45:33');
INSERT INTO `resource` VALUES ('903101563168493568', '每日英语听力选篇', null, '1', '英语听力', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151166132.txt', '3791532340293158812', '1', '2017-08-31 11:46:06', '2017-08-31 11:46:06');
INSERT INTO `resource` VALUES ('903101914605031424', '江西省南昌市2018届高三摸底考试历史试卷（含答案）', '摸底考试历史试卷', '1', '高考，历史', '1', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504151249921.docx', '3791532340293158899', '1', '2017-08-31 11:47:29', '2017-08-31 11:47:29');
INSERT INTO `resource` VALUES ('903102126157336576', '项目任务书范文', null, '1', '范文', '1', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151300359.txt', '3791532340293158812', '1', '2017-08-31 11:48:20', '2017-08-31 11:48:20');
INSERT INTO `resource` VALUES ('903102163713134592', '先秦时期——中华文明的起源国家的产生和社会的变革课件', '先秦时期', '1', '高考，历史', '3', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504151309312.pptx', '3791532340293158899', '1', '2017-08-31 11:48:29', '2017-08-31 11:48:29');
INSERT INTO `resource` VALUES ('903102261390086144', 'Java编程基础', null, '1', 'Java', '3', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151332601.txt', '3791532340293158812', '1', '2017-08-31 11:48:52', '2017-08-31 11:48:52');
INSERT INTO `resource` VALUES ('903102429162246144', '中国共产党领导的革命和建设', '中国共产党', '1', '高中，历史', '2', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504151372601.pptx', '3791532340293158899', '1', '2017-08-31 11:49:32', '2017-08-31 11:49:32');
INSERT INTO `resource` VALUES ('903102431431364608', '杭州市工厂分布图', null, '1', '杭州，工厂', '0', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151373142.txt', '3791532340293158812', '1', '2017-08-31 11:49:33', '2017-08-31 11:49:33');
INSERT INTO `resource` VALUES ('903102565829447680', '浙江大学紫金港校区', null, '1', '浙大', '0', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151405185.txt', '3791532340293158812', '1', '2017-08-31 11:50:05', '2017-08-31 11:50:05');
INSERT INTO `resource` VALUES ('903102739888869376', '日语初级听力', null, '1', '日语', '2', '0', '1', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151446684.txt', '3791532340293158812', '1', '2017-08-31 11:50:46', '2017-08-31 11:50:46');
INSERT INTO `resource` VALUES ('903102952594608128', '[国学新论]从《诫子书》一文中得到的启示', '《诫子书》', '1', '文学', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504151497397.docx', '3791532340293158899', '1', '2017-08-31 11:51:37', '2017-08-31 11:51:37');
INSERT INTO `resource` VALUES ('903103048015024128', 'spring IOC原理教程', null, '1', 'spring，IOC', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151520147.txt', '3791532340293158891', '1', '2017-08-31 11:52:00', '2017-08-31 11:52:00');
INSERT INTO `resource` VALUES ('903103349493207040', '英式英语听力综合篇', null, '1', '英语听力，英式', '2', '0', '5', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151592025.txt', '3791532340293158891', '1', '2017-08-31 11:53:12', '2017-08-31 11:53:12');
INSERT INTO `resource` VALUES ('903103588904079360', '党员思想汇报范文', null, '1', '思想汇报', '1', '0', '2', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151649105.txt', '3791532340293158891', '1', '2017-08-31 11:54:09', '2017-08-31 11:54:09');
INSERT INTO `resource` VALUES ('903103598760693760', '[国学新论]空见：从老子看传统修炼术', '[国学新论]空见：从老子看传统修炼术', '1', '文学', '3', '0', '4', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504151651455.docx', '3791532340293158899', '1', '2017-08-31 11:54:11', '2017-08-31 11:54:11');
INSERT INTO `resource` VALUES ('903103819108454400', '福建省师大附中2016-2017学年高二下学期期末考试历史试卷及答案', '福建省师大附中2016-2017学年高二下学期期末考试历史试卷及答案', '1', '高考，历史', '0', '1', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504151703990.png', '3791532340293158899', '1', '2017-08-31 11:55:03', '2017-08-31 11:55:03');
INSERT INTO `resource` VALUES ('903103896510140416', 'excel常用操作大全', null, '1', 'excel', '1', '1', '4', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\新建文本文档1504151722444.txt', '3791532340293158891', '1', '2017-08-31 11:55:22', '2017-08-31 11:55:22');
INSERT INTO `resource` VALUES ('903104012432314368', '[国学人物]毛泽东说《红楼梦》：一部形象的阶级斗争史', '[国学人物]毛泽东说《红楼梦》：一部形象的阶级斗争史', '1', '文学', '2', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504151750082.docx', '3791532340293158899', '1', '2017-08-31 11:55:50', '2017-08-31 11:55:50');
INSERT INTO `resource` VALUES ('903104293370990592', '湖北省宜昌市长阳县2016-2017学年高二历史3月月考试题（含答案）', '湖北省宜昌市长阳县2016-2017学年高二历史3月月考试题（含答案）', '1', '高考，历史', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504151817063.pptx', '3791532340293158899', '1', '2017-08-31 11:56:57', '2017-08-31 11:56:57');
INSERT INTO `resource` VALUES ('903104578281672704', '林清玄：不忧昨日，不期明日', '林清玄：不忧昨日，不期明日', '1', '文学', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504151884991.docx', '3791532340293158899', '1', '2017-08-31 11:58:04', '2017-08-31 11:58:04');
INSERT INTO `resource` VALUES ('903104804182691840', '人生实苦，但请你足够相信', '人生实苦，但请你足够相信', '1', '文学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504151938850.png', '3791532340293158899', '1', '2017-08-31 11:58:58', '2017-08-31 11:58:58');
INSERT INTO `resource` VALUES ('903105220899377152', '孩子，生命不是用来抱怨的', '孩子，生命不是用来抱怨的', '1', '文学', '2', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504152038203.pptx', '3791532340293158899', '1', '2017-08-31 12:00:38', '2017-08-31 12:00:38');
INSERT INTO `resource` VALUES ('903105505633898496', '别让孩子赢在起跑线，却输在了终点', '别让孩子赢在起跑线，却输在了终点', '1', '文学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504152106089.docx', '3791532340293158899', '1', '2017-08-31 12:01:46', '2017-08-31 12:01:46');
INSERT INTO `resource` VALUES ('903105705148551168', '马德：爱与相爱，山一程，水一程，是这个世界最大的奇迹', '马德：爱与相爱，山一程，水一程，是这个世界最大的奇迹', '1', '文学', '3', '0', '13', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504152153657.pptx', '3791532340293158899', '1', '2017-08-31 12:02:33', '2017-08-31 12:02:33');
INSERT INTO `resource` VALUES ('903130929357262848', '你的努力里，藏着黄金屋、颜如玉，还藏着父母暮年的欢喜！', '你的努力里，藏着黄金屋、颜如玉，还藏着父母暮年的欢喜！', '1', '文学', '0', '0', '9', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504158167577.png', '3791532340293158810', '1', '2017-08-31 13:42:47', '2017-08-31 13:42:47');
INSERT INTO `resource` VALUES ('903131113587871744', '林清玄：把自己变成一朵花，香给这个世界看！【有声美文】', '林清玄：把自己变成一朵花，香给这个世界看！【有声美文】', '1', '文学', '2', '1', '6', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504158211501.docx', '3791532340293158810', '1', '2017-08-31 13:43:31', '2017-08-31 13:43:31');
INSERT INTO `resource` VALUES ('903131384355360768', '马德：人生就像行进在高速路，你必须寻找自己的下一个出口', '马德：人生就像行进在高速路，你必须寻找自己的下一个出口', '1', '文学', '3', '0', '7', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504158276057.pptx', '3791532340293158810', '1', '2017-08-31 13:44:36', '2017-08-31 13:44:36');
INSERT INTO `resource` VALUES ('903131945372880896', '2018届高考历史加分宝：热点要点与第41题加分指导（19份打包，含解析）', '2018届高考历史加分宝：热点要点与第41题加分指导（19份打包，含解析）', '1', '高考，历史', '0', '0', '8', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504158409814.png', '3791532340293158810', '1', '2017-08-31 13:46:49', '2017-08-31 13:46:49');
INSERT INTO `resource` VALUES ('903133100354179072', '聊聊GIS中那些坐标系', '聊聊GIS中那些坐标系', '1', '软件开发，GIS', '3', '0', '4', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\智慧教育资源共享推荐平台设计书1504158685183.docx', '3791532340293158810', '1', '2017-08-31 13:51:25', '2017-08-31 13:51:25');
INSERT INTO `resource` VALUES ('903133404890009600', '线程与全局解释器锁（GIL）', '线程与全局解释器锁（GIL）', '1', '软件开发，JAVA', '1', '0', '8', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504158757790.docx', '3791532340293158810', '1', '2017-08-31 13:52:37', '2017-08-31 13:52:37');
INSERT INTO `resource` VALUES ('903140192406343680', '平台运行指南', '平台运行指南', '3', '平台', '1', '0', '6', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504160376060.docx', '3791532340293158890', '1', '2017-08-31 14:19:36', '2017-08-31 14:19:36');
INSERT INTO `resource` VALUES ('903140417204260864', '关于平台的管理规定', '平台管理规定', '3', '平台', '1', '0', '3', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504160429656.pptx', '3791532340293158890', '1', '2017-08-31 14:20:29', '2017-08-31 14:20:29');
INSERT INTO `resource` VALUES ('903140678203215872', '禁止上传黄色、暴力、色情等不良信息的规定', '禁止上传黄色、暴力、色情等不良信息的规定', '3', '平台', '2', '1', '5', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504160491883.png', '3791532340293158890', '1', '2017-08-31 14:21:31', '2017-08-31 14:21:31');
INSERT INTO `resource` VALUES ('903451757814878208', '民国那些事', '讲述了民国。。', '1', '历史', '0', '0', '7', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504234659042.png', '3791532340293158898', '1', '2017-09-01 10:57:39', '2017-09-01 10:57:39');
INSERT INTO `resource` VALUES ('903460603065143296', '关于净化互联网环境的公告', '公告', '3', '公告', '0', '0', '6', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504236767914.png', '3791532340293158890', '1', '2017-09-01 11:32:47', '2017-09-01 11:32:47');
INSERT INTO `resource` VALUES ('903502003437703168', '中国近代文学作品集', '文学', '1', '文学', '0', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504246638532.png', '3791532340293158895', '0', '2017-09-01 14:17:18', '2017-09-01 14:17:18');
INSERT INTO `resource` VALUES ('903502328768892928', '买入与卖出', null, '1', '股票', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\项目竞赛PPT1504246716097.pptx', '3791532340293158895', '0', '2017-09-01 14:18:36', '2017-09-01 14:18:36');
INSERT INTO `resource` VALUES ('903502756130721792', '大学英语全集', '大学英语', '1', '大学，英语', '1', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\申请指南1504246817988.docx', '3791532340293158898', '0', '2017-09-01 14:20:17', '2017-09-01 14:20:17');
INSERT INTO `resource` VALUES ('903502965330022400', '新概念英语', null, '1', '英语', '3', '0', '0', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504246867865.png', '3791532340293158898', '2', '2017-09-01 14:21:07', '2017-09-01 14:21:07');
INSERT INTO `resource` VALUES ('903506709249658880', 'c++面向对象知识全解', null, '1', '软件开发，C++', '0', '0', '5', 'C:\\apache-tomcat-8.5.16\\wtpwebapps\\eduwisdom\\\\files\\QQ截图201708291746201504247760485.png', '3791532340293158898', '1', '2017-09-01 14:36:00', '2017-09-01 14:36:00');

-- ----------------------------
-- Table structure for resource_browse
-- ----------------------------
DROP TABLE IF EXISTS `resource_browse`;
CREATE TABLE `resource_browse` (
  `resource_id` decimal(19,0) NOT NULL,
  `browse_time` datetime DEFAULT NULL,
  `user_id` decimal(19,0) NOT NULL,
  PRIMARY KEY (`resource_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_browse
-- ----------------------------
INSERT INTO `resource_browse` VALUES ('903081114854363136', '2017-09-01 09:45:16', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903081114854363136', '2017-09-01 16:48:43', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903081114854363136', '2017-09-01 15:21:33', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903081249101451264', '2017-09-01 15:25:47', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903081249101451264', '2017-09-01 15:21:40', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903081742469042176', '2017-08-31 11:39:16', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903081742469042176', '2017-08-31 10:59:32', '3791532340293158812');
INSERT INTO `resource_browse` VALUES ('903081742469042176', '2017-09-01 15:25:51', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903082038301691904', '2017-09-01 15:25:56', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903082459829243904', '2017-09-01 15:21:48', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903083055458160640', '2017-09-01 15:21:58', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903083217773531136', '2017-08-31 14:14:30', '3791532340293158810');
INSERT INTO `resource_browse` VALUES ('903084763009650688', '2017-09-01 10:44:36', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903085169806807040', '2017-09-01 10:03:25', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903086432275533824', '2017-09-01 10:03:15', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903087318313865216', '2017-09-01 10:00:43', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903089368795844608', '2017-09-01 10:45:24', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903089589940523008', '2017-09-01 10:45:08', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903089654402781184', '2017-09-01 10:44:51', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903089701039247360', '2017-08-31 11:39:11', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903090431556980736', '2017-09-01 10:46:29', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903090473915256832', '2017-09-01 10:46:42', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903091816792985600', '2017-09-01 10:46:53', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903092227251769344', '2017-09-01 11:28:54', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903092227251769344', '2017-09-01 15:21:24', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903092418436534272', '2017-09-01 16:55:14', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903092857773101056', '2017-09-01 16:55:29', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903093900439326720', '2017-09-01 09:45:31', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903095290813353984', '2017-09-01 09:45:05', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903095549631270912', '2017-08-31 14:24:37', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903097077893042176', '2017-08-31 16:55:41', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903097555708153856', '2017-09-01 15:21:15', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903097736038060032', '2017-09-01 09:44:50', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903098831615430656', '2017-09-01 09:37:52', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903098893930205184', '2017-09-01 09:18:43', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903098961781460992', '2017-09-01 09:38:52', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903099103775428608', '2017-09-01 09:44:40', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903099219949260800', '2017-08-31 11:50:01', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099272684244992', '2017-08-31 11:49:49', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099272684244992', '2017-09-01 15:20:35', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903099346189422592', '2017-08-31 11:49:38', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099406025363456', '2017-08-31 11:49:19', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099463650906112', '2017-09-01 09:37:40', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903099463650906112', '2017-08-31 17:18:36', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099463650906112', '2017-08-31 14:43:08', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903099516083900416', '2017-09-01 09:37:02', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903099516083900416', '2017-08-31 11:48:57', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099516083900416', '2017-08-31 14:43:29', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903099565455052800', '2017-08-31 11:48:41', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099565455052800', '2017-09-01 15:20:44', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903099620534652928', '2017-08-31 11:48:36', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099674263687168', '2017-08-31 11:48:08', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099674263687168', '2017-09-01 15:21:06', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903099722208776192', '2017-09-01 09:44:29', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903099722208776192', '2017-08-31 11:47:42', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099722208776192', '2017-09-01 15:20:55', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903099783168790528', '2017-08-31 11:47:10', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099865020633088', '2017-09-01 09:44:20', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903099865020633088', '2017-08-31 11:47:07', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903099865020633088', '2017-08-31 17:49:29', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903099913909440512', '2017-09-01 09:44:15', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903099913909440512', '2017-08-31 17:49:40', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903100086517633024', '2017-09-01 09:44:07', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903100086517633024', '2017-09-01 09:17:59', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903100086517633024', '2017-09-01 09:32:25', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903100409617453056', '2017-09-01 15:26:56', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903100409617453056', '2017-09-01 09:16:47', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903100670343778304', '2017-09-01 09:37:19', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903100670343778304', '2017-08-31 16:56:02', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903100762391973888', '2017-09-01 09:43:49', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903100820294340608', '2017-08-31 17:19:45', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903101062091771904', '2017-08-31 17:27:00', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903101062091771904', '2017-08-31 17:20:29', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903101089438633984', '2017-08-31 17:53:09', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903101089438633984', '2017-08-31 17:52:28', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903101424798404608', '2017-09-01 09:32:35', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903101563168493568', '2017-08-31 16:33:58', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903101914605031424', '2017-08-31 14:42:23', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903102126157336576', '2017-08-31 17:26:02', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903102163713134592', '2017-09-01 15:26:33', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903102163713134592', '2017-09-01 15:20:24', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903102163713134592', '2017-08-31 18:14:03', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903102261390086144', '2017-08-31 17:19:27', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903102261390086144', '2017-08-31 18:13:55', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903102429162246144', '2017-09-01 09:18:10', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903102429162246144', '2017-08-31 18:13:45', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903102431431364608', '2017-09-01 15:20:48', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903102431431364608', '2017-08-31 18:09:02', '3791532340293158896');
INSERT INTO `resource_browse` VALUES ('903102431431364608', '2017-08-31 18:13:38', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903102565829447680', '2017-09-01 15:26:08', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903102565829447680', '2017-08-31 18:12:37', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903102739888869376', '2017-08-31 17:26:14', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903103349493207040', '2017-08-31 16:33:18', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903103349493207040', '2017-09-01 15:26:43', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903103588904079360', '2017-08-31 14:42:47', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903103588904079360', '2017-08-31 18:12:29', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903103598760693760', '2017-09-01 09:43:38', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903103598760693760', '2017-09-01 15:26:26', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903103598760693760', '2017-08-31 18:12:20', '3791532340293158898');
INSERT INTO `resource_browse` VALUES ('903103896510140416', '2017-08-31 17:25:12', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903103896510140416', '2017-09-01 15:26:00', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903105220899377152', '2017-08-31 14:16:00', '3791532340293158810');
INSERT INTO `resource_browse` VALUES ('903105220899377152', '2017-09-01 15:26:16', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903105705148551168', '2017-09-01 09:43:59', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903105705148551168', '2017-09-01 09:37:07', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903105705148551168', '2017-09-01 15:25:07', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903105705148551168', '2017-09-01 15:29:01', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903105705148551168', '2017-08-31 18:08:56', '3791532340293158896');
INSERT INTO `resource_browse` VALUES ('903130929357262848', '2017-09-01 09:43:54', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903130929357262848', '2017-09-01 09:18:50', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903130929357262848', '2017-09-01 15:25:00', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903130929357262848', '2017-09-01 15:19:51', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903131113587871744', '2017-08-31 17:32:35', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903131113587871744', '2017-09-01 15:24:50', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903131113587871744', '2017-09-01 15:20:20', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903131384355360768', '2017-09-01 15:26:51', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903131384355360768', '2017-09-01 15:21:01', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903131945372880896', '2017-08-31 14:12:19', '3791532340293158810');
INSERT INTO `resource_browse` VALUES ('903131945372880896', '2017-09-01 09:18:26', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903131945372880896', '2017-09-01 16:48:47', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903131945372880896', '2017-09-01 15:20:16', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903131945372880896', '2017-08-31 18:08:52', '3791532340293158896');
INSERT INTO `resource_browse` VALUES ('903133100354179072', '2017-08-31 14:10:47', '3791532340293158811');
INSERT INTO `resource_browse` VALUES ('903133100354179072', '2017-08-31 17:00:43', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903133100354179072', '2017-09-01 11:06:39', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903133404890009600', '2017-08-31 14:13:18', '3791532340293158810');
INSERT INTO `resource_browse` VALUES ('903133404890009600', '2017-09-01 15:25:38', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903133404890009600', '2017-09-01 15:19:35', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903133404890009600', '2017-08-31 18:08:49', '3791532340293158896');
INSERT INTO `resource_browse` VALUES ('903140192406343680', '2017-09-01 09:18:19', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903140192406343680', '2017-09-01 15:24:24', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903140192406343680', '2017-09-01 15:19:44', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903140192406343680', '2017-08-31 18:08:45', '3791532340293158896');
INSERT INTO `resource_browse` VALUES ('903140417204260864', '2017-08-31 14:40:37', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903140417204260864', '2017-08-31 18:08:42', '3791532340293158896');
INSERT INTO `resource_browse` VALUES ('903140678203215872', '2017-09-01 09:54:23', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903140678203215872', '2017-09-01 15:25:28', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903140678203215872', '2017-08-31 17:48:36', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903140678203215872', '2017-08-31 18:08:38', '3791532340293158896');
INSERT INTO `resource_browse` VALUES ('903451757814878208', '2017-09-01 11:28:36', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903451757814878208', '2017-09-01 15:24:16', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903451757814878208', '2017-09-01 15:20:31', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903460603065143296', '2017-09-01 11:33:12', '3791532340293158890');
INSERT INTO `resource_browse` VALUES ('903460603065143296', '2017-09-01 15:24:56', '3791532340293158894');
INSERT INTO `resource_browse` VALUES ('903460603065143296', '2017-09-01 15:20:14', '3791532340293158895');
INSERT INTO `resource_browse` VALUES ('903506709249658880', '2017-09-01 15:25:24', '3791532340293158894');

-- ----------------------------
-- Table structure for resource_comment
-- ----------------------------
DROP TABLE IF EXISTS `resource_comment`;
CREATE TABLE `resource_comment` (
  `id` decimal(19,0) NOT NULL,
  `comment_content` text,
  `user_id` decimal(19,0) NOT NULL,
  `resource_id` decimal(19,0) NOT NULL,
  `comment_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_comment
-- ----------------------------
INSERT INTO `resource_comment` VALUES ('903101795889451008', '很棒！', '3791532340293158894', '903099865020633088', '2017-08-31 11:47:01');
INSERT INTO `resource_comment` VALUES ('903101942962720768', '一般般，just so so', '3791532340293158894', '903099783168790528', '2017-08-31 11:47:36');
INSERT INTO `resource_comment` VALUES ('903102041533059072', '一般般，just so so', '3791532340293158894', '903099722208776192', '2017-08-31 11:48:00');
INSERT INTO `resource_comment` VALUES ('903102097749315584', '一般般，just so so', '3791532340293158894', '903099674263687168', '2017-08-31 11:48:13');
INSERT INTO `resource_comment` VALUES ('903102146432602112', '一般般，just so so', '3791532340293158894', '903099620534652928', '2017-08-31 11:48:25');
INSERT INTO `resource_comment` VALUES ('903102235330875392', '一般般，just so so', '3791532340293158894', '903099565455052800', '2017-08-31 11:48:46');
INSERT INTO `resource_comment` VALUES ('903102313458176000', '一般般，just so so', '3791532340293158894', '903099516083900416', '2017-08-31 11:49:05');
INSERT INTO `resource_comment` VALUES ('903102353283092480', '一般般，just so so', '3791532340293158894', '903099463650906112', '2017-08-31 11:49:14');
INSERT INTO `resource_comment` VALUES ('903102425467064320', '还好啦！', '3791532340293158894', '903099406025363456', '2017-08-31 11:49:31');
INSERT INTO `resource_comment` VALUES ('903102476809539584', '一般般，just so so', '3791532340293158894', '903099346189422592', '2017-08-31 11:49:43');
INSERT INTO `resource_comment` VALUES ('903102519465611264', '一般般，just so so', '3791532340293158894', '903099272684244992', '2017-08-31 11:49:54');
INSERT INTO `resource_comment` VALUES ('903102573886705664', '一般般，just so so', '3791532340293158894', '903099219949260800', '2017-08-31 11:50:07');
INSERT INTO `resource_comment` VALUES ('903138438516183040', '有用，很棒', '3791532340293158810', '903131945372880896', '2017-08-31 14:12:37');
INSERT INTO `resource_comment` VALUES ('903138665084096512', '不错', '3791532340293158810', '903133404890009600', '2017-08-31 14:13:31');
INSERT INTO `resource_comment` VALUES ('903138973650653184', '还好', '3791532340293158810', '903083217773531136', '2017-08-31 14:14:45');
INSERT INTO `resource_comment` VALUES ('903139365209903104', '不错的文章', '3791532340293158810', '903105220899377152', '2017-08-31 14:16:18');
INSERT INTO `resource_comment` VALUES ('903145295142064128', '一般般', '3791532340293158895', '903140417204260864', '2017-08-31 14:39:52');
INSERT INTO `resource_comment` VALUES ('903145400712695808', '我觉得不好', '3791532340293158895', '903131945372880896', '2017-08-31 14:40:17');
INSERT INTO `resource_comment` VALUES ('903146179452342272', '都不想评论了\n', '3791532340293158895', '903099463650906112', '2017-08-31 14:43:23');
INSERT INTO `resource_comment` VALUES ('903146251120414720', '我觉得好', '3791532340293158895', '903099516083900416', '2017-08-31 14:43:40');
INSERT INTO `resource_comment` VALUES ('903193828972957696', '', '3791532340293158895', '903101089438633984', '2017-08-31 17:52:44');

-- ----------------------------
-- Table structure for resource_download
-- ----------------------------
DROP TABLE IF EXISTS `resource_download`;
CREATE TABLE `resource_download` (
  `resource_id` decimal(19,0) NOT NULL,
  `download_time` datetime NOT NULL,
  `user_id` decimal(19,0) NOT NULL,
  PRIMARY KEY (`resource_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_download
-- ----------------------------
INSERT INTO `resource_download` VALUES ('903083246772948992', '2017-08-31 10:33:27', '3791532340293158811');
INSERT INTO `resource_download` VALUES ('903094895508590592', '2017-08-31 11:39:54', '3791532340293158811');
INSERT INTO `resource_download` VALUES ('903095087972618240', '2017-08-31 11:39:42', '3791532340293158811');
INSERT INTO `resource_download` VALUES ('903095811905294336', '2017-08-31 11:39:27', '3791532340293158811');
INSERT INTO `resource_download` VALUES ('903103819108454400', '2017-08-31 17:49:56', '3791532340293158895');
INSERT INTO `resource_download` VALUES ('903103896510140416', '2017-08-31 17:51:45', '3791532340293158895');
INSERT INTO `resource_download` VALUES ('903131113587871744', '2017-08-31 17:26:58', '3791532340293158895');
INSERT INTO `resource_download` VALUES ('903140678203215872', '2017-08-31 16:58:48', '3791532340293158890');

-- ----------------------------
-- Table structure for resource_score
-- ----------------------------
DROP TABLE IF EXISTS `resource_score`;
CREATE TABLE `resource_score` (
  `user_id` decimal(19,0) NOT NULL,
  `resource_id` decimal(19,0) NOT NULL,
  `rating` tinyint(1) NOT NULL COMMENT '5分制',
  `rating_time` datetime NOT NULL,
  `score_flag` tinyint(2) NOT NULL COMMENT '0代表评分，1代表下载评分，2代表浏览评分，3代表下载和浏览评分',
  PRIMARY KEY (`user_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_score
-- ----------------------------
INSERT INTO `resource_score` VALUES ('3791532340293158810', '903083217773531136', '3', '2017-08-31 14:14:34', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158810', '903105220899377152', '4', '2017-08-31 14:16:04', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158810', '903131945372880896', '5', '2017-08-31 13:54:26', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158810', '903133100354179072', '5', '2017-08-31 13:54:21', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158810', '903133404890009600', '5', '2017-08-31 13:54:17', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903081114854363136', '2', '2017-09-01 09:45:16', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903081742469042176', '2', '2017-08-31 11:39:16', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903083246772948992', '2', '2017-08-31 10:33:27', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903089701039247360', '2', '2017-08-31 11:39:11', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903093900439326720', '2', '2017-09-01 09:45:31', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903094895508590592', '2', '2017-08-31 11:39:54', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903095087972618240', '2', '2017-08-31 11:39:42', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903095290813353984', '2', '2017-09-01 09:45:05', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903095549631270912', '2', '2017-08-31 14:23:20', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903095811905294336', '2', '2017-08-31 11:39:27', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903097736038060032', '2', '2017-09-01 09:44:50', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903099103775428608', '2', '2017-09-01 09:44:40', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903099722208776192', '2', '2017-09-01 09:44:29', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903099865020633088', '2', '2017-09-01 09:44:20', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903099913909440512', '2', '2017-08-31 17:28:04', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903100086517633024', '2', '2017-08-31 17:27:08', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903100762391973888', '2', '2017-09-01 09:43:49', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903101062091771904', '2', '2017-08-31 17:25:49', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903101089438633984', '2', '2017-08-31 17:53:09', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903101563168493568', '2', '2017-08-31 16:33:58', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903102126157336576', '2', '2017-08-31 17:25:23', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903102739888869376', '2', '2017-08-31 17:26:14', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903103349493207040', '3', '2017-08-31 16:33:24', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903103598760693760', '2', '2017-09-01 09:43:38', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903103896510140416', '2', '2017-08-31 17:24:40', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903105705148551168', '2', '2017-09-01 09:43:59', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903130929357262848', '2', '2017-09-01 09:43:54', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903131113587871744', '2', '2017-08-31 17:32:35', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158811', '903133100354179072', '2', '2017-08-31 14:10:47', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158812', '903081742469042176', '2', '2017-08-31 10:59:32', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903085169806807040', '2', '2017-09-01 10:03:30', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903086432275533824', '2', '2017-09-01 09:51:46', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903087318313865216', '2', '2017-09-01 10:00:43', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903092227251769344', '2', '2017-09-01 11:28:54', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903098831615430656', '3', '2017-09-01 09:38:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903098893930205184', '2', '2017-09-01 09:18:43', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903098961781460992', '2', '2017-09-01 09:38:52', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903099463650906112', '2', '2017-09-01 09:37:40', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903099516083900416', '2', '2017-09-01 09:37:02', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903100086517633024', '2', '2017-09-01 09:17:59', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903100670343778304', '3', '2017-09-01 09:37:23', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903102429162246144', '2', '2017-09-01 09:18:10', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903105705148551168', '2', '2017-09-01 09:18:59', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903130929357262848', '2', '2017-08-31 17:00:14', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903131945372880896', '2', '2017-09-01 09:18:26', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903133100354179072', '2', '2017-08-31 17:00:43', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903140192406343680', '5', '2017-08-31 14:24:06', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903140417204260864', '5', '2017-08-31 14:24:02', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903140678203215872', '5', '2017-08-31 14:23:59', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903451757814878208', '2', '2017-09-01 10:58:23', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158890', '903460603065143296', '5', '2017-09-01 11:32:54', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903081114854363136', '5', '2017-08-31 10:44:35', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903081249101451264', '5', '2017-08-31 10:44:39', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903081742469042176', '5', '2017-08-31 10:44:44', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903081918378151936', '5', '2017-08-31 10:44:49', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903082038301691904', '5', '2017-08-31 10:44:54', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903082982821203968', '5', '2017-08-31 10:44:59', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903083055458160640', '5', '2017-08-31 10:45:04', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903083115319267328', '5', '2017-08-31 10:45:10', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903083209632387072', '5', '2017-08-31 10:44:27', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903083320173268992', '5', '2017-08-31 10:44:20', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903083976212746240', '5', '2017-08-31 10:44:10', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903084071125651456', '5', '2017-08-31 10:44:05', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903084203380445184', '5', '2017-08-31 10:44:15', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903084295969705984', '5', '2017-08-31 10:43:59', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903084763009650688', '5', '2017-08-31 10:43:54', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903085411952365568', '5', '2017-08-31 10:43:49', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903085467510116352', '5', '2017-08-31 10:43:46', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903085548346937344', '5', '2017-08-31 10:43:42', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903085617209020416', '5', '2017-08-31 10:43:38', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903085673890844672', '5', '2017-08-31 10:43:35', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903097077893042176', '2', '2017-08-31 16:55:41', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099219949260800', '4', '2017-08-31 11:50:03', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099272684244992', '4', '2017-08-31 11:49:50', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099346189422592', '4', '2017-08-31 11:49:40', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099406025363456', '4', '2017-08-31 11:49:21', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099463650906112', '3', '2017-08-31 11:49:11', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099516083900416', '3', '2017-08-31 11:49:01', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099565455052800', '3', '2017-08-31 11:48:42', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099620534652928', '3', '2017-08-31 11:48:21', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099674263687168', '3', '2017-08-31 11:48:10', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099722208776192', '3', '2017-08-31 11:47:44', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099783168790528', '4', '2017-08-31 11:47:14', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903099865020633088', '5', '2017-08-31 11:46:53', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903100086517633024', '2', '2017-09-01 09:32:25', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903100409617453056', '1', '2017-09-01 15:26:58', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903100670343778304', '2', '2017-08-31 16:56:02', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903100820294340608', '2', '2017-08-31 17:19:45', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903101062091771904', '2', '2017-08-31 17:20:30', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903101424798404608', '2', '2017-09-01 09:32:35', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903102163713134592', '3', '2017-09-01 15:26:36', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903102261390086144', '3', '2017-08-31 16:55:12', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903102565829447680', '4', '2017-09-01 15:26:09', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903103349493207040', '4', '2017-09-01 15:26:45', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903103598760693760', '3', '2017-09-01 15:26:28', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903103896510140416', '3', '2017-09-01 15:26:02', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903105220899377152', '2', '2017-09-01 15:26:18', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903105705148551168', '3', '2017-09-01 15:25:08', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903130929357262848', '3', '2017-09-01 15:25:02', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903131113587871744', '3', '2017-09-01 15:24:51', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903131384355360768', '5', '2017-09-01 15:24:45', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903131945372880896', '3', '2017-09-01 15:24:40', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903133100354179072', '2', '2017-08-31 17:18:47', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903133404890009600', '4', '2017-09-01 15:24:30', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903140192406343680', '2', '2017-09-01 15:24:25', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903140678203215872', '4', '2017-09-01 15:24:20', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903451757814878208', '2', '2017-09-01 15:22:53', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903460603065143296', '4', '2017-09-01 15:22:44', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158894', '903506709249658880', '3', '2017-09-01 15:24:07', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903081114854363136', '2', '2017-09-01 15:21:34', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903081249101451264', '4', '2017-09-01 15:21:42', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903082459829243904', '4', '2017-09-01 15:21:52', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903083055458160640', '4', '2017-09-01 15:22:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903089589940523008', '5', '2017-08-31 11:13:39', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903089654402781184', '5', '2017-08-31 11:13:30', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903089701039247360', '5', '2017-08-31 11:13:34', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903089755925909504', '5', '2017-08-31 11:13:25', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903089814553890816', '5', '2017-08-31 11:13:20', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903090431556980736', '5', '2017-08-31 11:13:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903090473915256832', '5', '2017-08-31 11:13:05', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903090521432526848', '5', '2017-08-31 11:13:10', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903090567544705024', '5', '2017-08-31 11:13:16', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903090617578557440', '5', '2017-08-31 11:12:55', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092227251769344', '5', '2017-09-01 15:21:26', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092366053871616', '5', '2017-08-31 11:12:50', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092418436534272', '5', '2017-08-31 11:12:46', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092548711616512', '5', '2017-08-31 11:12:40', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092619951869952', '5', '2017-08-31 11:12:36', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092670182854656', '5', '2017-08-31 11:12:31', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092755583078400', '5', '2017-08-31 11:12:26', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092829407023104', '5', '2017-08-31 11:12:23', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092857773101056', '2', '2017-09-01 16:55:29', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092902182391808', '5', '2017-08-31 11:12:18', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903092978388701184', '5', '2017-08-31 11:12:15', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903097555708153856', '2', '2017-09-01 15:21:15', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099272684244992', '1', '2017-09-01 15:20:37', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099463650906112', '2', '2017-08-31 14:43:10', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099516083900416', '5', '2017-08-31 14:43:33', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099565455052800', '1', '2017-08-31 14:43:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099674263687168', '5', '2017-09-01 15:21:08', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099722208776192', '2', '2017-09-01 15:20:57', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099865020633088', '2', '2017-08-31 17:49:29', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903099913909440512', '2', '2017-08-31 17:49:40', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903101089438633984', '1', '2017-08-31 17:52:33', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903101914605031424', '2', '2017-08-31 14:42:23', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903102163713134592', '1', '2017-09-01 15:20:27', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903102431431364608', '1', '2017-09-01 15:20:49', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903103588904079360', '2', '2017-08-31 14:42:47', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903103819108454400', '2', '2017-08-31 17:49:56', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903103896510140416', '2', '2017-08-31 17:51:45', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903105705148551168', '3', '2017-08-31 14:41:45', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903130929357262848', '1', '2017-08-31 14:41:56', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903131113587871744', '4', '2017-09-01 15:20:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903131384355360768', '4', '2017-09-01 15:19:40', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903131945372880896', '2', '2017-08-31 14:40:10', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903133404890009600', '1', '2017-08-31 14:40:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903140192406343680', '4', '2017-09-01 15:19:45', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903140417204260864', '3', '2017-08-31 14:39:44', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903140678203215872', '2', '2017-08-31 17:48:36', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903451757814878208', '4', '2017-09-01 15:19:30', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158895', '903460603065143296', '4', '2017-09-01 15:19:24', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903094895508590592', '5', '2017-08-31 11:25:18', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903094974667689984', '5', '2017-08-31 11:25:14', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095023564886016', '5', '2017-08-31 11:25:07', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095087972618240', '5', '2017-08-31 11:25:04', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095146562850816', '5', '2017-08-31 11:25:11', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095196974190592', '5', '2017-08-31 11:25:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095244336271360', '5', '2017-08-31 11:24:56', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095290813353984', '5', '2017-08-31 11:24:52', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095347700699136', '5', '2017-08-31 11:25:22', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095389568241664', '5', '2017-08-31 11:24:48', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095450498895872', '5', '2017-08-31 11:24:44', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095494492950528', '5', '2017-08-31 11:24:41', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095547060162560', '5', '2017-08-31 11:24:37', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095651003404288', '5', '2017-08-31 11:24:33', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095721597734912', '5', '2017-08-31 11:24:27', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095770750783488', '5', '2017-08-31 11:24:23', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095811905294336', '5', '2017-08-31 11:24:19', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095858852139008', '5', '2017-08-31 11:24:16', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903095916079222784', '5', '2017-08-31 11:24:12', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903102431431364608', '2', '2017-08-31 18:09:02', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903105705148551168', '2', '2017-08-31 18:08:56', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903131945372880896', '2', '2017-08-31 18:08:52', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903133404890009600', '2', '2017-08-31 18:08:49', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903140192406343680', '2', '2017-08-31 18:08:45', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903140417204260864', '2', '2017-08-31 18:08:42', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158896', '903140678203215872', '2', '2017-08-31 18:08:38', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903098610974068736', '5', '2017-08-31 11:40:43', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903098767228669952', '5', '2017-08-31 11:40:39', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903098831615430656', '5', '2017-08-31 11:40:36', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903098893930205184', '5', '2017-08-31 11:40:32', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903098961781460992', '5', '2017-08-31 11:40:47', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099042110771200', '5', '2017-08-31 11:40:28', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099103775428608', '5', '2017-08-31 11:40:25', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099165440086016', '5', '2017-08-31 11:40:21', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099219949260800', '5', '2017-08-31 11:40:18', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099272684244992', '5', '2017-08-31 11:40:14', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099346189422592', '5', '2017-08-31 11:40:11', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099406025363456', '5', '2017-08-31 11:40:08', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099463650906112', '5', '2017-08-31 11:40:03', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099516083900416', '5', '2017-08-31 11:40:00', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099565455052800', '5', '2017-08-31 11:39:56', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099620534652928', '5', '2017-08-31 11:39:52', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099674263687168', '5', '2017-08-31 11:39:48', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099722208776192', '5', '2017-08-31 11:39:45', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099783168790528', '5', '2017-08-31 11:39:41', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158897', '903099865020633088', '5', '2017-08-31 11:39:38', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903084763009650688', '2', '2017-09-01 10:44:36', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903089368795844608', '2', '2017-09-01 10:45:24', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903089589940523008', '2', '2017-09-01 10:45:08', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903089654402781184', '2', '2017-09-01 10:44:51', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903090431556980736', '2', '2017-09-01 10:46:29', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903090473915256832', '2', '2017-09-01 10:46:42', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903091816792985600', '2', '2017-09-01 10:46:53', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903100409617453056', '2', '2017-09-01 09:16:47', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903102163713134592', '2', '2017-08-31 18:14:03', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903102261390086144', '2', '2017-08-31 18:13:55', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903102429162246144', '2', '2017-08-31 18:13:45', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903102431431364608', '2', '2017-08-31 18:13:38', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903102565829447680', '2', '2017-08-31 18:12:37', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903103588904079360', '2', '2017-08-31 18:12:29', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903103598760693760', '2', '2017-08-31 18:10:57', '1');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903451757814878208', '5', '2017-09-01 10:58:17', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158898', '903506709249658880', '5', '2017-09-01 15:22:52', '0');
INSERT INTO `resource_score` VALUES ('3791532340293158899', '903100762391973888', '5', '2017-08-31 14:08:59', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` decimal(19,0) NOT NULL,
  `rolename` varchar(40) NOT NULL,
  `gmt_creat` datetime NOT NULL,
  `gmt_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('3791532340293158874', '第三方机构', '2017-08-21 20:15:13', '2017-08-21 20:15:21');
INSERT INTO `role` VALUES ('3791532340293158875', '用户', '2017-08-21 20:14:50', '2017-08-21 20:14:53');
INSERT INTO `role` VALUES ('3791532340293158876', '管理员', '2017-08-21 20:14:27', '2017-08-21 20:14:30');

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` decimal(19,0) NOT NULL,
  `search_content` varchar(100) NOT NULL,
  `resource_id` decimal(19,0) NOT NULL,
  `search_count` int(11) NOT NULL DEFAULT '0',
  `user_id` decimal(19,0) NOT NULL,
  `is_three_part` tinyint(1) NOT NULL COMMENT '0 all resources 1 three part',
  `gmt_create` datetime NOT NULL,
  `gmt_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('903102847841865728', '人月神话', '903099722208776192', '1', '3791532340293158894', '1', '2017-08-31 11:51:12', null);
INSERT INTO `search` VALUES ('903102869564166144', '算法导论', '903099516083900416', '2', '3791532340293158894', '1', '2017-08-31 11:51:17', '2017-08-31 11:51:35');
INSERT INTO `search` VALUES ('903102893874352128', '深入理解计算机系统', '903099406025363456', '1', '3791532340293158894', '1', '2017-08-31 11:51:23', null);
INSERT INTO `search` VALUES ('903102921032470528', '程序开发心理学', '903099103775428608', '1', '3791532340293158894', '1', '2017-08-31 11:51:29', null);
INSERT INTO `search` VALUES ('903102966477754368', '计算机程序设计艺术', '903099346189422592', '3', '3791532340293158894', '1', '2017-08-31 11:51:40', '2017-08-31 11:51:44');
INSERT INTO `search` VALUES ('903103018722004992', '面向对象分析与设计（原书第2版）', '903098831615430656', '2', '3791532340293158894', '1', '2017-08-31 11:51:53', '2017-08-31 11:51:55');
INSERT INTO `search` VALUES ('903103059834572800', '围棋入门', '903095087972618240', '1', '3791532340293158894', '1', '2017-08-31 11:52:02', null);
INSERT INTO `search` VALUES ('903103091723866112', '五子棋初步', '903095347700699136', '1', '3791532340293158894', '1', '2017-08-31 11:52:10', null);
INSERT INTO `search` VALUES ('903103142814683136', '我很忙', '903090567544705024', '1', '3791532340293158894', '1', '2017-08-31 11:52:22', null);
INSERT INTO `search` VALUES ('903103188218023936', '范特西', '903090431556980736', '3', '3791532340293158895', '1', '2017-08-31 11:52:33', '2017-08-31 11:55:18');
INSERT INTO `search` VALUES ('903103754549727232', '依然范特西', '903090617578557440', '2', '3791532340293158894', '1', '2017-08-31 11:54:48', '2017-08-31 11:54:51');
INSERT INTO `search` VALUES ('903105813831356416', '人件', '903099620534652928', '5', '3791532340293158895', '1', '2017-08-31 12:02:59', '2017-08-31 12:03:01');
INSERT INTO `search` VALUES ('903105946123898880', '人件集 —— 人性化的软件开发', '903099674263687168', '5', '3791532340293158896', '1', '2017-08-31 12:03:31', '2017-08-31 12:03:32');
INSERT INTO `search` VALUES ('903137510161518592', '英式英语听力综合篇', '903103349493207040', '3', '3791532340293158891', '1', '2017-08-31 14:08:56', '2017-08-31 16:33:30');
INSERT INTO `search` VALUES ('903139276231938048', '孩子，生命不是用来抱怨的', '903105220899377152', '1', '3791532340293158899', '1', '2017-08-31 14:15:57', null);
INSERT INTO `search` VALUES ('903173999717126144', '每日英语听力选篇', '903101563168493568', '1', '3791532340293158812', '1', '2017-08-31 16:33:56', null);
INSERT INTO `search` VALUES ('903179322473451520', 'Java编程基础', '903102261390086144', '1', '3791532340293158812', '1', '2017-08-31 16:55:05', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` decimal(19,0) NOT NULL,
  `role_id` decimal(19,0) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` char(32) NOT NULL,
  `realname` varchar(40) DEFAULT NULL,
  `user_idcard` char(18) DEFAULT NULL,
  `user_mobile` varchar(11) DEFAULT NULL,
  `user_email` varchar(32) DEFAULT NULL,
  `random_code` char(32) DEFAULT NULL,
  `gender` tinyint(1) unsigned DEFAULT NULL COMMENT '0-male; 1-female',
  `tag` varchar(40) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3791532340293158810', '3791532340293158875', 'user7', 'C4CA4238A0B923820DCC509A6F75849B', 'user7', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '软件', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158811', '3791532340293158875', 'user8', 'C4CA4238A0B923820DCC509A6F75849B', 'user8', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '英语', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158812', '3791532340293158875', 'user9', 'C4CA4238A0B923820DCC509A6F75849B', 'user9', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '数学', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158813', '3791532340293158874', 'thirdpart3', 'C4CA4238A0B923820DCC509A6F75849B', 'thirdpart3', '341024193707078933', '15822452355', '15822452355@163.com', null, '1', '英语', '0000-00-00 00:00:00', null);
INSERT INTO `user` VALUES ('3791532340293158890', '3791532340293158876', 'admin', 'C4CA4238A0B923820DCC509A6F75849B', 'admin', '341024193707078933', '15822452355', '15822452355@163.com', null, '1', '软件工程师', '2017-08-17 19:19:43', '2017-08-17 19:19:46');
INSERT INTO `user` VALUES ('3791532340293158891', '3791532340293158875', 'user10', 'C4CA4238A0B923820DCC509A6F75849B', 'user10', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '体育', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158892', '3791532340293158874', 'thirdpart1', 'C4CA4238A0B923820DCC509A6F75849B', 'thirdpart1', '341024193707078933', '15822452355', '15822452355@163.com', null, '1', '软件工程师', '2017-08-21 20:18:45', '2017-08-21 20:18:51');
INSERT INTO `user` VALUES ('3791532340293158893', '3791532340293158874', 'thirdpart2', 'C4CA4238A0B923820DCC509A6F75849B', 'thirdpart2', '341024193707078933', '15822452355', '15822452355@163.com', null, '1', '软件工程师', '0000-00-00 00:00:00', null);
INSERT INTO `user` VALUES ('3791532340293158894', '3791532340293158875', 'user1', 'C4CA4238A0B923820DCC509A6F75849B', 'user1', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '经济', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158895', '3791532340293158875', 'user2', 'C4CA4238A0B923820DCC509A6F75849B', 'user2', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '文学', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158896', '3791532340293158875', 'user3', 'C4CA4238A0B923820DCC509A6F75849B', 'user3', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '科学', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158897', '3791532340293158875', 'user4', 'C4CA4238A0B923820DCC509A6F75849B', 'user4', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '编程', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158898', '3791532340293158875', 'user5', 'C4CA4238A0B923820DCC509A6F75849B', 'user5', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '计算机', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158899', '3791532340293158875', 'user6', 'C4CA4238A0B923820DCC509A6F75849B', 'user6', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '音乐', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158991', '3791532340293158875', 'user12', 'C4CA4238A0B923820DCC509A6F75849B', 'user12', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '经济', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158992', '3791532340293158875', 'user13', 'C4CA4238A0B923820DCC509A6F75849B', 'user13', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '经济', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158993', '3791532340293158875', 'user14', 'C4CA4238A0B923820DCC509A6F75849B', 'user14', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '经济', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158994', '3791532340293158875', 'user15', 'C4CA4238A0B923820DCC509A6F75849B', 'user15', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '经济', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
INSERT INTO `user` VALUES ('3791532340293158995', '3791532340293158875', 'user11', 'C4CA4238A0B923820DCC509A6F75849B', 'user11', '341024193707078933', '15822452355', '15822452355@163.com', null, '0', '经济', '2017-08-21 20:17:40', '2017-08-21 20:17:43');
