CREATE DATABASE  IF NOT EXISTS `weatherbase` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `weatherbase`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: weatherbase
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary` (
  `编号` int(11) NOT NULL AUTO_INCREMENT,
  `名称` varchar(64) COLLATE utf8_bin NOT NULL,
  `别名` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `描述` varchar(255) COLLATE utf8_bin NOT NULL,
  `定义` varchar(64) CHARACTER SET utf8 NOT NULL,
  `位置` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary`
--

LOCK TABLES `dictionary` WRITE;
/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (1,'气象捕获系统','传感器系统','由一系列传感器组成的环境数据捕获硬件系统','气象捕获系统=温度传感器+湿度传感器+粉尘传感器+雨量计+紫外线传感器+光照传感器+风速传感器+风向传感器','气象捕获系统'),(2,'环境指数','环境数据','由温度、湿度等环境指数构成的数据流','环境数据=温度+湿度+PM2.5浓度+雨量+紫外线指数+光照强度+风速+风向','向云平台传递+云端更新环境数据+下载环境数据+设备更新环境数据+分析环境数据'),(3,'历史环境信息表','环境信息表','保存着所有获取到环境指数的历史信息','环境数据=温度表+湿度表+PM2.5浓度表+雨量表+紫外线指数表+光照强度表+风速表+风向表','云端更新环境数据+设备更新环境数据'),(4,'温度表','','保存着所有获取到温度的历史信息','温度表=0{温度}100000000','环境信息表'),(5,'湿度表','','保存着所有获取到湿度的历史信息','湿度表=0{湿度}100000000','环境信息表'),(6,'PM2.5浓度表','','保存着所有获取到PM2.5浓度的历史信息','PM2.5浓度表=0{PM2.5浓度}100000000','环境信息表'),(7,'雨量表','','保存着所有获取到降雨量的历史信息','雨量表=0{雨量}100000000','环境信息表'),(8,'紫外线浓度表','','保存着所有获取到紫外线浓度表的历史信息','紫外线指数表=0{紫外线指数}100000000','环境信息表'),(9,'光照强度表','','保存着所有获取到光照强度表的历史信息','光照强度表=0{光照强度}100000000','环境信息表'),(10,'风速表','','保存着所有获取到风速表的历史信息','风速表=0{风速}100000000','环境信息表'),(11,'风向表','','保存着所有获取到风向表的历史信息','风向表=0{风向}100000000','环境信息表'),(12,'温度','','空气的温度℃','温度=-40{数字}123','温度表'),(13,'湿度','','空气的湿度%RH','湿度=0{百分比}100%','湿度表'),(14,'PM2.5浓度','','24小时平均PM2.5浓度ug/m3','PM2.5浓度=0{数字}500','PM2.5浓度表'),(15,'雨量','','一日内的降雨量mm/d','雨量=0{数字}300','雨量表'),(16,'紫外线指数','','将紫外线强度量化表示','紫外线指数=0{数字}15','紫外线指数表'),(17,'光照强度','','将光照强度强度量化表示lx','光照强度=0{数字}5000','光照强度表'),(18,'空气流动速率','风速','将风速量化表示m/s','风速=0{数字}65','风速表'),(19,'风向','','将风向量化表示m/s','风向=0{数字}360','风向表'),(20,'即时环境信息','','实时的环境信息数据','即时环境信息=温度+湿度+PM2.5浓度+雨量+紫外线指数+光照强度+风速+风向','设备更新环境数据'),(21,'环境-活动表','','保存不同环境下适合做的活动','环境-活动表=0{活动}100','分析环境数据'),(22,'环境-穿衣表','','保存不同环境下适合穿的衣服','环境-穿衣表=0{衣服}100','分析环境数据'),(23,'环境-提示表','','保存不同环境下给出的提示','环境-提示表=0{提示}100','分析环境数据'),(24,'距离','','用户所在位置与气象捕获系统的直线距离m','距离=0{数字}1500','计算距离');
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-01  1:35:07
