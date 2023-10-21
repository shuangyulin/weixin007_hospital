/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootq2g9s
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootq2g9s` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootq2g9s`;

/*Table structure for table `binglixinxi` */

DROP TABLE IF EXISTS `binglixinxi`;

CREATE TABLE `binglixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiwangshi` longtext COMMENT '既往史',
  `zhenduanqingkuang` longtext COMMENT '诊断情况',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='病历信息';

/*Data for the table `binglixinxi` */

insert  into `binglixinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`nianling`,`shouji`,`jiwangshi`,`zhenduanqingkuang`,`zhanghao`,`yishengxingming`,`userid`) values (71,'2021-05-19 23:25:21','编号1','标题1','用户名1','姓名1','年龄1','手机1','既往史1','诊断情况1','账号1','医生姓名1',1);
insert  into `binglixinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`nianling`,`shouji`,`jiwangshi`,`zhenduanqingkuang`,`zhanghao`,`yishengxingming`,`userid`) values (72,'2021-05-19 23:25:21','编号2','标题2','用户名2','姓名2','年龄2','手机2','既往史2','诊断情况2','账号2','医生姓名2',2);
insert  into `binglixinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`nianling`,`shouji`,`jiwangshi`,`zhenduanqingkuang`,`zhanghao`,`yishengxingming`,`userid`) values (73,'2021-05-19 23:25:21','编号3','标题3','用户名3','姓名3','年龄3','手机3','既往史3','诊断情况3','账号3','医生姓名3',3);
insert  into `binglixinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`nianling`,`shouji`,`jiwangshi`,`zhenduanqingkuang`,`zhanghao`,`yishengxingming`,`userid`) values (74,'2021-05-19 23:25:21','编号4','标题4','用户名4','姓名4','年龄4','手机4','既往史4','诊断情况4','账号4','医生姓名4',4);
insert  into `binglixinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`nianling`,`shouji`,`jiwangshi`,`zhenduanqingkuang`,`zhanghao`,`yishengxingming`,`userid`) values (75,'2021-05-19 23:25:21','编号5','标题5','用户名5','姓名5','年龄5','手机5','既往史5','诊断情况5','账号5','医生姓名5',5);
insert  into `binglixinxi`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`nianling`,`shouji`,`jiwangshi`,`zhenduanqingkuang`,`zhanghao`,`yishengxingming`,`userid`) values (76,'2021-05-19 23:25:21','编号6','标题6','用户名6','姓名6','年龄6','手机6','既往史6','诊断情况6','账号6','医生姓名6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootq2g9s/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootq2g9s/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootq2g9s/upload/picture3.jpg');

/*Table structure for table `discusskeshixinxi` */

DROP TABLE IF EXISTS `discusskeshixinxi`;

CREATE TABLE `discusskeshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='科室信息评论表';

/*Data for the table `discusskeshixinxi` */

insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-19 23:25:21',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-19 23:25:21',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-19 23:25:21',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-19 23:25:21',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-19 23:25:21',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskeshixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-19 23:25:21',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `keshixinxi` */

DROP TABLE IF EXISTS `keshixinxi`;

CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshibianhao` varchar(200) NOT NULL COMMENT '科室编号',
  `keshimingcheng` varchar(200) NOT NULL COMMENT '科室名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `guahaofei` int(11) NOT NULL COMMENT '挂号费',
  `keshijianjie` longtext COMMENT '科室简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keshibianhao` (`keshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='科室信息';

/*Data for the table `keshixinxi` */

insert  into `keshixinxi`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`tupian`,`zhanghao`,`yishengxingming`,`fuwushijian`,`guahaofei`,`keshijianjie`) values (51,'2021-05-19 23:25:20','科室编号1','科室名称1','http://localhost:8080/springbootq2g9s/upload/keshixinxi_tupian1.jpg','1','医生姓名1','服务时间1',1,'<p>科室简介1</p>');
insert  into `keshixinxi`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`tupian`,`zhanghao`,`yishengxingming`,`fuwushijian`,`guahaofei`,`keshijianjie`) values (52,'2021-05-19 23:25:20','科室编号2','科室名称2','http://localhost:8080/springbootq2g9s/upload/keshixinxi_tupian2.jpg','账号2','医生姓名2','服务时间2',2,'科室简介2');
insert  into `keshixinxi`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`tupian`,`zhanghao`,`yishengxingming`,`fuwushijian`,`guahaofei`,`keshijianjie`) values (53,'2021-05-19 23:25:20','科室编号3','科室名称3','http://localhost:8080/springbootq2g9s/upload/keshixinxi_tupian3.jpg','账号3','医生姓名3','服务时间3',3,'科室简介3');
insert  into `keshixinxi`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`tupian`,`zhanghao`,`yishengxingming`,`fuwushijian`,`guahaofei`,`keshijianjie`) values (54,'2021-05-19 23:25:20','科室编号4','科室名称4','http://localhost:8080/springbootq2g9s/upload/keshixinxi_tupian4.jpg','账号4','医生姓名4','服务时间4',4,'科室简介4');
insert  into `keshixinxi`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`tupian`,`zhanghao`,`yishengxingming`,`fuwushijian`,`guahaofei`,`keshijianjie`) values (55,'2021-05-19 23:25:20','科室编号5','科室名称5','http://localhost:8080/springbootq2g9s/upload/keshixinxi_tupian5.jpg','账号5','医生姓名5','服务时间5',5,'科室简介5');
insert  into `keshixinxi`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`tupian`,`zhanghao`,`yishengxingming`,`fuwushijian`,`guahaofei`,`keshijianjie`) values (56,'2021-05-19 23:25:20','科室编号6','科室名称6','http://localhost:8080/springbootq2g9s/upload/keshixinxi_tupian6.jpg','账号6','医生姓名6','服务时间6',6,'科室简介6');

/*Table structure for table `keshiyuyue` */

DROP TABLE IF EXISTS `keshiyuyue`;

CREATE TABLE `keshiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshibianhao` varchar(200) DEFAULT NULL COMMENT '科室编号',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `guahaofei` int(11) NOT NULL COMMENT '挂号费',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `beizhu` longtext COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='科室预约';

/*Data for the table `keshiyuyue` */

insert  into `keshiyuyue`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`zhanghao`,`yishengxingming`,`guahaofei`,`yuyueriqi`,`yuyueshijian`,`beizhu`,`yonghuming`,`xingming`,`nianling`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (61,'2021-05-19 23:25:20','科室编号1','科室名称1','账号1','医生姓名1',1,'2021-05-19','预约时间1','备注1','用户名1','姓名1','年龄1','手机1','是','','未支付',1);
insert  into `keshiyuyue`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`zhanghao`,`yishengxingming`,`guahaofei`,`yuyueriqi`,`yuyueshijian`,`beizhu`,`yonghuming`,`xingming`,`nianling`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (62,'2021-05-19 23:25:20','科室编号2','科室名称2','账号2','医生姓名2',2,'2021-05-19','预约时间2','备注2','用户名2','姓名2','年龄2','手机2','是','','未支付',2);
insert  into `keshiyuyue`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`zhanghao`,`yishengxingming`,`guahaofei`,`yuyueriqi`,`yuyueshijian`,`beizhu`,`yonghuming`,`xingming`,`nianling`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (63,'2021-05-19 23:25:20','科室编号3','科室名称3','账号3','医生姓名3',3,'2021-05-19','预约时间3','备注3','用户名3','姓名3','年龄3','手机3','是','','未支付',3);
insert  into `keshiyuyue`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`zhanghao`,`yishengxingming`,`guahaofei`,`yuyueriqi`,`yuyueshijian`,`beizhu`,`yonghuming`,`xingming`,`nianling`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (64,'2021-05-19 23:25:21','科室编号4','科室名称4','账号4','医生姓名4',4,'2021-05-19','预约时间4','备注4','用户名4','姓名4','年龄4','手机4','是','','未支付',4);
insert  into `keshiyuyue`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`zhanghao`,`yishengxingming`,`guahaofei`,`yuyueriqi`,`yuyueshijian`,`beizhu`,`yonghuming`,`xingming`,`nianling`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (65,'2021-05-19 23:25:21','科室编号5','科室名称5','账号5','医生姓名5',5,'2021-05-19','预约时间5','备注5','用户名5','姓名5','年龄5','手机5','是','','未支付',5);
insert  into `keshiyuyue`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`zhanghao`,`yishengxingming`,`guahaofei`,`yuyueriqi`,`yuyueshijian`,`beizhu`,`yonghuming`,`xingming`,`nianling`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (66,'2021-05-19 23:25:21','科室编号6','科室名称6','账号6','医生姓名6',6,'2021-05-19','预约时间6','备注6','用户名6','姓名6','年龄6','手机6','是','','未支付',6);

/*Table structure for table `paibanxinxi` */

DROP TABLE IF EXISTS `paibanxinxi`;

CREATE TABLE `paibanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `paibanshijian` varchar(200) DEFAULT NULL COMMENT '排班时间',
  `paibanneirong` longtext COMMENT '排班内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='排班信息';

/*Data for the table `paibanxinxi` */

insert  into `paibanxinxi`(`id`,`addtime`,`mingcheng`,`riqi`,`zhanghao`,`yishengxingming`,`paibanshijian`,`paibanneirong`) values (31,'2021-05-19 23:25:20','名称1','2021-05-19','账号1','医生姓名1','排班时间1','排班内容1');
insert  into `paibanxinxi`(`id`,`addtime`,`mingcheng`,`riqi`,`zhanghao`,`yishengxingming`,`paibanshijian`,`paibanneirong`) values (32,'2021-05-19 23:25:20','名称2','2021-05-19','账号2','医生姓名2','排班时间2','排班内容2');
insert  into `paibanxinxi`(`id`,`addtime`,`mingcheng`,`riqi`,`zhanghao`,`yishengxingming`,`paibanshijian`,`paibanneirong`) values (33,'2021-05-19 23:25:20','名称3','2021-05-19','账号3','医生姓名3','排班时间3','排班内容3');
insert  into `paibanxinxi`(`id`,`addtime`,`mingcheng`,`riqi`,`zhanghao`,`yishengxingming`,`paibanshijian`,`paibanneirong`) values (34,'2021-05-19 23:25:20','名称4','2021-05-19','账号4','医生姓名4','排班时间4','排班内容4');
insert  into `paibanxinxi`(`id`,`addtime`,`mingcheng`,`riqi`,`zhanghao`,`yishengxingming`,`paibanshijian`,`paibanneirong`) values (35,'2021-05-19 23:25:20','名称5','2021-05-19','账号5','医生姓名5','排班时间5','排班内容5');
insert  into `paibanxinxi`(`id`,`addtime`,`mingcheng`,`riqi`,`zhanghao`,`yishengxingming`,`paibanshijian`,`paibanneirong`) values (36,'2021-05-19 23:25:20','名称6','2021-05-19','账号6','医生姓名6','排班时间6','排班内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `tijianbaogao` */

DROP TABLE IF EXISTS `tijianbaogao`;

CREATE TABLE `tijianbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `baogaotupian` varchar(200) DEFAULT NULL COMMENT '报告图片',
  `jianchaqingkuang` longtext COMMENT '检查情况',
  `yizhu` longtext COMMENT '医嘱',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='体检报告';

/*Data for the table `tijianbaogao` */

insert  into `tijianbaogao`(`id`,`addtime`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shouji`,`baogaotupian`,`jianchaqingkuang`,`yizhu`,`fabushijian`,`zhanghao`,`yishengxingming`,`userid`) values (81,'2021-05-19 23:25:21','名称1','用户名1','姓名1','年龄1','手机1','http://localhost:8080/springbootq2g9s/upload/tijianbaogao_baogaotupian1.jpg','检查情况1','医嘱1','2021-05-19','账号1','医生姓名1',1);
insert  into `tijianbaogao`(`id`,`addtime`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shouji`,`baogaotupian`,`jianchaqingkuang`,`yizhu`,`fabushijian`,`zhanghao`,`yishengxingming`,`userid`) values (82,'2021-05-19 23:25:21','名称2','用户名2','姓名2','年龄2','手机2','http://localhost:8080/springbootq2g9s/upload/tijianbaogao_baogaotupian2.jpg','检查情况2','医嘱2','2021-05-19','账号2','医生姓名2',2);
insert  into `tijianbaogao`(`id`,`addtime`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shouji`,`baogaotupian`,`jianchaqingkuang`,`yizhu`,`fabushijian`,`zhanghao`,`yishengxingming`,`userid`) values (83,'2021-05-19 23:25:21','名称3','用户名3','姓名3','年龄3','手机3','http://localhost:8080/springbootq2g9s/upload/tijianbaogao_baogaotupian3.jpg','检查情况3','医嘱3','2021-05-19','账号3','医生姓名3',3);
insert  into `tijianbaogao`(`id`,`addtime`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shouji`,`baogaotupian`,`jianchaqingkuang`,`yizhu`,`fabushijian`,`zhanghao`,`yishengxingming`,`userid`) values (84,'2021-05-19 23:25:21','名称4','用户名4','姓名4','年龄4','手机4','http://localhost:8080/springbootq2g9s/upload/tijianbaogao_baogaotupian4.jpg','检查情况4','医嘱4','2021-05-19','账号4','医生姓名4',4);
insert  into `tijianbaogao`(`id`,`addtime`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shouji`,`baogaotupian`,`jianchaqingkuang`,`yizhu`,`fabushijian`,`zhanghao`,`yishengxingming`,`userid`) values (85,'2021-05-19 23:25:21','名称5','用户名5','姓名5','年龄5','手机5','http://localhost:8080/springbootq2g9s/upload/tijianbaogao_baogaotupian5.jpg','检查情况5','医嘱5','2021-05-19','账号5','医生姓名5',5);
insert  into `tijianbaogao`(`id`,`addtime`,`mingcheng`,`yonghuming`,`xingming`,`nianling`,`shouji`,`baogaotupian`,`jianchaqingkuang`,`yizhu`,`fabushijian`,`zhanghao`,`yishengxingming`,`userid`) values (86,'2021-05-19 23:25:21','名称6','用户名6','姓名6','年龄6','手机6','http://localhost:8080/springbootq2g9s/upload/tijianbaogao_baogaotupian6.jpg','检查情况6','医嘱6','2021-05-19','账号6','医生姓名6',6);

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','0nsqmpsy3izqbmh6u6dl8lhxftmte19l','2021-05-19 23:26:49','2021-05-20 00:26:50');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','rggorqlh16pz3etk7gozmv8uweyjo0te','2021-05-19 23:27:16','2021-05-20 00:28:34');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,21,'1','yisheng','医生','yo5szkztdvebz0y1pqvrr56rw0c40bl4','2021-05-19 23:28:07','2021-05-20 00:28:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-19 23:25:21');

