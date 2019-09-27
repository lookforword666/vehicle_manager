/*
 Navicat MySQL Data Transfer

 Source Server         : 39.100.131.79
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 39.100.131.79:3306
 Source Schema         : car_manager

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 27/09/2019 14:16:27
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
INSERT INTO `t_car` VALUES ('1177463531650060288', 'LW91105', '1177463531650060289', '3', 3, '2019-09-27 14:02:37', 0, NULL);
INSERT INTO `t_car` VALUES ('1177463613971664896', 'LW91106', '1177463613971664897', '3', 3, '2019-09-27 14:02:56', 0, NULL);
INSERT INTO `t_car` VALUES ('1177463720364380160', 'LW91107', '1177463720364380161', '6', 3, '2019-09-27 14:03:22', 0, NULL);
INSERT INTO `t_car` VALUES ('1177463850350055424', 'LW91108', '1177463850350055425', '3', 3, '2019-09-27 14:03:53', 0, NULL);
INSERT INTO `t_car` VALUES ('1177463974279155712', 'LW91109', '1177463974279155713', '3', 3, '2019-09-27 14:04:22', 0, NULL);
INSERT INTO `t_car` VALUES ('1177464165442949120', 'LW91110', '1177464165442949121', '6', 3, '2019-09-27 14:05:08', 0, NULL);
INSERT INTO `t_car` VALUES ('1177464351275782144', 'LW91111', '1177464351275782145', '1', 3, '2019-09-27 14:05:52', 0, NULL);
INSERT INTO `t_car` VALUES ('1177464601830920192', 'LW91112', '1177464601830920193', '5', 3, '2019-09-27 14:06:52', 0, NULL);
INSERT INTO `t_car` VALUES ('1177464849051586560', 'LW91113', '1177464849051586561', '2', 3, '2019-09-27 14:07:51', 0, NULL);
INSERT INTO `t_car` VALUES ('1177465033697431552', 'LW91114', '1177465033697431553', '0', 3, '2019-09-27 14:08:35', 0, NULL);
INSERT INTO `t_car` VALUES ('1177465197128486912', 'LW91115', '1177463720364380161', '3', 3, '2019-09-27 14:09:14', 0, NULL);
INSERT INTO `t_car` VALUES ('1177465522983964672', 'LW91116', '1177464601830920193', '3', 3, '2019-09-27 14:10:32', 0, NULL);
INSERT INTO `t_car` VALUES ('1177465813330464768', 'LW91117', '1177465813330464769', '3', 3, '2019-09-27 14:11:41', 0, NULL);
INSERT INTO `t_car` VALUES ('1177465930590621696', 'LW91118', '1177464849051586561', '8', 3, '2019-09-27 14:12:09', 0, NULL);
INSERT INTO `t_car` VALUES ('1177466067329126400', 'LW91119', '1177466067329126401', '6', 3, '2019-09-27 14:12:41', 0, NULL);
INSERT INTO `t_car` VALUES ('1177466286250823680', 'LW91120', '1177465033697431553', '6', 3, '2019-09-27 14:13:34', 0, NULL);
INSERT INTO `t_car` VALUES ('1177466411253665792', 'LW91163', '1177465813330464769', '7', 3, '2019-09-27 14:14:03', 0, NULL);
INSERT INTO `t_car` VALUES ('1177466557085421568', 'LW93163', '1177466557085421569', '9', 3, '2019-09-27 14:14:38', 0, NULL);
INSERT INTO `t_car` VALUES ('1177466667060072448', 'LW99113', '1177466067329126401', '10', 3, '2019-09-27 14:15:04', 0, NULL);
INSERT INTO `t_car` VALUES ('1177466756335833088', 'LW99112', '1177463720364380161', '11', 3, '2019-09-27 14:15:26', 0, NULL);
INSERT INTO `t_car` VALUES ('1177466864641150976', 'LW99114', '1177464351275782145', '12', 3, '2019-09-27 14:15:51', 0, NULL);
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
INSERT INTO `t_car_type` VALUES ('1', '0', '金杯救护');
INSERT INTO `t_car_type` VALUES ('10', '9', '本田雅阁');
INSERT INTO `t_car_type` VALUES ('11', '10', '江淮客货');
INSERT INTO `t_car_type` VALUES ('12', '11', '东风');
INSERT INTO `t_car_type` VALUES ('13', '12', '衡山大客车');
INSERT INTO `t_car_type` VALUES ('2', '1', '大众帕萨特');
INSERT INTO `t_car_type` VALUES ('3', '2', '全顺');
INSERT INTO `t_car_type` VALUES ('4', '3', '红旗H7');
INSERT INTO `t_car_type` VALUES ('5', '4', '大众');
INSERT INTO `t_car_type` VALUES ('6', '5', '金杯');
INSERT INTO `t_car_type` VALUES ('7', '6', '红旗B70');
INSERT INTO `t_car_type` VALUES ('8', '7', '红旗B90');
INSERT INTO `t_car_type` VALUES ('9', '8', '大众迈腾');
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
INSERT INTO `t_destination` VALUES ('610538534436864', '明孝陵', '2019-08-25 21:03:03');
INSERT INTO `t_destination` VALUES ('610574374764544', '十三陵', '2019-08-25 21:03:12');
INSERT INTO `t_destination` VALUES ('724948895584256', '33333', '2019-09-25 13:07:45');
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
INSERT INTO `t_driver` VALUES ('1177463531650060289', '闫磊', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177463613971664897', '杨茂富', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177463720364380161', '田健', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177463850350055425', '孔令超', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177463974279155713', '陈秋华', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177464165442949121', '王财源', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177464351275782145', '连潇', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177464601830920193', '刘观川', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177464849051586561', '王广扩', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177465033697431553', '范可磊', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177465813330464769', '王威', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177466067329126401', '刘鹏', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `t_driver` VALUES ('1177466557085421569', '王杰', NULL, NULL, NULL, NULL, 0, NULL);
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
INSERT INTO `t_driver_use_man` VALUES ('106268278095872', '孙中山', '0', '18888888888', '1888888888', NULL, 1, '三民主义');
INSERT INTO `t_driver_use_man` VALUES ('116145581747232', '李世民', '1', '13948151026', '4209811201201', NULL, 0, '大唐第二君主，圣君，千古一帝');
INSERT INTO `t_driver_use_man` VALUES ('192896535498752', '朱元璋', '1', '1', '1', NULL, 0, '大明开国君主');
INSERT INTO `t_driver_use_man` VALUES ('2', '李渊', '2', '18564783306', '4209811201201', NULL, 0, '李唐天下开国君主');
INSERT INTO `t_driver_use_man` VALUES ('221655456456704', '李善长', '3', '13476091609', '42222', NULL, 0, '大明第二任丞相');
INSERT INTO `t_driver_use_man` VALUES ('288045106364416', '刘伯温', '2', '11', '11', NULL, 1, '11');
INSERT INTO `t_driver_use_man` VALUES ('3', '刘邦', '1', '16844780614', '4209811201201', NULL, 0, '大汉开国君主，千古一帝');
INSERT INTO `t_driver_use_man` VALUES ('306046819643392', '姬昌', '0', '17637837837', '178323892389338999', NULL, 1, '大周开国君主');
INSERT INTO `t_driver_use_man` VALUES ('306208921104384', '朱允炆', '0', '3', '3', NULL, 1, '3');
INSERT INTO `t_driver_use_man` VALUES ('347296509624320', '刘雪川', '1168347166960156673', '', '', NULL, 0, '');
INSERT INTO `t_driver_use_man` VALUES ('494928455344128', '刘彻', '4', '12707320585', '4209811201201', NULL, 0, '大汉第二代领导集体，汉武帝，犯我强汉者虽远必诛');
INSERT INTO `t_driver_use_man` VALUES ('506809953865728', '朱重八', '2', '18984693202', '4209811201201', NULL, 0, '大明开国君主');
INSERT INTO `t_driver_use_man` VALUES ('511622493683712', '嬴政', '2', '18788283838', '143343199809230019', NULL, 0, '大秦统一六国后君主，暴君');
INSERT INTO `t_driver_use_man` VALUES ('554387646672896', '杨戬', '0', '18989890909', '189898198909890999', NULL, 1, '玉鼎真人弟子，辅佐姜太公伐商');
INSERT INTO `t_driver_use_man` VALUES ('578498511212544', '朱标', '2', '14736980548', '4209811201201', NULL, 0, '大明开国后第一任太子');
INSERT INTO `t_driver_use_man` VALUES ('715284943486976', '朱隶', '1', 'a', 'a', NULL, 1, 'a');
INSERT INTO `t_driver_use_man` VALUES ('715530230579200', '朱高炽', '1', 'a', 'a', NULL, 1, 'a');
INSERT INTO `t_driver_use_man` VALUES ('716389513445376', '朱由校', '2', '1', '1', NULL, 1, '1');
INSERT INTO `t_driver_use_man` VALUES ('748796396466176', '朱由检', '3', '1', '1', NULL, 1, '1');
INSERT INTO `t_driver_use_man` VALUES ('750174225793024', '拓跋宏', '0', '18990909898', '189098199809090099', NULL, 0, '大魏皇帝，鲜卑皇帝，汉化改革');
INSERT INTO `t_driver_use_man` VALUES ('750489603899392', '郭鑫年', '0', '13434343434', '123123133212122211', NULL, 0, '你是不是死了');
INSERT INTO `t_driver_use_man` VALUES ('750644809924608', '罗帷', '0', '13212124323', '123123112212121122', NULL, 0, '张小龙');
INSERT INTO `t_driver_use_man` VALUES ('752010248814592', '铁木真', '3', '2323', '2323', NULL, 0, '蒙古鬼子领导者，邪魔的化身');
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
  `t_man` int(11) DEFAULT NULL COMMENT '人数',
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
  `t_car_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`t_paiche_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
INSERT INTO `t_user` VALUES ('1164551917059031040', 'zyz', '朱元璋', 'e10adc3949ba59abbe56e057f20f883e', 1, '朱重八', 2);
INSERT INTO `t_user` VALUES ('169102634807296', 'user', '操作员', 'e10adc3949ba59abbe56e057f20f883e', 0, '操作员', 2);
INSERT INTO `t_user` VALUES ('449602402295808', 'admin', '系统管理员', 'e10adc3949ba59abbe56e057f20f883e', 0, '系统管理员', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
