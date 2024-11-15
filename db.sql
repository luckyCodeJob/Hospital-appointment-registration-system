/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - ssm3e3g0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm3e3g0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm3e3g0`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm3e3g0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm3e3g0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm3e3g0/upload/picture3.jpg');

/*Table structure for table `guahaotongji` */

DROP TABLE IF EXISTS `guahaotongji`;

CREATE TABLE `guahaotongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yuyuerenshu` int(11) DEFAULT NULL COMMENT '预约人数',
  `jiezhenrenshu` int(11) DEFAULT NULL COMMENT '接诊人数',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='挂号统计';

/*Data for the table `guahaotongji` */

/*Table structure for table `keshifenlei` */

DROP TABLE IF EXISTS `keshifenlei`;

CREATE TABLE `keshifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647062899624 DEFAULT CHARSET=utf8 COMMENT='科室分类';

/*Data for the table `keshifenlei` */

insert  into `keshifenlei`(`id`,`addtime`,`leixing`) values (1647062895707,'2022-03-12 13:28:15','骨科'),(1647062899623,'2022-03-12 13:28:19','牙科');

/*Table structure for table `keshixinxi` */

DROP TABLE IF EXISTS `keshixinxi`;

CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yishengjianjie` longtext COMMENT '医生简介',
  `guahaorenshu` int(11) DEFAULT NULL COMMENT '挂号人数',
  `guahaofeiyong` int(11) DEFAULT NULL COMMENT '挂号费用',
  `zhibanbiao` longtext COMMENT '值班表',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647062949513 DEFAULT CHARSET=utf8 COMMENT='科室信息';

/*Data for the table `keshixinxi` */

insert  into `keshixinxi`(`id`,`addtime`,`keshimingcheng`,`keshiweizhi`,`yishenggonghao`,`yishengxingming`,`yishengjianjie`,`guahaorenshu`,`guahaofeiyong`,`zhibanbiao`,`touxiang`) values (1647062949512,'2022-03-12 13:29:09','骨科','213123','222222','22222222','2323',222,22,'<p>2132132</p>','http://localhost:8080/ssm3e3g0/upload/1647062945963.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','0tnj6mbyn2s2jower5qs06s8g1y3x1vl','2021-05-24 16:38:20','2022-03-12 14:32:58'),(2,1647062759283,'222222','yonghu','用户','5z492l5uzp7va1aijnwy85xr083zkiug','2022-03-12 13:26:13','2022-03-12 14:32:02'),(3,1647062711723,'222222','yisheng','医生','9n4pok25zdpfu8l326tn7c495w0vn9m5','2022-03-12 13:32:45','2022-03-12 14:32:46');

/*Table structure for table `tongzhigonggao` */

DROP TABLE IF EXISTS `tongzhigonggao`;

CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `tongzhigonggao` */

/*Table structure for table `tousuchuli` */

DROP TABLE IF EXISTS `tousuchuli`;

CREATE TABLE `tousuchuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tousuduixiang` varchar(200) DEFAULT NULL COMMENT '投诉对象',
  `tousuneirong` longtext COMMENT '投诉内容',
  `chulifankui` longtext COMMENT '处理反馈',
  `chulijindu` varchar(200) DEFAULT NULL COMMENT '处理进度',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='投诉处理';

/*Data for the table `tousuchuli` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-24 16:35:49');

/*Table structure for table `xitongshezhi` */

DROP TABLE IF EXISTS `xitongshezhi`;

CREATE TABLE `xitongshezhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xitongmingcheng` varchar(200) DEFAULT NULL COMMENT '系统名称',
  `xitonggoucheng` varchar(200) DEFAULT NULL COMMENT '系统构成',
  `jibengongneng` longtext COMMENT '基本功能',
  `xiangguancanshu` longtext COMMENT '相关参数',
  `shujuwenjian` varchar(200) DEFAULT NULL COMMENT '数据文件',
  `yunyingshang` varchar(200) DEFAULT NULL COMMENT '运营商',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='系统设置';

/*Data for the table `xitongshezhi` */

/*Table structure for table `xitongweihu` */

DROP TABLE IF EXISTS `xitongweihu`;

CREATE TABLE `xitongweihu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xitongmingcheng` varchar(200) DEFAULT NULL COMMENT '系统名称',
  `guzhangmiaoshu` longtext COMMENT '故障描述',
  `weihuneirong` longtext COMMENT '维护内容',
  `weihujieguo` longtext COMMENT '维护结果',
  `weihushijian` date DEFAULT NULL COMMENT '维护时间',
  `weihuyuan` varchar(200) DEFAULT NULL COMMENT '维护员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='系统维护';

/*Data for the table `xitongweihu` */

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647062711724 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`xingbie`,`zhicheng`,`keshi`,`shouji`,`shenfenzheng`,`touxiang`) values (1647062711723,'2022-03-12 13:25:11','222222','222222','22222222','男','主治医师','骨科','13526532653','411324198004170052','http://localhost:8080/ssm3e3g0/upload/1647062710364.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647062759284 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`zhuzhi`,`shenfenzheng`,`shouji`) values (11,'2021-05-24 16:35:48','用户1','123456','姓名1','男',1,'住址1','440300199101010001','13823888881'),(12,'2021-05-24 16:35:48','用户2','123456','姓名2','男',2,'住址2','440300199202020002','13823888882'),(13,'2021-05-24 16:35:48','用户3','123456','姓名3','男',3,'住址3','440300199303030003','13823888883'),(14,'2021-05-24 16:35:48','用户4','123456','姓名4','男',4,'住址4','440300199404040004','13823888884'),(15,'2021-05-24 16:35:48','用户5','123456','姓名5','男',5,'住址5','440300199505050005','13823888885'),(16,'2021-05-24 16:35:48','用户6','123456','姓名6','男',6,'住址6','440300199606060006','13823888886'),(1647062759283,'2022-03-12 13:25:59','222222','222222','222222222222','男',22,'222222222222','411324198004170051','13523652365');

/*Table structure for table `yonghutousu` */

DROP TABLE IF EXISTS `yonghutousu`;

CREATE TABLE `yonghutousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tousuduixiang` varchar(200) DEFAULT NULL COMMENT '投诉对象',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousuyuanyin` longtext COMMENT '投诉原因',
  `tousuriqi` date DEFAULT NULL COMMENT '投诉日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='用户投诉';

/*Data for the table `yonghutousu` */

/*Table structure for table `yuyueguahao` */

DROP TABLE IF EXISTS `yuyueguahao`;

CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `guahaofeiyong` int(11) DEFAULT NULL COMMENT '挂号费用',
  `guahaoshijian` datetime DEFAULT NULL COMMENT '挂号时间',
  `beizhu` longtext COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647063142793 DEFAULT CHARSET=utf8 COMMENT='预约挂号';

/*Data for the table `yuyueguahao` */

insert  into `yuyueguahao`(`id`,`addtime`,`keshimingcheng`,`keshiweizhi`,`yishenggonghao`,`yishengxingming`,`guahaofeiyong`,`guahaoshijian`,`beizhu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (1647063142792,'2022-03-12 13:32:22','骨科','213123','222222','22222222',22,'2022-03-08 00:00:00','2222','222222','222222222222','是','22222','已支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
