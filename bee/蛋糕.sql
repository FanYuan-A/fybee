#bee.sql 项目数据库脚本文件
#1:创建库 bee
CREATE DATABASE bee CHARSET=utf8;

#2:进入 bee
USE bee;

#蛋糕表
CREATE TABLE `bee_cake` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(64) NOT NULL COMMENT '蛋糕名字',
	`honey_index` INT(3) NOT NULL COMMENT '蜜度',
	`cheese_index` INT(3) NOT NULL COMMENT '芝度',
	`description` VARCHAR(255) NOT NULL COMMENT '描述',
	`img_url` VARCHAR(255) NOT NULL COMMENT '蛋糕主图', #一共有三张，用英文逗号分隔
	`detailed_information` TEXT NOT NULL COMMENT '详情',
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_cake_name` (`name`)
) DEFAULT CHARSET=utf8;

INSERT INTO `bee_cake` VALUES (NULL,'桃芝|樱桃芝士蛋糕','1','4','有种美好本在人生际遇之处, 那些初次的余香，俨如口中混合着的丝缕酸甜, 就像樱桃和百利甜一样，成了没人遗忘的天生一对。','http://images.ebeecake.com/img_w/3593.jpg,http://images.ebeecake.com/img_w/3594.jpg,http://images.ebeecake.com/img_w/3595.jpg','http://images.ebeecake.com/img_w/3266.jpg,http://images.ebeecake.com/img_w/3267.jpg,http://images.ebeecake.com/img_w/3268.jpg,http://images.ebeecake.com/img_w/3269.jpg,
http://images.ebeecake.com/img_w/3270.jpg,
http://images.ebeecake.com/img_w/3271.jpg,
http://images.ebeecake.com/img_w/3272.jpg,
http://images.ebeecake.com/img_w/3273.jpg,
http://images.ebeecake.com/img_w/3274.jpg,
http://images.ebeecake.com/img_w/3275.jpg,
http://images.ebeecake.com/img_w/3276.jpg,
http://images.ebeecake.com/img_w/3277.jpg,
http://images.ebeecake.com/img_w/3278.jpg');
INSERT INTO `bee_cake` VALUES (NULL,'初心|牛油果低脂蛋糕','3','1','牛油果的清香弥漫在口腔，和着乳清奶酪咀嚼，
仿佛热带的阳光，洒满心房，也惊叹牛油果的神奇，
包容所有的味道，升华所有的味觉，伟大的感动，总在不言中。','http://images.ebeecake.com/img_w/3545.jpg,http://images.ebeecake.com/img_w/3646.jpg,http://images.ebeecake.com/img_w/3647.jpg','http://images.ebeecake.com/img_w/3058.jpg,http://images.ebeecake.com/img_w/3059.jpg,http://images.ebeecake.com/img_w/3060.jpg,http://images.ebeecake.com/img_w/3061.jpg,
http://images.ebeecake.com/img_w/3062.jpg,
http://images.ebeecake.com/img_w/3063.jpg,
http://images.ebeecake.com/img_w/3064.jpg,
http://images.ebeecake.com/img_w/3065.jpg,
http://images.ebeecake.com/img_w/3066.jpg,
http://images.ebeecake.com/img_w/3067.jpg,
http://images.ebeecake.com/img_w/3068.jpg,
http://images.ebeecake.com/img_w/3069.jpg,
http://images.ebeecake.com/img_w/3070.jpg,
http://images.ebeecake.com/img_w/3071.jpg');
INSERT INTO `bee_cake` VALUES (NULL,'热恋|玫瑰慕斯蛋糕','1','1','深情犹如芳香的玫瑰酱，挑战你挑剔的味蕾，回味悠长，无力抗拒；
没有疲倦，无尽纠缠，沉浸在幸福海洋；
只有爱着的才能体会那永远深藏。','http://images.ebeecake.com/img_w/3611.jpg,http://images.ebeecake.com/img_w/3612.jpg,http://images.ebeecake.com/img_w/3613.jpg','http://images.ebeecake.com/img_w/3342.jpg,
http://images.ebeecake.com/img_w/3343.jpg,
http://images.ebeecake.com/img_w/3344.jpg,
http://images.ebeecake.com/img_w/3345.jpg,
http://images.ebeecake.com/img_w/3346.jpg,
http://images.ebeecake.com/img_w/3347.jpg,
http://images.ebeecake.com/img_w/3348.jpg,
http://images.ebeecake.com/img_w/3349.jpg,
http://images.ebeecake.com/img_w/3350.jpg,
http://images.ebeecake.com/img_w/3351.jpg,
http://images.ebeecake.com/img_w/3352.jpg,
http://images.ebeecake.com/img_w/3353.jpg,
http://images.ebeecake.com/img_w/3354.jpg');
INSERT INTO `bee_cake` VALUES (NULL,'我愿意|玫瑰荔枝慕斯蛋糕','3','2','亲爱的，我爱你，以后就这样看着你，每一天有同样呼吸，你是否愿意？亲爱的，我需要你，再往前走那一小步，准备了你要的幸福，等你说：我愿意，这是世间最动人的回应！','http://images.ebeecake.com/img_w/4023.jpg,http://images.ebeecake.com/img_w/4024.jpg,http://images.ebeecake.com/img_w/4025.jpg','http://images.ebeecake.com/img_w/4030.jpg,
http://images.ebeecake.com/img_w/4031.jpg,
http://images.ebeecake.com/img_w/4032.jpg,
http://images.ebeecake.com/img_w/4033.jpg,
http://images.ebeecake.com/img_w/4034.jpg,
http://images.ebeecake.com/img_w/4035.jpg,
http://images.ebeecake.com/img_w/4036.jpg,
http://images.ebeecake.com/img_w/4037.jpg,
http://images.ebeecake.com/img_w/4038.jpg,
http://images.ebeecake.com/img_w/4039.jpg,
http://images.ebeecake.com/img_w/4040.jpg,
http://images.ebeecake.com/img_w/4041.jpg,
http://images.ebeecake.com/img_w/4042.jpg,
http://images.ebeecake.com/img_w/4043.jpg,
http://images.ebeecake.com/img_w/4044.jpg,
http://images.ebeecake.com/img_w/4045.jpg,
http://images.ebeecake.com/img_w/4046.jpg,
http://images.ebeecake.com/img_w/4047.jpg,
http://images.ebeecake.com/img_w/4048.jpg,
http://images.ebeecake.com/img_w/4049.jpg,
http://images.ebeecake.com/img_w/4050.jpg,
http://images.ebeecake.com/img_w/4051.jpg,
http://images.ebeecake.com/img_w/4052.jpg
');
INSERT INTO `bee_cake` VALUES (NULL,'简单|蜂蜜蛋糕','2','1','缘份是城市里命定的希望，我们注定快乐，但却远离喧嚣。
一种天使般的淡然，就像甜杏仁牵手热情果般的美妙滋味，
忽视了谁，都不显完整。','http://images.ebeecake.com/img_w/3620.jpg,http://images.ebeecake.com/img_w/3621.jpg,http://images.ebeecake.com/img_w/3622.jpg','
http://images.ebeecake.com/img_w/3380.jpg,
http://images.ebeecake.com/img_w/3381.jpg,
http://images.ebeecake.com/img_w/3382.jpg,
http://images.ebeecake.com/img_w/3383.jpg,
http://images.ebeecake.com/img_w/3384.jpg,
http://images.ebeecake.com/img_w/3385.jpg,
http://images.ebeecake.com/img_w/3386.jpg,
http://images.ebeecake.com/img_w/3387.jpg,
http://images.ebeecake.com/img_w/3388.jpg,
http://images.ebeecake.com/img_w/3389.jpg,
http://images.ebeecake.com/img_w/3390.jpg,
http://images.ebeecake.com/img_w/3391.jpg,
http://images.ebeecake.com/img_w/3392.jpg
');
INSERT INTO `bee_cake` VALUES (NULL,'倾慕|抹茶慕斯蛋糕','1','1','碧云引风吹不断，白花浮光凝碗面”唐朝就有对抹茶的赞美，抹茶的浓郁与糖粉恰到好处的水乳交融。蛋糕蓬松柔软的触感，传递到舌尖是裹着奶香淡奶油的抹茶香。毫不逊色的优雅，清淡到恰如其分。','http://images.ebeecake.com/img_w/3539.jpg,http://images.ebeecake.com/img_w/3540.jpg,http://images.ebeecake.com/img_w/3541.jpg','
http://images.ebeecake.com/img_w/3033.jpg,
http://images.ebeecake.com/img_w/3034.jpg,
http://images.ebeecake.com/img_w/3035.jpg,
http://images.ebeecake.com/img_w/3036.jpg,
http://images.ebeecake.com/img_w/3037.jpg,
http://images.ebeecake.com/img_w/3038.jpg,
http://images.ebeecake.com/img_w/3039.jpg,
http://images.ebeecake.com/img_w/3040.jpg,
http://images.ebeecake.com/img_w/3041.jpg,
http://images.ebeecake.com/img_w/3042.jpg,
http://images.ebeecake.com/img_w/3043.jpg,
http://images.ebeecake.com/img_w/3044.jpg,
http://images.ebeecake.com/img_w/3045.jpg
');
INSERT INTO `bee_cake` VALUES (NULL,'倾慕|蛋糕7','1','1','碧云引风吹不断，白花浮光凝碗面”唐朝就有对抹茶的赞美，抹茶的浓郁与糖粉恰到好处的水乳交融。蛋糕蓬松柔软的触感，传递到舌尖是裹着奶香淡奶油的抹茶香。毫不逊色的优雅，清淡到恰如其分。','http://images.ebeecake.com/img_w/3539.jpg,http://images.ebeecake.com/img_w/3540.jpg,http://images.ebeecake.com/img_w/3541.jpg','
http://images.ebeecake.com/img_w/3033.jpg,
http://images.ebeecake.com/img_w/3034.jpg,
http://images.ebeecake.com/img_w/3035.jpg,
http://images.ebeecake.com/img_w/3036.jpg,
http://images.ebeecake.com/img_w/3037.jpg,
http://images.ebeecake.com/img_w/3038.jpg,
http://images.ebeecake.com/img_w/3039.jpg,
http://images.ebeecake.com/img_w/3040.jpg,
http://images.ebeecake.com/img_w/3041.jpg,
http://images.ebeecake.com/img_w/3042.jpg,
http://images.ebeecake.com/img_w/3043.jpg,
http://images.ebeecake.com/img_w/3044.jpg,
http://images.ebeecake.com/img_w/3045.jpg
');
#蛋糕分类表
CREATE TABLE `bee_cake_classify` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(32) NOT NULL COMMENT '分类名称',
	`order_num` INT(10) NOT NULL COMMENT '排序号',  #用来控制显示的顺序
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_cake_classify_name` (`name`)
) DEFAULT CHARSET=utf8;