/*Table structure for table `wenzhenhuifu` */

DROP TABLE IF EXISTS `wenzhenhuifu`;

CREATE TABLE `wenzhenhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wenzhenhuifu` longtext COMMENT '问诊回复',
  `huifushijian` datetime DEFAULT NULL COMMENT '回复时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621438109895 DEFAULT CHARSET=utf8 COMMENT='问诊回复';

/*Data for the table `wenzhenhuifu` */

insert  into `wenzhenhuifu`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`wenzhenhuifu`,`huifushijian`,`zhanghao`,`yishengxingming`,`userid`) values (101,'2021-05-19 23:25:21','编号1','标题1','用户名1','姓名1','问诊回复1','2021-05-19 23:25:21','账号1','医生姓名1',1);
insert  into `wenzhenhuifu`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`wenzhenhuifu`,`huifushijian`,`zhanghao`,`yishengxingming`,`userid`) values (102,'2021-05-19 23:25:21','编号2','标题2','用户名2','姓名2','问诊回复2','2021-05-19 23:25:21','账号2','医生姓名2',2);
insert  into `wenzhenhuifu`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`wenzhenhuifu`,`huifushijian`,`zhanghao`,`yishengxingming`,`userid`) values (103,'2021-05-19 23:25:21','编号3','标题3','用户名3','姓名3','问诊回复3','2021-05-19 23:25:21','账号3','医生姓名3',3);
insert  into `wenzhenhuifu`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`wenzhenhuifu`,`huifushijian`,`zhanghao`,`yishengxingming`,`userid`) values (104,'2021-05-19 23:25:21','编号4','标题4','用户名4','姓名4','问诊回复4','2021-05-19 23:25:21','账号4','医生姓名4',4);
insert  into `wenzhenhuifu`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`wenzhenhuifu`,`huifushijian`,`zhanghao`,`yishengxingming`,`userid`) values (105,'2021-05-19 23:25:21','编号5','标题5','用户名5','姓名5','问诊回复5','2021-05-19 23:25:21','账号5','医生姓名5',5);
insert  into `wenzhenhuifu`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`wenzhenhuifu`,`huifushijian`,`zhanghao`,`yishengxingming`,`userid`) values (106,'2021-05-19 23:25:21','编号6','标题6','用户名6','姓名6','问诊回复6','2021-05-19 23:25:21','账号6','医生姓名6',6);
insert  into `wenzhenhuifu`(`id`,`addtime`,`bianhao`,`biaoti`,`yonghuming`,`xingming`,`wenzhenhuifu`,`huifushijian`,`zhanghao`,`yishengxingming`,`userid`) values (1621438109894,'2021-05-19 23:28:29','1621438065854','1','1','姓名1','测试','2021-05-19 23:28:20','1','医生姓名1',11);

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`zhanghao`,`mima`,`yishengxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`zhicheng`,`keshi`,`dianhua`) values (21,'2021-05-19 23:25:20','1','1','医生姓名1','男','http://localhost:8080/springbootq2g9s/upload/yisheng_touxiang1.jpg','440300199101010001','职称1','科室1','13823888881');
insert  into `yisheng`(`id`,`addtime`,`zhanghao`,`mima`,`yishengxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`zhicheng`,`keshi`,`dianhua`) values (22,'2021-05-19 23:25:20','医生2','123456','医生姓名2','男','http://localhost:8080/springbootq2g9s/upload/yisheng_touxiang2.jpg','440300199202020002','职称2','科室2','13823888882');
insert  into `yisheng`(`id`,`addtime`,`zhanghao`,`mima`,`yishengxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`zhicheng`,`keshi`,`dianhua`) values (23,'2021-05-19 23:25:20','医生3','123456','医生姓名3','男','http://localhost:8080/springbootq2g9s/upload/yisheng_touxiang3.jpg','440300199303030003','职称3','科室3','13823888883');
insert  into `yisheng`(`id`,`addtime`,`zhanghao`,`mima`,`yishengxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`zhicheng`,`keshi`,`dianhua`) values (24,'2021-05-19 23:25:20','医生4','123456','医生姓名4','男','http://localhost:8080/springbootq2g9s/upload/yisheng_touxiang4.jpg','440300199404040004','职称4','科室4','13823888884');
insert  into `yisheng`(`id`,`addtime`,`zhanghao`,`mima`,`yishengxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`zhicheng`,`keshi`,`dianhua`) values (25,'2021-05-19 23:25:20','医生5','123456','医生姓名5','男','http://localhost:8080/springbootq2g9s/upload/yisheng_touxiang5.jpg','440300199505050005','职称5','科室5','13823888885');
insert  into `yisheng`(`id`,`addtime`,`zhanghao`,`mima`,`yishengxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`zhicheng`,`keshi`,`dianhua`) values (26,'2021-05-19 23:25:20','医生6','123456','医生姓名6','男','http://localhost:8080/springbootq2g9s/upload/yisheng_touxiang6.jpg','440300199606060006','职称6','科室6','13823888886');

