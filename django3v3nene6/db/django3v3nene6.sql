-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django3v3nene6
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `django3v3nene6`
--

/*!40000 DROP DATABASE IF EXISTS `django3v3nene6`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django3v3nene6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django3v3nene6`;

--
-- Table structure for table `chatmessage`
--

DROP TABLE IF EXISTS `chatmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatmessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint(20) NOT NULL COMMENT '用户ID',
  `fid` bigint(20) NOT NULL COMMENT '好友用户ID',
  `content` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `format` int(11) DEFAULT NULL COMMENT '格式(1:文字，2:图片)',
  `isread` int(11) DEFAULT '0' COMMENT '消息已读(0:未读，1:已读)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatmessage`
--

LOCK TABLES `chatmessage` WRITE;
/*!40000 ALTER TABLE `chatmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangyuanxinxi`
--

DROP TABLE IF EXISTS `discussfangyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `istop` int(11) DEFAULT '0' COMMENT '置顶(1:置顶,0:非置顶)',
  `tuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '赞用户ids',
  `cuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '踩用户ids',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='房源信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangyuanxinxi`
--

LOCK TABLES `discussfangyuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussfangyuanxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussfangyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiuyezhidao`
--

DROP TABLE IF EXISTS `discussjiuyezhidao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiuyezhidao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `nickname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `reply` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `istop` int(11) DEFAULT '0' COMMENT '置顶(1:置顶,0:非置顶)',
  `tuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '赞用户ids',
  `cuserids` longtext COLLATE utf8mb4_unicode_ci COMMENT '踩用户ids',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='就业指导评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiuyezhidao`
--

LOCK TABLES `discussjiuyezhidao` WRITE;
/*!40000 ALTER TABLE `discussjiuyezhidao` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussjiuyezhidao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangdong`
--

DROP TABLE IF EXISTS `fangdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangdong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdongzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房东账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `fangdongxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房东姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangdongzhanghao` (`fangdongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='房东';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangdong`
--

LOCK TABLES `fangdong` WRITE;
/*!40000 ALTER TABLE `fangdong` DISABLE KEYS */;
INSERT INTO `fangdong` VALUES (31,'2025-04-25 07:18:59','房东账号1','123456','房东姓名1','男','13823888881','upload/fangdong_touxiang1.jpg','是','',0),(32,'2025-04-25 07:18:59','房东账号2','123456','房东姓名2','男','13823888882','upload/fangdong_touxiang2.jpg','是','',0),(33,'2025-04-25 07:18:59','房东账号3','123456','房东姓名3','男','13823888883','upload/fangdong_touxiang3.jpg','是','',0),(34,'2025-04-25 07:18:59','房东账号4','123456','房东姓名4','男','13823888884','upload/fangdong_touxiang4.jpg','是','',0),(35,'2025-04-25 07:18:59','房东账号5','123456','房东姓名5','男','13823888885','upload/fangdong_touxiang5.jpg','是','',0),(36,'2025-04-25 07:18:59','房东账号6','123456','房东姓名6','男','13823888886','upload/fangdong_touxiang6.jpg','是','',0),(37,'2025-04-25 07:18:59','房东账号7','123456','房东姓名7','男','13823888887','upload/fangdong_touxiang7.jpg','是','',0),(38,'2025-04-25 07:18:59','房东账号8','123456','房东姓名8','男','13823888888','upload/fangdong_touxiang8.jpg','是','',0);
/*!40000 ALTER TABLE `fangdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuhuxing`
--

DROP TABLE IF EXISTS `fangwuhuxing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuhuxing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuhuxing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋户型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwuhuxing` (`fangwuhuxing`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='房屋户型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuhuxing`
--

LOCK TABLES `fangwuhuxing` WRITE;
/*!40000 ALTER TABLE `fangwuhuxing` DISABLE KEYS */;
INSERT INTO `fangwuhuxing` VALUES (1,'2025-04-25 07:18:59','房屋户型1'),(2,'2025-04-25 07:18:59','房屋户型2'),(3,'2025-04-25 07:18:59','房屋户型3'),(4,'2025-04-25 07:18:59','房屋户型4'),(5,'2025-04-25 07:18:59','房屋户型5'),(6,'2025-04-25 07:18:59','房屋户型6'),(7,'2025-04-25 07:18:59','房屋户型7'),(8,'2025-04-25 07:18:59','房屋户型8');
/*!40000 ALTER TABLE `fangwuhuxing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuleixing`
--

DROP TABLE IF EXISTS `fangwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwuleixing` (`fangwuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='房屋类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuleixing`
--

LOCK TABLES `fangwuleixing` WRITE;
/*!40000 ALTER TABLE `fangwuleixing` DISABLE KEYS */;
INSERT INTO `fangwuleixing` VALUES (1,'2025-04-25 07:18:59','房屋类型1'),(2,'2025-04-25 07:18:59','房屋类型2'),(3,'2025-04-25 07:18:59','房屋类型3'),(4,'2025-04-25 07:18:59','房屋类型4'),(5,'2025-04-25 07:18:59','房屋类型5'),(6,'2025-04-25 07:18:59','房屋类型6'),(7,'2025-04-25 07:18:59','房屋类型7'),(8,'2025-04-25 07:18:59','房屋类型8');
/*!40000 ALTER TABLE `fangwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyuanxinxi`
--

DROP TABLE IF EXISTS `fangyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋类型',
  `fangwuhuxing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋户型',
  `zufangleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '租房类型',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `shipin` longtext COLLATE utf8mb4_unicode_ci COMMENT '视频',
  `mianji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '面积',
  `dizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `zujin` double DEFAULT NULL COMMENT '租金',
  `yajin` double DEFAULT NULL COMMENT '押金',
  `chaoxiang` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '朝向',
  `fangyuansheshi` longtext COLLATE utf8mb4_unicode_ci COMMENT '房源设施',
  `jiaotongqingkuang` longtext COLLATE utf8mb4_unicode_ci COMMENT '交通情况',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fangyuanxiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '房源详情',
  `fangdongzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房东姓名',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='房源信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyuanxinxi`
--

LOCK TABLES `fangyuanxinxi` WRITE;
/*!40000 ALTER TABLE `fangyuanxinxi` DISABLE KEYS */;
INSERT INTO `fangyuanxinxi` VALUES (1,'2025-04-25 07:18:59','房屋名称1','房屋类型1','房屋户型1','合租','upload/fangyuanxinxi_tupian1.jpg,upload/fangyuanxinxi_tupian2.jpg,upload/fangyuanxinxi_tupian3.jpg','','面积1','地址1',1,1,'朝向1','房源设施1','交通情况1','2025-04-25 15:18:59','房源详情1','房东账号1','房东姓名1','联系电话1','是','','2025-04-25 15:18:59',1,0,1),(2,'2025-04-25 07:18:59','房屋名称2','房屋类型2','房屋户型2','合租','upload/fangyuanxinxi_tupian2.jpg,upload/fangyuanxinxi_tupian3.jpg,upload/fangyuanxinxi_tupian4.jpg','','面积2','地址2',2,2,'朝向2','房源设施2','交通情况2','2025-04-25 15:18:59','房源详情2','房东账号2','房东姓名2','联系电话2','是','','2025-04-25 15:18:59',2,0,2),(3,'2025-04-25 07:18:59','房屋名称3','房屋类型3','房屋户型3','合租','upload/fangyuanxinxi_tupian3.jpg,upload/fangyuanxinxi_tupian4.jpg,upload/fangyuanxinxi_tupian5.jpg','','面积3','地址3',3,3,'朝向3','房源设施3','交通情况3','2025-04-25 15:18:59','房源详情3','房东账号3','房东姓名3','联系电话3','是','','2025-04-25 15:18:59',3,0,3),(4,'2025-04-25 07:18:59','房屋名称4','房屋类型4','房屋户型4','合租','upload/fangyuanxinxi_tupian4.jpg,upload/fangyuanxinxi_tupian5.jpg,upload/fangyuanxinxi_tupian6.jpg','','面积4','地址4',4,4,'朝向4','房源设施4','交通情况4','2025-04-25 15:18:59','房源详情4','房东账号4','房东姓名4','联系电话4','是','','2025-04-25 15:18:59',4,0,4),(5,'2025-04-25 07:18:59','房屋名称5','房屋类型5','房屋户型5','合租','upload/fangyuanxinxi_tupian5.jpg,upload/fangyuanxinxi_tupian6.jpg,upload/fangyuanxinxi_tupian7.jpg','','面积5','地址5',5,5,'朝向5','房源设施5','交通情况5','2025-04-25 15:18:59','房源详情5','房东账号5','房东姓名5','联系电话5','是','','2025-04-25 15:18:59',5,0,5),(6,'2025-04-25 07:18:59','房屋名称6','房屋类型6','房屋户型6','合租','upload/fangyuanxinxi_tupian6.jpg,upload/fangyuanxinxi_tupian7.jpg,upload/fangyuanxinxi_tupian8.jpg','','面积6','地址6',6,6,'朝向6','房源设施6','交通情况6','2025-04-25 15:18:59','房源详情6','房东账号6','房东姓名6','联系电话6','是','','2025-04-25 15:18:59',6,0,6),(7,'2025-04-25 07:18:59','房屋名称7','房屋类型7','房屋户型7','合租','upload/fangyuanxinxi_tupian7.jpg,upload/fangyuanxinxi_tupian8.jpg,upload/fangyuanxinxi_tupian1.jpg','','面积7','地址7',7,7,'朝向7','房源设施7','交通情况7','2025-04-25 15:18:59','房源详情7','房东账号7','房东姓名7','联系电话7','是','','2025-04-25 15:18:59',7,0,7),(8,'2025-04-25 07:18:59','房屋名称8','房屋类型8','房屋户型8','合租','upload/fangyuanxinxi_tupian8.jpg,upload/fangyuanxinxi_tupian1.jpg,upload/fangyuanxinxi_tupian2.jpg','','面积8','地址8',8,8,'朝向8','房源设施8','交通情况8','2025-04-25 15:18:59','房源详情8','房东账号8','房东姓名8','联系电话8','是','','2025-04-25 15:18:59',8,0,8);
/*!40000 ALTER TABLE `fangyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帖子标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `isdone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `istop` int(11) DEFAULT '0' COMMENT '是否置顶',
  `toptime` datetime DEFAULT NULL COMMENT '置顶时间',
  `typename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
  `cover` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `isanon` int(11) DEFAULT '0' COMMENT '是否匿名(1:是,0:否)',
  `delflag` int(11) DEFAULT '0' COMMENT '是否删除(1:是,0:否)',
  PRIMARY KEY (`id`),
  KEY `typename` (`typename`),
  CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`typename`) REFERENCES `forumtype` (`typename`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,'2025-04-25 07:19:00','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放',0,'2025-04-25 15:19:00','分类名称1','upload/forum_cover1.jpg,upload/forum_cover2.jpg,upload/forum_cover3.jpg',1,0),(2,'2025-04-25 07:19:00','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放',0,'2025-04-25 15:19:00','分类名称2','upload/forum_cover2.jpg,upload/forum_cover3.jpg,upload/forum_cover4.jpg',2,0),(3,'2025-04-25 07:19:00','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放',0,'2025-04-25 15:19:00','分类名称3','upload/forum_cover3.jpg,upload/forum_cover4.jpg,upload/forum_cover5.jpg',3,0),(4,'2025-04-25 07:19:00','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放',0,'2025-04-25 15:19:00','分类名称4','upload/forum_cover4.jpg,upload/forum_cover5.jpg,upload/forum_cover6.jpg',4,0),(5,'2025-04-25 07:19:00','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放',0,'2025-04-25 15:19:00','分类名称5','upload/forum_cover5.jpg,upload/forum_cover6.jpg,upload/forum_cover7.jpg',5,0),(6,'2025-04-25 07:19:00','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放',0,'2025-04-25 15:19:00','分类名称6','upload/forum_cover6.jpg,upload/forum_cover7.jpg,upload/forum_cover8.jpg',6,0),(7,'2025-04-25 07:19:00','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl1.jpg','开放',0,'2025-04-25 15:19:00','分类名称7','upload/forum_cover7.jpg,upload/forum_cover8.jpg,upload/forum_cover1.jpg',7,0),(8,'2025-04-25 07:19:00','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg','开放',0,'2025-04-25 15:19:00','分类名称8','upload/forum_cover8.jpg,upload/forum_cover1.jpg,upload/forum_cover2.jpg',8,0);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forumreport`
--

DROP TABLE IF EXISTS `forumreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forumreport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `forumid` bigint(20) DEFAULT NULL COMMENT '论坛id',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帖子标题',
  `userid` bigint(20) NOT NULL COMMENT '举报用户id',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '举报用户名',
  `reporteduserid` bigint(20) NOT NULL COMMENT '被举报用户id',
  `reportedusername` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '被举报用户名',
  `reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '举报原因',
  `picture` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片补充',
  `handleadvise` longtext COLLATE utf8mb4_unicode_ci COMMENT '处理建议',
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '处理中' COMMENT '状态',
  `reporttype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '主题帖举报' COMMENT '举报类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='交流论坛举报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forumreport`
--

LOCK TABLES `forumreport` WRITE;
/*!40000 ALTER TABLE `forumreport` DISABLE KEYS */;
INSERT INTO `forumreport` VALUES (1,'2025-04-25 07:19:00',1,'帖子标题1',1,'举报用户名1',1,'被举报用户名1','举报原因1','upload/forumreport_picture1.jpg,upload/forumreport_picture2.jpg,upload/forumreport_picture3.jpg','处理建议1','处理中','主题帖举报'),(2,'2025-04-25 07:19:00',2,'帖子标题2',2,'举报用户名2',2,'被举报用户名2','举报原因2','upload/forumreport_picture2.jpg,upload/forumreport_picture3.jpg,upload/forumreport_picture4.jpg','处理建议2','处理中','主题帖举报'),(3,'2025-04-25 07:19:00',3,'帖子标题3',3,'举报用户名3',3,'被举报用户名3','举报原因3','upload/forumreport_picture3.jpg,upload/forumreport_picture4.jpg,upload/forumreport_picture5.jpg','处理建议3','处理中','主题帖举报'),(4,'2025-04-25 07:19:00',4,'帖子标题4',4,'举报用户名4',4,'被举报用户名4','举报原因4','upload/forumreport_picture4.jpg,upload/forumreport_picture5.jpg,upload/forumreport_picture6.jpg','处理建议4','处理中','主题帖举报'),(5,'2025-04-25 07:19:00',5,'帖子标题5',5,'举报用户名5',5,'被举报用户名5','举报原因5','upload/forumreport_picture5.jpg,upload/forumreport_picture6.jpg,upload/forumreport_picture7.jpg','处理建议5','处理中','主题帖举报'),(6,'2025-04-25 07:19:00',6,'帖子标题6',6,'举报用户名6',6,'被举报用户名6','举报原因6','upload/forumreport_picture6.jpg,upload/forumreport_picture7.jpg,upload/forumreport_picture8.jpg','处理建议6','处理中','主题帖举报'),(7,'2025-04-25 07:19:00',7,'帖子标题7',7,'举报用户名7',7,'被举报用户名7','举报原因7','upload/forumreport_picture7.jpg,upload/forumreport_picture8.jpg,upload/forumreport_picture1.jpg','处理建议7','处理中','主题帖举报'),(8,'2025-04-25 07:19:00',8,'帖子标题8',8,'举报用户名8',8,'被举报用户名8','举报原因8','upload/forumreport_picture8.jpg,upload/forumreport_picture1.jpg,upload/forumreport_picture2.jpg','处理建议8','处理中','主题帖举报');
/*!40000 ALTER TABLE `forumreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forumtype`
--

DROP TABLE IF EXISTS `forumtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forumtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`),
  KEY `forumtype_jdc2` (`typename`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='交流论坛类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forumtype`
--

LOCK TABLES `forumtype` WRITE;
/*!40000 ALTER TABLE `forumtype` DISABLE KEYS */;
INSERT INTO `forumtype` VALUES (1,'2025-04-25 07:19:00','分类名称1'),(2,'2025-04-25 07:19:00','分类名称2'),(3,'2025-04-25 07:19:00','分类名称3'),(4,'2025-04-25 07:19:00','分类名称4'),(5,'2025-04-25 07:19:00','分类名称5'),(6,'2025-04-25 07:19:00','分类名称6'),(7,'2025-04-25 07:19:00','分类名称7'),(8,'2025-04-25 07:19:00','分类名称8');
/*!40000 ALTER TABLE `forumtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `uid` bigint(20) NOT NULL COMMENT '用户ID',
  `fid` bigint(20) NOT NULL COMMENT '好友用户ID',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `tablename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名',
  `alias` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '别名',
  `type` int(11) DEFAULT '0' COMMENT '类型(0:好友申请，1:好友，2:消息)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerenjianli`
--

DROP TABLE IF EXISTS `gerenjianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerenjianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `zhuanye` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '专业',
  `xueli` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历',
  `qiuzhiyixiang` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '求职意向',
  `jiaoyubeijing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '教育背景',
  `yixiangchengshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向城市',
  `xinziyaoqiu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '薪资要求',
  `gongzuojingli` longtext COLLATE utf8mb4_unicode_ci COMMENT '工作经历',
  `jianliwenjian` longtext COLLATE utf8mb4_unicode_ci COMMENT '简历文件',
  `xingquaihao` longtext COLLATE utf8mb4_unicode_ci COMMENT '兴趣爱好',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='个人简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerenjianli`
--

LOCK TABLES `gerenjianli` WRITE;
/*!40000 ALTER TABLE `gerenjianli` DISABLE KEYS */;
INSERT INTO `gerenjianli` VALUES (1,'2025-04-25 07:18:59','账号1','姓名1','性别1','手机1','upload/gerenjianli_touxiang1.jpg,upload/gerenjianli_touxiang2.jpg,upload/gerenjianli_touxiang3.jpg','专业1','学历1','求职意向1','教育背景1','意向城市1','薪资要求1','工作经历1','','兴趣爱好1'),(2,'2025-04-25 07:18:59','账号2','姓名2','性别2','手机2','upload/gerenjianli_touxiang2.jpg,upload/gerenjianli_touxiang3.jpg,upload/gerenjianli_touxiang4.jpg','专业2','学历2','求职意向2','教育背景2','意向城市2','薪资要求2','工作经历2','','兴趣爱好2'),(3,'2025-04-25 07:18:59','账号3','姓名3','性别3','手机3','upload/gerenjianli_touxiang3.jpg,upload/gerenjianli_touxiang4.jpg,upload/gerenjianli_touxiang5.jpg','专业3','学历3','求职意向3','教育背景3','意向城市3','薪资要求3','工作经历3','','兴趣爱好3'),(4,'2025-04-25 07:18:59','账号4','姓名4','性别4','手机4','upload/gerenjianli_touxiang4.jpg,upload/gerenjianli_touxiang5.jpg,upload/gerenjianli_touxiang6.jpg','专业4','学历4','求职意向4','教育背景4','意向城市4','薪资要求4','工作经历4','','兴趣爱好4'),(5,'2025-04-25 07:18:59','账号5','姓名5','性别5','手机5','upload/gerenjianli_touxiang5.jpg,upload/gerenjianli_touxiang6.jpg,upload/gerenjianli_touxiang7.jpg','专业5','学历5','求职意向5','教育背景5','意向城市5','薪资要求5','工作经历5','','兴趣爱好5'),(6,'2025-04-25 07:18:59','账号6','姓名6','性别6','手机6','upload/gerenjianli_touxiang6.jpg,upload/gerenjianli_touxiang7.jpg,upload/gerenjianli_touxiang8.jpg','专业6','学历6','求职意向6','教育背景6','意向城市6','薪资要求6','工作经历6','','兴趣爱好6'),(7,'2025-04-25 07:18:59','账号7','姓名7','性别7','手机7','upload/gerenjianli_touxiang7.jpg,upload/gerenjianli_touxiang8.jpg,upload/gerenjianli_touxiang1.jpg','专业7','学历7','求职意向7','教育背景7','意向城市7','薪资要求7','工作经历7','','兴趣爱好7'),(8,'2025-04-25 07:18:59','账号8','姓名8','性别8','手机8','upload/gerenjianli_touxiang8.jpg,upload/gerenjianli_touxiang1.jpg,upload/gerenjianli_touxiang2.jpg','专业8','学历8','求职意向8','教育背景8','意向城市8','薪资要求8','工作经历8','','兴趣爱好8');
/*!40000 ALTER TABLE `gerenjianli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxuanchuan`
--

DROP TABLE IF EXISTS `huodongxuanchuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxuanchuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `jianjie` longtext COLLATE utf8mb4_unicode_ci COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='活动宣传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxuanchuan`
--

LOCK TABLES `huodongxuanchuan` WRITE;
/*!40000 ALTER TABLE `huodongxuanchuan` DISABLE KEYS */;
INSERT INTO `huodongxuanchuan` VALUES (1,'2025-04-25 07:19:00','标题1','简介1','2025-04-25','内容1','upload/huodongxuanchuan_fengmian1.jpg,upload/huodongxuanchuan_fengmian2.jpg,upload/huodongxuanchuan_fengmian3.jpg','2025-04-25 15:19:00',1,1),(2,'2025-04-25 07:19:00','标题2','简介2','2025-04-25','内容2','upload/huodongxuanchuan_fengmian2.jpg,upload/huodongxuanchuan_fengmian3.jpg,upload/huodongxuanchuan_fengmian4.jpg','2025-04-25 15:19:00',2,2),(3,'2025-04-25 07:19:00','标题3','简介3','2025-04-25','内容3','upload/huodongxuanchuan_fengmian3.jpg,upload/huodongxuanchuan_fengmian4.jpg,upload/huodongxuanchuan_fengmian5.jpg','2025-04-25 15:19:00',3,3),(4,'2025-04-25 07:19:00','标题4','简介4','2025-04-25','内容4','upload/huodongxuanchuan_fengmian4.jpg,upload/huodongxuanchuan_fengmian5.jpg,upload/huodongxuanchuan_fengmian6.jpg','2025-04-25 15:19:00',4,4),(5,'2025-04-25 07:19:00','标题5','简介5','2025-04-25','内容5','upload/huodongxuanchuan_fengmian5.jpg,upload/huodongxuanchuan_fengmian6.jpg,upload/huodongxuanchuan_fengmian7.jpg','2025-04-25 15:19:00',5,5),(6,'2025-04-25 07:19:00','标题6','简介6','2025-04-25','内容6','upload/huodongxuanchuan_fengmian6.jpg,upload/huodongxuanchuan_fengmian7.jpg,upload/huodongxuanchuan_fengmian8.jpg','2025-04-25 15:19:00',6,6),(7,'2025-04-25 07:19:00','标题7','简介7','2025-04-25','内容7','upload/huodongxuanchuan_fengmian7.jpg,upload/huodongxuanchuan_fengmian8.jpg,upload/huodongxuanchuan_fengmian1.jpg','2025-04-25 15:19:00',7,7),(8,'2025-04-25 07:19:00','标题8','简介8','2025-04-25','内容8','upload/huodongxuanchuan_fengmian8.jpg,upload/huodongxuanchuan_fengmian1.jpg,upload/huodongxuanchuan_fengmian2.jpg','2025-04-25 15:19:00',8,8);
/*!40000 ALTER TABLE `huodongxuanchuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuyezhidao`
--

DROP TABLE IF EXISTS `jiuyezhidao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuyezhidao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `jianjie` longtext COLLATE utf8mb4_unicode_ci COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `neirong` longtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `discussnum` int(11) DEFAULT '0' COMMENT '评论数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='就业指导';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuyezhidao`
--

LOCK TABLES `jiuyezhidao` WRITE;
/*!40000 ALTER TABLE `jiuyezhidao` DISABLE KEYS */;
INSERT INTO `jiuyezhidao` VALUES (1,'2025-04-25 07:19:00','标题1','简介1','2025-04-25','upload/jiuyezhidao_fengmian1.jpg,upload/jiuyezhidao_fengmian2.jpg,upload/jiuyezhidao_fengmian3.jpg','内容1',1,1,'2025-04-25 15:19:00',1,0,1),(2,'2025-04-25 07:19:00','标题2','简介2','2025-04-25','upload/jiuyezhidao_fengmian2.jpg,upload/jiuyezhidao_fengmian3.jpg,upload/jiuyezhidao_fengmian4.jpg','内容2',2,2,'2025-04-25 15:19:00',2,0,2),(3,'2025-04-25 07:19:00','标题3','简介3','2025-04-25','upload/jiuyezhidao_fengmian3.jpg,upload/jiuyezhidao_fengmian4.jpg,upload/jiuyezhidao_fengmian5.jpg','内容3',3,3,'2025-04-25 15:19:00',3,0,3),(4,'2025-04-25 07:19:00','标题4','简介4','2025-04-25','upload/jiuyezhidao_fengmian4.jpg,upload/jiuyezhidao_fengmian5.jpg,upload/jiuyezhidao_fengmian6.jpg','内容4',4,4,'2025-04-25 15:19:00',4,0,4),(5,'2025-04-25 07:19:00','标题5','简介5','2025-04-25','upload/jiuyezhidao_fengmian5.jpg,upload/jiuyezhidao_fengmian6.jpg,upload/jiuyezhidao_fengmian7.jpg','内容5',5,5,'2025-04-25 15:19:00',5,0,5),(6,'2025-04-25 07:19:00','标题6','简介6','2025-04-25','upload/jiuyezhidao_fengmian6.jpg,upload/jiuyezhidao_fengmian7.jpg,upload/jiuyezhidao_fengmian8.jpg','内容6',6,6,'2025-04-25 15:19:00',6,0,6),(7,'2025-04-25 07:19:00','标题7','简介7','2025-04-25','upload/jiuyezhidao_fengmian7.jpg,upload/jiuyezhidao_fengmian8.jpg,upload/jiuyezhidao_fengmian1.jpg','内容7',7,7,'2025-04-25 15:19:00',7,0,7),(8,'2025-04-25 07:19:00','标题8','简介8','2025-04-25','upload/jiuyezhidao_fengmian8.jpg,upload/jiuyezhidao_fengmian1.jpg,upload/jiuyezhidao_fengmian2.jpg','内容8',8,8,'2025-04-25 15:19:00',8,0,8);
/*!40000 ALTER TABLE `jiuyezhidao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luqutongzhi`
--

DROP TABLE IF EXISTS `luqutongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luqutongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `zhiweimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位名称',
  `shifouluyong` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '是否录用',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  `qiyezhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业名称',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='录取通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luqutongzhi`
--

LOCK TABLES `luqutongzhi` WRITE;
/*!40000 ALTER TABLE `luqutongzhi` DISABLE KEYS */;
INSERT INTO `luqutongzhi` VALUES (1,'2025-04-25 07:19:00','标题1','职位名称1','录取','2025-04-25 15:19:00','企业账号1','企业名称1','账号1','姓名1','upload/luqutongzhi_touxiang1.jpg,upload/luqutongzhi_touxiang2.jpg,upload/luqutongzhi_touxiang3.jpg'),(2,'2025-04-25 07:19:00','标题2','职位名称2','录取','2025-04-25 15:19:00','企业账号2','企业名称2','账号2','姓名2','upload/luqutongzhi_touxiang2.jpg,upload/luqutongzhi_touxiang3.jpg,upload/luqutongzhi_touxiang4.jpg'),(3,'2025-04-25 07:19:00','标题3','职位名称3','录取','2025-04-25 15:19:00','企业账号3','企业名称3','账号3','姓名3','upload/luqutongzhi_touxiang3.jpg,upload/luqutongzhi_touxiang4.jpg,upload/luqutongzhi_touxiang5.jpg'),(4,'2025-04-25 07:19:00','标题4','职位名称4','录取','2025-04-25 15:19:00','企业账号4','企业名称4','账号4','姓名4','upload/luqutongzhi_touxiang4.jpg,upload/luqutongzhi_touxiang5.jpg,upload/luqutongzhi_touxiang6.jpg'),(5,'2025-04-25 07:19:00','标题5','职位名称5','录取','2025-04-25 15:19:00','企业账号5','企业名称5','账号5','姓名5','upload/luqutongzhi_touxiang5.jpg,upload/luqutongzhi_touxiang6.jpg,upload/luqutongzhi_touxiang7.jpg'),(6,'2025-04-25 07:19:00','标题6','职位名称6','录取','2025-04-25 15:19:00','企业账号6','企业名称6','账号6','姓名6','upload/luqutongzhi_touxiang6.jpg,upload/luqutongzhi_touxiang7.jpg,upload/luqutongzhi_touxiang8.jpg'),(7,'2025-04-25 07:19:00','标题7','职位名称7','录取','2025-04-25 15:19:00','企业账号7','企业名称7','账号7','姓名7','upload/luqutongzhi_touxiang7.jpg,upload/luqutongzhi_touxiang8.jpg,upload/luqutongzhi_touxiang1.jpg'),(8,'2025-04-25 07:19:00','标题8','职位名称8','录取','2025-04-25 15:19:00','企业账号8','企业名称8','账号8','姓名8','upload/luqutongzhi_touxiang8.jpg,upload/luqutongzhi_touxiang1.jpg,upload/luqutongzhi_touxiang2.jpg');
/*!40000 ALTER TABLE `luqutongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COLLATE utf8mb4_unicode_ci COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2025-04-25 07:19:00','[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"用户人数\",\"首页总数\",\"首页统计\",\"私聊\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"删除\",\"审核\",\"用户人数\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"zuhu\"}],\"menu\":\"用户管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"私聊\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"删除\",\"审核\"],\"menu\":\"企业\",\"menuJump\":\"列表\",\"tableName\":\"qiye\"}],\"menu\":\"企业管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"房东人数\",\"首页总数\",\"首页统计\",\"私聊\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"删除\",\"审核\",\"房东人数\"],\"menu\":\"房东\",\"menuJump\":\"列表\",\"tableName\":\"fangdong\"}],\"menu\":\"房东管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"个人简历\",\"menuJump\":\"列表\",\"tableName\":\"gerenjianli\"}],\"menu\":\"个人简历管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"房屋类型\",\"menuJump\":\"列表\",\"tableName\":\"fangwuleixing\"}],\"menu\":\"房屋类型管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"房屋户型\",\"menuJump\":\"列表\",\"tableName\":\"fangwuhuxing\"}],\"menu\":\"房屋户型管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"房屋类型\",\"房屋户型\",\"查看评论\",\"私聊\",\"在线租房\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"删除\",\"审核\",\"查看评论\",\"房屋类型\",\"房屋户型\"],\"menu\":\"房源信息\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\",\"退租信息\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"租赁订单\",\"menuJump\":\"列表\",\"tableName\":\"zulindingdan\"}],\"menu\":\"租赁订单管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"删除\",\"查看\"],\"menu\":\"退租信息\",\"menuJump\":\"列表\",\"tableName\":\"tuizuxinxi\"}],\"menu\":\"退租信息管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"私聊\",\"投递简历\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"职位名称\",\"职位投递人数\",\"面试通知\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\",\"职位名称\",\"职位投递人数\"],\"menu\":\"投递简历\",\"menuJump\":\"列表\",\"tableName\":\"toudijianli\"}],\"menu\":\"投递简历管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"录取通知\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"面试通知\",\"menuJump\":\"列表\",\"tableName\":\"mianshitongzhi\"}],\"menu\":\"面试通知管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"是否录用\"],\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"删除\",\"是否录用\",\"查看\"],\"menu\":\"录取通知\",\"menuJump\":\"列表\",\"tableName\":\"luqutongzhi\"}],\"menu\":\"录取通知管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"租房资讯\",\"menuJump\":\"列表\",\"tableName\":\"zufangzixun\"}],\"menu\":\"租房资讯管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"用户投诉\",\"menuJump\":\"列表\",\"tableName\":\"yonghutousu\"}],\"menu\":\"用户投诉管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"活动宣传\",\"menuJump\":\"列表\",\"tableName\":\"huodongxuanchuan\"}],\"menu\":\"活动宣传管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"培训资源\",\"menuJump\":\"列表\",\"tableName\":\"peixunziyuan\"}],\"menu\":\"培训资源管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"就业指导\",\"menuJump\":\"列表\",\"tableName\":\"jiuyezhidao\"}],\"menu\":\"就业指导管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"举报记录\",\"tableName\":\"forumreport\"}],\"menu\":\"举报记录管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛分类\",\"tableName\":\"forumtype\"}],\"menu\":\"论坛分类管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-group\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"交流论坛\",\"tableName\":\"forum\"}],\"menu\":\"交流论坛\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图管理\",\"tableName\":\"config\"},{\"allButtons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"编辑权限\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"编辑权限\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\"}],\"menu\":\"系统管理\"}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"房屋类型\",\"房屋户型\",\"查看评论\",\"私聊\",\"在线租房\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"私聊\",\"在线租房\"],\"menu\":\"房源信息列表\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"私聊\",\"投递简历\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"私聊\",\"投递简历\"],\"menu\":\"招聘信息列表\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"租房资讯列表\",\"menuJump\":\"列表\",\"tableName\":\"zufangzixun\"}],\"menu\":\"租房资讯模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"活动宣传列表\",\"menuJump\":\"列表\",\"tableName\":\"huodongxuanchuan\"}],\"menu\":\"活动宣传模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\"],\"menu\":\"培训资源列表\",\"menuJump\":\"列表\",\"tableName\":\"peixunziyuan\"}],\"menu\":\"培训资源模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"就业指导列表\",\"menuJump\":\"列表\",\"tableName\":\"jiuyezhidao\"}],\"menu\":\"就业指导模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-group\",\"buttons\":[\"查看\"],\"menu\":\"交流论坛列表\",\"tableName\":\"forum\"}],\"menu\":\"交流论坛模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"个人简历\",\"menuJump\":\"列表\",\"tableName\":\"gerenjianli\"}],\"menu\":\"个人简历管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\",\"退租信息\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"删除\",\"支付\",\"退租信息\"],\"menu\":\"租赁订单\",\"menuJump\":\"列表\",\"tableName\":\"zulindingdan\"}],\"menu\":\"租赁订单管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"menu\":\"退租信息\",\"menuJump\":\"列表\",\"tableName\":\"tuizuxinxi\"}],\"menu\":\"退租信息管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"职位名称\",\"职位投递人数\",\"面试通知\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"投递简历\",\"menuJump\":\"列表\",\"tableName\":\"toudijianli\"}],\"menu\":\"投递简历管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"录取通知\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"面试通知\",\"menuJump\":\"列表\",\"tableName\":\"mianshitongzhi\"}],\"menu\":\"面试通知管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"是否录用\"],\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"录取通知\",\"menuJump\":\"列表\",\"tableName\":\"luqutongzhi\"}],\"menu\":\"录取通知管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户投诉\",\"menuJump\":\"列表\",\"tableName\":\"yonghutousu\"}],\"menu\":\"用户投诉管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-favor\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"menu\":\"我的收藏管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"举报记录\",\"tableName\":\"forumreport\"}],\"menu\":\"举报记录管理\"}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"房屋类型\",\"房屋户型\",\"查看评论\",\"私聊\",\"在线租房\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"私聊\",\"在线租房\"],\"menu\":\"房源信息列表\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"私聊\",\"投递简历\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"私聊\",\"投递简历\"],\"menu\":\"招聘信息列表\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"租房资讯列表\",\"menuJump\":\"列表\",\"tableName\":\"zufangzixun\"}],\"menu\":\"租房资讯模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"活动宣传列表\",\"menuJump\":\"列表\",\"tableName\":\"huodongxuanchuan\"}],\"menu\":\"活动宣传模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\"],\"menu\":\"培训资源列表\",\"menuJump\":\"列表\",\"tableName\":\"peixunziyuan\"}],\"menu\":\"培训资源模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"就业指导列表\",\"menuJump\":\"列表\",\"tableName\":\"jiuyezhidao\"}],\"menu\":\"就业指导模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-group\",\"buttons\":[\"查看\"],\"menu\":\"交流论坛列表\",\"tableName\":\"forum\"}],\"menu\":\"交流论坛模块\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"zuhu\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"私聊\",\"投递简历\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"职位名称\",\"职位投递人数\",\"面试通知\"],\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\",\"审核\",\"职位名称\",\"职位投递人数\",\"面试通知\"],\"menu\":\"投递简历\",\"menuJump\":\"列表\",\"tableName\":\"toudijianli\"}],\"menu\":\"投递简历管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"录取通知\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"删除\",\"录取通知\"],\"menu\":\"面试通知\",\"menuJump\":\"列表\",\"tableName\":\"mianshitongzhi\"}],\"menu\":\"面试通知管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"是否录用\"],\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\",\"是否录用\"],\"menu\":\"录取通知\",\"menuJump\":\"列表\",\"tableName\":\"luqutongzhi\"}],\"menu\":\"录取通知管理\"}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"房屋类型\",\"房屋户型\",\"查看评论\",\"私聊\",\"在线租房\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"私聊\",\"在线租房\"],\"menu\":\"房源信息列表\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"私聊\",\"投递简历\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"私聊\",\"投递简历\"],\"menu\":\"招聘信息列表\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"租房资讯列表\",\"menuJump\":\"列表\",\"tableName\":\"zufangzixun\"}],\"menu\":\"租房资讯模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"活动宣传列表\",\"menuJump\":\"列表\",\"tableName\":\"huodongxuanchuan\"}],\"menu\":\"活动宣传模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\"],\"menu\":\"培训资源列表\",\"menuJump\":\"列表\",\"tableName\":\"peixunziyuan\"}],\"menu\":\"培训资源模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"就业指导列表\",\"menuJump\":\"列表\",\"tableName\":\"jiuyezhidao\"}],\"menu\":\"就业指导模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-group\",\"buttons\":[\"查看\"],\"menu\":\"交流论坛列表\",\"tableName\":\"forum\"}],\"menu\":\"交流论坛模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"企业\",\"tableName\":\"qiye\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"房屋类型\",\"房屋户型\",\"查看评论\",\"私聊\",\"在线租房\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"房屋类型\",\"房屋户型\",\"查看评论\"],\"menu\":\"房源信息\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\",\"退租信息\"],\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"租赁订单\",\"menuJump\":\"列表\",\"tableName\":\"zulindingdan\"}],\"menu\":\"租赁订单管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"审核\",\"支付\"],\"menu\":\"退租信息\",\"menuJump\":\"列表\",\"tableName\":\"tuizuxinxi\"}],\"menu\":\"退租信息管理\"}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"房屋类型\",\"房屋户型\",\"查看评论\",\"私聊\",\"在线租房\"],\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"私聊\",\"在线租房\"],\"menu\":\"房源信息列表\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"私聊\",\"投递简历\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"私聊\",\"投递简历\"],\"menu\":\"招聘信息列表\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"租房资讯列表\",\"menuJump\":\"列表\",\"tableName\":\"zufangzixun\"}],\"menu\":\"租房资讯模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"活动宣传列表\",\"menuJump\":\"列表\",\"tableName\":\"huodongxuanchuan\"}],\"menu\":\"活动宣传模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\"],\"menu\":\"培训资源列表\",\"menuJump\":\"列表\",\"tableName\":\"peixunziyuan\"}],\"menu\":\"培训资源模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"就业指导列表\",\"menuJump\":\"列表\",\"tableName\":\"jiuyezhidao\"}],\"menu\":\"就业指导模块\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-group\",\"buttons\":[\"查看\"],\"menu\":\"交流论坛列表\",\"tableName\":\"forum\"}],\"menu\":\"交流论坛模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"房东\",\"tableName\":\"fangdong\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mianshitongzhi`
--

DROP TABLE IF EXISTS `mianshitongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mianshitongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `zhiweimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位名称',
  `tixingleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提醒类型',
  `qiyezhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业名称',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  `tixingneirong` longtext COLLATE utf8mb4_unicode_ci COMMENT '提醒内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='面试通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mianshitongzhi`
--

LOCK TABLES `mianshitongzhi` WRITE;
/*!40000 ALTER TABLE `mianshitongzhi` DISABLE KEYS */;
INSERT INTO `mianshitongzhi` VALUES (1,'2025-04-25 07:19:00','标题1','职位名称1','面试通知','企业账号1','企业名称1','账号1','姓名1','upload/mianshitongzhi_touxiang1.jpg,upload/mianshitongzhi_touxiang2.jpg,upload/mianshitongzhi_touxiang3.jpg','2025-04-25 15:19:00','提醒内容1'),(2,'2025-04-25 07:19:00','标题2','职位名称2','面试通知','企业账号2','企业名称2','账号2','姓名2','upload/mianshitongzhi_touxiang2.jpg,upload/mianshitongzhi_touxiang3.jpg,upload/mianshitongzhi_touxiang4.jpg','2025-04-25 15:19:00','提醒内容2'),(3,'2025-04-25 07:19:00','标题3','职位名称3','面试通知','企业账号3','企业名称3','账号3','姓名3','upload/mianshitongzhi_touxiang3.jpg,upload/mianshitongzhi_touxiang4.jpg,upload/mianshitongzhi_touxiang5.jpg','2025-04-25 15:19:00','提醒内容3'),(4,'2025-04-25 07:19:00','标题4','职位名称4','面试通知','企业账号4','企业名称4','账号4','姓名4','upload/mianshitongzhi_touxiang4.jpg,upload/mianshitongzhi_touxiang5.jpg,upload/mianshitongzhi_touxiang6.jpg','2025-04-25 15:19:00','提醒内容4'),(5,'2025-04-25 07:19:00','标题5','职位名称5','面试通知','企业账号5','企业名称5','账号5','姓名5','upload/mianshitongzhi_touxiang5.jpg,upload/mianshitongzhi_touxiang6.jpg,upload/mianshitongzhi_touxiang7.jpg','2025-04-25 15:19:00','提醒内容5'),(6,'2025-04-25 07:19:00','标题6','职位名称6','面试通知','企业账号6','企业名称6','账号6','姓名6','upload/mianshitongzhi_touxiang6.jpg,upload/mianshitongzhi_touxiang7.jpg,upload/mianshitongzhi_touxiang8.jpg','2025-04-25 15:19:00','提醒内容6'),(7,'2025-04-25 07:19:00','标题7','职位名称7','面试通知','企业账号7','企业名称7','账号7','姓名7','upload/mianshitongzhi_touxiang7.jpg,upload/mianshitongzhi_touxiang8.jpg,upload/mianshitongzhi_touxiang1.jpg','2025-04-25 15:19:00','提醒内容7'),(8,'2025-04-25 07:19:00','标题8','职位名称8','面试通知','企业账号8','企业名称8','账号8','姓名8','upload/mianshitongzhi_touxiang8.jpg,upload/mianshitongzhi_touxiang1.jpg,upload/mianshitongzhi_touxiang2.jpg','2025-04-25 15:19:00','提醒内容8');
/*!40000 ALTER TABLE `mianshitongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peixunziyuan`
--

DROP TABLE IF EXISTS `peixunziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peixunziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源名称',
  `ziyuanleixing` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源类型',
  `fujian` longtext COLLATE utf8mb4_unicode_ci COMMENT '附件',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `ziyuanxiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '资源详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='培训资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peixunziyuan`
--

LOCK TABLES `peixunziyuan` WRITE;
/*!40000 ALTER TABLE `peixunziyuan` DISABLE KEYS */;
INSERT INTO `peixunziyuan` VALUES (1,'2025-04-25 07:19:00','资源名称1','资源类型1','','upload/peixunziyuan_tupian1.jpg,upload/peixunziyuan_tupian2.jpg,upload/peixunziyuan_tupian3.jpg','2025-04-25 15:19:00','资源详情1',1,1),(2,'2025-04-25 07:19:00','资源名称2','资源类型2','','upload/peixunziyuan_tupian2.jpg,upload/peixunziyuan_tupian3.jpg,upload/peixunziyuan_tupian4.jpg','2025-04-25 15:19:00','资源详情2',2,2),(3,'2025-04-25 07:19:00','资源名称3','资源类型3','','upload/peixunziyuan_tupian3.jpg,upload/peixunziyuan_tupian4.jpg,upload/peixunziyuan_tupian5.jpg','2025-04-25 15:19:00','资源详情3',3,3),(4,'2025-04-25 07:19:00','资源名称4','资源类型4','','upload/peixunziyuan_tupian4.jpg,upload/peixunziyuan_tupian5.jpg,upload/peixunziyuan_tupian6.jpg','2025-04-25 15:19:00','资源详情4',4,4),(5,'2025-04-25 07:19:00','资源名称5','资源类型5','','upload/peixunziyuan_tupian5.jpg,upload/peixunziyuan_tupian6.jpg,upload/peixunziyuan_tupian7.jpg','2025-04-25 15:19:00','资源详情5',5,5),(6,'2025-04-25 07:19:00','资源名称6','资源类型6','','upload/peixunziyuan_tupian6.jpg,upload/peixunziyuan_tupian7.jpg,upload/peixunziyuan_tupian8.jpg','2025-04-25 15:19:00','资源详情6',6,6),(7,'2025-04-25 07:19:00','资源名称7','资源类型7','','upload/peixunziyuan_tupian7.jpg,upload/peixunziyuan_tupian8.jpg,upload/peixunziyuan_tupian1.jpg','2025-04-25 15:19:00','资源详情7',7,7),(8,'2025-04-25 07:19:00','资源名称8','资源类型8','','upload/peixunziyuan_tupian8.jpg,upload/peixunziyuan_tupian1.jpg,upload/peixunziyuan_tupian2.jpg','2025-04-25 15:19:00','资源详情8',8,8);
/*!40000 ALTER TABLE `peixunziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '企业账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `qiyedizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业地址',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `qiyejieshao` longtext COLLATE utf8mb4_unicode_ci COMMENT '企业介绍',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2025-04-25 07:18:59','企业账号1','123456','企业名称1','负责人1','13823888881','773890001@qq.com','企业地址1','upload/qiye_touxiang1.jpg','企业介绍1','是','',0),(22,'2025-04-25 07:18:59','企业账号2','123456','企业名称2','负责人2','13823888882','773890002@qq.com','企业地址2','upload/qiye_touxiang2.jpg','企业介绍2','是','',0),(23,'2025-04-25 07:18:59','企业账号3','123456','企业名称3','负责人3','13823888883','773890003@qq.com','企业地址3','upload/qiye_touxiang3.jpg','企业介绍3','是','',0),(24,'2025-04-25 07:18:59','企业账号4','123456','企业名称4','负责人4','13823888884','773890004@qq.com','企业地址4','upload/qiye_touxiang4.jpg','企业介绍4','是','',0),(25,'2025-04-25 07:18:59','企业账号5','123456','企业名称5','负责人5','13823888885','773890005@qq.com','企业地址5','upload/qiye_touxiang5.jpg','企业介绍5','是','',0),(26,'2025-04-25 07:18:59','企业账号6','123456','企业名称6','负责人6','13823888886','773890006@qq.com','企业地址6','upload/qiye_touxiang6.jpg','企业介绍6','是','',0),(27,'2025-04-25 07:18:59','企业账号7','123456','企业名称7','负责人7','13823888887','773890007@qq.com','企业地址7','upload/qiye_touxiang7.jpg','企业介绍7','是','',0),(28,'2025-04-25 07:18:59','企业账号8','123456','企业名称8','负责人8','13823888888','773890008@qq.com','企业地址8','upload/qiye_touxiang8.jpg','企业介绍8','是','',0);
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `picture` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toudijianli`
--

DROP TABLE IF EXISTS `toudijianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toudijianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `jianliwenjian` longtext COLLATE utf8mb4_unicode_ci COMMENT '简历文件',
  `zhiweimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位名称',
  `qiyezhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业名称',
  `toudishijian` datetime DEFAULT NULL COMMENT '投递时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='投递简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toudijianli`
--

LOCK TABLES `toudijianli` WRITE;
/*!40000 ALTER TABLE `toudijianli` DISABLE KEYS */;
INSERT INTO `toudijianli` VALUES (1,'2025-04-25 07:19:00','账号1','姓名1','男','手机1','upload/toudijianli_touxiang1.jpg,upload/toudijianli_touxiang2.jpg,upload/toudijianli_touxiang3.jpg','','职位名称1','企业账号1','企业名称1','2025-04-25 15:19:00',1,1,'是',''),(2,'2025-04-25 07:19:00','账号2','姓名2','男','手机2','upload/toudijianli_touxiang2.jpg,upload/toudijianli_touxiang3.jpg,upload/toudijianli_touxiang4.jpg','','职位名称2','企业账号2','企业名称2','2025-04-25 15:19:00',2,2,'是',''),(3,'2025-04-25 07:19:00','账号3','姓名3','男','手机3','upload/toudijianli_touxiang3.jpg,upload/toudijianli_touxiang4.jpg,upload/toudijianli_touxiang5.jpg','','职位名称3','企业账号3','企业名称3','2025-04-25 15:19:00',3,3,'是',''),(4,'2025-04-25 07:19:00','账号4','姓名4','男','手机4','upload/toudijianli_touxiang4.jpg,upload/toudijianli_touxiang5.jpg,upload/toudijianli_touxiang6.jpg','','职位名称4','企业账号4','企业名称4','2025-04-25 15:19:00',4,4,'是',''),(5,'2025-04-25 07:19:00','账号5','姓名5','男','手机5','upload/toudijianli_touxiang5.jpg,upload/toudijianli_touxiang6.jpg,upload/toudijianli_touxiang7.jpg','','职位名称5','企业账号5','企业名称5','2025-04-25 15:19:00',5,5,'是',''),(6,'2025-04-25 07:19:00','账号6','姓名6','男','手机6','upload/toudijianli_touxiang6.jpg,upload/toudijianli_touxiang7.jpg,upload/toudijianli_touxiang8.jpg','','职位名称6','企业账号6','企业名称6','2025-04-25 15:19:00',6,6,'是',''),(7,'2025-04-25 07:19:00','账号7','姓名7','男','手机7','upload/toudijianli_touxiang7.jpg,upload/toudijianli_touxiang8.jpg,upload/toudijianli_touxiang1.jpg','','职位名称7','企业账号7','企业名称7','2025-04-25 15:19:00',7,7,'是',''),(8,'2025-04-25 07:19:00','账号8','姓名8','男','手机8','upload/toudijianli_touxiang8.jpg,upload/toudijianli_touxiang1.jpg,upload/toudijianli_touxiang2.jpg','','职位名称8','企业账号8','企业名称8','2025-04-25 15:19:00',8,8,'是','');
/*!40000 ALTER TABLE `toudijianli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuizuxinxi`
--

DROP TABLE IF EXISTS `tuizuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuizuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `fangwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋类型',
  `fangwuhuxing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋户型',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `zujin` double DEFAULT NULL COMMENT '租金',
  `zuqi` int(11) DEFAULT NULL COMMENT '租期',
  `yajin` double DEFAULT NULL COMMENT '押金',
  `zongjia` double DEFAULT NULL COMMENT '总价',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `tuifangyuanyin` longtext COLLATE utf8mb4_unicode_ci COMMENT '退房原因',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `fangdongzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房东姓名',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `ispay` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='退租信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuizuxinxi`
--

LOCK TABLES `tuizuxinxi` WRITE;
/*!40000 ALTER TABLE `tuizuxinxi` DISABLE KEYS */;
INSERT INTO `tuizuxinxi` VALUES (1,'2025-04-25 07:19:00','订单编号1','房屋类型1','房屋户型1','upload/tuizuxinxi_tupian1.jpg,upload/tuizuxinxi_tupian2.jpg,upload/tuizuxinxi_tupian3.jpg',1,1,1,1,'2025-04-25 15:19:00','退房原因1','账号1','姓名1','手机1','身份证1','房东账号1','房东姓名1','联系电话1','是','','未支付'),(2,'2025-04-25 07:19:00','订单编号2','房屋类型2','房屋户型2','upload/tuizuxinxi_tupian2.jpg,upload/tuizuxinxi_tupian3.jpg,upload/tuizuxinxi_tupian4.jpg',2,2,2,2,'2025-04-25 15:19:00','退房原因2','账号2','姓名2','手机2','身份证2','房东账号2','房东姓名2','联系电话2','是','','未支付'),(3,'2025-04-25 07:19:00','订单编号3','房屋类型3','房屋户型3','upload/tuizuxinxi_tupian3.jpg,upload/tuizuxinxi_tupian4.jpg,upload/tuizuxinxi_tupian5.jpg',3,3,3,3,'2025-04-25 15:19:00','退房原因3','账号3','姓名3','手机3','身份证3','房东账号3','房东姓名3','联系电话3','是','','未支付'),(4,'2025-04-25 07:19:00','订单编号4','房屋类型4','房屋户型4','upload/tuizuxinxi_tupian4.jpg,upload/tuizuxinxi_tupian5.jpg,upload/tuizuxinxi_tupian6.jpg',4,4,4,4,'2025-04-25 15:19:00','退房原因4','账号4','姓名4','手机4','身份证4','房东账号4','房东姓名4','联系电话4','是','','未支付'),(5,'2025-04-25 07:19:00','订单编号5','房屋类型5','房屋户型5','upload/tuizuxinxi_tupian5.jpg,upload/tuizuxinxi_tupian6.jpg,upload/tuizuxinxi_tupian7.jpg',5,5,5,5,'2025-04-25 15:19:00','退房原因5','账号5','姓名5','手机5','身份证5','房东账号5','房东姓名5','联系电话5','是','','未支付'),(6,'2025-04-25 07:19:00','订单编号6','房屋类型6','房屋户型6','upload/tuizuxinxi_tupian6.jpg,upload/tuizuxinxi_tupian7.jpg,upload/tuizuxinxi_tupian8.jpg',6,6,6,6,'2025-04-25 15:19:00','退房原因6','账号6','姓名6','手机6','身份证6','房东账号6','房东姓名6','联系电话6','是','','未支付'),(7,'2025-04-25 07:19:00','订单编号7','房屋类型7','房屋户型7','upload/tuizuxinxi_tupian7.jpg,upload/tuizuxinxi_tupian8.jpg,upload/tuizuxinxi_tupian1.jpg',7,7,7,7,'2025-04-25 15:19:00','退房原因7','账号7','姓名7','手机7','身份证7','房东账号7','房东姓名7','联系电话7','是','','未支付'),(8,'2025-04-25 07:19:00','订单编号8','房屋类型8','房屋户型8','upload/tuizuxinxi_tupian8.jpg,upload/tuizuxinxi_tupian1.jpg,upload/tuizuxinxi_tupian2.jpg',8,8,8,8,'2025-04-25 15:19:00','退房原因8','账号8','姓名8','手机8','身份证8','房东账号8','房东姓名8','联系电话8','是','','未支付');
/*!40000 ALTER TABLE `tuizuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2025-04-25 07:19:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghutousu`
--

DROP TABLE IF EXISTS `yonghutousu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghutousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `zhengjutu` longtext COLLATE utf8mb4_unicode_ci COMMENT '证据图',
  `tousuyuanyin` longtext COLLATE utf8mb4_unicode_ci COMMENT '投诉原因',
  `tousushijian` datetime DEFAULT NULL COMMENT '投诉时间',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghutousu`
--

LOCK TABLES `yonghutousu` WRITE;
/*!40000 ALTER TABLE `yonghutousu` DISABLE KEYS */;
INSERT INTO `yonghutousu` VALUES (1,'2025-04-25 07:19:00','标题1','upload/yonghutousu_zhengjutu1.jpg,upload/yonghutousu_zhengjutu2.jpg,upload/yonghutousu_zhengjutu3.jpg','投诉原因1','2025-04-25 15:19:00','账号1','姓名1',''),(2,'2025-04-25 07:19:00','标题2','upload/yonghutousu_zhengjutu2.jpg,upload/yonghutousu_zhengjutu3.jpg,upload/yonghutousu_zhengjutu4.jpg','投诉原因2','2025-04-25 15:19:00','账号2','姓名2',''),(3,'2025-04-25 07:19:00','标题3','upload/yonghutousu_zhengjutu3.jpg,upload/yonghutousu_zhengjutu4.jpg,upload/yonghutousu_zhengjutu5.jpg','投诉原因3','2025-04-25 15:19:00','账号3','姓名3',''),(4,'2025-04-25 07:19:00','标题4','upload/yonghutousu_zhengjutu4.jpg,upload/yonghutousu_zhengjutu5.jpg,upload/yonghutousu_zhengjutu6.jpg','投诉原因4','2025-04-25 15:19:00','账号4','姓名4',''),(5,'2025-04-25 07:19:00','标题5','upload/yonghutousu_zhengjutu5.jpg,upload/yonghutousu_zhengjutu6.jpg,upload/yonghutousu_zhengjutu7.jpg','投诉原因5','2025-04-25 15:19:00','账号5','姓名5',''),(6,'2025-04-25 07:19:00','标题6','upload/yonghutousu_zhengjutu6.jpg,upload/yonghutousu_zhengjutu7.jpg,upload/yonghutousu_zhengjutu8.jpg','投诉原因6','2025-04-25 15:19:00','账号6','姓名6',''),(7,'2025-04-25 07:19:00','标题7','upload/yonghutousu_zhengjutu7.jpg,upload/yonghutousu_zhengjutu8.jpg,upload/yonghutousu_zhengjutu1.jpg','投诉原因7','2025-04-25 15:19:00','账号7','姓名7',''),(8,'2025-04-25 07:19:00','标题8','upload/yonghutousu_zhengjutu8.jpg,upload/yonghutousu_zhengjutu1.jpg,upload/yonghutousu_zhengjutu2.jpg','投诉原因8','2025-04-25 15:19:00','账号8','姓名8','');
/*!40000 ALTER TABLE `yonghutousu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '职位名称',
  `zhiweileixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位类型',
  `xueliyaoqiu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历要求',
  `zhiweiyaoqiu` longtext COLLATE utf8mb4_unicode_ci COMMENT '职位要求',
  `shangbanshijian` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上班时间',
  `shangbandidian` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上班地点',
  `xinzidaiyu` double DEFAULT NULL COMMENT '薪资待遇',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `qiyezhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `zhaopinxiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '招聘详情',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (1,'2025-04-25 07:19:00','职位名称1','职位类型1','不限','职位要求1','上班时间1','上班地点1',1,1,'upload/zhaopinxinxi_fengmian1.jpg,upload/zhaopinxinxi_fengmian2.jpg,upload/zhaopinxinxi_fengmian3.jpg','2025-04-25 15:19:00','企业账号1','企业名称1','负责人1','13823888881','773890001@qq.com','招聘详情1','是','','2025-04-25 15:19:00',1,1),(2,'2025-04-25 07:19:00','职位名称2','职位类型2','不限','职位要求2','上班时间2','上班地点2',2,2,'upload/zhaopinxinxi_fengmian2.jpg,upload/zhaopinxinxi_fengmian3.jpg,upload/zhaopinxinxi_fengmian4.jpg','2025-04-25 15:19:00','企业账号2','企业名称2','负责人2','13823888882','773890002@qq.com','招聘详情2','是','','2025-04-25 15:19:00',2,2),(3,'2025-04-25 07:19:00','职位名称3','职位类型3','不限','职位要求3','上班时间3','上班地点3',3,3,'upload/zhaopinxinxi_fengmian3.jpg,upload/zhaopinxinxi_fengmian4.jpg,upload/zhaopinxinxi_fengmian5.jpg','2025-04-25 15:19:00','企业账号3','企业名称3','负责人3','13823888883','773890003@qq.com','招聘详情3','是','','2025-04-25 15:19:00',3,3),(4,'2025-04-25 07:19:00','职位名称4','职位类型4','不限','职位要求4','上班时间4','上班地点4',4,4,'upload/zhaopinxinxi_fengmian4.jpg,upload/zhaopinxinxi_fengmian5.jpg,upload/zhaopinxinxi_fengmian6.jpg','2025-04-25 15:19:00','企业账号4','企业名称4','负责人4','13823888884','773890004@qq.com','招聘详情4','是','','2025-04-25 15:19:00',4,4),(5,'2025-04-25 07:19:00','职位名称5','职位类型5','不限','职位要求5','上班时间5','上班地点5',5,5,'upload/zhaopinxinxi_fengmian5.jpg,upload/zhaopinxinxi_fengmian6.jpg,upload/zhaopinxinxi_fengmian7.jpg','2025-04-25 15:19:00','企业账号5','企业名称5','负责人5','13823888885','773890005@qq.com','招聘详情5','是','','2025-04-25 15:19:00',5,5),(6,'2025-04-25 07:19:00','职位名称6','职位类型6','不限','职位要求6','上班时间6','上班地点6',6,6,'upload/zhaopinxinxi_fengmian6.jpg,upload/zhaopinxinxi_fengmian7.jpg,upload/zhaopinxinxi_fengmian8.jpg','2025-04-25 15:19:00','企业账号6','企业名称6','负责人6','13823888886','773890006@qq.com','招聘详情6','是','','2025-04-25 15:19:00',6,6),(7,'2025-04-25 07:19:00','职位名称7','职位类型7','不限','职位要求7','上班时间7','上班地点7',7,7,'upload/zhaopinxinxi_fengmian7.jpg,upload/zhaopinxinxi_fengmian8.jpg,upload/zhaopinxinxi_fengmian1.jpg','2025-04-25 15:19:00','企业账号7','企业名称7','负责人7','13823888887','773890007@qq.com','招聘详情7','是','','2025-04-25 15:19:00',7,7),(8,'2025-04-25 07:19:00','职位名称8','职位类型8','不限','职位要求8','上班时间8','上班地点8',8,8,'upload/zhaopinxinxi_fengmian8.jpg,upload/zhaopinxinxi_fengmian1.jpg,upload/zhaopinxinxi_fengmian2.jpg','2025-04-25 15:19:00','企业账号8','企业名称8','负责人8','13823888888','773890008@qq.com','招聘详情8','是','','2025-04-25 15:19:00',8,8);
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zufangzixun`
--

DROP TABLE IF EXISTS `zufangzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zufangzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `jianjie` longtext COLLATE utf8mb4_unicode_ci COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `fengmian` longtext COLLATE utf8mb4_unicode_ci COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租房资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zufangzixun`
--

LOCK TABLES `zufangzixun` WRITE;
/*!40000 ALTER TABLE `zufangzixun` DISABLE KEYS */;
INSERT INTO `zufangzixun` VALUES (1,'2025-04-25 07:19:00','标题1','简介1','2025-04-25','内容1','upload/zufangzixun_fengmian1.jpg,upload/zufangzixun_fengmian2.jpg,upload/zufangzixun_fengmian3.jpg','2025-04-25 15:19:00',1,1),(2,'2025-04-25 07:19:00','标题2','简介2','2025-04-25','内容2','upload/zufangzixun_fengmian2.jpg,upload/zufangzixun_fengmian3.jpg,upload/zufangzixun_fengmian4.jpg','2025-04-25 15:19:00',2,2),(3,'2025-04-25 07:19:00','标题3','简介3','2025-04-25','内容3','upload/zufangzixun_fengmian3.jpg,upload/zufangzixun_fengmian4.jpg,upload/zufangzixun_fengmian5.jpg','2025-04-25 15:19:00',3,3),(4,'2025-04-25 07:19:00','标题4','简介4','2025-04-25','内容4','upload/zufangzixun_fengmian4.jpg,upload/zufangzixun_fengmian5.jpg,upload/zufangzixun_fengmian6.jpg','2025-04-25 15:19:00',4,4),(5,'2025-04-25 07:19:00','标题5','简介5','2025-04-25','内容5','upload/zufangzixun_fengmian5.jpg,upload/zufangzixun_fengmian6.jpg,upload/zufangzixun_fengmian7.jpg','2025-04-25 15:19:00',5,5),(6,'2025-04-25 07:19:00','标题6','简介6','2025-04-25','内容6','upload/zufangzixun_fengmian6.jpg,upload/zufangzixun_fengmian7.jpg,upload/zufangzixun_fengmian8.jpg','2025-04-25 15:19:00',6,6),(7,'2025-04-25 07:19:00','标题7','简介7','2025-04-25','内容7','upload/zufangzixun_fengmian7.jpg,upload/zufangzixun_fengmian8.jpg,upload/zufangzixun_fengmian1.jpg','2025-04-25 15:19:00',7,7),(8,'2025-04-25 07:19:00','标题8','简介8','2025-04-25','内容8','upload/zufangzixun_fengmian8.jpg,upload/zufangzixun_fengmian1.jpg,upload/zufangzixun_fengmian2.jpg','2025-04-25 15:19:00',8,8);
/*!40000 ALTER TABLE `zufangzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuhu`
--

DROP TABLE IF EXISTS `zuhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuhu`
--

LOCK TABLES `zuhu` WRITE;
/*!40000 ALTER TABLE `zuhu` DISABLE KEYS */;
INSERT INTO `zuhu` VALUES (11,'2025-04-25 07:18:59','账号1','123456','姓名1','男','13823888881','440300199101010001','upload/zuhu_touxiang1.jpg','是','',0),(12,'2025-04-25 07:18:59','账号2','123456','姓名2','男','13823888882','440300199202020002','upload/zuhu_touxiang2.jpg','是','',0),(13,'2025-04-25 07:18:59','账号3','123456','姓名3','男','13823888883','440300199303030003','upload/zuhu_touxiang3.jpg','是','',0),(14,'2025-04-25 07:18:59','账号4','123456','姓名4','男','13823888884','440300199404040004','upload/zuhu_touxiang4.jpg','是','',0),(15,'2025-04-25 07:18:59','账号5','123456','姓名5','男','13823888885','440300199505050005','upload/zuhu_touxiang5.jpg','是','',0),(16,'2025-04-25 07:18:59','账号6','123456','姓名6','男','13823888886','440300199606060006','upload/zuhu_touxiang6.jpg','是','',0),(17,'2025-04-25 07:18:59','账号7','123456','姓名7','男','13823888887','440300199707070007','upload/zuhu_touxiang7.jpg','是','',0),(18,'2025-04-25 07:18:59','账号8','123456','姓名8','男','13823888888','440300199808080008','upload/zuhu_touxiang8.jpg','是','',0);
/*!40000 ALTER TABLE `zuhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zulindingdan`
--

DROP TABLE IF EXISTS `zulindingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zulindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `fangwuleixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋类型',
  `fangwuhuxing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋户型',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `zujin` double DEFAULT NULL COMMENT '租金',
  `zuqi` int(11) DEFAULT NULL COMMENT '租期',
  `yajin` double DEFAULT NULL COMMENT '押金',
  `zongjia` double DEFAULT NULL COMMENT '总价',
  `zufangyuanyin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '租房原因',
  `zufangshijian` datetime DEFAULT NULL COMMENT '租房时间',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `zhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `fangdongzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房东姓名',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `ispay` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='租赁订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zulindingdan`
--

LOCK TABLES `zulindingdan` WRITE;
/*!40000 ALTER TABLE `zulindingdan` DISABLE KEYS */;
INSERT INTO `zulindingdan` VALUES (1,'2025-04-25 07:18:59','1111111111','房屋类型1','房屋户型1','upload/zulindingdan_tupian1.jpg,upload/zulindingdan_tupian2.jpg,upload/zulindingdan_tupian3.jpg',1,1,1,1,'租房原因1','2025-04-25 15:18:59','2025-04-25 15:18:59','账号1','姓名1','手机1','身份证1','房东账号1','房东姓名1','联系电话1','是','','未支付'),(2,'2025-04-25 07:18:59','2222222222','房屋类型2','房屋户型2','upload/zulindingdan_tupian2.jpg,upload/zulindingdan_tupian3.jpg,upload/zulindingdan_tupian4.jpg',2,2,2,2,'租房原因2','2025-04-25 15:18:59','2025-04-25 15:18:59','账号2','姓名2','手机2','身份证2','房东账号2','房东姓名2','联系电话2','是','','未支付'),(3,'2025-04-25 07:18:59','3333333333','房屋类型3','房屋户型3','upload/zulindingdan_tupian3.jpg,upload/zulindingdan_tupian4.jpg,upload/zulindingdan_tupian5.jpg',3,3,3,3,'租房原因3','2025-04-25 15:18:59','2025-04-25 15:18:59','账号3','姓名3','手机3','身份证3','房东账号3','房东姓名3','联系电话3','是','','未支付'),(4,'2025-04-25 07:18:59','4444444444','房屋类型4','房屋户型4','upload/zulindingdan_tupian4.jpg,upload/zulindingdan_tupian5.jpg,upload/zulindingdan_tupian6.jpg',4,4,4,4,'租房原因4','2025-04-25 15:18:59','2025-04-25 15:18:59','账号4','姓名4','手机4','身份证4','房东账号4','房东姓名4','联系电话4','是','','未支付'),(5,'2025-04-25 07:18:59','5555555555','房屋类型5','房屋户型5','upload/zulindingdan_tupian5.jpg,upload/zulindingdan_tupian6.jpg,upload/zulindingdan_tupian7.jpg',5,5,5,5,'租房原因5','2025-04-25 15:18:59','2025-04-25 15:18:59','账号5','姓名5','手机5','身份证5','房东账号5','房东姓名5','联系电话5','是','','未支付'),(6,'2025-04-25 07:18:59','6666666666','房屋类型6','房屋户型6','upload/zulindingdan_tupian6.jpg,upload/zulindingdan_tupian7.jpg,upload/zulindingdan_tupian8.jpg',6,6,6,6,'租房原因6','2025-04-25 15:18:59','2025-04-25 15:18:59','账号6','姓名6','手机6','身份证6','房东账号6','房东姓名6','联系电话6','是','','未支付'),(7,'2025-04-25 07:19:00','7777777777','房屋类型7','房屋户型7','upload/zulindingdan_tupian7.jpg,upload/zulindingdan_tupian8.jpg,upload/zulindingdan_tupian1.jpg',7,7,7,7,'租房原因7','2025-04-25 15:19:00','2025-04-25 15:19:00','账号7','姓名7','手机7','身份证7','房东账号7','房东姓名7','联系电话7','是','','未支付'),(8,'2025-04-25 07:19:00','8888888888','房屋类型8','房屋户型8','upload/zulindingdan_tupian8.jpg,upload/zulindingdan_tupian1.jpg,upload/zulindingdan_tupian2.jpg',8,8,8,8,'租房原因8','2025-04-25 15:19:00','2025-04-25 15:19:00','账号8','姓名8','手机8','身份证8','房东账号8','房东姓名8','联系电话8','是','','未支付');
/*!40000 ALTER TABLE `zulindingdan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 21:35:43