INSERT INTO `bee_cake_classify` VALUES (NULL,'新品',1),(NULL,'生日',2),(NULL,'聚会',3),(NULL,'下午茶',4),(NULL,'婚礼',5),(NULL,'送全国',6);

#蛋糕——蛋糕分类关系表
CREATE TABLE `bee_cake_bee_cake_classify` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`bee_cake_id` INT(10) NOT NULL COMMENT '蛋糕id',
	`bee_cake_classify_id` INT(10) NOT NULL COMMENT '蛋糕分类id',
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_bee_cake_bee_cake_classify_bee_cake_id` FOREIGN KEY (`bee_cake_id`) REFERENCES `bee_cake` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `fk_bee_cake_bee_cake_classify_bee_cake_classify_id` FOREIGN KEY (`bee_cake_classify_id`) REFERENCES `bee_cake_classify` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) DEFAULT CHARSET=utf8;


#蛋糕口味表
CREATE TABLE `bee_cake_taste` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(32) NOT NULL COMMENT '口味名称',
	`order_num` INT(10) NOT NULL COMMENT '排序号',  #用来控制显示的顺序
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_cake_taste_name` (`name`)
) DEFAULT CHARSET=utf8;



INSERT INTO `bee_cake_taste` VALUES (NULL,'巧克力',1),(NULL,'芝士',2),(NULL,'慕斯',3),(NULL,'冰激凌',4),(NULL,'含酒',5),(NULL,'坚果',6),(NULL,'奶油',7),(NULL,'水果',8),(NULL,'咖啡',9);