/*Table structure for table `yiyuanxinxi` */

DROP TABLE IF EXISTS `yiyuanxinxi`;

CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `yiyuanleixing` varchar(200) DEFAULT NULL COMMENT '医院类型',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='医院信息';

/*Data for the table `yiyuanxinxi` */

insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuanleixing`,`yiyuantupian`,`lianxiren`,`lianxidianhua`,`xiangxidizhi`) values (41,'2021-05-19 23:25:20','医院名称1','私立','http://localhost:8080/springbootq2g9s/upload/yiyuanxinxi_yiyuantupian1.jpg','联系人1','13823888881','详细地址1');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuanleixing`,`yiyuantupian`,`lianxiren`,`lianxidianhua`,`xiangxidizhi`) values (42,'2021-05-19 23:25:20','医院名称2','私立','http://localhost:8080/springbootq2g9s/upload/yiyuanxinxi_yiyuantupian2.jpg','联系人2','13823888882','详细地址2');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuanleixing`,`yiyuantupian`,`lianxiren`,`lianxidianhua`,`xiangxidizhi`) values (43,'2021-05-19 23:25:20','医院名称3','私立','http://localhost:8080/springbootq2g9s/upload/yiyuanxinxi_yiyuantupian3.jpg','联系人3','13823888883','详细地址3');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuanleixing`,`yiyuantupian`,`lianxiren`,`lianxidianhua`,`xiangxidizhi`) values (44,'2021-05-19 23:25:20','医院名称4','私立','http://localhost:8080/springbootq2g9s/upload/yiyuanxinxi_yiyuantupian4.jpg','联系人4','13823888884','详细地址4');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuanleixing`,`yiyuantupian`,`lianxiren`,`lianxidianhua`,`xiangxidizhi`) values (45,'2021-05-19 23:25:20','医院名称5','私立','http://localhost:8080/springbootq2g9s/upload/yiyuanxinxi_yiyuantupian5.jpg','联系人5','13823888885','详细地址5');
insert  into `yiyuanxinxi`(`id`,`addtime`,`yiyuanmingcheng`,`yiyuanleixing`,`yiyuantupian`,`lianxiren`,`lianxidianhua`,`xiangxidizhi`) values (46,'2021-05-19 23:25:20','医院名称6','私立','http://localhost:8080/springbootq2g9s/upload/yiyuanxinxi_yiyuantupian6.jpg','联系人6','13823888886','详细地址6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (11,'2021-05-19 23:25:20','1','1','姓名1','男','http://localhost:8080/springbootq2g9s/upload/yonghu_touxiang1.jpg','年龄1','773890001@qq.com','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (12,'2021-05-19 23:25:20','用户2','123456','姓名2','男','http://localhost:8080/springbootq2g9s/upload/yonghu_touxiang2.jpg','年龄2','773890002@qq.com','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (13,'2021-05-19 23:25:20','用户3','123456','姓名3','男','http://localhost:8080/springbootq2g9s/upload/yonghu_touxiang3.jpg','年龄3','773890003@qq.com','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (14,'2021-05-19 23:25:20','用户4','123456','姓名4','男','http://localhost:8080/springbootq2g9s/upload/yonghu_touxiang4.jpg','年龄4','773890004@qq.com','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (15,'2021-05-19 23:25:20','用户5','123456','姓名5','男','http://localhost:8080/springbootq2g9s/upload/yonghu_touxiang5.jpg','年龄5','773890005@qq.com','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`nianling`,`youxiang`,`shouji`) values (16,'2021-05-19 23:25:20','用户6','123456','姓名6','男','http://localhost:8080/springbootq2g9s/upload/yonghu_touxiang6.jpg','年龄6','773890006@qq.com','13823888886');

/*Table structure for table `zaixianwenzhen` */

DROP TABLE IF EXISTS `zaixianwenzhen`;

CREATE TABLE `zaixianwenzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `wenzhenneirong` longtext COMMENT '问诊内容',
  `wenzhenshijian` datetime DEFAULT NULL COMMENT '问诊时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621438075998 DEFAULT CHARSET=utf8 COMMENT='在线问诊';

