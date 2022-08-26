#设置客户端连接服务器端的编码
set names utf8;
#丢弃数据库，如果存在
drop database if exists hw;
#创建新的数据库，设置存储字符的编码
create database hw charset=utf8;
#进入创建的数据库
use hw;

/**用户信息**/
CREATE TABLE hw_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  pwd VARCHAR(32),
  phone VARCHAR(32)
);
/**型号家族**/
CREATE TABLE hw_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
/**手机**/
CREATE TABLE hw_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  spec VARCHAR(64),           #规格/颜色

  lname VARCHAR(1024),          #商品名称
  os VARCHAR(32),             #电池容量
  memory VARCHAR(32),         #运行内存
  resolution VARCHAR(32),     #分辨率
  video_card VARCHAR(32),     #屏幕尺寸
  cpu VARCHAR(32),            #CPU型号
  cpu_hs VARCHAR(32),         #CPU核数
  category VARCHAR(32),       #型号
  disk VARCHAR(32),           #操作系统
  details_a VARCHAR(65535),      #商品介绍1
  details_b VARCHAR(65535),      #商品介绍2
  details_c VARCHAR(65535),      #商品介绍3

  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN,           #是否降价
  yuanjia DECIMAL(8,2),
  img VARCHAR(64),
  img2 VARCHAR(64),
  sm_img VARCHAR(64),
  sm_img2 VARCHAR(64),
  xianshi VARCHAR(16)
);

/**爆款推荐**/
CREATE TABLE hw_popular(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  list VARCHAR(32),      #是否新品
  model VARCHAR(32),   #商品型号
  price DECIMAL(8,2),        #购买价格
  p_img VARCHAR(10024) #图片
);
/**购物车条目**/
CREATE TABLE hw_shoppingcart_item(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(2048),#图片
  hname  VARCHAR(100),      #商品名称
  cpu VARCHAR(64),   #cpu内存
  price DECIMAL(8,2),#价格
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);
-- /**用户订单**/
-- CREATE TABLE xz_order(
--   aid INT PRIMARY KEY AUTO_INCREMENT,
--   user_id INT,
--   address_id INT,
--   status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
--   order_time BIGINT,      #下单时间
--   pay_time BIGINT,        #付款时间
--   deliver_time BIGINT,    #发货时间
--   received_time BIGINT    #签收时间
-- )AUTO_INCREMENT=10000000;

-- /**用户订单**/
-- CREATE TABLE xz_order_detail(
--   did INT PRIMARY KEY AUTO_INCREMENT,
--   order_id INT,           #订单编号
--   product_id INT,         #产品编号
--   count INT               #购买数量
-- );

/*******************/
/******数据导入******/
/*******************/
/**手机型号家族**/
INSERT INTO hw_laptop_family VALUES
(NULL,'HUAWEI Mate 40 Pro+'),
(NULL,'HUAWEI MateBook X Pro'),
(NULL,'商用电脑'),
(NULL,'MatePad Pro系列'),
(NULL,'商用平板'),
(NULL,'真无线耳机'),
(NULL,'有线耳机'),
(NULL,'扫地清洁'),
(NULL,'空气净化器');

