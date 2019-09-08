/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : car_manager

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 09/09/2019 00:09:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `t_car_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆ID主键（uuid）',
  `t_car_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车牌号',
  `t_car_driver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `t_car_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车辆类型',
  `t_status` int(9) DEFAULT NULL COMMENT '车辆状态 0：执勤 1：封存 2：待命 3：保养 4：在修 5：待修 6：带料 7：待报废 8：保养',
  `t_create_date` datetime DEFAULT NULL COMMENT '新增日期',
  `t_data_status` int(2) DEFAULT NULL COMMENT '数据状态',
  `t_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`t_car_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car
-- ----------------------------
BEGIN;
INSERT INTO `t_car` VALUES ('1168346993542463488', 'LW91156', '1168346993542463489', '1', 2, '2019-09-02 10:16:45', 0, 'dad');
INSERT INTO `t_car` VALUES ('1170460464628224000', '99999', '1170460464628224001', '0', 2, '2019-09-08 06:14:56', 0, NULL);
INSERT INTO `t_car` VALUES ('1170514998859771904', '000000', '1170514998859771905', '0', 2, '2019-09-08 09:51:38', 0, NULL);
INSERT INTO `t_car` VALUES ('352834295492608', '云W9116', '1170344602684452865', '1', 2, '2019-09-07 23:07:14', 0, NULL);
INSERT INTO `t_car` VALUES ('369598903386112', '京A3569', '1170361105433497601', '1', 2, '2019-09-08 00:13:51', 0, NULL);
INSERT INTO `t_car` VALUES ('461939681054720', '111', '1170460464628224001', '1', 2, '2019-09-08 06:20:47', 0, NULL);
INSERT INTO `t_car` VALUES ('464946632065024', '鄂Q1111', '1170361105433497601', '1', 2, '2019-09-08 06:32:44', 0, NULL);
INSERT INTO `t_car` VALUES ('465618198855680', '999999', '1170460464628224001', '1', 2, '2019-09-08 06:35:24', 0, NULL);
INSERT INTO `t_car` VALUES ('469780416417792', '87983293', '1170469780366086144', '1', 2, '2019-09-08 06:51:57', 0, NULL);
INSERT INTO `t_car` VALUES ('470334257483776', '87983293999', '1170470334211346433', '1', 2, '2019-09-08 06:54:09', 0, NULL);
INSERT INTO `t_car` VALUES ('471975207690240', '3999', '1170361105433497601', '1', 2, '2019-09-08 07:00:40', 0, NULL);
INSERT INTO `t_car` VALUES ('472215335788544', '4567889', '1170344602684452865', '1', 2, '2019-09-08 07:01:37', 0, NULL);
INSERT INTO `t_car` VALUES ('555005002899456', '333333331', '1170555004977733632', '1', 2, '2019-09-08 12:30:36', 0, NULL);
INSERT INTO `t_car` VALUES ('557188880535552', '', '1170557188851175424', '1', 2, '2019-09-08 12:39:16', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_car_status
-- ----------------------------
DROP TABLE IF EXISTS `t_car_status`;
CREATE TABLE `t_car_status` (
  `car_status_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆状态id',
  `status_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  `status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态名称',
  PRIMARY KEY (`car_status_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car_status
-- ----------------------------
BEGIN;
INSERT INTO `t_car_status` VALUES ('1', '1', '在勤');
INSERT INTO `t_car_status` VALUES ('2', '2', '待勤');
INSERT INTO `t_car_status` VALUES ('3', '3', '待命');
COMMIT;

-- ----------------------------
-- Table structure for t_car_type
-- ----------------------------
DROP TABLE IF EXISTS `t_car_type`;
CREATE TABLE `t_car_type` (
  `car_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆类型id',
  `type_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆类型编码',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆类型名称',
  PRIMARY KEY (`car_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_car_type
-- ----------------------------
BEGIN;
INSERT INTO `t_car_type` VALUES ('1', '0', '解放');
INSERT INTO `t_car_type` VALUES ('2', '1', '奔驰');
INSERT INTO `t_car_type` VALUES ('3', '2', '奥迪');
INSERT INTO `t_car_type` VALUES ('4', '3', '奇瑞');
INSERT INTO `t_car_type` VALUES ('5', '4', '大众');
COMMIT;

-- ----------------------------
-- Table structure for t_destination
-- ----------------------------
DROP TABLE IF EXISTS `t_destination`;
CREATE TABLE `t_destination` (
  `t_des_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_des_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `t_des_time` datetime DEFAULT NULL,
  PRIMARY KEY (`t_des_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_destination
-- ----------------------------
BEGIN;
INSERT INTO `t_destination` VALUES ('102642935721984', '京城', '2019-08-24 11:24:51');
INSERT INTO `t_destination` VALUES ('107768098291712', '金陵', '2019-08-24 11:45:13');
INSERT INTO `t_destination` VALUES ('107808795623424', '应天', '2019-08-24 11:45:23');
INSERT INTO `t_destination` VALUES ('107848922529792', '长安', '2019-08-24 11:45:32');
INSERT INTO `t_destination` VALUES ('107873987690496', '咸阳', '2019-08-24 11:45:38');
INSERT INTO `t_destination` VALUES ('107932200435712', '楚国', '2019-08-24 11:45:52');
INSERT INTO `t_destination` VALUES ('107976987213824', '燕国', '2019-08-24 11:46:03');
INSERT INTO `t_destination` VALUES ('267136621412352', '北京大学', '2019-08-24 22:18:30');
INSERT INTO `t_destination` VALUES ('271848973082624', '中关村', '2019-08-24 22:37:13');
INSERT INTO `t_destination` VALUES ('271908817412096', '台湾', '2019-08-24 22:37:27');
INSERT INTO `t_destination` VALUES ('522463408021504', '444', '2019-09-08 10:21:17');
INSERT INTO `t_destination` VALUES ('525609404465152', '233222', '2019-09-08 10:33:47');
INSERT INTO `t_destination` VALUES ('526687986544640', '5555', '2019-09-08 10:38:04');
INSERT INTO `t_destination` VALUES ('527227155935232', '555', '2019-09-08 10:40:13');
INSERT INTO `t_destination` VALUES ('532224715280384', '4', '2019-09-08 11:00:04');
INSERT INTO `t_destination` VALUES ('537279522693120', '44', '2019-09-08 11:20:11');
INSERT INTO `t_destination` VALUES ('610202386137088', '中湾', '2019-08-25 21:01:43');
INSERT INTO `t_destination` VALUES ('610319897952256', '清华大学', '2019-08-25 21:02:11');
INSERT INTO `t_destination` VALUES ('610394011303936', '阿里巴巴大厦', '2019-08-25 21:02:29');
INSERT INTO `t_destination` VALUES ('610472423817216', '夫子庙', '2019-08-25 21:02:47');
INSERT INTO `t_destination` VALUES ('610538534436864', '明孝陵', '2019-08-25 21:03:03');
INSERT INTO `t_destination` VALUES ('610574374764544', '十三陵', '2019-08-25 21:03:12');
INSERT INTO `t_destination` VALUES ('902819151572992', '', '2019-09-06 17:19:02');
COMMIT;

-- ----------------------------
-- Table structure for t_driver
-- ----------------------------
DROP TABLE IF EXISTS `t_driver`;
CREATE TABLE `t_driver` (
  `t_driver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员id 主键（uuid)',
  `t_drive_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '驾驶员姓名',
  `t_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属部门',
  `t_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `t_card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证号',
  `t_status` int(3) DEFAULT NULL COMMENT '驾驶员状态 1：空闲 2：任务中 3：休息中',
  `t_data_status` int(2) DEFAULT NULL COMMENT '数据状态',
  `t_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`t_driver_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driver
-- ----------------------------
BEGIN;
INSERT INTO `t_driver` VALUES ('1168346993542463489', '刘雪川', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170344602684452865', '刘彻', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170361105433497601', '李善长', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170460464628224001', '000', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170469780366086144', '10101022', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170472325012643840', '9090', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170514998859771905', '999', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170538518943731713', '78878', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170542880474619904', '李渊', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170555004977733632', '3333333', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1170557188851175424', '', NULL, NULL, NULL, NULL, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_driver_department
-- ----------------------------
DROP TABLE IF EXISTS `t_driver_department`;
CREATE TABLE `t_driver_department` (
  `department_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_date` datetime DEFAULT NULL,
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driver_department
-- ----------------------------
BEGIN;
INSERT INTO `t_driver_department` VALUES ('1', '0', '技术部', '2019-08-30 13:19:51');
INSERT INTO `t_driver_department` VALUES ('1168347166960156672', '1168347166960156673', '科技部', '2019-09-02 10:17:26');
INSERT INTO `t_driver_department` VALUES ('2', '1', '人事部', '2019-08-29 13:19:58');
INSERT INTO `t_driver_department` VALUES ('3', '2', '财务部', '2019-08-30 13:39:45');
INSERT INTO `t_driver_department` VALUES ('4', '3', '后勤部', '2019-08-30 13:39:50');
INSERT INTO `t_driver_department` VALUES ('5', '4', '销售部', '2019-08-30 13:39:54');
COMMIT;

-- ----------------------------
-- Table structure for t_driver_status
-- ----------------------------
DROP TABLE IF EXISTS `t_driver_status`;
CREATE TABLE `t_driver_status` (
  `driver_status_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '人员状态id',
  `status_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态码',
  `status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态名称',
  PRIMARY KEY (`driver_status_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driver_status
-- ----------------------------
BEGIN;
INSERT INTO `t_driver_status` VALUES ('1', '1', '空闲');
INSERT INTO `t_driver_status` VALUES ('2', '2', '任务中');
INSERT INTO `t_driver_status` VALUES ('3', '3', '休息中');
COMMIT;

-- ----------------------------
-- Table structure for t_driver_use_man
-- ----------------------------
DROP TABLE IF EXISTS `t_driver_use_man`;
CREATE TABLE `t_driver_use_man` (
  `t_driver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用车人id 主键（uuid)',
  `t_use_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用车人姓名',
  `t_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属部门',
  `t_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `t_card_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证号',
  `t_status` int(3) DEFAULT NULL COMMENT '驾驶员状态 0：空闲 1：任务中 2：休息中',
  `t_data_status` int(2) DEFAULT NULL COMMENT '数据状态',
  `t_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`t_driver_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_driver_use_man
-- ----------------------------
BEGIN;
INSERT INTO `t_driver_use_man` VALUES ('1', '赵构', '1', '13477098836', '4209811201201', NULL, 1, '大宋最后两代君主');
INSERT INTO `t_driver_use_man` VALUES ('105276513456128', '玄烨', '1', '1', '1', NULL, 0, '满清入关第二位君主，千古一帝');
INSERT INTO `t_driver_use_man` VALUES ('106268278095872', '孙中山', '0', '18888888888', '1888888888', NULL, 0, '三民主义');
INSERT INTO `t_driver_use_man` VALUES ('116145581747232', '李世民', '1', '13948151026', '4209811201201', NULL, 0, '大唐第二君主，圣君，千古一帝');
INSERT INTO `t_driver_use_man` VALUES ('192896535498752', '朱元璋', '1', '1', '1', NULL, 0, '大明开国君主');
INSERT INTO `t_driver_use_man` VALUES ('2', '李渊', '2', '18564783306', '4209811201201', NULL, 0, '李唐天下开国君主');
INSERT INTO `t_driver_use_man` VALUES ('221655456456704', '李善长', '3', '13476091609', '42222', NULL, 0, '大明第二任丞相');
INSERT INTO `t_driver_use_man` VALUES ('268347862990848', '中华居内以制四海', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver_use_man` VALUES ('288045106364416', '刘伯温', '2', '11', '11', NULL, 1, '11');
INSERT INTO `t_driver_use_man` VALUES ('3', '刘邦', '1', '16844780614', '4209811201201', NULL, 0, '大汉开国君主，千古一帝');
INSERT INTO `t_driver_use_man` VALUES ('306046819643392', '姬昌', '0', '17637837837', '178323892389338999', NULL, 1, '大周开国君主');
INSERT INTO `t_driver_use_man` VALUES ('306208921104384', '朱允炆', '0', '3', '3', NULL, 1, '3');
INSERT INTO `t_driver_use_man` VALUES ('347296509624320', '刘雪川', '1168347166960156673', '', '', NULL, 0, '');
INSERT INTO `t_driver_use_man` VALUES ('366771728601088', '', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver_use_man` VALUES ('494928455344128', '刘彻', '4', '12707320585', '4209811201201', NULL, 0, '大汉第二代领导集体，汉武帝，犯我强汉者虽远必诛');
INSERT INTO `t_driver_use_man` VALUES ('506809953865728', '朱重八', '2', '18984693202', '4209811201201', NULL, 0, '大明开国君主');
INSERT INTO `t_driver_use_man` VALUES ('511622493683712', '嬴政', '2', '18788283838', '143343199809230019', NULL, 0, '大秦统一六国后君主，暴君');
INSERT INTO `t_driver_use_man` VALUES ('538339859533824', '44', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver_use_man` VALUES ('554387646672896', '杨戬', '0', '18989890909', '189898198909890999', NULL, 0, '玉鼎真人弟子，辅佐姜太公伐商');
INSERT INTO `t_driver_use_man` VALUES ('578498511212544', '朱标', '2', '14736980548', '4209811201201', NULL, 0, '大明开国后第一任太子');
INSERT INTO `t_driver_use_man` VALUES ('715284943486976', '朱隶', '1', 'a', 'a', NULL, 1, 'a');
INSERT INTO `t_driver_use_man` VALUES ('715530230579200', '朱高炽', '1', 'a', 'a', NULL, 1, 'a');
INSERT INTO `t_driver_use_man` VALUES ('716389513445376', '朱由校', '2', '1', '1', NULL, 1, '1');
INSERT INTO `t_driver_use_man` VALUES ('748796396466176', '朱由检', '3', '1', '1', NULL, 1, '1');
INSERT INTO `t_driver_use_man` VALUES ('750174225793024', '拓跋宏', '0', '18990909898', '189098199809090099', NULL, 0, '大魏皇帝，鲜卑皇帝，汉化改革');
INSERT INTO `t_driver_use_man` VALUES ('750489603899392', '郭鑫年', '0', '13434343434', '123123133212122211', NULL, 0, '你是不是死了');
INSERT INTO `t_driver_use_man` VALUES ('750644809924608', '罗帷', '0', '13212124323', '123123112212121122', NULL, 0, '张小龙');
INSERT INTO `t_driver_use_man` VALUES ('752010248814592', '铁木真', '3', '2323', '2323', NULL, 0, '蒙古鬼子领导者，邪魔的化身');
INSERT INTO `t_driver_use_man` VALUES ('896032092291072', '奔驰', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver_use_man` VALUES ('992538885857280', '朱常洛', '0', '1', '1', NULL, 1, '1');
INSERT INTO `t_driver_use_man` VALUES ('998887292362752', '赵匡胤', '1', '44', '44', NULL, 0, '大宋开国君主');
COMMIT;

-- ----------------------------
-- Table structure for t_duty
-- ----------------------------
DROP TABLE IF EXISTS `t_duty`;
CREATE TABLE `t_duty` (
  `duty_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值班id',
  `duty_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '值班单位',
  `duty_create_date` datetime DEFAULT NULL COMMENT '制表日期',
  `duty_week` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '星期几',
  `duty_date_start` datetime DEFAULT NULL,
  `duty_date_end` datetime DEFAULT NULL,
  `duty_date` date DEFAULT NULL COMMENT '对应的日期',
  `duty_leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '值班领导',
  `duty_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '值班员',
  PRIMARY KEY (`duty_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_duty
-- ----------------------------
BEGIN;
INSERT INTO `t_duty` VALUES ('1', NULL, '2019-08-29 11:36:27', '星期一', NULL, NULL, '2019-08-26', '刘云民', '刘俊志');
INSERT INTO `t_duty` VALUES ('1166917502365900800', '卫戍区东城第四干休所', '2019-08-29 11:36:27', '星期一', NULL, NULL, '2019-09-02', '刘云民', '曾健文');
INSERT INTO `t_duty` VALUES ('1166917502642724864', '卫戍区东城第四干休所', '2019-08-29 11:36:28', '星期二', NULL, NULL, '2019-09-03', '刘云民', '刘俊志');
INSERT INTO `t_duty` VALUES ('1166917503003435008', '卫戍区东城第四干休所', '2019-08-29 11:36:28', '星期三', NULL, NULL, '2019-09-04', '刘云民', '刘骁磊');
INSERT INTO `t_duty` VALUES ('1166984907411451904', '卫戍区东城第四干休所', '2019-08-29 16:04:18', '星期一', NULL, NULL, '2019-09-02', '刘云民', '曾健文');
INSERT INTO `t_duty` VALUES ('1166984907935739904', '卫戍区东城第四干休所', '2019-08-29 16:04:18', '星期二', NULL, NULL, '2019-09-03', '刘云民', '刘俊志');
INSERT INTO `t_duty` VALUES ('1166984908199981056', '卫戍区东城第四干休所', '2019-08-29 16:04:18', '星期三', NULL, NULL, '2019-09-04', '刘云民', '刘骁磊');
INSERT INTO `t_duty` VALUES ('1166995239222939648', '卫戍区东城第四干休所', '2019-08-29 16:45:21', '星期一', NULL, NULL, '2019-09-02', '刘云民', '曾健文');
INSERT INTO `t_duty` VALUES ('1166995239550095360', '卫戍区东城第四干休所', '2019-08-29 16:45:21', '星期二', NULL, NULL, '2019-09-03', '刘云民', '刘俊志');
INSERT INTO `t_duty` VALUES ('1166995239860473856', '卫戍区东城第四干休所', '2019-08-29 16:45:22', '星期三', NULL, NULL, '2019-09-04', '刘云民', '刘骁磊');
INSERT INTO `t_duty` VALUES ('1167005714933387264', '卫戍区东城第四干休所', '2019-08-29 17:26:59', '星期一', '2019-09-02 08:00:00', '2019-09-02 08:00:00', NULL, '刘云民', '曾健文');
INSERT INTO `t_duty` VALUES ('1167005715239571456', '卫戍区东城第四干休所', '2019-08-29 17:26:59', '星期二', '2019-09-03 08:00:00', '2019-09-03 08:00:00', NULL, '刘云民', '刘俊志');
INSERT INTO `t_duty` VALUES ('1167005715600281600', '卫戍区东城第四干休所', '2019-08-29 17:26:59', '星期三', '2019-09-04 08:00:00', '2019-09-04 08:00:00', NULL, '刘云民', '刘骁磊');
INSERT INTO `t_duty` VALUES ('2', NULL, '2019-08-29 11:36:27', '星期二', NULL, NULL, '2019-08-27', '刘云民', '刘骁磊');
INSERT INTO `t_duty` VALUES ('3', NULL, '2019-08-29 11:36:27', '星期三', NULL, NULL, '2019-08-28', '刘云民', '孙海涛');
INSERT INTO `t_duty` VALUES ('4', NULL, '2019-08-29 11:36:27', '星期四', NULL, NULL, '2019-08-29', '刘云民', '曾健文');
INSERT INTO `t_duty` VALUES ('5', NULL, '2019-08-29 11:36:27', '星期五', NULL, NULL, '2019-08-30', '刘云民', '刘俊志');
INSERT INTO `t_duty` VALUES ('6', NULL, '2019-08-29 11:36:27', '星期六', NULL, NULL, '2019-08-31', '刘云民', '刘骁磊');
INSERT INTO `t_duty` VALUES ('7', NULL, '2019-08-29 11:36:27', '星期日', NULL, NULL, '2019-09-01', '刘云民', '孙海涛');
COMMIT;

-- ----------------------------
-- Table structure for t_matter
-- ----------------------------
DROP TABLE IF EXISTS `t_matter`;
CREATE TABLE `t_matter` (
  `t_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `t_cause` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '事由内容',
  `t_create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `t_data_status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_matter
-- ----------------------------
BEGIN;
INSERT INTO `t_matter` VALUES ('461939618140160', '听党指挥', '2019-09-08 06:20:47', 0);
INSERT INTO `t_matter` VALUES ('522463479324672', '有黑必扫，有，有腐必反', '2019-09-08 10:21:17', 0);
INSERT INTO `t_matter` VALUES ('527819702038528', '5555', '2019-09-08 10:42:34', 0);
INSERT INTO `t_matter` VALUES ('532224794972160', '4', '2019-09-08 11:00:04', 0);
INSERT INTO `t_matter` VALUES ('537298170568704', '44', '2019-09-08 11:20:16', 0);
INSERT INTO `t_matter` VALUES ('550831599128576', '', '2019-09-08 12:14:01', 0);
INSERT INTO `t_matter` VALUES ('972358682558464', '扫黑除恶出重拳，不获全胜不收兵', '2019-09-01 09:28:05', 0);
INSERT INTO `t_matter` VALUES ('972537208913920', '有黑必扫，有恶必除，有伞必打，有腐必反', '2019-09-01 09:28:47', 0);
INSERT INTO `t_matter` VALUES ('972613943705600', '新时代', '2019-09-01 09:29:06', 0);
INSERT INTO `t_matter` VALUES ('972674048081920', '不忘初心，牢记使命', '2019-09-01 09:29:20', 0);
COMMIT;

-- ----------------------------
-- Table structure for t_paiche
-- ----------------------------
DROP TABLE IF EXISTS `t_paiche`;
CREATE TABLE `t_paiche` (
  `t_paiche_id` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '派车单id',
  `t_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单号（流水号）',
  `t_date` datetime DEFAULT NULL COMMENT '开单日期',
  `t_dept_id` int(11) DEFAULT NULL,
  `t_use_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用车人',
  `t_cause` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '事由去向',
  `t_car_type` varchar(255) DEFAULT NULL COMMENT '人数',
  `t_weight` int(11) DEFAULT NULL COMMENT '载重',
  `t_car_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车号（车辆id)',
  `t_driver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '驾驶人ID',
  `t_des_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '目的地',
  `t_drive_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开车时间',
  `t_go_mileage` int(11) DEFAULT NULL COMMENT '出场前里程表指数',
  `t_come_mileage` int(11) DEFAULT NULL COMMENT '回场前里程表指数',
  `t_mileage` int(11) DEFAULT NULL COMMENT '行驶里程',
  `t_com_mander` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '派车人',
  `t_audit_leadership` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核领导',
  `t_return_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实际回场时间',
  `t_storage_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实际出场时间',
  `t_guji_reture_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '估计回场时间',
  `t_guji_storage_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '估计出场时间',
  `t_update_time` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新时间',
  `t_data_status` int(2) DEFAULT NULL COMMENT '数据状态 0正常 1删除',
  `t_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `t_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核状态 1取消订单 2正常订单 3已完成',
  `t_man` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_paiche_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paiche
-- ----------------------------
BEGIN;
INSERT INTO `t_paiche` VALUES ('342031588601856', '20190907222418', '2019-09-07 22:24:19', NULL, '106268278095872', '972674048081920', NULL, NULL, '1168346993542463488', '1168346993542463489', '610538534436864', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-26 13:21:33', '2019-09-07 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('538339557543936', '20190908112422', '2019-09-08 11:24:22', NULL, '538339859533824', '537298170568704', NULL, NULL, '538177221189632', '1170469780366086144', '537279522693120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-08 00:00:00', '2019-09-08 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('538518943731712', '20190908112505', '2019-09-08 11:25:05', NULL, '538339859533824', '537298170568704', NULL, NULL, '538177221189632', '1170538518943731713', '537279522693120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-08 00:00:00', '2019-09-08 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('538807063056384', '20190908112613', '2019-09-08 11:26:14', NULL, '538339859533824', '537298170568704', NULL, NULL, '538177221189632', '1170538518943731713', '537279522693120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-08 00:00:00', '2019-09-08 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('538845436743680', '20190908112705', '2019-09-08 11:27:06', NULL, '538339859533824', '537298170568704', NULL, NULL, '538177221189632', '1170538518943731713', '537279522693120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-08 00:00:00', '2019-09-08 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('540677634551808', '20190908113534', '2019-09-08 11:35:34', NULL, '538339859533824', '537298170568704', NULL, NULL, '538177221189632', '1170538518943731713', '537279522693120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-08 00:00:00', '2019-09-08 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('540677638746112', '20190908113344', '2019-09-08 11:33:45', NULL, '538339859533824', '537298170568704', NULL, NULL, '538177221189632', '1170538518943731713', '537279522693120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-08 00:00:00', '2019-09-08 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('542880382345216', '20190908114230', '2019-09-08 11:42:31', NULL, '192896535498752', '972537208913920', NULL, NULL, '464946632065024', '1170542880474619904', '610538534436864', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-26 13:21:33', '2019-09-07 00:00:00', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('555004931596288', '20190908123035', '2019-09-08 12:30:36', NULL, '366771728601088', '550831599128576', NULL, NULL, '555005002899456', '1170555004977733632', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('557188821815296', '20190908123916', '2019-09-08 12:39:16', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('557265128787968', '20190908123934', '2019-09-08 12:39:35', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('557695116251136', '20190908124117', '2019-09-08 12:41:17', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('557729396297728', '20190908124125', '2019-09-08 12:41:25', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('557946896125952', '20190908124217', '2019-09-08 12:42:17', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('558050495434752', '20190908124241', '2019-09-08 12:42:42', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('558158469402624', '20190908124307', '2019-09-08 12:43:08', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('558262760771584', '20190908124332', '2019-09-08 12:43:32', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '902819151572992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NaN-NaN-NaN NaN:NaN:NaN', 'NaN-NaN-NaN NaN:NaN:NaN', NULL, 0, NULL, '2', NULL);
INSERT INTO `t_paiche` VALUES ('558871211675648', '20190908124557', '2019-09-08 12:45:58', NULL, '366771728601088', '550831599128576', NULL, NULL, '557188880535552', '1170557188851175424', '610538534436864', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-26 13:21:33', '2019-09-07 00:00:00', NULL, 0, NULL, '2', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_paiche_car_driver
-- ----------------------------
DROP TABLE IF EXISTS `t_paiche_car_driver`;
CREATE TABLE `t_paiche_car_driver` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '派车车辆表id',
  `t_paiche_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '派车单id',
  `t_car_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车辆id',
  `t_driver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paiche_car_driver
-- ----------------------------
BEGIN;
INSERT INTO `t_paiche_car_driver` VALUES ('1', '1161229875537645568', '504456462802944', NULL);
INSERT INTO `t_paiche_car_driver` VALUES ('10', '200635453284352', '354389423931392', '116145581747232');
COMMIT;

-- ----------------------------
-- Table structure for t_paiche_driver
-- ----------------------------
DROP TABLE IF EXISTS `t_paiche_driver`;
CREATE TABLE `t_paiche_driver` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '派车驾驶员表id',
  `t_paiche_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '派车单id',
  `t_driver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '驾驶员id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paiche_driver
-- ----------------------------
BEGIN;
INSERT INTO `t_paiche_driver` VALUES ('1', '1161229875537645568', '506809953865728');
COMMIT;

-- ----------------------------
-- Table structure for t_per
-- ----------------------------
DROP TABLE IF EXISTS `t_per`;
CREATE TABLE `t_per` (
  `t_per_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限id',
  `t_per_num` int(2) NOT NULL,
  `t_per_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`t_per_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_per
-- ----------------------------
BEGIN;
INSERT INTO `t_per` VALUES ('1', 0, '管理员');
INSERT INTO `t_per` VALUES ('2', 1, '操作员');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户表主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `t_data_status` int(2) DEFAULT NULL COMMENT '数据状态',
  `t_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `t_per` int(2) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', '1', '1', 'e10adc3949ba59abbe56e057f20f883e', 0, '1', 1);
INSERT INTO `t_user` VALUES ('1161842717475389440', '123', '操作员1', '202cb962ac59075b964b07152d234b70', 0, '操作员1', 2);
INSERT INTO `t_user` VALUES ('1164551917059031040', 'zyz', '朱元璋', 'e10adc3949ba59abbe56e057f20f883e', 0, '朱重八', 2);
INSERT INTO `t_user` VALUES ('169102634807296', 'user', '操作员', 'e10adc3949ba59abbe56e057f20f883e', 0, '操作员', 2);
INSERT INTO `t_user` VALUES ('449602402295808', 'admin', '系统管理员', 'e10adc3949ba59abbe56e057f20f883e', 0, '系统管理员', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
