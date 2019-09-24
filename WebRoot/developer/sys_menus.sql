/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : jeeqs

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2017-06-28 15:50:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menus`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `ID` varchar(36) NOT NULL,
  `PARENTID` varchar(36) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `URL` longtext,
  `ISPARENT` int(11) DEFAULT NULL,
  `ICON` varchar(100) DEFAULT NULL,
  `MENUTYPE` varchar(50) NOT NULL,
  `MEMO` longtext,
  `SORTID` bigint(20) DEFAULT NULL,
  `PERMISSIONID` varchar(36) DEFAULT NULL,
  `HIDEFLAG` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('663ee0e1-0fe3-4e5e-921d-344b2d6221a1', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '数据字典', '/dictionary/index.do', null, 'icon-book-open', 'NORMAL', '', '1356656408020', null, '0');
INSERT INTO `sys_menus` VALUES ('27408f49-dfcb-4c2e-8e66-9d9b90547265', 'menu_root_id', '常用工具', null, '1', 'icon-wrench-orange', 'SHOW', '', '1465202567392', null, '0');
INSERT INTO `sys_menus` VALUES ('319639ae-6aa0-4048-846a-70674a04bf23', '8e569747-c21e-4496-a359-5473c0b26fb5', '数据权限定义', '/sysdataaccessdefine/index.do', null, 'icon-database-key', 'NORMAL', '', '1355877011374', '', '0');
INSERT INTO `sys_menus` VALUES ('menu_root_id', 'ROOT', '平台', '', '1', '', 'SYSTEM', '', null, '', '0');
INSERT INTO `sys_menus` VALUES ('6315cf11-a939-487a-902f-4713032d4a89', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '初始化', '/init/setup.do', '0', 'icon-wand', 'NORMAL', '', '1331272473803', '', '0');
INSERT INTO `sys_menus` VALUES ('61728495-b096-4a45-853f-f5f8ee66905d', '2f66d5eb-e458-438c-9abe-1a0cf5cba220', '导出', '/data/export.do', '0', 'icon-application-go', 'NORMAL', '', '1410401716864', '', '0');
INSERT INTO `sys_menus` VALUES ('8e569747-c21e-4496-a359-5473c0b26fb5', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '组织人员', null, '1', 'icon-group', 'NORMAL', '', '1358735356765', '', '0');
INSERT INTO `sys_menus` VALUES ('95da4a1a-0c8f-4573-a4da-9c32cb9cd2b2', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '系统菜单', '/sysmenu/index.do', '0', 'icon-menu', 'NORMAL', '', '1331272361303', '', '0');
INSERT INTO `sys_menus` VALUES ('36994cc6-63fc-4cc4-b11b-a63c48f73614', 'menu_root_id', '系统管理', '', '1', 'icon-setting', 'SHOW', '', '1463723008513', '', '0');
INSERT INTO `sys_menus` VALUES ('afef95df-92dd-4ca9-a4a6-bcacf3f00ca0', '8e569747-c21e-4496-a359-5473c0b26fb5', '组织机构', '/sysorganize/index.do?frontflag=false', null, 'icon-organ', 'NORMAL', '', '1353575698513', '', '0');
INSERT INTO `sys_menus` VALUES ('193a2599-f1f7-41c6-a719-2b9d73c58f6f', 'menu_root_id', '个人设置', null, '1', 'icon-wrench', 'SHOW', '', '1467363538944', null, '0');
INSERT INTO `sys_menus` VALUES ('19327733-ea2c-4885-9290-17c02bcea2a3', '61728495-b096-4a45-853f-f5f8ee66905d', '导入', '/data/importer.do', '0', 'icon-application-side-contract', 'NORMAL', '', '1487590033433', '', '0');
INSERT INTO `sys_menus` VALUES ('2f66d5eb-e458-438c-9abe-1a0cf5cba220', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '数据备份', '', '1', 'icon-save', 'NORMAL', '', '1331631831542', '', '0');
INSERT INTO `sys_menus` VALUES ('044adc9f-a6b8-4af7-8764-e733f8283d28', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '缓存管理', '/cache/index.do', '0', 'icon-database-light', 'NORMAL', '', '1353575664051', '', '0');
INSERT INTO `sys_menus` VALUES ('55bcc9c7-cf69-4898-96ea-dc7cd3331442', '27408f49-dfcb-4c2e-8e66-9d9b90547265', '万年历', '/webutil/calendar.do', '0', 'icon-date', 'NORMAL', '', '1364781697328', null, null);
INSERT INTO `sys_menus` VALUES ('5ec3bc25-788b-4bb1-bfc7-ba7a1eac0eb6', '8e569747-c21e-4496-a359-5473c0b26fb5', '系统用户', '/sysuser/index.do?frontflag=false', null, 'icon-status-online', 'NORMAL', '', '1353654169861', '', '0');
INSERT INTO `sys_menus` VALUES ('3c37c514-5bfa-469e-8b78-7aa8ef72ed99', '8e569747-c21e-4496-a359-5473c0b26fb5', '系统角色', '/sysrole/index.do?frontflag=false', null, 'icon-role', 'NORMAL', '', '1354581468233', '', '0');
INSERT INTO `sys_menus` VALUES ('40c0a795-c304-4d80-a822-9f19916de8ff', '8e569747-c21e-4496-a359-5473c0b26fb5', '功能权限定义', '/syspermission/index.do?frontflag=false', null, 'icon-shield', 'NORMAL', '', '1354691075210', '', '0');
INSERT INTO `sys_menus` VALUES ('203b57b4-9bf1-4e04-9baa-ff5f441cfe52', '203b57b4-9bf1-4e04-9baa-ff5f441cfe52', '自定义菜单', '/sysmenuuserdefined/index.do', '0', 'icon-application-side-list', 'NORMAL', '', '1487590010995', null, '0');
INSERT INTO `sys_menus` VALUES ('23d1a363-bc31-48cd-bf15-ac55d16453ba', '23d1a363-bc31-48cd-bf15-ac55d16453ba', '自定义首页面板', '/sysportaluserdefined/userDefine.do', '0', 'icon-application-view-tile', 'NORMAL', '', '1487590006489', null, '0');
INSERT INTO `sys_menus` VALUES ('d81a5fcb-6993-42ac-bfd6-930f02440c1d', 'menu_root_id', '文件管理', null, '1', 'icon-note', 'SHOW', '', '1452149682790', null, '0');
INSERT INTO `sys_menus` VALUES ('aa332900-a793-4c5d-af1d-62e2696cd0d2', 'd81a5fcb-6993-42ac-bfd6-930f02440c1d', '公共文件类型管理', '/resourcetype/index.do?type=common', '0', 'icon-note-error', 'NORMAL', '', '1359083413140', null, '0');
INSERT INTO `sys_menus` VALUES ('a8938522-6a67-497a-8fbc-4f798bca54a5', '27408f49-dfcb-4c2e-8e66-9d9b90547265', '科学计算器', '/webutil/calculator.do', '0', 'icon-calculator', 'NORMAL', '', '1364782958890', null, '0');
INSERT INTO `sys_menus` VALUES ('1bb95a0c-af51-45c6-93c7-332627656da5', 'd81a5fcb-6993-42ac-bfd6-930f02440c1d', '个人文件类型管理', '/resourcetype/index.do?type=personal', '0', 'icon-note-error', 'NORMAL', '', '1359083445203', null, '0');
INSERT INTO `sys_menus` VALUES ('9f8001e0-36bc-4981-8ada-ec118255140b', 'd81a5fcb-6993-42ac-bfd6-930f02440c1d', '文件管理', '/resourcemanage/index.do', '0', 'icon-note-edit', 'NORMAL', '', '1359338033718', null, '0');
INSERT INTO `sys_menus` VALUES ('378b32ac-5f7c-4ec1-b5c4-2213cd477fcc', 'menu_root_id', '邮件管理', null, '1', 'icon-email-edit', 'SHOW', '', '1443770623556', null, '0');
INSERT INTO `sys_menus` VALUES ('c4a328cc-7623-41a6-9ce6-dd53a6e6222f', '378b32ac-5f7c-4ec1-b5c4-2213cd477fcc', '内部邮件', '/mail/index.do', '0', 'icon-email', 'NORMAL', '', '1362548961828', null, '0');
INSERT INTO `sys_menus` VALUES ('6235722c-406d-4ffb-8208-2d28efa83998', '27408f49-dfcb-4c2e-8e66-9d9b90547265', '时钟', '/webutil/clock.do', '0', 'icon-clock', 'NORMAL', '', '1364798202750', null, '0');
INSERT INTO `sys_menus` VALUES ('f6eea876-5cea-4f9b-a95f-c192536c36d6', 'f6eea876-5cea-4f9b-a95f-c192536c36d6', '修改个人密码', '/sysuser/toUpdatePassword.do', '0', 'icon-lock', 'NORMAL', '', '1487590015079', null, '0');
INSERT INTO `sys_menus` VALUES ('bd749991-4ce1-4300-aead-92d5962b433b', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '系统配置', '/systemconfig/index.do', '0', 'icon-setting', 'NORMAL', '', '1370835386921', null, '0');
INSERT INTO `sys_menus` VALUES ('418b87b4-24ad-4f0d-b9ec-6c6822867b89', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '操作日志', '/sysoperatelog/index.do', '0', 'icon-server-database', 'NORMAL', '', '1403661529211', null, '0');
INSERT INTO `sys_menus` VALUES ('7dc0ac91-5ca0-4fc1-b642-e130995567e5', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '最大号表', '/sysmaxnumber/index.do', '0', 'icon-page-white-get', 'NORMAL', '', '1406765446750', null, '0');
INSERT INTO `sys_menus` VALUES ('f9eef743-76a1-47fe-aa3e-2f1ebc8dbdf4', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '计划任务', '/sysschedulerjob/index.do', '0', 'icon-clock', 'NORMAL', '', '1407073962775', null, '0');
INSERT INTO `sys_menus` VALUES ('91b818e8-1e6f-4bb9-a989-f99f776c2784', '2f66d5eb-e458-438c-9abe-1a0cf5cba220', '数据库备份恢复', '/data/backupRestoreIndex.do', '0', 'icon-server-database', 'NORMAL', '', '1331272394799', null, '0');
INSERT INTO `sys_menus` VALUES ('bdc0d81c-1b44-4d93-9540-e816db71ec6e', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '工作日设置', '/sysworkday/monthDay.do', '0', 'icon-date', 'NORMAL', '', '1410619821931', null, '0');
INSERT INTO `sys_menus` VALUES ('6d2b5fb9-0905-4a81-8415-d234c7c108a5', 'menu_root_id', '快速开发工具', null, '1', 'icon-application-osx-terminal', 'SHOW', '', '1411871571882', null, '0');
INSERT INTO `sys_menus` VALUES ('8b61431c-fe01-4f52-ae61-17632718fffc', '6d2b5fb9-0905-4a81-8415-d234c7c108a5', '一对一代码生成', '/apptable/index.do', '0', 'icon-application-xp-terminal', 'NORMAL', '', '1487589969281', null, '0');
INSERT INTO `sys_menus` VALUES ('b490194f-b67f-49fa-a98f-9168610052ad', '8e569747-c21e-4496-a359-5473c0b26fb5', '会员用户', '/sysuser/index.do?frontflag=true', '0', 'icon-status-offline', 'NORMAL', '', '1467334828559', null, '0');
INSERT INTO `sys_menus` VALUES ('09c7248d-6cc7-48c9-a3c6-cf578176c53f', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '会员管理', '/membertype/index.do', '0', '', 'NORMAL', '', '1486620890842', null, '0');
INSERT INTO `sys_menus` VALUES ('a66eb244-c986-4308-9e67-99024b71042f', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '车辆信息管理', '/car_info/index.do', '0', '', 'NORMAL', '', '1486692621219', null, '0');
INSERT INTO `sys_menus` VALUES ('c91d5241-41f2-475d-9726-154ead87bfde', '6d2b5fb9-0905-4a81-8415-d234c7c108a5', '用户类型', '/usertype/index.do', '0', '', 'NORMAL', '', '1488245561115', null, '0');
INSERT INTO `sys_menus` VALUES ('7e423e20-36b0-45d2-b304-8386a0d97fa7', '6d2b5fb9-0905-4a81-8415-d234c7c108a5', '用户扩展', '/userext/index.do', '0', '', 'NORMAL', '', '1488245590032', null, '0');
INSERT INTO `sys_menus` VALUES ('2d046778-8c9f-45d4-999b-d2fb639382bc', '6d2b5fb9-0905-4a81-8415-d234c7c108a5', '缴费记录', '/payrecord/index.do', '0', '', 'NORMAL', '', '1488350231278', null, '0');
INSERT INTO `sys_menus` VALUES ('2d4aaa4f-24b7-48ef-bab7-fa347b0f7c8b', '6d2b5fb9-0905-4a81-8415-d234c7c108a5', '平台公告', '/platformpost/index.do', '0', '', 'NORMAL', '', '1488550119368', null, '0');
INSERT INTO `sys_menus` VALUES ('4f12ca7d-b564-4a7b-abe6-673551acc3ce', '36994cc6-63fc-4cc4-b11b-a63c48f73614', '公告类别', '/posttype/index.do', '0', '', 'NORMAL', '', '1488550232437', null, '0');
INSERT INTO `sys_menus` VALUES ('5d9e2f9d-a12c-46d3-9d0d-8e0019bec50b', '6d2b5fb9-0905-4a81-8415-d234c7c108a5', '经销商管理', '/dealersinfo/index.do', '0', '', 'NORMAL', '', '1488868081673', null, '0');
