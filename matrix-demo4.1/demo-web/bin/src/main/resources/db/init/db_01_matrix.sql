-- ------------------------------------------------------
-- matrix建表语句
-- version: 4.1				
-- author:   姜友瑶
-- update time:   2017-12-24
-- Mysql Server version	5.7.16
-- ------------------------------------------------------


SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;
--
-- Table structure for table `sys_app`
--

DROP TABLE IF EXISTS `sys_app`;
CREATE TABLE `sys_app` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `app_id` varchar(32) NOT NULL,
  `app_name` varchar(20) DEFAULT NULL COMMENT '应用名称',
  `app_code` varchar(20) DEFAULT NULL COMMENT '应用编号',
  `app_url` varchar(500) DEFAULT NULL COMMENT '应用有效域名',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `sys_app` WRITE;
INSERT INTO `sys_app` VALUES ('','2017-11-28 23:10:57','','2017-11-28 23:10:57','11','企业平台','company_plat',NULL);
UNLOCK TABLES;

--
-- Table structure for table `sys_button`
--

DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `btn_id` varchar(32) NOT NULL,
  `btn_key` varchar(100) DEFAULT NULL COMMENT '[按钮key*]',
  `btn_value` varchar(100) DEFAULT NULL COMMENT '[按钮名称]',
  PRIMARY KEY (`btn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `sys_button` WRITE;
INSERT INTO `sys_button` VALUES ('','2017-12-12 11:58:08','开发者','2017-12-05 14:49:56','142','新增','add'),('','2017-12-12 11:58:08','开发者','2017-12-05 14:56:45','143','删除','del'),('','2017-12-12 11:58:08','开发者','2017-12-05 14:56:32','144','批量删除','dels'),('','2017-12-12 11:58:08','开发者','2017-12-05 14:49:44','145','编辑','edit'),('','2017-12-12 11:58:08','开发者','2017-12-05 14:42:14','146','搜索','search'),('','2017-12-12 11:58:08','开发者','2017-12-12 11:58:08','149','重置密码','resetPassword'),('开发者','2017-12-08 21:59:56','开发者','2017-12-08 21:59:56','c746c7b715c84abb8b4acd7a103c0c22','保存','save'),('开发者','2017-12-12 11:31:50','开发者','2017-12-12 11:31:50','cef22fc2ca434090a4d07dd0b3aecdf6','账号锁定与解锁','accountLock');
UNLOCK TABLES;

--
-- Table structure for table `sys_com_app_ref`
--

DROP TABLE IF EXISTS `sys_com_app_ref`;
CREATE TABLE `sys_com_app_ref` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `com_app_id` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL COMMENT '公司id',
  `app_id` varchar(32) NOT NULL COMMENT '应用id',
  `function_ids` varchar(4000) NOT NULL COMMENT '功能ids',
  PRIMARY KEY (`com_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司应用关系表';

LOCK TABLES `sys_com_app_ref` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `sys_company`
--

DROP TABLE IF EXISTS `sys_company`;
CREATE TABLE `sys_company` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `com_id` varchar(32) NOT NULL,
  `com_name` varchar(200) DEFAULT NULL,
  `com_boss` varchar(50) DEFAULT NULL COMMENT '法人',
  `com_business_scope` varchar(1000) DEFAULT NULL COMMENT '经营范围',
  `com_address` varchar(500) DEFAULT NULL COMMENT '公司地址',
  `com_boss_tel` varchar(30) DEFAULT NULL COMMENT '法人联系方式',
  `com_tel` varchar(30) DEFAULT NULL COMMENT '公司电话',
  `com_web_url` varchar(500) DEFAULT NULL COMMENT '网站地址',
  `com_email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `com_introduction` varchar(100) DEFAULT NULL COMMENT '介绍',
  `com_register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `com_bank_account` varchar(500) DEFAULT NULL COMMENT '银行账号',
  `com_organization_code` varchar(500) DEFAULT NULL COMMENT '组织机构代码',
  `com_type` varchar(500) DEFAULT NULL COMMENT '公司类型',
  `com_register_capotal` varchar(100) DEFAULT NULL COMMENT '注册资本',
  `com_age` int(11) DEFAULT NULL COMMENT '经营时间',
  `com_create_time` datetime DEFAULT NULL COMMENT '成立时间',
  `com_register_code` varchar(255) DEFAULT NULL COMMENT '注册代码',
  `com_logo` varchar(1000) DEFAULT NULL,
  `com_valid` varchar(2) DEFAULT NULL COMMENT 'Y 有效，N无效',
  `com_functions` varchar(500) DEFAULT NULL COMMENT '功能s',
  `com_plats` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司表';

LOCK TABLES `sys_company` WRITE;
INSERT INTO `sys_company` VALUES ('','2017-12-12 11:58:08','超级管理员','2017-12-09 08:26:11','17','湖南卓景京信息技术有限公司','舒适',NULL,'123','18390563793',NULL,'https://www.baidu.com/javascript:;',NULL,NULL,'2016-06-27 09:19:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bd4981e63a184ea6986197948f4a9515,05fb2915b39b4021a51d406473f0ee91,5f5bc62ad02744c9890ff3892c7aaa99,e2efaf1b54d44af1bd5e7437cf631db4,','11'),('超级管理员','2017-12-09 08:26:23','超级管理员','2017-12-09 08:26:23','642d708e0a474261b726f4587fd21069','12','21',NULL,'','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bd4981e63a184ea6986197948f4a9515,',NULL);
UNLOCK TABLES;

--
-- Table structure for table `sys_fn_btn_rel`
--

DROP TABLE IF EXISTS `sys_fn_btn_rel`;
CREATE TABLE `sys_fn_btn_rel` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `fb_id` varchar(32) NOT NULL,
  `fn_id` varchar(32) NOT NULL,
  `btn_value` varchar(100) NOT NULL DEFAULT '',
  `btn_key` varchar(100) DEFAULT NULL,
  `fb_path` varchar(500) DEFAULT NULL COMMENT '功能访问路径',
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能按钮关系表';


LOCK TABLES `sys_fn_btn_rel` WRITE;
INSERT INTO `sys_fn_btn_rel` VALUES ('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c03fedef111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','add','新增','/admin/su/editForm'),('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c076edef111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','del','删除','/admin/su/del'),('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c0818def111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','dels','批量删除','/admin/su/del'),('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c0890def111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','edit','编辑','/admin/su/modifyAdmin'),('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c08fedef111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','search','搜索','/admin/su/showList'),('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c0962def111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','resetPassword','重置密码','/admin/su/resetPassword'),('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c09bcdef111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','save','保存','/admin/addAdmin'),('开发者','2017-12-12 12:04:48','开发者','2017-12-12 12:04:48','984c0a16def111e78b81c79fc4f992f1','5f5bc62ad02744c9890ff3892c7aaa99','accountLock','账号锁定与解锁','/admin//su/accountLock/{status}'),('开发者','2017-12-09 08:48:49','开发者','2017-12-09 08:48:49','b8a0aa48dc7a11e78cfd22c98b5d2ed0','e2efaf1b54d44af1bd5e7437cf631db4','add','新增','/admin/sysRole/su/editForm'),('开发者','2017-12-09 08:48:49','开发者','2017-12-09 08:48:49','b8a0aca0dc7a11e78cfd22c98b5d2ed0','e2efaf1b54d44af1bd5e7437cf631db4','del','删除','/admin/sysRole/su/del'),('开发者','2017-12-09 08:48:49','开发者','2017-12-09 08:48:49','b8a0ad22dc7a11e78cfd22c98b5d2ed0','e2efaf1b54d44af1bd5e7437cf631db4','dels','批量删除','/admin/sysRole/su/del'),('开发者','2017-12-09 08:48:49','开发者','2017-12-09 08:48:49','b8a0ad86dc7a11e78cfd22c98b5d2ed0','e2efaf1b54d44af1bd5e7437cf631db4','edit','编辑','/admin/sysRole/su/modifyRole'),('开发者','2017-12-09 08:48:49','开发者','2017-12-09 08:48:49','b8a0ade0dc7a11e78cfd22c98b5d2ed0','e2efaf1b54d44af1bd5e7437cf631db4','search','搜索','/admin/sysRole/su/showCompanyRole'),('开发者','2017-12-09 08:48:49','开发者','2017-12-09 08:48:49','b8a0ae30dc7a11e78cfd22c98b5d2ed0','e2efaf1b54d44af1bd5e7437cf631db4','save','保存','/admin/sysRole/su/addRole');
UNLOCK TABLES;

--
-- Table structure for table `sys_function`
--

DROP TABLE IF EXISTS `sys_function`;
CREATE TABLE `sys_function` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `fn_id` varchar(32) NOT NULL,
  `fn_icon` varchar(1000) DEFAULT NULL,
  `fn_path` varchar(100) DEFAULT NULL,
  `fn_is_disable` varchar(4) DEFAULT NULL COMMENT '是禁用吗 是，否',
  `fn_grade` int(11) DEFAULT NULL COMMENT '功能等级',
  `fn_parent_id` varchar(32) DEFAULT NULL COMMENT '父级功能',
  `fn_name` varchar(100) DEFAULT NULL,
  `fn_sequence` int(11) DEFAULT NULL COMMENT '排序字段',
  `fn_code` varchar(100) DEFAULT NULL COMMENT '功能code',
  `fn_btns` varchar(500) DEFAULT NULL COMMENT '功能所具有的按钮',
  `fn_show_menu` varchar(4) DEFAULT NULL COMMENT '是否在菜单栏显示',
  `app_id` varchar(32) DEFAULT NULL COMMENT '所属应用id',
  PRIMARY KEY (`fn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统功能表';

LOCK TABLES `sys_function` WRITE;
INSERT INTO `sys_function` VALUES ('开发者','2017-12-05 23:42:46','开发者','2017-12-05 23:42:46','05fb2915b39b4021a51d406473f0ee91','','','否',1,'','权限管理',2,'authority','123','是',NULL),('开发者','2017-12-05 23:46:19','开发者','2017-12-12 12:04:48','5f5bc62ad02744c9890ff3892c7aaa99','','sys/admin-list','否',2,'05fb2915b39b4021a51d406473f0ee91','系统用户',232,'user','123','是',NULL),('开发者','2017-12-05 12:44:45','开发者','2017-12-05 23:42:55','bd4981e63a184ea6986197948f4a9515','','  ','否',1,'','系统管理',1111,'system','123','是',NULL),('开发者','2017-12-05 23:45:38','开发者','2017-12-09 08:48:49','e2efaf1b54d44af1bd5e7437cf631db4','','sys/sysRole-list','否',2,'05fb2915b39b4021a51d406473f0ee91','角色管理',2,'role','123','是',NULL);
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `log_id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `log_createdate` datetime DEFAULT NULL COMMENT '创建日期',
  `log_content` text COMMENT '日志内容',
  `log_operation` varchar(250) DEFAULT '' COMMENT '用户所做的操作',
  `log_user_name` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `log_ip` varchar(20) DEFAULT NULL COMMENT '使用ip',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统日志';

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `role_id` varchar(32) NOT NULL DEFAULT '',
  `role_name` varchar(100) DEFAULT NULL,
  `role_remark` varchar(200) DEFAULT NULL,
  `company_id` varchar(32) DEFAULT NULL,
  `plates` varchar(500) DEFAULT NULL COMMENT '角色所拥有的平台',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sys_role` WRITE;
INSERT INTO `sys_role` VALUES ('公司管理员','2017-12-06 18:58:24','12','2017-12-12 11:59:55','900de58afae444f381d2e517252761b2','2','2','17',NULL),('12','2017-12-06 20:26:32','12','2017-12-12 12:00:00','eb717f8c66bd44539569aaa674305bea','33','33','17',NULL);
UNLOCK TABLES;

--
-- Table structure for table `sys_role_pwoer_fn`
--

DROP TABLE IF EXISTS `sys_role_pwoer_fn`;
CREATE TABLE `sys_role_pwoer_fn` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `rpf_id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `fn_id` varchar(32) DEFAULT NULL COMMENT '功能id',
  `rpf_btns` varchar(500) DEFAULT NULL COMMENT '按钮s',
  PRIMARY KEY (`rpf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `sys_role_pwoer_fn` WRITE;
INSERT INTO `sys_role_pwoer_fn` VALUES ('12','2017-12-12 12:00:00','12','2017-12-12 12:00:00','1331e3a0029149db966c38ef29812c79','eb717f8c66bd44539569aaa674305bea','5f5bc62ad02744c9890ff3892c7aaa99','resetPassword,'),('公司管理员','2017-12-09 08:49:14','公司管理员','2017-12-09 08:49:14','2190a7369ae241d59a6852ca15135641','f0a7569708204ee1ad45ebc737b11cf2','05fb2915b39b4021a51d406473f0ee91',''),('12','2017-12-12 11:59:55','12','2017-12-12 11:59:55','25f547c1e4c945888cce30c58918db1e','900de58afae444f381d2e517252761b2','05fb2915b39b4021a51d406473f0ee91',''),('12','2017-12-12 11:59:55','12','2017-12-12 11:59:55','62e79437b2844204b5488adb829fc457','900de58afae444f381d2e517252761b2','e2efaf1b54d44af1bd5e7437cf631db4','add,del,dels,edit,search,save,'),('12','2017-12-12 11:59:55','12','2017-12-12 11:59:55','740c0ce798d5451da6649c35d670d1fa','900de58afae444f381d2e517252761b2','5f5bc62ad02744c9890ff3892c7aaa99','add,del,dels,edit,search,save,'),('12','2017-12-12 12:00:00','12','2017-12-12 12:00:00','795a651db67644ca8782b36024c256b4','eb717f8c66bd44539569aaa674305bea','05fb2915b39b4021a51d406473f0ee91',''),('公司管理员','2017-12-09 08:49:14','公司管理员','2017-12-09 08:49:14','829ae4d8650c4880a455444284a41375','f0a7569708204ee1ad45ebc737b11cf2','e2efaf1b54d44af1bd5e7437cf631db4','add,del,dels,edit,search,save,'),('公司管理员','2017-12-09 08:49:14','公司管理员','2017-12-09 08:49:14','a7131f9f5a01461a98ef7856ab4f0768','f0a7569708204ee1ad45ebc737b11cf2','5f5bc62ad02744c9890ff3892c7aaa99','add,del,dels,edit,search,save,');
UNLOCK TABLES;

--
-- Table structure for table `sys_user_login_record`
--

DROP TABLE IF EXISTS `sys_user_login_record`;
CREATE TABLE `sys_user_login_record` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `lr_id` varchar(32) NOT NULL,
  `user_account` varchar(100) DEFAULT NULL COMMENT '用户id',
  `lr_result` int(11) DEFAULT NULL COMMENT '登录结果 1.登录成功 2.密码错误，3.其他',
  `lr_remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '日志内容',
  `lr_ip` varchar(20) DEFAULT NULL COMMENT '使用ip',
  `lr_login_time` datetime DEFAULT NULL COMMENT '创建时间',
  `lr_valid` varchar(2) DEFAULT NULL COMMENT 'Y 有效N无效',
  PRIMARY KEY (`lr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录记录';
 
LOCK TABLES `sys_user_login_record` WRITE;
INSERT INTO `sys_user_login_record` VALUES ('system','2017-12-12 15:20:29','system','2017-12-12 15:20:29','11815d61b52b4446acd5f08e6631b500','12213123',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:20:30','Y'),('system','2017-12-12 15:20:03','system','2017-12-12 15:20:03','4ec877dba0eb4ceeb07f08ff73087ed4','12',1,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:20:04','Y'),('system','2017-12-12 15:18:44','system','2017-12-12 15:20:03','5d25cef310b7473db4f3bf92ebe105fc','12',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:18:45','N'),('system','2017-12-12 15:20:27','system','2017-12-12 15:20:27','addce9e8b02f47bd95520fec8e42a5b9','12213123',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:20:28','Y'),('system','2017-12-12 15:18:45','system','2017-12-12 15:20:03','b14db0c3b34d4329a4a8794142c0dafc','12',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:18:45','N'),('system','2017-12-12 15:23:57','system','2017-12-12 15:23:57','b4c46382592343899bb90a7eb22f4409','12',1,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:23:57','Y'),('system','2017-12-12 15:20:31','system','2017-12-12 15:20:31','c5253096bd9e43409c87b793872727c4','12213123',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:20:31','Y'),('system','2017-12-12 15:14:02','system','2017-12-12 15:14:02','d289033d5edd4a78a282987b8d633cd5','12',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:14:03',NULL),('system','2017-12-12 15:18:42','system','2017-12-12 15:20:03','d417907ff2d04018b67a30f547e00a8e','12',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:18:42','N'),('system','2017-12-12 15:20:26','system','2017-12-12 15:20:26','d468c2530a3a49929a77a0a8e7f8922c','12213123',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:20:27','Y'),('system','2017-12-12 15:13:58','system','2017-12-12 15:13:58','f1d9eb396fd64902bafbd0e1cdcba5f5','12',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:13:58',NULL),('system','2017-12-12 15:20:28','system','2017-12-12 15:20:28','fc4c9e2c118b4ff49d9761c00785247d','12213123',2,NULL,'0:0:0:0:0:0:0:1','2017-12-12 15:20:29','Y');
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `create_by` varchar(100) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(100) NOT NULL COMMENT '更新人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `su_id` varchar(32) NOT NULL,
  `su_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `su_tel` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `su_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `su_photo` varchar(1000) DEFAULT NULL COMMENT '头像',
  `su_sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `su_email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `su_account` varchar(100) DEFAULT NULL COMMENT '账号',
  `su_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `su_register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `su_qq_id` varchar(200) DEFAULT NULL COMMENT 'qqid',
  `su_weixin_id` varchar(200) DEFAULT NULL COMMENT '微信id',
  `su_grade` varchar(255) DEFAULT NULL COMMENT '等级',
  `parent_user_id` bigint(20) DEFAULT NULL COMMENT '推荐人',
  `su_dept_id` bigint(20) DEFAULT NULL COMMENT '部门',
  `su_user_type` varchar(200) DEFAULT NULL COMMENT '用户类型',
  `su_weibo_id` varchar(200) DEFAULT NULL COMMENT '微博id',
  `su_idcard` varchar(30) DEFAULT NULL COMMENT '身份证',
  `su_job_title` varchar(30) DEFAULT NULL COMMENT '职称',
  `su_aliases` varchar(100) DEFAULT NULL COMMENT '别名，昵称',
  `su_job_no` varchar(100) DEFAULT NULL COMMENT '工作编号',
  `company_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  `su_tel2` varchar(20) DEFAULT NULL COMMENT '备用电话号码',
  `su_account_status` varchar(200) DEFAULT NULL COMMENT '账户状态',
  `su_validate_end_time` datetime DEFAULT NULL COMMENT '激活最后时间',
  `su_valid` varchar(2) DEFAULT NULL COMMENT 'Y 有效，N无效',
  `su_validate_code` varchar(500) DEFAULT NULL COMMENT '激活码',
  `su_birthday` datetime DEFAULT NULL COMMENT '生日',
  `su_uuid` varchar(100) DEFAULT NULL COMMENT '用户uuid',
  `su_post_id` bigint(20) DEFAULT NULL COMMENT '岗位id',
  `role_ids` varchar(3200) DEFAULT NULL COMMENT '用户权限集合',
  PRIMARY KEY (`su_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `sys_users` WRITE;
INSERT INTO `sys_users` VALUES ('','2017-12-06 20:29:08','','2017-12-06 20:29:08','1','超级管理员','18390163793',NULL,NULL,NULL,'935090232@qq.com','super','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'super',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,NULL),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','29','开发者','18390261793',NULL,NULL,NULL,'9350902323@qq.com','zking','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'developer',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,'2016-09-06 10:29:32',NULL,NULL,NULL),('','2017-12-06 20:29:08','超级管理员','2017-12-09 08:31:23','37','公司管理员','15512322222',NULL,NULL,NULL,'18229856946@163.com1','admin','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,NULL),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','47','陶应','13564421235',NULL,NULL,NULL,'15454154@qq.com','ty','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,24,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'29'),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','48','陶应','13562264512',NULL,NULL,NULL,'1536447125@qq.com','ty1','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,24,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'27,28,29'),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','49','11','13562624512',NULL,NULL,NULL,'15454154@qq.com','11','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,24,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'29'),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','50','111','13564421235',NULL,NULL,NULL,'13564421235@qq.com','111','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,24,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'28'),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','51','陶应新增一个用户','13564478256',NULL,NULL,NULL,'513644723@qq.com','110','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,24,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'31'),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','52','1111','13526262356',NULL,NULL,NULL,'1512121@qq.com','1111','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,24,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'32'),('','2017-12-06 20:29:08','12','2017-12-12 12:05:01','59','12','18322222222',NULL,NULL,NULL,'1@q.c','12','ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'900de58afae444f381d2e517252761b2,eb717f8c66bd44539569aaa674305bea'),('','2017-12-06 20:29:08','','2017-12-06 20:29:08','60',NULL,'18390563793',NULL,NULL,NULL,NULL,NULL,'ab1dfbee2926377f052ead1d41cd2d96396f27e0','2017-12-05 20:22:51',NULL,NULL,NULL,NULL,NULL,'customer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'activate',NULL,'Y','0986E0F424684A1FB6A23D8113521AF0',NULL,NULL,NULL,NULL),('公司管理员','2017-12-10 21:54:36','公司管理员','2017-12-10 21:54:36','7e3379885f97492c8a538dc3f69312c1','12','15818666662',NULL,NULL,NULL,'935090232@q.com','21','69cdb4a8870940bc8fc2dbde268c3b498ce5fa1d','2017-12-10 21:54:36',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'900de58afae444f381d2e517252761b2,eb717f8c66bd44539569aaa674305bea'),('公司管理员','2017-12-06 21:03:39','公司管理员','2017-12-08 11:49:06','834a61628c2e4b5899ff7e780e28c682','dd','15810000000',NULL,NULL,NULL,'12@q.c','1212','29ebb08dda894ce01125721cfa8930f414cdda18','2017-12-06 21:03:39',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'900de58afae444f381d2e517252761b2,eb717f8c66bd44539569aaa674305bea'),('12','2017-12-06 20:26:13','12','2017-12-06 20:33:16','c6386941f15c4d0d8c8a7eee35c90682','ww','15816555555',NULL,NULL,NULL,'22@qq.com','22','8af34083e607f49da4440eb71ddc7bdd67a96126','2017-12-06 20:26:14',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'900de58afae444f381d2e517252761b2,eb717f8c66bd44539569aaa674305bea'),('12','2017-12-06 20:41:47','12','2017-12-06 20:41:47','f68cfceae41a4b3e85e669386dcd8e62','ce','15822222222',NULL,NULL,NULL,'e222@q.c2.2','ce','2ab35f4e1994cd29add447bef151fb4035da9ece','2017-12-06 20:41:48',NULL,NULL,NULL,NULL,NULL,'employee',NULL,NULL,NULL,NULL,NULL,17,NULL,'activate',NULL,'Y',NULL,NULL,NULL,NULL,'900de58afae444f381d2e517252761b2,eb717f8c66bd44539569aaa674305bea');
UNLOCK TABLES;

--
-- Table structure for table `web_article`
--

DROP TABLE IF EXISTS `web_article`;
CREATE TABLE `web_article` (
  `create_by` varchar(100) NOT NULL COMMENT ' ',
  `create_time` datetime NOT NULL COMMENT ' ',
  `update_by` varchar(100) NOT NULL COMMENT ' ',
  `update_time` datetime NOT NULL COMMENT ' ',
  `art_id` varchar(32) NOT NULL,
  `art_type_id` bigint(20) DEFAULT NULL COMMENT '文章类型Id',
  `art_author` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '文章作者',
  `art_title` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '文章标题',
  `art_isPublish` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否发布',
  `art_abstract` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '摘要',
  `art_content` longtext CHARACTER SET utf8 COMMENT '内容',
  `art_image` varchar(1000) CHARACTER SET utf8 DEFAULT NULL COMMENT '展示图片',
  `art_sort` int(11) DEFAULT NULL COMMENT '排序',
  `art_createtiem` datetime DEFAULT NULL COMMENT '创建时间',
  `art_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL COMMENT '链接地址（预留）',
  `art_count` int(11) DEFAULT NULL,
  `artLables` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES `web_article` WRITE;
INSERT INTO `web_article` VALUES ('','2017-12-12 11:58:08','','2017-12-12 11:58:08','10',17,' admin\">  ','1122\">','是','121\">','weq','',1,'2016-12-01 14:02:53',NULL,NULL,NULL),('','2017-12-12 11:58:08','','2017-12-12 11:58:08','13',17,' admin     ','1','是','','swd2dw','http://127.0.0.1:1088/uploadeFile/image/20161201/112_159.png',1,'2016-12-01 14:49:10',NULL,NULL,NULL),('','2017-12-12 11:58:08','','2017-12-12 11:58:08','14',18,' admin ','123','是','123','123','http://127.0.0.1:1088/uploadeFile/image/20161201/112_597.png',1,'2016-12-01 15:01:02',NULL,NULL,NULL),('','2017-12-12 11:58:08','','2017-12-12 11:58:08','15',18,' admin ','123','是','<img src=\"http://127.0.0.1:1088/uploadeFile/image/20161201/1480582690033.png\" />','<img src=\"http://127.0.0.1:1088/uploadeFile/image/20161201/1480582690033.png\" />','http://127.0.0.1:1088/uploadeFile/112_283.png',1,'2016-12-01 16:58:32',NULL,NULL,NULL);
UNLOCK TABLES;
  