#蛋糕-蛋糕口味关系表
CREATE TABLE `bee_cake_bee_cake_taste` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`bee_cake_id` INT(10) NOT NULL COMMENT '蛋糕id',
	`bee_cake_taste_id` INT(10) NOT NULL COMMENT '蛋糕口味id',
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_bee_cake_bee_cake_taste_bee_cake_id` FOREIGN KEY (`bee_cake_id`) REFERENCES `bee_cake` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `fk_bee_cake_bee_cake_taste_bee_cake_taste_id` FOREIGN KEY (`bee_cake_taste_id`) REFERENCES `bee_cake_taste` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) DEFAULT CHARSET=utf8;

INSERT INTO `bee_cake_bee_cake_taste` VALUES
(NULL,1,1),
(NULL,1,2),
(NULL,1,3),
(NULL,1,4),
(NULL,1,6),
(NULL,1,7),
(NULL,1,8),
(NULL,2,2),
(NULL,2,3),
(NULL,2,4),
(NULL,2,5),
(NULL,3,1),
(NULL,3,3),
(NULL,3,5),
(NULL,3,7),
(NULL,3,9),
(NULL,4,1),
(NULL,4,2),
(NULL,4,5),
(NULL,4,7),
(NULL,4,8),
(NULL,4,9),
(NULL,5,1),
(NULL,5,2),
(NULL,5,4),
(NULL,5,5),
(NULL,5,6),
(NULL,5,7),
(NULL,5,3);

#蛋糕人群表
CREATE TABLE `bee_cake_crowd` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(32) NOT NULL COMMENT '人群名称',
	`order_num` INT(10) NOT NULL COMMENT '排序号',  #用来控制显示的顺序
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_cake_crowd_name` (`name`)
) DEFAULT CHARSET=utf8;