/*Data for the table `zaixianwenzhen` */

insert  into `zaixianwenzhen`(`id`,`addtime`,`bianhao`,`biaoti`,`zhanghao`,`yishengxingming`,`wenzhenneirong`,`wenzhenshijian`,`yonghuming`,`xingming`,`userid`) values (91,'2021-05-19 23:25:21','编号1','标题1','账号1','医生姓名1','问诊内容1','2021-05-19 23:25:21','用户名1','姓名1',1);
insert  into `zaixianwenzhen`(`id`,`addtime`,`bianhao`,`biaoti`,`zhanghao`,`yishengxingming`,`wenzhenneirong`,`wenzhenshijian`,`yonghuming`,`xingming`,`userid`) values (92,'2021-05-19 23:25:21','编号2','标题2','账号2','医生姓名2','问诊内容2','2021-05-19 23:25:21','用户名2','姓名2',2);
insert  into `zaixianwenzhen`(`id`,`addtime`,`bianhao`,`biaoti`,`zhanghao`,`yishengxingming`,`wenzhenneirong`,`wenzhenshijian`,`yonghuming`,`xingming`,`userid`) values (93,'2021-05-19 23:25:21','编号3','标题3','账号3','医生姓名3','问诊内容3','2021-05-19 23:25:21','用户名3','姓名3',3);
insert  into `zaixianwenzhen`(`id`,`addtime`,`bianhao`,`biaoti`,`zhanghao`,`yishengxingming`,`wenzhenneirong`,`wenzhenshijian`,`yonghuming`,`xingming`,`userid`) values (94,'2021-05-19 23:25:21','编号4','标题4','账号4','医生姓名4','问诊内容4','2021-05-19 23:25:21','用户名4','姓名4',4);
insert  into `zaixianwenzhen`(`id`,`addtime`,`bianhao`,`biaoti`,`zhanghao`,`yishengxingming`,`wenzhenneirong`,`wenzhenshijian`,`yonghuming`,`xingming`,`userid`) values (95,'2021-05-19 23:25:21','编号5','标题5','账号5','医生姓名5','问诊内容5','2021-05-19 23:25:21','用户名5','姓名5',5);
insert  into `zaixianwenzhen`(`id`,`addtime`,`bianhao`,`biaoti`,`zhanghao`,`yishengxingming`,`wenzhenneirong`,`wenzhenshijian`,`yonghuming`,`xingming`,`userid`) values (96,'2021-05-19 23:25:21','编号6','标题6','账号6','医生姓名6','问诊内容6','2021-05-19 23:25:21','用户名6','姓名6',6);
insert  into `zaixianwenzhen`(`id`,`addtime`,`bianhao`,`biaoti`,`zhanghao`,`yishengxingming`,`wenzhenneirong`,`wenzhenshijian`,`yonghuming`,`xingming`,`userid`) values (1621438075997,'2021-05-19 23:27:55','1621438065854','1','1','医生姓名1','测试','2021-05-19 23:27:45','1','姓名1',11);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
