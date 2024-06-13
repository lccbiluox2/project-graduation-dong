/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.24-log : Database - house
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`house` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `house`;

/*Table structure for table `group` */

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '组的名字',
  `g_desc` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '组的描述',
  `group_code` int(5) DEFAULT NULL COMMENT '用户的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `group` */

insert  into `group`(`id`,`g_name`,`g_desc`,`group_code`) values (1,'管理员','管理所有',0),(2,'普通用户','操作自己的发布信息',4),(3,'新闻管理员','操作新闻',NULL);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `p_code` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `p_controller` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `p_method` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `p_desc` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `p_pid` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `p_route` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `g_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`p_code`,`p_controller`,`p_method`,`p_desc`,`p_pid`,`p_route`,`g_id`) values (1,'1','rent','','出租信息的一级栏目','0','0-1','0'),(2,'2','rent','getAllRentMessage','得到所有出租信息','1','0-1-2','0'),(3,'3','rent','deleteRentById','根据id删除某条信息','2','0-1-2-3','0'),(4,'4','rent','updateRentById','修改出租信息','2','0-1-2-4','0'),(5,'5','rent','addRent','添加出租信息','1','0-1-5','0'),(6,'6','news','','新闻一级栏目','0','0-6','0'),(7,'7','news','getAllNews','得到所有新闻信息','6','0-6-7','0'),(8,'8','news','deleteNewsById','根据ID删除新闻','7','0-6-7-8','0'),(9,'9','news','updateNewsById','根据ID修改新闻','7','0-6-7-9','0'),(10,'10','news','addNews','添加新闻','6','0-6-10','0');

/*Table structure for table `rent` */

DROP TABLE IF EXISTS `rent`;

CREATE TABLE `rent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `h_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋名称',
  `h_address` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋总体地址',
  `h_province` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋所在省',
  `h_city` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋所在市',
  `h_qu` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋所在区',
  `h_address_detail` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋所在自定义的详细地址',
  `h_price` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋价格',
  `h_home_count` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋室内个数',
  `h_beizhu` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋备注',
  `h_desc` varchar(10000) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `h_phone` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋电话',
  `h_create_time` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发布该条信息的时间',
  `h_end_time` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '该条信息什么时候结束',
  `h_hight` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '房屋在地下室  一楼  高处 高度等',
  `h_is_new` int(10) DEFAULT NULL COMMENT '房屋是否是新的',
  `h_type` int(10) DEFAULT NULL COMMENT '房屋类型 1.新房 2 二手房 3.租房 4 商铺 4 写字楼 6 出租 7求租 8出售 9求购',
  `h_state` int(10) DEFAULT NULL COMMENT '房屋状态 1.在售 2.已出售 3撤销 4待定',
  `user_id` int(10) DEFAULT NULL COMMENT '发布该条信息人的id',
  `user_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发布该条信息人的name',
  `user_phone` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发布该条信息人的phone',
  `c_id` int(10) DEFAULT NULL COMMENT '评论的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `rent` */

insert  into `rent`(`id`,`h_name`,`h_address`,`h_province`,`h_city`,`h_qu`,`h_address_detail`,`h_price`,`h_home_count`,`h_beizhu`,`h_desc`,`h_phone`,`h_create_time`,`h_end_time`,`h_hight`,`h_is_new`,`h_type`,`h_state`,`user_id`,`user_name`,`user_phone`,`c_id`) values (1,'325','甘肃兰州皋兰346人大会上说','甘肃','兰州','皋兰','346人大会上说','4354','23','个队','让哥哥身体','325346','2017-03-06','2017-03-14',NULL,1,1,1,4,'aa','gg',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `group_code` int(4) DEFAULT NULL COMMENT '用户代码（当时插入用户时候的id）',
  `user_name` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `user_passwd` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `user_email` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `user_phone` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`id`,`group_code`,`user_name`,`user_passwd`,`user_email`,`user_phone`) values (4,0,'aa','bb','bb','gg'),(5,0,'bb','bb','bb','bb');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
