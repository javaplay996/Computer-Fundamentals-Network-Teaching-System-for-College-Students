/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jsjwangluojiaoxue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jsjwangluojiaoxue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jsjwangluojiaoxue`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-31 14:54:53'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-31 14:54:53'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-31 14:54:53'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-31 14:54:53'),(5,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-03-31 14:54:53'),(6,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-03-31 14:54:53'),(7,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-03-31 14:54:53'),(8,'kecheng_types','课程类型',4,'课程类型4',NULL,NULL,'2023-03-31 14:54:53'),(9,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-31 14:54:53'),(10,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-31 14:54:53'),(11,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-31 14:54:53'),(12,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-03-31 14:54:53'),(13,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-03-31 14:54:53'),(14,'kemu_types','科目',1,'语文',NULL,NULL,'2023-03-31 14:54:53'),(15,'kemu_types','科目',2,'数学',NULL,NULL,'2023-03-31 14:54:53'),(16,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-03-31 14:54:53'),(17,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-03-31 14:54:53'),(18,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-03-31 14:54:54'),(19,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-03-31 14:54:54'),(20,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-03-31 14:54:54'),(21,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-03-31 14:54:54'),(22,'kecheng_types','课程类型',5,'课程类型5',NULL,'','2023-03-31 15:14:31');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试卷';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'测试试卷1',60,100,2,1,2,1,'2023-03-31 14:54:53'),(2,'测试试卷2',180,100,2,1,1,1,'2023-03-31 14:54:53'),(3,'自动组卷试卷1',99,29,2,1,1,1,'2023-03-31 15:16:09'),(4,'手动组卷试卷2',88,28,2,1,2,1,'2023-03-31 15:16:51');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (7,1,5,10,'2023-03-31 14:54:53'),(8,1,4,10,'2023-03-31 14:54:53'),(9,1,6,70,'2023-03-31 14:54:53'),(18,2,5,15,'2023-03-31 14:54:53'),(19,2,11,15,'2023-03-31 14:54:53'),(20,2,9,15,'2023-03-31 14:54:53'),(21,2,1,15,'2023-03-31 14:54:53'),(22,2,10,20,'2023-03-31 14:54:53'),(23,2,3,20,'2023-03-31 14:54:53'),(31,1,7,10,'2023-03-31 14:54:54'),(33,1,9,0,'2023-03-31 14:54:54'),(34,1,12,0,'2023-03-31 14:54:54'),(35,3,11,3,'2023-03-31 15:16:27'),(36,3,5,3,'2023-03-31 15:16:27'),(37,3,7,4,'2023-03-31 15:16:27'),(38,3,9,3,'2023-03-31 15:16:27'),(39,3,6,3,'2023-03-31 15:16:27'),(40,3,1,3,'2023-03-31 15:16:27'),(41,3,8,5,'2023-03-31 15:16:27'),(42,3,10,5,'2023-03-31 15:16:27'),(43,4,12,10,'2023-03-31 15:16:56'),(44,4,11,8,'2023-03-31 15:16:57'),(45,4,9,5,'2023-03-31 15:16:58'),(46,4,8,3,'2023-03-31 15:16:58'),(47,4,7,2,'2023-03-31 15:16:59');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-03-31 14:54:54'),(2,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-03-31 14:54:54'),(3,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-03-31 14:54:54'),(4,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-03-31 14:54:54'),(5,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-03-31 14:54:54'),(6,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-03-31 14:54:54'),(7,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-03-31 14:54:54'),(8,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-03-31 14:54:54'),(9,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-03-31 14:54:54'),(10,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-03-31 14:54:54'),(11,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-03-31 14:54:54'),(12,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6很好',1,12,'2023-03-31 14:54:54');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1680246799427',4,2,15,'2023-03-31 15:13:19','2023-03-31 15:13:19');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1680246799427',4,3,'2',0,'2023-03-31 15:13:20'),(2,'1680246799427',4,10,'3',0,'2023-03-31 15:13:20'),(3,'1680246799427',4,1,'A',0,'2023-03-31 15:13:20'),(4,'1680246799427',4,9,'A',15,'2023-03-31 15:13:20'),(5,'1680246799427',4,11,'A',0,'2023-03-31 15:13:20'),(6,'1680246799427',4,5,'A',0,'2023-03-31 15:13:20');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,4,2,3,'2','2023-03-31 15:13:20','2023-03-31 15:13:20'),(2,4,2,10,'3','2023-03-31 15:13:20','2023-03-31 15:13:20'),(3,4,2,1,'A','2023-03-31 15:13:20','2023-03-31 15:13:20'),(4,4,2,11,'A','2023-03-31 15:13:20','2023-03-31 15:13:20'),(5,4,2,5,'A','2023-03-31 15:13:20','2023-03-31 15:13:20');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-31 14:56:43','公告详情1','2023-03-31 14:56:43'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-31 14:56:43','公告详情2','2023-03-31 14:56:43'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-31 14:56:43','公告详情3','2023-03-31 14:56:43'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-31 14:56:43','公告详情4','2023-03-31 14:56:43'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-31 14:56:43','公告详情5','2023-03-31 14:56:43'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-31 14:56:43','公告详情6','2023-03-31 14:56:43'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-31 14:56:43','公告详情7','2023-03-31 14:56:43'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-31 14:56:43','公告详情8','2023-03-31 14:56:43'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-31 14:56:43','公告详情9','2023-03-31 14:56:43'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-31 14:56:43','公告详情10','2023-03-31 14:56:43'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-31 14:56:43','公告详情11','2023-03-31 14:56:43'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-31 14:56:43','公告详情12','2023-03-31 14:56:43'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-31 14:56:43','公告详情13','2023-03-31 14:56:43'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-31 14:56:43','公告详情14','2023-03-31 14:56:43');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_clicknum` int(11) DEFAULT NULL COMMENT '课程热度',
  `kecheng_content` longtext COMMENT '课程介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`laoshi_id`,`kecheng_name`,`kecheng_uuid_number`,`kecheng_photo`,`kecheng_file`,`kecheng_video`,`kecheng_types`,`kecheng_clicknum`,`kecheng_content`,`shangxia_types`,`kecheng_delete`,`insert_time`,`create_time`) values (1,3,'课程名称1','1680245803690','upload/kecheng1.jpg','upload/file.rar','upload/video.mp4',2,486,'课程介绍1',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(2,3,'课程名称2','1680245803707','upload/kecheng2.jpg','upload/file.rar','upload/video.mp4',1,46,'课程介绍2',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(3,2,'课程名称3','1680245803716','upload/kecheng3.jpg','upload/file.rar','upload/video.mp4',1,248,'课程介绍3',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(4,2,'课程名称4','1680245803672','upload/kecheng4.jpg','upload/file.rar','upload/video.mp4',3,124,'课程介绍4',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(5,3,'课程名称5','1680245803671','upload/kecheng5.jpg','upload/file.rar','upload/video.mp4',4,368,'课程介绍5',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(6,2,'课程名称6','1680245803729','upload/kecheng6.jpg','upload/file.rar','upload/video.mp4',3,18,'课程介绍6',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(7,3,'课程名称7','1680245803727','upload/kecheng7.jpg','upload/file.rar','upload/video.mp4',4,462,'课程介绍7',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(8,1,'课程名称8','1680245803704','upload/kecheng8.jpg','upload/file.rar','upload/video.mp4',4,466,'课程介绍8',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(9,1,'课程名称9','1680245803635','upload/kecheng9.jpg','upload/file.rar','upload/video.mp4',3,246,'<p>课程介绍9hhhh</p>',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(10,2,'课程名称10','1680245803705','upload/kecheng10.jpg','upload/file.rar','upload/video.mp4',4,269,'课程介绍10',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(11,2,'课程名称11','1680245803660','upload/kecheng11.jpg','upload/file.rar','upload/video.mp4',1,382,'课程介绍11',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(12,3,'课程名称12','1680245803682','upload/kecheng12.jpg','upload/file.rar','upload/video.mp4',3,231,'课程介绍12',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(13,3,'课程名称13','1680245803645','upload/kecheng13.jpg','upload/file.rar','upload/video.mp4',3,432,'课程介绍13',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(14,2,'课程名称14','1680245803703','upload/kecheng14.jpg','upload/file.rar','upload/video.mp4',2,97,'课程介绍14',1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(2,2,2,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(3,3,2,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(4,4,2,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(5,5,1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(6,6,1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(7,7,2,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(8,8,1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(9,9,2,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(10,10,3,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(11,11,1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(12,12,3,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(13,13,1,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(14,14,2,1,'2023-03-31 14:56:43','2023-03-31 14:56:43'),(15,8,4,1,'2023-03-31 15:13:52','2023-03-31 15:13:52');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-31 14:56:43','回复信息1','2023-03-31 14:56:43','2023-03-31 14:56:43'),(2,2,2,'留言内容2','2023-03-31 14:56:43','回复信息2','2023-03-31 14:56:43','2023-03-31 14:56:43'),(3,3,3,'留言内容3','2023-03-31 14:56:43','回复信息3','2023-03-31 14:56:43','2023-03-31 14:56:43'),(4,4,1,'留言内容4','2023-03-31 14:56:43','回复信息4','2023-03-31 14:56:43','2023-03-31 14:56:43'),(5,5,1,'留言内容5','2023-03-31 14:56:43','回复信息5','2023-03-31 14:56:43','2023-03-31 14:56:43'),(6,6,1,'留言内容6','2023-03-31 14:56:43','回复信息6','2023-03-31 14:56:43','2023-03-31 14:56:43'),(7,7,3,'留言内容7','2023-03-31 14:56:43','回复信息7','2023-03-31 14:56:43','2023-03-31 14:56:43'),(8,8,3,'留言内容8','2023-03-31 14:56:43','回复信息8','2023-03-31 14:56:43','2023-03-31 14:56:43'),(9,9,3,'留言内容9','2023-03-31 14:56:43','回复信息9','2023-03-31 14:56:43','2023-03-31 14:56:43'),(10,10,2,'留言内容10','2023-03-31 14:56:43','回复信息10','2023-03-31 14:56:43','2023-03-31 14:56:43'),(11,11,1,'留言内容11','2023-03-31 14:56:43','回复信息11','2023-03-31 14:56:43','2023-03-31 14:56:43'),(12,12,2,'留言内容12','2023-03-31 14:56:43','回复信息12','2023-03-31 14:56:43','2023-03-31 14:56:43'),(13,13,2,'留言内容13','2023-03-31 14:56:43','回复信息13','2023-03-31 14:56:43','2023-03-31 14:56:43'),(14,14,3,'留言内容14','2023-03-31 14:56:43','回复信息14','2023-03-31 14:56:43','2023-03-31 14:56:43'),(15,1,4,'hhhh','2023-03-31 15:13:33',NULL,NULL,'2023-03-31 15:13:33'),(16,8,4,'hhh','2023-03-31 15:13:49','hfsdhdf发广东省格式的','2023-03-31 15:15:41','2023-03-31 15:13:49');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',2,'1@qq.com','2023-03-31 14:56:43'),(2,'a2','123456','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',2,'2@qq.com','2023-03-31 14:56:43'),(3,'a3','123456','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',2,'3@qq.com','2023-03-31 14:56:43');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','h1ctonakpm119moex8ikxf0e3ize5jd7','2023-03-31 14:59:59','2023-03-31 16:14:14'),(2,1,'a1','yonghu','用户','d2tv8n0amhe73aiyyenmzf5zq0y7ldor','2023-03-31 15:12:08','2023-03-31 16:12:17'),(3,4,'a5','yonghu','用户','f01lee0ingfkfhm7wglf0qcpzxl4htn3','2023-03-31 15:13:04','2023-03-31 16:13:05'),(4,1,'a1','laoshi','老师','jefy84jn5msd9c0ewbgmbzjsywkkrqs5','2023-03-31 15:15:22','2023-03-31 16:15:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-31 14:54:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-31 14:56:43'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-31 14:56:43'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-31 14:56:43'),(4,'a5','123456','张5','17788889999','444555888899999999','upload/1680246823791.jpg',2,'5@qq.com','2023-03-31 15:13:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
