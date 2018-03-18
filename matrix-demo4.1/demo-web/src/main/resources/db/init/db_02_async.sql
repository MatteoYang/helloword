-- ------------------------------------------------------
--  异步平台脚本
-- version: 4.1				
-- author:   姜友瑶
-- update time:   2017-12-24
-- Mysql Server version	5.7.16
-- ------------------------------------------------------


SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;
 
--
-- Table structure for table `async_lock`
--

DROP TABLE IF EXISTS `async_lock`;
CREATE TABLE `async_lock` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `locked_time` datetime DEFAULT NULL COMMENT '线程获取锁的时间',
  `get_task_time` datetime DEFAULT NULL COMMENT '线程获取任务的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务锁';
 
--
-- Table structure for table `async_task`
--

DROP TABLE IF EXISTS `async_task`;
CREATE TABLE `async_task` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `pkg_id` varchar(32) DEFAULT NULL COMMENT '异步包主键',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_type` varchar(50) DEFAULT NULL COMMENT '任务类型',
  `batch_no` varchar(32) DEFAULT NULL COMMENT '批次号',
  `status` varchar(2) DEFAULT NULL COMMENT '状态，0：待处理，1：处理中，2：执行成功，3：执行失败，4：执行时异常',
  `error_log` longtext,
  `retry_times` int(11) DEFAULT NULL COMMENT '重试次数',
  `processed_by` varchar(50) DEFAULT NULL COMMENT '处理任务的主机名称',
  `init_time` datetime DEFAULT NULL COMMENT '任务初始化时间',
  `enqueue_time` datetime DEFAULT NULL COMMENT '入队时间',
  `dequeue_time` datetime DEFAULT NULL COMMENT '出队时间',
  `start_time` datetime DEFAULT NULL COMMENT '任务开始时间',
  `finish_time` datetime DEFAULT NULL COMMENT '处理完成时间',
  `order_no` int(11) DEFAULT NULL COMMENT '排序时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务表';
 

--
-- Table structure for table `async_task_data`
--

DROP TABLE IF EXISTS `async_task_data`;
CREATE TABLE `async_task_data` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_id` varchar(32) DEFAULT NULL COMMENT '异步任务id',
  `business_data_key` varchar(100) DEFAULT NULL COMMENT '业务数据key',
  `business_data_value` longtext COMMENT '业务数据value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务锁';
 
--
-- Table structure for table `async_task_data_error`
--

DROP TABLE IF EXISTS `async_task_data_error`;
CREATE TABLE `async_task_data_error` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_id` varchar(32) DEFAULT NULL COMMENT '异步任务id',
  `business_data_key` varchar(100) DEFAULT NULL COMMENT '业务数据key',
  `business_data_value` longtext COMMENT '业务数据value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务锁';
 

--
-- Table structure for table `async_task_data_success`
--

DROP TABLE IF EXISTS `async_task_data_success`;
CREATE TABLE `async_task_data_success` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_id` varchar(32) DEFAULT NULL COMMENT '异步任务id',
  `business_data_key` varchar(100) DEFAULT NULL COMMENT '业务数据key',
  `business_data_value` longtext COMMENT '业务数据value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务锁';
 

--
-- Table structure for table `async_task_error`
--

DROP TABLE IF EXISTS `async_task_error`;
CREATE TABLE `async_task_error` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `pkg_id` varchar(32) DEFAULT NULL COMMENT '异步包主键',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_type` varchar(50) DEFAULT NULL COMMENT '任务类型',
  `batch_no` varchar(32) DEFAULT NULL COMMENT '批次号',
  `status` varchar(2) DEFAULT NULL COMMENT '状态，0：待处理，1：处理中，2：执行成功，3：执行失败，4：执行时异常',
  `error_log` longtext,
  `retry_times` int(11) DEFAULT NULL COMMENT '重试次数',
  `processed_by` varchar(50) DEFAULT NULL COMMENT '处理任务的主机名称',
  `init_time` datetime DEFAULT NULL COMMENT '任务初始化时间',
  `enqueue_time` datetime DEFAULT NULL COMMENT '入队时间',
  `dequeue_time` datetime DEFAULT NULL COMMENT '出队时间',
  `start_time` datetime DEFAULT NULL COMMENT '任务开始时间',
  `finish_time` datetime DEFAULT NULL COMMENT '处理完成时间',
  `order_no` int(11) DEFAULT NULL COMMENT '排序时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务表';
 

--
-- Table structure for table `async_task_package`
--

DROP TABLE IF EXISTS `async_task_package`;
CREATE TABLE `async_task_package` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_type` varchar(50) DEFAULT NULL COMMENT '任务类型',
  `batch_no` varchar(32) DEFAULT NULL COMMENT '批次号',
  `environment` varchar(30) DEFAULT NULL COMMENT '异步所在任务环境',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步包';
 
--
-- Table structure for table `async_task_pkg_success`
--

DROP TABLE IF EXISTS `async_task_pkg_success`;
CREATE TABLE `async_task_pkg_success` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_type` varchar(50) DEFAULT NULL COMMENT '任务类型',
  `batch_no` varchar(32) DEFAULT NULL COMMENT '批次号',
  `environment` varchar(30) DEFAULT NULL COMMENT '异步所在任务环境',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务成功记录';
 

--
-- Table structure for table `async_task_success`
--

DROP TABLE IF EXISTS `async_task_success`;
CREATE TABLE `async_task_success` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `pkg_id` varchar(32) DEFAULT NULL COMMENT '异步包主键',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `task_type` varchar(50) DEFAULT NULL COMMENT '任务类型',
  `batch_no` varchar(32) DEFAULT NULL COMMENT '批次号',
  `status` varchar(2) DEFAULT NULL COMMENT '状态，0：待处理，1：处理中，2：执行成功，3：执行失败，4：执行时异常',
  `error_log` longtext,
  `retry_times` int(11) DEFAULT NULL COMMENT '重试次数',
  `processed_by` varchar(50) DEFAULT NULL COMMENT '处理任务的主机名称',
  `init_time` datetime DEFAULT NULL COMMENT '任务初始化时间',
  `enqueue_time` datetime DEFAULT NULL COMMENT '入队时间',
  `dequeue_time` datetime DEFAULT NULL COMMENT '出队时间',
  `start_time` datetime DEFAULT NULL COMMENT '任务开始时间',
  `finish_time` datetime DEFAULT NULL COMMENT '处理完成时间',
  `order_no` int(11) DEFAULT NULL COMMENT '排序时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步任务表';

 