INSERT INTO `bee_cake_crowd` VALUES (NULL, '老人', 1),(NULL, '儿童', 2),(NULL, '孕妇', 3),(NULL, '情侣', 4);

#蛋糕-蛋糕人群关系表
CREATE TABLE `bee_cake_bee_cake_crowd` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`bee_cake_id` INT(10) NOT NULL COMMENT '蛋糕id',
	`bee_cake_crowd_id` INT(10) NOT NULL COMMENT '蛋糕人群id',
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_bee_cake_bee_cake_crowd_bee_cake_id` FOREIGN KEY (`bee_cake_id`) REFERENCES `bee_cake` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT `fk_bee_cake_bee_cake_crowd_bee_cake_crowd_id` FOREIGN KEY (`bee_cake_crowd_id`) REFERENCES `bee_cake_crowd` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) DEFAULT CHARSET=utf8;

INSERT INTO `bee_cake_bee_cake_crowd` VALUES
(NULL,1,1),
(NULL,1,3),
(NULL,1,4),
(NULL,2,2),
(NULL,2,3),
(NULL,3,1),
(NULL,3,4),
(NULL,4,1),
(NULL,4,3),
(NULL,4,4),
(NULL,5,1),
(NULL,5,2),
(NULL,5,4),
(NULL,5,3);

#蛋糕规格(尺寸)表
CREATE TABLE `bee_cake_specification` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`bee_cake_id` INT(10) NOT NULL COMMENT '蛋糕id',
	`size` INT(3) NOT NULL COMMENT '蛋糕尺寸大小(厘米)',
	`weight` DECIMAL(10,2) NOT NULL COMMENT '蛋糕重量',
	`tableware_num` INT(3) NOT NULL COMMENT	'蛋糕餐具数量',
	`eating_num` VARCHAR(32) NOT NULL COMMENT '食用人数',
	`price` DECIMAL(10,2) NOT NULL COMMENT '蛋糕价格',
	`send_time` VARCHAR(32) NOT NULL COMMENT '派送时间',
	`specification_url` VARCHAR(32) NOT NULL COMMENT '尺寸大小图片',
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_bee_cake_specification_bee_cake_id` FOREIGN KEY (`bee_cake_id`) REFERENCES `bee_cake` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) DEFAULT CHARSET=utf8;

