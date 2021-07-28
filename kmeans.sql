/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100419
 Source Host           : localhost:3306
 Source Schema         : kmeans

 Target Server Type    : MySQL
 Target Server Version : 100419
 File Encoding         : 65001

 Date: 28/07/2021 21:49:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ico` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menusubmenu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `multilevel` bit(1) NULL DEFAULT NULL,
  `separator` bit(1) NULL DEFAULT NULL,
  `order` int(255) NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `AllowMobile` bit(1) NULL DEFAULT NULL,
  `MobileRoute` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MobileLogo` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (2, 'Daftar Variable', 'data', 'fa-pencil-square-o', '0', b'0', b'0', 2, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (3, 'Daftar Centroid Awal', 'centroidawal', 'fa-pencil-square-o', '0', b'0', b'0', 3, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (5, 'Perhitungan', 'proses', 'fa-spinner', '0', b'0', b'0', 6, b'1', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for permissionrole
-- ----------------------------
DROP TABLE IF EXISTS `permissionrole`;
CREATE TABLE `permissionrole`  (
  `roleid` int(11) NOT NULL,
  `permissionid` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissionrole
-- ----------------------------
INSERT INTO `permissionrole` VALUES (1, 1);
INSERT INTO `permissionrole` VALUES (1, 2);
INSERT INTO `permissionrole` VALUES (1, 3);
INSERT INTO `permissionrole` VALUES (1, 4);
INSERT INTO `permissionrole` VALUES (1, 5);
INSERT INTO `permissionrole` VALUES (2, 2);
INSERT INTO `permissionrole` VALUES (1, 6);
INSERT INTO `permissionrole` VALUES (2, 6);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin');
INSERT INTO `roles` VALUES (2, 'Operator');

-- ----------------------------
-- Table structure for tcentroid
-- ----------------------------
DROP TABLE IF EXISTS `tcentroid`;
CREATE TABLE `tcentroid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KodeData` int(255) NOT NULL,
  `Centroid` int(11) NOT NULL,
  `Asset` double(16, 4) NOT NULL,
  `JmlPekerja` double(16, 4) NOT NULL,
  `Omset` double(16, 4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tcentroid
-- ----------------------------
INSERT INTO `tcentroid` VALUES (1, 11, 1, 2.0000, 2.0000, 2.0000);
INSERT INTO `tcentroid` VALUES (2, 15, 2, 3.0000, 1.0000, 1.0000);
INSERT INTO `tcentroid` VALUES (3, 19, 3, 1.0000, 1.0000, 1.0000);

-- ----------------------------
-- Table structure for tdata
-- ----------------------------
DROP TABLE IF EXISTS `tdata`;
CREATE TABLE `tdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Asset` double(16, 4) NOT NULL,
  `JmlPekerja` double(16, 4) NOT NULL,
  `Omset` double(16, 4) NULL DEFAULT NULL,
  `Koordinat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `JenisUsaha` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tdata
-- ----------------------------
INSERT INTO `tdata` VALUES (1, 'Danang Jadi Suroso', '-8.001467877016337, 110.94236324186754', 2.0000, 1.0000, 1.0000, '-8.001467877016337, 110.94236324186754', 'Peyek 1');
INSERT INTO `tdata` VALUES (2, 'Didik Darmadi', '-8.000869646143155, 110.94405324394953', 2.0000, 1.0000, 2.0000, '-8.000869646143155, 110.94405324394953', 'Tahu');
INSERT INTO `tdata` VALUES (3, 'Paimin Sugiarto', '-7.996078013095501, 110.94451458390513', 2.0000, 1.0000, 1.0000, '-7.996078013095501, 110.94451458390513', 'Tempe Kripik');
INSERT INTO `tdata` VALUES (4, 'Kelompok Tirto', '-7.996011609804214, 110.94433755810272', 1.0000, 3.0000, 1.0000, '-7.996011609804214, 110.94433755810272', 'Tempe Kripik');
INSERT INTO `tdata` VALUES (5, 'Candra', '-7.995267892178499, 110.94435096916085', 1.0000, 1.0000, 1.0000, '-7.995267892178499, 110.94435096916085', 'Tempe Kripik');
INSERT INTO `tdata` VALUES (6, 'Darmini', '-7.9902189789208995, 110.93834394550865', 1.0000, 1.0000, 1.0000, '-7.9902189789208995, 110.93834394550865', 'Tempe Kripik');
INSERT INTO `tdata` VALUES (7, 'Daryanto', '-7.989533686590662, 110.93750441409186', 1.0000, 1.0000, 1.0000, '-7.989533686590662, 110.93750441409186', 'Tempe Kripik');
INSERT INTO `tdata` VALUES (8, 'Suyati', '-8.001048128587708, 110.94041378403283', 2.0000, 3.0000, 1.0000, '-8.001048128587708, 110.94041378403283', 'Tempe Kripik');
INSERT INTO `tdata` VALUES (9, 'Heri Phutut Sugiarto', '-8.001558099284578, 110.93927384516027', 2.0000, 1.0000, 2.0000, '-8.001558099284578, 110.93927384516027', 'Peyek');
INSERT INTO `tdata` VALUES (10, 'Agus Sartono', '-8.000870169905374, 110.93699664969756', 1.0000, 1.0000, 1.0000, '-8.000870169905374, 110.93699664969756', 'Rambak');
INSERT INTO `tdata` VALUES (11, 'Danang Anggoro', '-7.985997869092734, 110.91997887225902', 1.0000, 1.0000, 1.0000, '-7.985997869092734, 110.91997887225902', 'Karak');
INSERT INTO `tdata` VALUES (12, 'Wahyono', '-7.986115387187872, 110.91906827247006', 1.0000, 1.0000, 2.0000, '-7.986115387187872, 110.91906827247006', 'Karak');
INSERT INTO `tdata` VALUES (13, 'Joko Sumanto', '-7.986436048067815, 110.92024585680441', 2.0000, 1.0000, 1.0000, '-7.986436048067815, 110.92024585680441', 'Karak');
INSERT INTO `tdata` VALUES (14, 'Edy Suryanto', '-7.987159860352496, 110.91823151782899', 2.0000, 2.0000, 2.0000, '-7.987159860352496, 110.91823151782899', 'Karak');
INSERT INTO `tdata` VALUES (15, 'Agus Kuncoro', '-7.986574170146446, 110.91843000131381', 2.0000, 1.0000, 2.0000, '-7.986574170146446, 110.91843000131381', 'Karak');
INSERT INTO `tdata` VALUES (16, 'Widi Murjito', '-7.985659956625658, 110.91724347711232', 2.0000, 1.0000, 2.0000, '-7.985659956625658, 110.91724347711232', 'Karak');
INSERT INTO `tdata` VALUES (17, 'Sayem', '-7.9850019386242845, 110.91738393307814', 1.0000, 1.0000, 1.0000, '-7.9850019386242845, 110.91738393307814', 'Rengginang');
INSERT INTO `tdata` VALUES (18, 'Slamet', '-7.984168982894617, 110.918084085619', 1.0000, 1.0000, 1.0000, '-7.984168982894617, 110.918084085619', 'Rengginang');
INSERT INTO `tdata` VALUES (19, 'Sukiman', '-7.985273856541108, 110.91912503546054', 1.0000, 1.0000, 3.0000, '-7.985273856541108, 110.91912503546054', 'Rengginang');

-- ----------------------------
-- Table structure for thasil
-- ----------------------------
DROP TABLE IF EXISTS `thasil`;
CREATE TABLE `thasil`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KodeData` int(255) NOT NULL,
  `Keanggotaan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iterasi` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thasil
-- ----------------------------
INSERT INTO `thasil` VALUES (1, 1, 'C2', 2);
INSERT INTO `thasil` VALUES (2, 2, 'C1', 2);
INSERT INTO `thasil` VALUES (3, 3, 'C2', 2);
INSERT INTO `thasil` VALUES (4, 4, 'C1', 2);
INSERT INTO `thasil` VALUES (5, 5, 'C3', 2);
INSERT INTO `thasil` VALUES (6, 6, 'C3', 2);
INSERT INTO `thasil` VALUES (7, 7, 'C3', 2);
INSERT INTO `thasil` VALUES (8, 8, 'C1', 2);
INSERT INTO `thasil` VALUES (9, 9, 'C1', 2);
INSERT INTO `thasil` VALUES (10, 10, 'C3', 2);
INSERT INTO `thasil` VALUES (11, 11, 'C3', 2);
INSERT INTO `thasil` VALUES (12, 12, 'C3', 2);
INSERT INTO `thasil` VALUES (13, 13, 'C2', 2);
INSERT INTO `thasil` VALUES (14, 14, 'C1', 2);
INSERT INTO `thasil` VALUES (15, 15, 'C1', 2);
INSERT INTO `thasil` VALUES (16, 16, 'C1', 2);
INSERT INTO `thasil` VALUES (17, 17, 'C3', 2);
INSERT INTO `thasil` VALUES (18, 18, 'C3', 2);
INSERT INTO `thasil` VALUES (19, 19, 'C1', 2);

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole`  (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES (14, 1);
INSERT INTO `userrole` VALUES (43, 2);
INSERT INTO `userrole` VALUES (52, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdon` datetime(0) NULL DEFAULT NULL,
  `HakAkses` int(255) NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verified` bit(1) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (14, 'admin', 'admin', 'a9bdd47d7321d4089b3b00561c9c621848bd6f6e2f745a53d54913d613789c23945b66de6ded1eb336a7d526f9349a9d964d6f6c3a40e2ac90b4b16c0121f7895Xg53McbkyQ/NmW60Sf4cu3wJsi/8cyZXxeXV7g6b04=', 'mnl', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (43, 'operator', 'Operator', 'a9bdd47d7321d4089b3b00561c9c621848bd6f6e2f745a53d54913d613789c23945b66de6ded1eb336a7d526f9349a9d964d6f6c3a40e2ac90b4b16c0121f7895Xg53McbkyQ/NmW60Sf4cu3wJsi/8cyZXxeXV7g6b04=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- View structure for vw_data
-- ----------------------------
DROP VIEW IF EXISTS `vw_data`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_data` AS SELECT 
	a.id, a.Nama,
	a.Asset ND_Asset,
	a.JmlPekerja ND_JmlPekerja,
	a.Omset ND_Omset
FROM tdata a ;

-- ----------------------------
-- View structure for vw_normalisasidata
-- ----------------------------
DROP VIEW IF EXISTS `vw_normalisasidata`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_normalisasidata` AS SELECT 
	a.id, a.Nama,
	((((a.JmlProduksi-(SELECT MIN(JmlProduksi) FROM tdata)))/((SELECT MAX(JmlProduksi) FROM tdata)-(SELECT MIN(JmlProduksi) FROM tdata)))) ND_JmlProduksi,
	((((a.JmlPekerja-(SELECT MIN(JmlPekerja) FROM tdata)))/((SELECT MAX(JmlPekerja) FROM tdata)-(SELECT MIN(JmlPekerja) FROM tdata)))) ND_JmlPekerja,
	((((a.Omset-(SELECT MIN(Omset) FROM tdata)))/((SELECT MAX(Omset) FROM tdata)-(SELECT MIN(Omset) FROM tdata)))) ND_Omset
FROM tdata a ;

SET FOREIGN_KEY_CHECKS = 1;