/**华为**/
INSERT INTO hw_laptop VALUES
(1,1,'HUAWEI Mate 40 Pro+ 5G 全网通 8GB+256GB'
,'一体成型金属机身，纤薄轻巧，长达12小时续航',
6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货',
'/8GB内存/128GB闪存','HUAWEI Mate 40 Pro+',
'4100mAh（典型值）','8GB','FHD+ 2700 x 1224 像素',
'6.5英寸','骁龙778G 4G','八核',
'ABR-AL60','HarmonyOS 2','image/jieshao1.jpg','image/jieshao2.jpg','image/jieshao3.jpg',
150123456789,2968,true,7988,'image/shouji.png',
'image/xiangqing.png','image/xiaotu1.png','image/xiaotu2.png','限时直降1000元'),
(2,2,'HUAWEI P50E 8GB+128GB 雪域白 鸿蒙手机','一体成型金属机身，纤薄轻巧，长达12小时续航',5988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核/8GB内存/128GB闪存','HUAWEI P50E','4400mAh（典型值）','8GB','FHD+ 2772 × 1344 像素','6.76英寸','麒麟9000','八核','ABR-AL60','HarmonyOS 2','image/jieshao4.jpg','image/jieshao5.jpg','image/jieshao6.jpg',150123456789,2969,false,6488,'image/xiangqing.png','image/shouji.png','image/xiaotu2.png','image/xiaotu1.png','限时直降500元'),
(3,3,'HUAWEI MateBook X Pro 微绒典藏版 12代酷睿 i7 16GB 512GB 14.2英寸3.1K原色全面屏 墨蓝','一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','/8GB内存/128GB闪存','HUAWEI Mate 40 Pro+','4100mAh（典型值）','8GB','FHD+ 2700 x 1224 像素','6.5英寸','骁龙778G 4G','八核','ABR-AL60','HarmonyOS 2','image/jieshao1.jpg','image/jieshao2.jpg','image/jieshao3.jpg',150123456789,2969,false,7588,'image/shouji.png','image/xiangqing.png','image/xiaotu1.png','image/xiaotu2.png','限时直降550元'),
(4,4,'HUAWEI Mate 40 Pro+ 5G 全网通 8GB+256GB','一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','/8GB内存/128GB闪存','HUAWEI Mate 40 Pro+','4100mAh（典型值）','8GB','FHD+ 2700 x 1224 像素','6.5英寸','骁龙778G 4G','八核','ABR-AL60','HarmonyOS 2','image/jieshao4.jpg','image/jieshao5.jpg','image/jieshao6.jpg',150123456789,2930,true,7988,'image/shouji.png','image/xiangqing.png','image/xiaotu1.png','image/xiaotu2.png','限时直降1000元'),
(5,5,'HUAWEI P50E 8GB+128GB 雪域白 鸿蒙手机','一体成型金属机身，纤薄轻巧，长达12小时续航',5988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核/8GB内存/128GB闪存','HUAWEI P50E','4400mAh（典型值）','8GB','FHD+ 2772 × 1344 像素','6.76英寸','麒麟9000','八核','ABR-AL60','HarmonyOS 2',
'image/jieshao1.jpg','image/jieshao2.jpg','image/jieshao3.jpg',150123456789,2968,true,6488,'image/xiangqing.png','image/shouji.png','image/xiaotu2.png','image/xiaotu1.png','限时直降500元'),
(6,6,'HUAWEI MateBook X Pro 微绒典藏版 12代酷睿 i7 16GB 512GB 14.2英寸3.1K原色全面屏 墨蓝','一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','/8GB内存/128GB闪存','HUAWEI Mate 40 Pro+','4100mAh（典型值）','8GB','FHD+ 2700 x 1224 像素','6.5英寸','骁龙778G 4G','八核','ABR-AL60','HarmonyOS 2','image/jieshao4.jpg','image/jieshao5.jpg','image/jieshao6.jpg',150123456789,2967,false,7588,'image/shouji.png','image/xiangqing.png','image/xiaotu1.png','image/xiaotu2.png','限时直降550元'),
(7,7,'HUAWEI Mate 40 Pro+ 5G 全网通 8GB+256GB','一体成型金属机身，纤薄轻巧，长达12小时续航',6988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','/8GB内存/128GB闪存','HUAWEI Mate 40 Pro+','4100mAh（典型值）','8GB','FHD+ 2700 x 1224 像素','6.5英寸','骁龙778G 4G','八核','ABR-AL60','HarmonyOS 2',
'image/jieshao1.jpg','image/jieshao2.jpg','image/jieshao3.jpg',150123456789,2968,true,7988,'image/shouji.png','image/xiangqing.png','image/xiaotu1.png','image/xiaotu2.png','限时直降1000元'),
(8,8,'HUAWEI P50E 8GB+128GB 雪域白 鸿蒙手机','一体成型金属机身，纤薄轻巧，长达12小时续航',5988,'*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货','双核/8GB内存/128GB闪存','HUAWEI P50E','4400mAh（典型值）','8GB','FHD+ 2772 × 1344 像素','6.76英寸','麒麟9000','八核','ABR-AL60','HarmonyOS 2','image/jieshao4.jpg','image/jieshao5.jpg','image/jieshao6.jpg',150123456789,2968,true,6488,'image/xiangqing.png','image/shouji.png','image/xiaotu2.png','image/xiaotu1.png','限时直降500元');


/** 爆款 **/
INSERT INTO hw_popular VALUES
(1,true,'nova 10 Pro',3699,'image/baokuan1.png'),
(2,true,'nova 10',2999,'image/baokuan2.png'),
(3,true,'HUAWEI FreeB',1249,'image/baokuan3.png'),
(4,false,'华为儿童手表4 Pro',998,'image/baokuan4.png'),
(5,true,'华为智慧屏',4399,'image/baokuan5.png'),
(6,true,'WATCH mini',399,'image/baokuan6.png'),
(7,false,'MateBook 14s',6529,'image/baokuan7.png'),
(8,true,'HUAWEI P50 Pocket',8688,'image/baokuan8.png');

/** 购物车内容**/
INSERT INTO hw_shoppingcart_item VALUES
(1,'image/xiaotu1.png','HUAWEI Mate 40 Pro+ 5G 全网通 8GB+256GB','双核/8GB内存/128GB闪存','6988','1',false),
(2,'image/xiaotu2.png','HUAWEI Mate 40 Pro+ 5G 全网通 8GB+256GB','双核/16GB内存/256GB闪存','7388','1',false);