INSERT INTO `bee_cake_specification` VALUES
(NULL,2,17,2.2,6,'3-6',265,'23:00','a'),
(NULL,2,23,3.9,12,'7-12',475,'20:30','a'),
(NULL,2,28,5.8,18,'13-18',685,'20:30','a'),
(NULL,3,32,7.9,30,'20-30',1060,'23:00','a'),
(NULL,3,36,10,50,'40-50',1325,'23:00','a'),
(NULL,3,40,12.3,70,'50-70',1590,'23:00','a'),
(NULL,3,44,14.6,90,'70-90',1855,'23:00','a'),
(NULL,4,17,2.2,6,'3-6',265,'23:00','a'),
(NULL,4,23,3.9,12,'7-12',475,'20:30','a'),
(NULL,4,28,5.8,18,'13-18',685,'20:30','a'),
(NULL,5,36,10,50,'40-50',1325,'23:00','a'),
(NULL,5,40,12.3,70,'50-70',1590,'23:00','a'),
(NULL,5,44,14.6,90,'70-90',1855,'23:00','a'),
(NULL,5,17,2.2,6,'3-6',265,'23:00','a');

INSERT INTO `bee_cake_specification` VALUES
(NULL,16,17,2.2,6,'3-6',265,'23:00','a'),
(NULL,17,23,3.9,12,'7-12',475,'20:30','a'),
(NULL,18,28,5.8,18,'13-18',685,'20:30','a'),
(NULL,19,32,7.9,30,'20-30',1060,'23:00','a'),
(NULL,20,36,10,50,'40-50',1325,'23:00','a'),
(NULL,21,40,12.3,70,'50-70',1590,'23:00','a'),
(NULL,22,44,14.6,90,'70-90',1855,'23:00','a'),
(NULL,23,17,2.2,6,'3-6',265,'23:00','a'),
(NULL,24,23,3.9,12,'7-12',475,'20:30','a'),
(NULL,25,28,5.8,18,'13-18',685,'20:30','a'),
(NULL,26,36,10,50,'40-50',1325,'23:00','a'),
(NULL,27,40,12.3,70,'50-70',1590,'23:00','a'),
(NULL,28,44,14.6,90,'70-90',1855,'23:00','a'),
(NULL,16,17,2.2,6,'3-6',265,'23:00','a');


#首页轮播广告
CREATE TABLE bee_index_lunbo(
  `id` INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `img_url` VARCHAR(255) NOT NULL COMMENT '轮播图路径',
  `href` VARCHAR(128) NOT NULL COMMENT '商品跳转路径',
  `title` VARCHAR(64) NOT NULL COMMENT '轮播标题'
);
INSERT INTO `bee_index_lunbo` VALUES
(NULL,'http://127.0.0.1:8625/img/hd/180906/wb.jpg','图片1',NULL),
(NULL,'http://127.0.0.1:8625/img/hd/180828/wb.jpg','图片2',NULL),
(NULL,'http://127.0.0.1:8625/img/hd/180802/wb.jpg','图片3',NULL),
(NULL,'http://127.0.0.1:8625/img/hd/180615/wb.jpg','图片4',NULL);

#通过id查询某一个蛋糕,一条sql顺便把尺寸表的信息请求回来
SELECT bc.*,bcs.size,bcs.weight,bcs.tableware_num,bcs.eating_num,bcs.price,bcs.send_time,bcs.specification_url FROM bee_cake bc
LEFT JOIN bee_cake_specification bcs ON bc.id = bcs.bee_cake_id


