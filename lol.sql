/*
Navicat MySQL Data Transfer

Source Server         : zhangh
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : lol

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-12-04 09:56:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '123', '123', '123');
INSERT INTO `account` VALUES ('5', '123asd', '123', '123');
INSERT INTO `account` VALUES ('6', 'sdasd', 'asdasd', 'asda');
INSERT INTO `account` VALUES ('7', 'qwe', 'qwe', 'qwe');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brief_introduction` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '公告', '9.23云顶之弈更新：排位队列回归', '11-25');
INSERT INTO `article` VALUES ('2', '公告', 'FPX夺冠庆典：紫色宝石半价兑换即将限时开启!', '11-25');
INSERT INTO `article` VALUES ('3', '新闻', 'LPL全明星周末赛程公布', '11-25');
INSERT INTO `article` VALUES ('4', '新闻', '残月之肃 厄斐琉斯技能介绍', '11-25');
INSERT INTO `article` VALUES ('5', '新闻', '英雄剖析：厄斐琉斯', '11-25');
INSERT INTO `article` VALUES ('6', '新闻', '听过的游戏音乐里，隐藏着你哪种未知可能？', '11-25');
INSERT INTO `article` VALUES ('7', '公告', '11月25日全大区排位模式维护公告', '11-25');
INSERT INTO `article` VALUES ('8', '公告', '游戏环境公示及处罚名单11月22日', '11-25');
INSERT INTO `article` VALUES ('9', '公告', '关于紫色宝石半价兑换活动的说明', '11-25');
INSERT INTO `article` VALUES ('10', '公告', '蓝色精萃商店限时开放预告', '11-25');
INSERT INTO `article` VALUES ('11', '赛事', '2019LPL全明星周末阵容公布', '11-25');
INSERT INTO `article` VALUES ('12', '赛事', '文创潮流盛宴!2019海南腾讯数字文创月来了', '11-25');
INSERT INTO `article` VALUES ('13', '赛事', '娱乐主播赛名单揭晓 十主播峡谷乱斗', '11-25');
INSERT INTO `article` VALUES ('14', '赛事', '2014-2019年历届最受欢迎选手回顾赛事', '11-25');
INSERT INTO `article` VALUES ('15', '教学', '云顶9.23版本详解 久哥哥力荐S级阵容', '11-25');
INSERT INTO `article` VALUES ('16', '教学', '血刃上单成版本主流 季前赛十大英雄推荐', '11-25');
INSERT INTO `article` VALUES ('17', '教学', '云顶狂战士转职玩法解读！布隆化身狂战强势进攻', '11-25');
INSERT INTO `article` VALUES ('18', '教学', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('19', '教学', '地狱火晋升主流羁绊：阵容多向发展皎月强势主C', '11-25');
INSERT INTO `article` VALUES ('20', '教学', '云顶沙漠刺阵容伤害拉满 滑板鞋螳螂反复横跳', '11-25');
INSERT INTO `article` VALUES ('21', '娱乐', '韩媒爆料Kkoma和Khan将加入LPL', '11-25');
INSERT INTO `article` VALUES ('22', '娱乐', '重磅消息！GRF官方申明：选手合同作废，可选择进', '11-25');
INSERT INTO `article` VALUES ('23', '娱乐', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('24', '娱乐', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('25', '娱乐', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('26', '教学', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('27', '教学', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('28', '教学', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('29', '教学', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');
INSERT INTO `article` VALUES ('30', '教学', '季前赛七大崛起英雄 中单奎因胜率暴涨', '11-25');

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('1', '黑暗之女', '//game.gtimg.cn/images/lol/act/img/champion/Annie.png', '法师');
INSERT INTO `hero` VALUES ('2', '狂战士', '//game.gtimg.cn/images/lol/act/img/champion/Olaf.png', '战士');
INSERT INTO `hero` VALUES ('3', '正义巨像', '//game.gtimg.cn/images/lol/act/img/champion/Galio.png', '法师');
INSERT INTO `hero` VALUES ('4', '卡牌大师', '//game.gtimg.cn/images/lol/act/img/champion/TwistedFate.png', '法师');
INSERT INTO `hero` VALUES ('5', '德邦总管', '//game.gtimg.cn/images/lol/act/img/champion/XinZhao.png', '法师');
INSERT INTO `hero` VALUES ('6', '无畏战车', '//game.gtimg.cn/images/lol/act/img/champion/Urgot.png', '法师');
INSERT INTO `hero` VALUES ('7', '诡术妖姬', '//game.gtimg.cn/images/lol/act/img/champion/Leblanc.png', '法师');
INSERT INTO `hero` VALUES ('8', '猩红收割者', '//game.gtimg.cn/images/lol/act/img/champion/Vladimir.png', '战士');
INSERT INTO `hero` VALUES ('9', '末日使者', '//game.gtimg.cn/images/lol/act/img/champion/FiddleSticks.png', '战士');
INSERT INTO `hero` VALUES ('10', '正义天使', '//game.gtimg.cn/images/lol/act/img/champion/Kayle.png', '战士');
INSERT INTO `hero` VALUES ('11', '无极剑圣', '//game.gtimg.cn/images/lol/act/img/champion/MasterYi.png', '战士');
INSERT INTO `hero` VALUES ('12', '牛头酋长', '//game.gtimg.cn/images/lol/act/img/champion/Alistar.png', '战士');
INSERT INTO `hero` VALUES ('13', '符文法师', '//game.gtimg.cn/images/lol/act/img/champion/Ryze.png', '战士');
INSERT INTO `hero` VALUES ('14', '亡灵战神', '//game.gtimg.cn/images/lol/act/img/champion/Sion.png', '战士');
INSERT INTO `hero` VALUES ('15', '战争女神', '//game.gtimg.cn/images/lol/act/img/champion/Sivir.png', '战士');
INSERT INTO `hero` VALUES ('16', '众星之子', '//game.gtimg.cn/images/lol/act/img/champion/Soraka.png', '战士');
INSERT INTO `hero` VALUES ('17', '迅捷斥候', '//game.gtimg.cn/images/lol/act/img/champion/Teemo.png', '刺客');
INSERT INTO `hero` VALUES ('18', '麦林炮手', '//game.gtimg.cn/images/lol/act/img/champion/Tristana.png', '刺客');
INSERT INTO `hero` VALUES ('19', '祖安怒兽', '//game.gtimg.cn/images/lol/act/img/champion/Warwick.png', '刺客');
INSERT INTO `hero` VALUES ('20', '雪原双子', '//game.gtimg.cn/images/lol/act/img/champion/Nunu.png', '刺客');
INSERT INTO `hero` VALUES ('21', '赏金猎人', '//game.gtimg.cn/images/lol/act/img/champion/MissFortune.png', '刺客');
INSERT INTO `hero` VALUES ('22', '寒冰射手', '//game.gtimg.cn/images/lol/act/img/champion/Ashe.png', '刺客');
INSERT INTO `hero` VALUES ('23', '蛮族之王', '//game.gtimg.cn/images/lol/act/img/champion/Tryndamere.png', '刺客');
INSERT INTO `hero` VALUES ('24', '武器大师', '//game.gtimg.cn/images/lol/act/img/champion/Jax.png', '刺客');
INSERT INTO `hero` VALUES ('25', '堕落天使', '//game.gtimg.cn/images/lol/act/img/champion/Morgana.png', '刺客');
INSERT INTO `hero` VALUES ('26', '时光守护者', '//game.gtimg.cn/images/lol/act/img/champion/Zilean.png', '刺客');
INSERT INTO `hero` VALUES ('27', '炼金术士', '//game.gtimg.cn/images/lol/act/img/champion/Singed.png', '刺客');
INSERT INTO `hero` VALUES ('28', '痛苦之拥', '//game.gtimg.cn/images/lol/act/img/champion/Evelynn.png', '刺客');
INSERT INTO `hero` VALUES ('29', '瘟疫之源', '//game.gtimg.cn/images/lol/act/img/champion/Twitch.png', '刺客');
INSERT INTO `hero` VALUES ('30', '死亡颂唱者', '//game.gtimg.cn/images/lol/act/img/champion/Karthus.png', '刺客');
INSERT INTO `hero` VALUES ('31', '虚空恐惧', '//game.gtimg.cn/images/lol/act/img/champion/Chogath.png', '坦克');
INSERT INTO `hero` VALUES ('32', '殇之木乃伊', '//game.gtimg.cn/images/lol/act/img/champion/Amumu.png', '坦克');
INSERT INTO `hero` VALUES ('33', '披甲龙龟', '//game.gtimg.cn/images/lol/act/img/champion/Rammus.png', '坦克');
INSERT INTO `hero` VALUES ('34', '冰晶凤凰', '//game.gtimg.cn/images/lol/act/img/champion/Anivia.png', '坦克');
INSERT INTO `hero` VALUES ('35', '恶魔小丑', '//game.gtimg.cn/images/lol/act/img/champion/Shaco.png', '坦克');
INSERT INTO `hero` VALUES ('36', '祖安狂人', '//game.gtimg.cn/images/lol/act/img/champion/DrMundo.png', '坦克');
INSERT INTO `hero` VALUES ('37', '琴瑟仙女', '//game.gtimg.cn/images/lol/act/img/champion/Sona.png', '坦克');
INSERT INTO `hero` VALUES ('38', '虚空行者', '//game.gtimg.cn/images/lol/act/img/champion/Kassadin.png', '坦克');
INSERT INTO `hero` VALUES ('39', '刀锋舞者', '//game.gtimg.cn/images/lol/act/img/champion/Irelia.png', '坦克');
INSERT INTO `hero` VALUES ('40', '风暴之怒', '//game.gtimg.cn/images/lol/act/img/champion/Janna.png', '坦克');
INSERT INTO `hero` VALUES ('41', '海洋之灾', '//game.gtimg.cn/images/lol/act/img/champion/Gangplank.png', '坦克');
INSERT INTO `hero` VALUES ('42', '英勇投弹手', '//game.gtimg.cn/images/lol/act/img/champion/Corki.png', '射手');
INSERT INTO `hero` VALUES ('43', '天启者', '//game.gtimg.cn/images/lol/act/img/champion/Karma.png', '射手');
INSERT INTO `hero` VALUES ('44', '瓦洛兰之盾', '//game.gtimg.cn/images/lol/act/img/champion/Taric.png', '射手');
INSERT INTO `hero` VALUES ('45', '邪恶小法师', '//game.gtimg.cn/images/lol/act/img/champion/Veigar.png', '射手');
INSERT INTO `hero` VALUES ('46', '巨魔之王', '//game.gtimg.cn/images/lol/act/img/champion/Trundle.png', '射手');
INSERT INTO `hero` VALUES ('47', '诺克萨斯统领', '//game.gtimg.cn/images/lol/act/img/champion/Swain.png', '射手');
INSERT INTO `hero` VALUES ('48', '皮城女警', '//game.gtimg.cn/images/lol/act/img/champion/Caitlyn.png', '射手');
INSERT INTO `hero` VALUES ('49', '蒸汽机器人', '//game.gtimg.cn/images/lol/act/img/champion/Blitzcrank.png', '射手');
INSERT INTO `hero` VALUES ('50', '熔岩巨兽', '//game.gtimg.cn/images/lol/act/img/champion/Malphite.png', '射手');
INSERT INTO `hero` VALUES ('51', '不祥之刃', '//game.gtimg.cn/images/lol/act/img/champion/Katarina.png', '射手');
INSERT INTO `hero` VALUES ('52', '永恒梦魇', '//game.gtimg.cn/images/lol/act/img/champion/Nocturne.png', '射手');
INSERT INTO `hero` VALUES ('53', '扭曲树精', '//game.gtimg.cn/images/lol/act/img/champion/Maokai.png', '射手');
INSERT INTO `hero` VALUES ('54', '荒漠屠夫', '//game.gtimg.cn/images/lol/act/img/champion/Renekton.png', '射手');
INSERT INTO `hero` VALUES ('55', '德玛西亚皇子', '//game.gtimg.cn/images/lol/act/img/champion/JarvanIV.png', '射手');
INSERT INTO `hero` VALUES ('56', '蜘蛛女皇', '//game.gtimg.cn/images/lol/act/img/champion/Elise.png', '辅助');
INSERT INTO `hero` VALUES ('57', '发条魔灵', '//game.gtimg.cn/images/lol/act/img/champion/Orianna.png', '辅助');
INSERT INTO `hero` VALUES ('58', '齐天大圣', '//game.gtimg.cn/images/lol/act/img/champion/MonkeyKing.png', '辅助');
INSERT INTO `hero` VALUES ('59', '复仇焰魂', '//game.gtimg.cn/images/lol/act/img/champion/Brand.png', '辅助');
INSERT INTO `hero` VALUES ('60', '盲僧', '//game.gtimg.cn/images/lol/act/img/champion/LeeSin.png', '辅助');
INSERT INTO `hero` VALUES ('61', '暗夜猎手', '//game.gtimg.cn/images/lol/act/img/champion/Vayne.png', '辅助');
INSERT INTO `hero` VALUES ('62', '机械公敌', '//game.gtimg.cn/images/lol/act/img/champion/Rumble.png', '辅助');
INSERT INTO `hero` VALUES ('63', '魔蛇之拥', '//game.gtimg.cn/images/lol/act/img/champion/Cassiopeia.png', '辅助');
INSERT INTO `hero` VALUES ('64', '水晶先锋', '//game.gtimg.cn/images/lol/act/img/champion/Skarner.png', '辅助');
INSERT INTO `hero` VALUES ('65', '大发明家', '//game.gtimg.cn/images/lol/act/img/champion/Heimerdinger.png', '辅助');
INSERT INTO `hero` VALUES ('66', '沙漠死神', '//game.gtimg.cn/images/lol/act/img/champion/Nasus.png', '辅助');
INSERT INTO `hero` VALUES ('67', '狂野女猎手', '//game.gtimg.cn/images/lol/act/img/champion/Nidalee.png', '辅助');
INSERT INTO `hero` VALUES ('68', '兽灵行者', '//game.gtimg.cn/images/lol/act/img/champion/Udyr.png', '辅助');
INSERT INTO `hero` VALUES ('69', '圣锤之毅', '//game.gtimg.cn/images/lol/act/img/champion/Poppy.png', '辅助');
INSERT INTO `hero` VALUES ('70', '酒桶', '//game.gtimg.cn/images/lol/act/img/champion/Gragas.png', '辅助');
INSERT INTO `hero` VALUES ('71', '不屈之枪', '//game.gtimg.cn/images/lol/act/img/champion/Pantheon.png', '辅助');
INSERT INTO `hero` VALUES ('72', '探险家', '//game.gtimg.cn/images/lol/act/img/champion/Ezreal.png', '辅助');
INSERT INTO `hero` VALUES ('73', '铁铠冥魂', '//game.gtimg.cn/images/lol/act/img/champion/Mordekaiser.png', '法师');
INSERT INTO `hero` VALUES ('74', '牧魂人', '//game.gtimg.cn/images/lol/act/img/champion/Yorick.png', '法师');
INSERT INTO `hero` VALUES ('75', '离群之刺', '//game.gtimg.cn/images/lol/act/img/champion/Akali.png', '法师');
INSERT INTO `hero` VALUES ('76', '狂暴之心', '//game.gtimg.cn/images/lol/act/img/champion/Kennen.png', '法师');
INSERT INTO `hero` VALUES ('77', '德玛西亚之力', '//game.gtimg.cn/images/lol/act/img/champion/Garen.png', '法师');
INSERT INTO `hero` VALUES ('78', '曙光女神', '//game.gtimg.cn/images/lol/act/img/champion/Leona.png', '法师');
INSERT INTO `hero` VALUES ('79', '虚空先知', '//game.gtimg.cn/images/lol/act/img/champion/Malzahar.png', '法师');
INSERT INTO `hero` VALUES ('80', '刀锋之影', '//game.gtimg.cn/images/lol/act/img/champion/Talon.png', '法师');
INSERT INTO `hero` VALUES ('81', '放逐之刃', '//game.gtimg.cn/images/lol/act/img/champion/Riven.png', '法师');
INSERT INTO `hero` VALUES ('82', '深渊巨口', '//game.gtimg.cn/images/lol/act/img/champion/KogMaw.png', '法师');
INSERT INTO `hero` VALUES ('83', '暮光之眼', '//game.gtimg.cn/images/lol/act/img/champion/Shen.png', '法师');
INSERT INTO `hero` VALUES ('84', '光辉女郎', '//game.gtimg.cn/images/lol/act/img/champion/Lux.png', '法师');
INSERT INTO `hero` VALUES ('85', '远古巫灵', '//game.gtimg.cn/images/lol/act/img/champion/Xerath.png', '战士');
INSERT INTO `hero` VALUES ('86', '龙血武姬', '//game.gtimg.cn/images/lol/act/img/champion/Shyvana.png', '战士');
INSERT INTO `hero` VALUES ('87', '九尾妖狐', '//game.gtimg.cn/images/lol/act/img/champion/Ahri.png', '战士');
INSERT INTO `hero` VALUES ('88', '法外狂徒', '//game.gtimg.cn/images/lol/act/img/champion/Graves.png', '战士');
INSERT INTO `hero` VALUES ('89', '潮汐海灵', '//game.gtimg.cn/images/lol/act/img/champion/Fizz.png', '战士');
INSERT INTO `hero` VALUES ('90', '雷霆咆哮', '//game.gtimg.cn/images/lol/act/img/champion/Volibear.png', '战士');
INSERT INTO `hero` VALUES ('91', '傲之追猎者', '//game.gtimg.cn/images/lol/act/img/champion/Rengar.png', '战士');
INSERT INTO `hero` VALUES ('92', '惩戒之箭', '//game.gtimg.cn/images/lol/act/img/champion/Varus.png', '战士');
INSERT INTO `hero` VALUES ('93', '深海泰坦', '//game.gtimg.cn/images/lol/act/img/champion/Nautilus.png', '战士');
INSERT INTO `hero` VALUES ('94', '机械先驱', '//game.gtimg.cn/images/lol/act/img/champion/Viktor.png', '战士');
INSERT INTO `hero` VALUES ('95', '北地之怒', '//game.gtimg.cn/images/lol/act/img/champion/Sejuani.png', '战士');
INSERT INTO `hero` VALUES ('96', '无双剑姬', '//game.gtimg.cn/images/lol/act/img/champion/Fiora.png', '战士');
INSERT INTO `hero` VALUES ('97', '爆破鬼才', '//game.gtimg.cn/images/lol/act/img/champion/Ziggs.png', '战士');
INSERT INTO `hero` VALUES ('98', '仙灵女巫', '//game.gtimg.cn/images/lol/act/img/champion/Lulu.png', '战士');
INSERT INTO `hero` VALUES ('99', '荣耀行刑官', '//game.gtimg.cn/images/lol/act/img/champion/Draven.png', '战士');
INSERT INTO `hero` VALUES ('100', '战争之影', '//game.gtimg.cn/images/lol/act/img/champion/Hecarim.png', '战士');
INSERT INTO `hero` VALUES ('101', '虚空掠夺者', '//game.gtimg.cn/images/lol/act/img/champion/Khazix.png', '战士');
INSERT INTO `hero` VALUES ('102', '诺克萨斯之手', '//game.gtimg.cn/images/lol/act/img/champion/Darius.png', '战士');
INSERT INTO `hero` VALUES ('103', '未来守护者', '//game.gtimg.cn/images/lol/act/img/champion/Jayce.png', '战士');
INSERT INTO `hero` VALUES ('104', '冰霜女巫', '//game.gtimg.cn/images/lol/act/img/champion/Lissandra.png', '战士');
INSERT INTO `hero` VALUES ('105', '皎月女神', '//game.gtimg.cn/images/lol/act/img/champion/Diana.png', '战士');
INSERT INTO `hero` VALUES ('106', '德玛西亚之翼', '//game.gtimg.cn/images/lol/act/img/champion/Quinn.png', '战士');
INSERT INTO `hero` VALUES ('107', '暗黑元首', '//game.gtimg.cn/images/lol/act/img/champion/Syndra.png', '坦克');
INSERT INTO `hero` VALUES ('108', '铸星龙王', '//game.gtimg.cn/images/lol/act/img/champion/AurelionSol.png', '坦克');
INSERT INTO `hero` VALUES ('109', '影流之镰', '//game.gtimg.cn/images/lol/act/img/champion/Kayn.png', '坦克');
INSERT INTO `hero` VALUES ('110', '暮光星灵', '//game.gtimg.cn/images/lol/act/img/champion/Zoe.png', '坦克');
INSERT INTO `hero` VALUES ('111', '荆棘之兴', '//game.gtimg.cn/images/lol/act/img/champion/Zyra.png', '坦克');
INSERT INTO `hero` VALUES ('112', '虚空之女', '//game.gtimg.cn/images/lol/act/img/champion/Kaisa.png', '坦克');
INSERT INTO `hero` VALUES ('113', '迷失之牙', '//game.gtimg.cn/images/lol/act/img/champion/Gnar.png', '坦克');
INSERT INTO `hero` VALUES ('114', '生化魔人', '//game.gtimg.cn/images/lol/act/img/champion/Zac.png', '坦克');
INSERT INTO `hero` VALUES ('115', '疾风剑豪', '//game.gtimg.cn/images/lol/act/img/champion/Yasuo.png', '坦克');
INSERT INTO `hero` VALUES ('116', '虚空之眼', '//game.gtimg.cn/images/lol/act/img/champion/Velkoz.png', '坦克');
INSERT INTO `hero` VALUES ('117', '岩雀', '//game.gtimg.cn/images/lol/act/img/champion/Taliyah.png', '坦克');
INSERT INTO `hero` VALUES ('118', '青钢影', '//game.gtimg.cn/images/lol/act/img/champion/Camille.png', '坦克');
INSERT INTO `hero` VALUES ('119', '弗雷尔卓德之心', '//game.gtimg.cn/images/lol/act/img/champion/Braum.png', '坦克');
INSERT INTO `hero` VALUES ('120', '戏命师', '//game.gtimg.cn/images/lol/act/img/champion/Jhin.png', '坦克');
INSERT INTO `hero` VALUES ('121', '永猎双子', '//game.gtimg.cn/images/lol/act/img/champion/Kindred.png', '坦克');
INSERT INTO `hero` VALUES ('122', '暴走萝莉', '//game.gtimg.cn/images/lol/act/img/champion/Jinx.png', '坦克');
INSERT INTO `hero` VALUES ('123', '河流之王', '//game.gtimg.cn/images/lol/act/img/champion/TahmKench.png', '坦克');
INSERT INTO `hero` VALUES ('124', '涤魂圣枪', '//game.gtimg.cn/images/lol/act/img/champion/Senna.png', '坦克');
INSERT INTO `hero` VALUES ('125', '圣枪游侠', '//game.gtimg.cn/images/lol/act/img/champion/Lucian.png', '坦克');
INSERT INTO `hero` VALUES ('126', '影流之主', '//game.gtimg.cn/images/lol/act/img/champion/Zed.png', '坦克');
INSERT INTO `hero` VALUES ('127', '暴怒骑士', '//game.gtimg.cn/images/lol/act/img/champion/Kled.png', '射手');
INSERT INTO `hero` VALUES ('128', '时间刺客', '//game.gtimg.cn/images/lol/act/img/champion/Ekko.png', '射手');
INSERT INTO `hero` VALUES ('129', '元素女皇', '//game.gtimg.cn/images/lol/act/img/champion/Qiyana.png', '射手');
INSERT INTO `hero` VALUES ('130', '皮城执法官', '//game.gtimg.cn/images/lol/act/img/champion/Vi.png', '射手');
INSERT INTO `hero` VALUES ('131', '暗裔剑魔', '//game.gtimg.cn/images/lol/act/img/champion/Aatrox.png', '射手');
INSERT INTO `hero` VALUES ('132', '唤潮鲛姬', '//game.gtimg.cn/images/lol/act/img/champion/Nami.png', '射手');
INSERT INTO `hero` VALUES ('133', '沙漠皇帝', '//game.gtimg.cn/images/lol/act/img/champion/Azir.png', '射手');
INSERT INTO `hero` VALUES ('134', '魔法猫咪', '//game.gtimg.cn/images/lol/act/img/champion/Yuumi.png', '射手');
INSERT INTO `hero` VALUES ('135', '魂锁典狱长', '//game.gtimg.cn/images/lol/act/img/champion/Thresh.png', '射手');
INSERT INTO `hero` VALUES ('136', '海兽祭司', '//game.gtimg.cn/images/lol/act/img/champion/Illaoi.png', '射手');
INSERT INTO `hero` VALUES ('137', '虚空遁地兽', '//game.gtimg.cn/images/lol/act/img/champion/RekSai.png', '射手');
INSERT INTO `hero` VALUES ('138', '翠神', '//game.gtimg.cn/images/lol/act/img/champion/Ivern.png', '射手');
INSERT INTO `hero` VALUES ('139', '复仇之矛', '//game.gtimg.cn/images/lol/act/img/champion/Kalista.png', '射手');
INSERT INTO `hero` VALUES ('140', '星界游神', '//game.gtimg.cn/images/lol/act/img/champion/Bard.png', '射手');
INSERT INTO `hero` VALUES ('141', '幻翎', '//game.gtimg.cn/images/lol/act/img/champion/Rakan.png', '射手');
INSERT INTO `hero` VALUES ('142', '逆羽', '//game.gtimg.cn/images/lol/act/img/champion/Xayah.png', '射手');
INSERT INTO `hero` VALUES ('143', '山隐之焰', '//game.gtimg.cn/images/lol/act/img/champion/Ornn.png', '射手');
INSERT INTO `hero` VALUES ('144', '解脱者', '//game.gtimg.cn/images/lol/act/img/champion/Sylas.png', '射手');
INSERT INTO `hero` VALUES ('145', '万花通灵', '//game.gtimg.cn/images/lol/act/img/champion/Neeko.png', '辅助');
INSERT INTO `hero` VALUES ('146', '血港鬼影', '//game.gtimg.cn/images/lol/act/img/champion/Pyke.png', '辅助');

-- ----------------------------
-- Table structure for heroinfo
-- ----------------------------
DROP TABLE IF EXISTS `heroinfo`;
CREATE TABLE `heroinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(255) NOT NULL,
  `physics` varchar(255) NOT NULL,
  `magic` varchar(255) NOT NULL,
  `defense` varchar(255) NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `story` varchar(255) NOT NULL,
  `useone` varchar(255) NOT NULL,
  `usetwo` varchar(255) NOT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `hero_img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heroinfo
-- ----------------------------
INSERT INTO `heroinfo` VALUES ('1', '黑暗之女', '法师', '20', '70', '40', '50', '既拥有危险夺命的能力，又拥有小大人儿的可爱模样，安妮是一名掌握着深不可测的占火魔法的幼女魔法师。安妮生活在诺克萨斯北边的山脚下，即使是在这种地方，她也仍然是魔法师中的异类。她与火焰的紧密关系与生俱来，最初是伴随着喜怒无常的情绪冲动出现的，不过后来她学会了如何掌握这些“好玩的小把戏”。其中她最喜欢的就是召唤她亲爱的泰迪熊提伯斯——一头狂野的守护兽。安妮已经迷失在了永恒的天真里。她在黑暗的森林中游荡，……', '- 安妮的终极必杀技和晕眩技能一起使用能够扭转局势。- 使用碎裂之火技能杀死小兵，可以让安妮在游戏早期打到很多钱。- 熔岩护盾能够有效地帮助安妮叠加嗜火技能所带来的晕眩，有时尽早升1级该技能是合算的。', '- 安妮召唤的巨熊提伯斯能烧伤他附近的敌方单位。切记远离被召唤出的提伯斯。- 召唤师技能惩戒也能够对提伯斯造成伤害。- 留意安妮身上白色的漩涡能量，这意味着她已经准备好施放眩晕。', '安妮', 'https://game.gtimg.cn/images/lol/act/img/skin/big1000.jpg');
INSERT INTO `heroinfo` VALUES ('2', '狂战士', '坦克', '90', '20', '40', '20', '奥拉夫是一股无坚不摧的毁灭之力，战斧在手的他别无所求，只想光荣地死在战斗中。奥拉夫来自弗雷尔卓德的海岸半岛洛克法，他曾在一次占卜预言中听闻自己将安详地死去——这是懦夫的命运，也是对他们族人的莫大侮辱。于是，为了追寻另外一种结局，他在狂怒的驱动下在这片土地上暴跳横行，屠杀了数十名伟大的战士和传说中的野兽，希望能够找到能够阻止自己的对手。如今他是凛冬之爪部族残酷的执法者，希望在即将到来的大战中找到自己……', '- 奥拉夫可以在生命垂危时组合使用狂战之怒、残暴打击和诸神黄昏，来变得不可思议地强大。\r\n\r\n- 激活残暴打击所获得的额外治愈能力，可以增强你的生命偷取，并从友军的治疗技能上获得更多治疗效果。\r\n\r\n- 奥拉夫可以在生命垂危时组合使用狂战之怒、残暴打击和诸神黄昏，来变得不可思议地强大。\r\n\r\n- 激活残暴打击所获得的额外治愈能力，可以增强你的生命偷取，并从友军的治疗技能上获得更多治疗效果。\r\n\r\n- 激活残暴打击所获得的额外治愈能力，可以增强你的生命偷取，并从友军的治疗技能上获得更多治疗效果。', '- 奥拉夫生命值越低，就越危险。保留你的限制技能来解决他。\r\n\r\n- 在对线期阻止奥拉夫拿到他的斧头，能最大限度减少他所造成的骚扰。', '奥拉夫', 'https://game.gtimg.cn/images/lol/act/img/skin/big2000.jpg');
INSERT INTO `heroinfo` VALUES ('3', '诡术妖姬', '法师', '10', '100', '50', '90', '即使是在秘密团体黑色玫瑰的成员内部，乐芙兰也同样保持神秘，而乐芙兰这个名字也只是众多化名之一。这个皮肤惨白的女人自从诺克萨斯建国初期就开始操纵大小人物，推动事态发展。这位女法师能用魔法制造自己的镜像，她可以出现在任何地点、任何人面前、甚至同时现身于许多地方。乐芙兰永远都在暗处密谋策划，而她真正的动机和她变换不定的身份一样令人难以捉摸。', '- 魔影谜踪和故技重施一起释放，可以让对方难以猜出你要回到哪一个魔影谜踪的法阵上。\r\n\r\n- 使用魔影迷踪可以帮助你有好的站位来施放幻影锁链。\r\n\r\n- 你可以用恶意魔印与幻影锁链来防止有闪现技能的角色逃跑，最多持续4秒。', '- 乐芙兰的终极技能可以在她的技能施放期间，或是，少见地在一个遥远的位置创造一个假的乐芙兰。\r\n\r\n- 在远处创造的假乐芙兰将会跑向距它最近的敌方英雄，施放一个无害的技能，随后立刻消失。\r\n\r\n- 要先对乐芙兰发起攻击，来规避她的大部分小诡计，尤其是她在近期用过她的位移技能【魔影迷踪】时。\r\n\r\n- 晕眩或沉默乐芙兰将阻止她激活【魔影迷踪】返回。', '乐芙兰', 'https://game.gtimg.cn/images/lol/act/img/skin/big7000.jpg');
INSERT INTO `heroinfo` VALUES ('4', '无畏战车', '坦克', '80', '30', '50', '80', '厄加特曾一度是诺克萨斯强大的处刑人，但这个让他为之杀人如麻的帝国，最后却背叛了他。铁链束缚着他，并迫使他在一个新的地方懂得了力量的真正意义——祖安地下深处的监牢矿坑——“沉钩”。后来的一场灾难让祖安城中混乱肆虐，厄加特也借机破土而出，在祖安的地下犯罪世界傲视群雄。曾经奴役他的铁链，现在是他折磨猎物的工具，他会用枪火洗礼自己新的家园，肃清那些不配苟活的人，将祖安铸成一座痛苦的熔炉。', '- 多注意你每条腿的冷却时间，因为它们是你伤害的重要构成部分。\r\n\r\n- 命中【腐蚀电荷】或【鄙弃】就能用【净除】来锁定目标——这是一种可让多条腿快速地连续发射的好办法。\r\n\r\n- 将【超越死亡的恐惧】留给那些看上去就虚弱得快死的敌人。这个技能在灭除那些逃命中的敌人时尤其有效。', '- 厄加特严重依赖他的几条腿来打击对手，而这些腿都有独立的冷却时间并且只会在他攻击腿所面对的方向上的敌人时贡献火力。避免吃到多条腿的火力。\r\n\r\n- 厄加特可以用【净除】来造成并吸收海量的伤害，但在它开火时，厄加特自身会被减速。\r\n\r\n- 如果你被【超越死亡的恐惧】所击中，要尽力避免限时内让血量降到斩杀线（你25%的最大生命值）。', '厄加特', 'https://game.gtimg.cn/images/lol/act/img/skin/big6000.jpg');
INSERT INTO `heroinfo` VALUES ('5', '雪原双子', '坦克', '30', '60', '50', '30', '很久以前，曾有个小男孩，他要证明自己是个英雄，于是决定去杀掉一头凶猛的怪兽——但他却发现这个怪兽其实是个孤独的魔法雪人，而且他需要的只是一个朋友。雪人和男孩被古老的力量所连结，也因对雪球的共同爱好而玩到一起。努努和威朗普如今在弗雷尔卓德的土地上肆意撒欢打滚，为想象中的冒险注入鲜活的生命力。他们希望能够在前面的某个地方找到努努的母亲。如果他们能拯救她，或许他们就真的是英雄了。', '- 吞噬可以让努努呆在线上对抗敌方远程英雄。\r\n\r\n- 如果有对手即将跑出射程，你可以选择早点打断绝对零度造成部分伤害。\r\n\r\n- 延迟施放绝对零度直到对手使用完首轮限制，通常是有益的。尽量在冲入团战之前再等待一下。', '- 打断绝对零度技能的引导会减低你队伍所受到的伤害。\r\n\r\n- 使用召唤师技能闪现，将确保你逃离绝对零度技能。\r\n\r\n- 【史上最大雪球！】移动得非常快但无法快速转向，因此尽量不要沿直线逃跑，而是要进行突然、大角度的转向。', '努努和威朗普', 'https://game.gtimg.cn/images/lol/act/img/skin/big20000.jpg');
INSERT INTO `heroinfo` VALUES ('6', '牛头酋长', '辅助', '70', '40', '80', '60', '阿利斯塔一直都是威名远扬的巨力勇士，他要为自己被屠杀的氏族向诺克萨斯帝国复仇。虽然他曾被奴役，并被迫成为斗兽场中的角斗士，但他坚不可摧的意志使他免于沦为真正的野兽。现在，挣脱了奴役枷锁的他继续以受苦之人和弱者的名义战斗。他的愤怒，还有犄角、蹄子和拳头，都是他的武器。', '- 使用大地粉碎可以让你在更好的位置施放野蛮冲撞。\r\n\r\n- 移动速度对于阿利斯塔非常重要，因此买鞋时要慎重考虑。\r\n\r\n- 使用闪现可以让你抓住毫无防备的目标，继而用大地粉碎与野蛮冲撞将他们撞回你的友军中。', '- 阿利斯塔具有很强的破坏力也很结实，尝试着攻击更脆弱的输出型英雄才是更好的选择。\r\n\r\n- 在敌方防御塔附近时要小心大地粉碎和野蛮冲撞的连击。\r\n\r\n- 当阿利斯塔使用终极技能时，你可以后退并等到效果消逝后，再对其进行攻击。', '阿利斯塔', 'https://game.gtimg.cn/images/lol/act/img/skin/big12000.jpg');

-- ----------------------------
-- Table structure for hotactive
-- ----------------------------
DROP TABLE IF EXISTS `hotactive`;
CREATE TABLE `hotactive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hot_img` varchar(255) NOT NULL,
  `hot_desc` varchar(255) NOT NULL,
  `hot_date` varchar(255) NOT NULL,
  `hot_tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotactive
-- ----------------------------
INSERT INTO `hotactive` VALUES ('1', '//ossweb-img.qq.com/images/clientpop/act/lol_1574737678_uploadnewsImg.jpg', '未来战士 锤石', '13天后结束', '正在进行');
INSERT INTO `hotactive` VALUES ('2', '//ossweb-img.qq.com/images/clientpop/act/lol_1574324984_uploadnewsImg.jpg', 'LPL全明星周末售票', '今天结束', '正在进行');
INSERT INTO `hotactive` VALUES ('3', '//ossweb-img.qq.com/images/clientpop/act/lol_1573786334_uploadnewsImg.jpg', '夺冠庆典现已开启', '18天后结束', '正在进行');
INSERT INTO `hotactive` VALUES ('4', '//ossweb-img.qq.com/images/clientpop/act/lol_1570193009_uploadnewsImg.jpg', '总决赛2019通行证', '2天后结束', '正在进行');
INSERT INTO `hotactive` VALUES ('5', '//ossweb-img.qq.com/images/clientpop/act/lol_1568305303_uploadnewsImg.jpg', '小小英雄第四系列', '长期活动', '商城特惠');
INSERT INTO `hotactive` VALUES ('6', '//ossweb-img.qq.com/images/clientpop/act/lol_1574049761_uploadnewsImg.jpg', '冠军周边预定', '18天后结束', '商城特惠');
INSERT INTO `hotactive` VALUES ('7', '//ossweb-img.qq.com/images/clientpop/act/lol_1574130401_uploadnewsImg.jpg', '真实伤害 奇亚娜 至臻', '3天后结束', '商城特惠');
INSERT INTO `hotactive` VALUES ('8', '//ossweb-img.qq.com/images/clientpop/act/lol_1573389217_uploadnewsImg.jpg', '真实伤害盛大登场', '已结束', '商城特惠');
INSERT INTO `hotactive` VALUES ('9', '//ossweb-img.qq.com/images/clientpop/act/lol_1571884210_uploadnewsImg.jpg', '十周年最强福利', '长期活动', '长期活动');
INSERT INTO `hotactive` VALUES ('10', '//ossweb-img.qq.com/images/clientpop/act/lol_1568051751_uploadnewsImg.jpg', '英雄联盟信誉分查询', '长期活动', '长期活动');
INSERT INTO `hotactive` VALUES ('11', '//ossweb-img.qq.com/images/clientpop/act/lol_1565318029_uploadnewsImg.jpg', '福来Day', '长期活动', '长期活动');
INSERT INTO `hotactive` VALUES ('12', '//ossweb-img.qq.com/images/clientpop/act/lol_1554279028_uploadnewsImg.jpg', '《校园解说大赛》等你发声！', '长期活动', '长期活动');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '速度之靴', 'https://game.gtimg.cn/images/lol/act/img/item/1001.png');
INSERT INTO `item` VALUES ('2', '仙女护符', 'https://game.gtimg.cn/images/lol/act/img/item/1004.png');
INSERT INTO `item` VALUES ('3', '治疗宝珠', 'https://game.gtimg.cn/images/lol/act/img/item/1006.png');
INSERT INTO `item` VALUES ('4', '巨人腰带', 'https://game.gtimg.cn/images/lol/act/img/item/1011.png');
INSERT INTO `item` VALUES ('5', '灵巧披风', 'https://game.gtimg.cn/images/lol/act/img/item/1018.png');
INSERT INTO `item` VALUES ('6', '爆裂魔杖', 'https://game.gtimg.cn/images/lol/act/img/item/1026.png');
INSERT INTO `item` VALUES ('7', '蓝水晶', 'https://game.gtimg.cn/images/lol/act/img/item/1027.png');
INSERT INTO `item` VALUES ('8', '红水晶', 'https://game.gtimg.cn/images/lol/act/img/item/1028.png');
INSERT INTO `item` VALUES ('9', '布甲', 'https://game.gtimg.cn/images/lol/act/img/item/1029.png');
INSERT INTO `item` VALUES ('10', '锁子甲', 'https://game.gtimg.cn/images/lol/act/img/item/1031.png');
INSERT INTO `item` VALUES ('11', '抗魔斗篷', 'https://game.gtimg.cn/images/lol/act/img/item/1033.png');
INSERT INTO `item` VALUES ('12', '长剑', 'https://game.gtimg.cn/images/lol/act/img/item/1036.png');
INSERT INTO `item` VALUES ('13', '十字镐', 'https://game.gtimg.cn/images/lol/act/img/item/1037.png');
INSERT INTO `item` VALUES ('14', '暴风之剑', 'https://game.gtimg.cn/images/lol/act/img/item/1038.png');
INSERT INTO `item` VALUES ('15', '猎人的护身符', 'https://game.gtimg.cn/images/lol/act/img/item/1039.png');
INSERT INTO `item` VALUES ('16', '猎人的宽刃刀', 'https://game.gtimg.cn/images/lol/act/img/item/1041.png');
INSERT INTO `item` VALUES ('17', '短剑', 'https://game.gtimg.cn/images/lol/act/img/item/1042.png');
INSERT INTO `item` VALUES ('18', '反曲之弓', 'https://game.gtimg.cn/images/lol/act/img/item/1043.png');
INSERT INTO `item` VALUES ('19', '增幅典籍', 'https://game.gtimg.cn/images/lol/act/img/item/1052.png');
INSERT INTO `item` VALUES ('20', '吸血鬼节杖', 'https://game.gtimg.cn/images/lol/act/img/item/1053.png');
INSERT INTO `item` VALUES ('21', '多兰之盾', 'https://game.gtimg.cn/images/lol/act/img/item/1054.png');
INSERT INTO `item` VALUES ('22', '多兰之刃', 'https://game.gtimg.cn/images/lol/act/img/item/1055.png');
INSERT INTO `item` VALUES ('23', '多兰之戒', 'https://game.gtimg.cn/images/lol/act/img/item/1056.png');
INSERT INTO `item` VALUES ('24', '负极斗篷', 'https://game.gtimg.cn/images/lol/act/img/item/1057.png');
INSERT INTO `item` VALUES ('25', '无用大棒', 'https://game.gtimg.cn/images/lol/act/img/item/1058.png');
INSERT INTO `item` VALUES ('26', '太空吸血鬼节杖', 'https://game.gtimg.cn/images/lol/act/img/item/1059.png');
INSERT INTO `item` VALUES ('27', '勘探者之刃', 'https://game.gtimg.cn/images/lol/act/img/item/1062.png');
INSERT INTO `item` VALUES ('28', '勘探者之戒', 'https://game.gtimg.cn/images/lol/act/img/item/1063.png');
INSERT INTO `item` VALUES ('29', '精魄之石', 'https://game.gtimg.cn/images/lol/act/img/item/1080.png');
INSERT INTO `item` VALUES ('30', '黑暗封印', 'https://game.gtimg.cn/images/lol/act/img/item/1082.png');
INSERT INTO `item` VALUES ('31', '萃取', 'https://game.gtimg.cn/images/lol/act/img/item/1083.png');
INSERT INTO `item` VALUES ('32', '附魔：喧哗', 'https://game.gtimg.cn/images/lol/act/img/item/1300.png');
INSERT INTO `item` VALUES ('33', '附魔：欢欣', 'https://game.gtimg.cn/images/lol/act/img/item/1301.png');
INSERT INTO `item` VALUES ('34', '附魔：统帅', 'https://game.gtimg.cn/images/lol/act/img/item/1302.png');
INSERT INTO `item` VALUES ('35', '附魔：失真', 'https://game.gtimg.cn/images/lol/act/img/item/1303.png');
INSERT INTO `item` VALUES ('36', '附魔：家园卫士', 'https://game.gtimg.cn/images/lol/act/img/item/1304.png');
INSERT INTO `item` VALUES ('37', '附魔：喧哗', 'https://game.gtimg.cn/images/lol/act/img/item/1305.png');
INSERT INTO `item` VALUES ('38', '附魔：欢欣', 'https://game.gtimg.cn/images/lol/act/img/item/1306.png');
INSERT INTO `item` VALUES ('39', '附魔：统帅', 'https://game.gtimg.cn/images/lol/act/img/item/1307.png');
INSERT INTO `item` VALUES ('40', '附魔：失真', 'https://game.gtimg.cn/images/lol/act/img/item/1308.png');
INSERT INTO `item` VALUES ('41', '附魔：家园卫士', 'https://game.gtimg.cn/images/lol/act/img/item/1309.png');
INSERT INTO `item` VALUES ('42', '附魔：喧哗', 'https://game.gtimg.cn/images/lol/act/img/item/1310.png');
INSERT INTO `item` VALUES ('43', '附魔：欢欣', 'https://game.gtimg.cn/images/lol/act/img/item/1311.png');
INSERT INTO `item` VALUES ('44', '附魔：统帅', 'https://game.gtimg.cn/images/lol/act/img/item/1312.png');
INSERT INTO `item` VALUES ('45', '附魔：失真', 'https://game.gtimg.cn/images/lol/act/img/item/1313.png');
INSERT INTO `item` VALUES ('46', '附魔：家园卫士', 'https://game.gtimg.cn/images/lol/act/img/item/1314.png');
INSERT INTO `item` VALUES ('47', '附魔：喧哗', 'https://game.gtimg.cn/images/lol/act/img/item/1320.png');
INSERT INTO `item` VALUES ('48', '附魔：欢欣', 'https://game.gtimg.cn/images/lol/act/img/item/1321.png');
INSERT INTO `item` VALUES ('49', '附魔：统帅', 'https://game.gtimg.cn/images/lol/act/img/item/1322.png');
INSERT INTO `item` VALUES ('50', '附魔：失真', 'https://game.gtimg.cn/images/lol/act/img/item/1323.png');
INSERT INTO `item` VALUES ('51', '附魔：家园卫士', 'https://game.gtimg.cn/images/lol/act/img/item/1324.png');
INSERT INTO `item` VALUES ('52', '附魔：喧哗', 'https://game.gtimg.cn/images/lol/act/img/item/1325.png');
INSERT INTO `item` VALUES ('53', '附魔：欢欣', 'https://game.gtimg.cn/images/lol/act/img/item/1326.png');
INSERT INTO `item` VALUES ('54', '附魔：统帅', 'https://game.gtimg.cn/images/lol/act/img/item/1327.png');
INSERT INTO `item` VALUES ('55', '附魔：失真', 'https://game.gtimg.cn/images/lol/act/img/item/1328.png');
INSERT INTO `item` VALUES ('56', '附魔：家园卫士', 'https://game.gtimg.cn/images/lol/act/img/item/1329.png');
INSERT INTO `item` VALUES ('57', '附魔：喧哗', 'https://game.gtimg.cn/images/lol/act/img/item/1330.png');
INSERT INTO `item` VALUES ('58', '附魔：欢欣', 'https://game.gtimg.cn/images/lol/act/img/item/1331.png');
INSERT INTO `item` VALUES ('59', '附魔：统帅', 'https://game.gtimg.cn/images/lol/act/img/item/1332.png');
INSERT INTO `item` VALUES ('60', '附魔：失真', 'https://game.gtimg.cn/images/lol/act/img/item/1333.png');
INSERT INTO `item` VALUES ('61', '附魔：家园卫士', 'https://game.gtimg.cn/images/lol/act/img/item/1334.png');
INSERT INTO `item` VALUES ('62', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/1400.png');
INSERT INTO `item` VALUES ('63', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/1401.png');
INSERT INTO `item` VALUES ('64', '附魔：符能回声', 'https://game.gtimg.cn/images/lol/act/img/item/1402.png');
INSERT INTO `item` VALUES ('65', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/1404.png');
INSERT INTO `item` VALUES ('66', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/1405.png');
INSERT INTO `item` VALUES ('67', '附魔：符能回声', 'https://game.gtimg.cn/images/lol/act/img/item/1406.png');
INSERT INTO `item` VALUES ('68', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/1408.png');
INSERT INTO `item` VALUES ('69', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/1409.png');
INSERT INTO `item` VALUES ('70', '附魔：符能回声', 'https://game.gtimg.cn/images/lol/act/img/item/1410.png');
INSERT INTO `item` VALUES ('71', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/1412.png');
INSERT INTO `item` VALUES ('72', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/1413.png');
INSERT INTO `item` VALUES ('73', '附魔：符能回声', 'https://game.gtimg.cn/images/lol/act/img/item/1414.png');
INSERT INTO `item` VALUES ('74', '附魔：血刃', 'https://game.gtimg.cn/images/lol/act/img/item/1416.png');
INSERT INTO `item` VALUES ('75', '附魔：血刃', 'https://game.gtimg.cn/images/lol/act/img/item/1418.png');
INSERT INTO `item` VALUES ('76', '附魔：血刃', 'https://game.gtimg.cn/images/lol/act/img/item/1419.png');
INSERT INTO `item` VALUES ('77', '生命药水', 'https://game.gtimg.cn/images/lol/act/img/item/2003.png');
INSERT INTO `item` VALUES ('78', '法力药水', 'https://game.gtimg.cn/images/lol/act/img/item/2004.png');
INSERT INTO `item` VALUES ('80', '活力夹心饼干', 'https://game.gtimg.cn/images/lol/act/img/item/2009.png');
INSERT INTO `item` VALUES ('81', '永续意志夹心饼干', 'https://game.gtimg.cn/images/lol/act/img/item/2010.png');
INSERT INTO `item` VALUES ('82', '技能合剂', 'https://game.gtimg.cn/images/lol/act/img/item/2011.png');
INSERT INTO `item` VALUES ('83', '夺来的饼干', 'https://game.gtimg.cn/images/lol/act/img/item/2012.png');
INSERT INTO `item` VALUES ('84', '夺来的神谕精粹', 'https://game.gtimg.cn/images/lol/act/img/item/2013.png');
INSERT INTO `item` VALUES ('85', '基舍艾斯碎片', 'https://game.gtimg.cn/images/lol/act/img/item/2015.png');
INSERT INTO `item` VALUES ('86', '复用型药水', 'https://game.gtimg.cn/images/lol/act/img/item/2031.png');
INSERT INTO `item` VALUES ('87', '猎人药水', 'https://game.gtimg.cn/images/lol/act/img/item/2032.png');
INSERT INTO `item` VALUES ('88', '腐败药水', 'https://game.gtimg.cn/images/lol/act/img/item/2033.png');
INSERT INTO `item` VALUES ('89', '坚韧合剂', 'https://game.gtimg.cn/images/lol/act/img/item/2037.png');
INSERT INTO `item` VALUES ('90', '智慧合剂', 'https://game.gtimg.cn/images/lol/act/img/item/2039.png');
INSERT INTO `item` VALUES ('91', '狂怒灵药', 'https://game.gtimg.cn/images/lol/act/img/item/2040.png');
INSERT INTO `item` VALUES ('92', '水晶瓶', 'https://game.gtimg.cn/images/lol/act/img/item/2041.png');
INSERT INTO `item` VALUES ('93', '先知药剂', 'https://game.gtimg.cn/images/lol/act/img/item/2042.png');
INSERT INTO `item` VALUES ('94', '真视守卫', 'https://game.gtimg.cn/images/lol/act/img/item/2043.png');
INSERT INTO `item` VALUES ('95', '野怪之眼', 'https://game.gtimg.cn/images/lol/act/img/item/2044.png');
INSERT INTO `item` VALUES ('96', '洞察红宝石', 'https://game.gtimg.cn/images/lol/act/img/item/2045.png');
INSERT INTO `item` VALUES ('97', '神谕精粹', 'https://game.gtimg.cn/images/lol/act/img/item/2047.png');
INSERT INTO `item` VALUES ('98', '启示灵药', 'https://game.gtimg.cn/images/lol/act/img/item/2048.png');
INSERT INTO `item` VALUES ('99', '洞察之石', 'https://game.gtimg.cn/images/lol/act/img/item/2049.png');
INSERT INTO `item` VALUES ('100', '探索者守卫', 'https://game.gtimg.cn/images/lol/act/img/item/2050.png');
INSERT INTO `item` VALUES ('101', '守护者号角', 'https://game.gtimg.cn/images/lol/act/img/item/2051.png');
INSERT INTO `item` VALUES ('102', '魄罗佳肴', 'https://game.gtimg.cn/images/lol/act/img/item/2052.png');
INSERT INTO `item` VALUES ('103', '特制魄罗佳肴', 'https://game.gtimg.cn/images/lol/act/img/item/2054.png');
INSERT INTO `item` VALUES ('104', '控制守卫', 'https://game.gtimg.cn/images/lol/act/img/item/2055.png');
INSERT INTO `item` VALUES ('105', '窃来的侦查守卫', 'https://game.gtimg.cn/images/lol/act/img/item/2056.png');
INSERT INTO `item` VALUES ('106', '微现的远见守卫', 'https://game.gtimg.cn/images/lol/act/img/item/2057.png');
INSERT INTO `item` VALUES ('107', '旅行款合剂：钢铁', 'https://game.gtimg.cn/images/lol/act/img/item/2058.png');
INSERT INTO `item` VALUES ('108', '旅行款合剂：巫术', 'https://game.gtimg.cn/images/lol/act/img/item/2059.png');
INSERT INTO `item` VALUES ('109', '旅行款合剂：愤怒', 'https://game.gtimg.cn/images/lol/act/img/item/2060.png');
INSERT INTO `item` VALUES ('110', '窃来的生命药水', 'https://game.gtimg.cn/images/lol/act/img/item/2061.png');
INSERT INTO `item` VALUES ('111', '窃来的侠盗药水', 'https://game.gtimg.cn/images/lol/act/img/item/2062.png');
INSERT INTO `item` VALUES ('112', '舒瑞娅的狂想曲', 'https://game.gtimg.cn/images/lol/act/img/item/2065.png');
INSERT INTO `item` VALUES ('113', '废墟合剂', 'https://game.gtimg.cn/images/lol/act/img/item/2137.png');
INSERT INTO `item` VALUES ('114', '钢铁合剂', 'https://game.gtimg.cn/images/lol/act/img/item/2138.png');
INSERT INTO `item` VALUES ('115', '巫术合剂', 'https://game.gtimg.cn/images/lol/act/img/item/2139.png');
INSERT INTO `item` VALUES ('116', '愤怒合剂', 'https://game.gtimg.cn/images/lol/act/img/item/2140.png');
INSERT INTO `item` VALUES ('117', '守望之眼', 'https://game.gtimg.cn/images/lol/act/img/item/2301.png');
INSERT INTO `item` VALUES ('118', '绿洲之眼', 'https://game.gtimg.cn/images/lol/act/img/item/2302.png');
INSERT INTO `item` VALUES ('119', '季分之眼', 'https://game.gtimg.cn/images/lol/act/img/item/2303.png');
INSERT INTO `item` VALUES ('120', '黄金福袋', 'https://game.gtimg.cn/images/lol/act/img/item/2319.png');
INSERT INTO `item` VALUES ('121', '小兵去质器', 'https://game.gtimg.cn/images/lol/act/img/item/2403.png');
INSERT INTO `item` VALUES ('122', '始动的秒表', 'https://game.gtimg.cn/images/lol/act/img/item/2419.png');
INSERT INTO `item` VALUES ('123', '秒表', 'https://game.gtimg.cn/images/lol/act/img/item/2420.png');
INSERT INTO `item` VALUES ('124', '破损的秒表', 'https://game.gtimg.cn/images/lol/act/img/item/2421.png');
INSERT INTO `item` VALUES ('125', '有点神奇之靴', 'https://game.gtimg.cn/images/lol/act/img/item/2422.png');
INSERT INTO `item` VALUES ('126', '秒表', 'https://game.gtimg.cn/images/lol/act/img/item/2423.png');
INSERT INTO `item` VALUES ('127', '破损的秒表', 'https://game.gtimg.cn/images/lol/act/img/item/2424.png');
INSERT INTO `item` VALUES ('128', '深渊面具', 'https://game.gtimg.cn/images/lol/act/img/item/3001.png');
INSERT INTO `item` VALUES ('129', '大天使之杖', 'https://game.gtimg.cn/images/lol/act/img/item/3003.png');
INSERT INTO `item` VALUES ('130', '魔宗', 'https://game.gtimg.cn/images/lol/act/img/item/3004.png');
INSERT INTO `item` VALUES ('131', '阿塔玛的清算', 'https://game.gtimg.cn/images/lol/act/img/item/3005.png');
INSERT INTO `item` VALUES ('132', '狂战士胫甲', 'https://game.gtimg.cn/images/lol/act/img/item/3006.png');
INSERT INTO `item` VALUES ('133', '大天使之杖（快速充能）', 'https://game.gtimg.cn/images/lol/act/img/item/3007.png');
INSERT INTO `item` VALUES ('134', '魔宗（快速充能）', 'https://game.gtimg.cn/images/lol/act/img/item/3008.png');
INSERT INTO `item` VALUES ('135', '轻灵之靴', 'https://game.gtimg.cn/images/lol/act/img/item/3009.png');
INSERT INTO `item` VALUES ('136', '万世催化石', 'https://game.gtimg.cn/images/lol/act/img/item/3010.png');
INSERT INTO `item` VALUES ('137', '法师之靴', 'https://game.gtimg.cn/images/lol/act/img/item/3020.png');
INSERT INTO `item` VALUES ('138', '冰霜之锤', 'https://game.gtimg.cn/images/lol/act/img/item/3022.png');
INSERT INTO `item` VALUES ('139', '双生暗影', 'https://game.gtimg.cn/images/lol/act/img/item/3023.png');
INSERT INTO `item` VALUES ('140', '冰川护甲', 'https://game.gtimg.cn/images/lol/act/img/item/3024.png');
INSERT INTO `item` VALUES ('141', '冰脉护手', 'https://game.gtimg.cn/images/lol/act/img/item/3025.png');
INSERT INTO `item` VALUES ('142', '守护天使', 'https://game.gtimg.cn/images/lol/act/img/item/3026.png');
INSERT INTO `item` VALUES ('143', '时光之杖', 'https://game.gtimg.cn/images/lol/act/img/item/3027.png');
INSERT INTO `item` VALUES ('144', '和谐圣杯', 'https://game.gtimg.cn/images/lol/act/img/item/3028.png');
INSERT INTO `item` VALUES ('145', '时光之杖（快速充能）', 'https://game.gtimg.cn/images/lol/act/img/item/3029.png');
INSERT INTO `item` VALUES ('146', '海克斯科技GLP-800', 'https://game.gtimg.cn/images/lol/act/img/item/3030.png');
INSERT INTO `item` VALUES ('147', '无尽之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3031.png');
INSERT INTO `item` VALUES ('148', '凡性的提醒', 'https://game.gtimg.cn/images/lol/act/img/item/3033.png');
INSERT INTO `item` VALUES ('149', '巨人杀手', 'https://game.gtimg.cn/images/lol/act/img/item/3034.png');
INSERT INTO `item` VALUES ('150', '最后的轻语', 'https://game.gtimg.cn/images/lol/act/img/item/3035.png');
INSERT INTO `item` VALUES ('151', '多米尼克领主的致意', 'https://game.gtimg.cn/images/lol/act/img/item/3036.png');
INSERT INTO `item` VALUES ('152', '炽天使之拥', 'https://game.gtimg.cn/images/lol/act/img/item/3040.png');
INSERT INTO `item` VALUES ('153', '梅贾的窃魂卷', 'https://game.gtimg.cn/images/lol/act/img/item/3041.png');
INSERT INTO `item` VALUES ('154', '魔切', 'https://game.gtimg.cn/images/lol/act/img/item/3042.png');
INSERT INTO `item` VALUES ('155', '魔切', 'https://game.gtimg.cn/images/lol/act/img/item/3043.png');
INSERT INTO `item` VALUES ('156', '净蚀', 'https://game.gtimg.cn/images/lol/act/img/item/3044.png');
INSERT INTO `item` VALUES ('157', '幻影之舞', 'https://game.gtimg.cn/images/lol/act/img/item/3046.png');
INSERT INTO `item` VALUES ('158', '忍者足具', 'https://game.gtimg.cn/images/lol/act/img/item/3047.png');
INSERT INTO `item` VALUES ('159', '炽天使之拥', 'https://game.gtimg.cn/images/lol/act/img/item/3048.png');
INSERT INTO `item` VALUES ('160', '基克的聚合', 'https://game.gtimg.cn/images/lol/act/img/item/3050.png');
INSERT INTO `item` VALUES ('161', '紫雨林之拳', 'https://game.gtimg.cn/images/lol/act/img/item/3052.png');
INSERT INTO `item` VALUES ('162', '斯特拉克的挑战护手', 'https://game.gtimg.cn/images/lol/act/img/item/3053.png');
INSERT INTO `item` VALUES ('163', '耀光', 'https://game.gtimg.cn/images/lol/act/img/item/3057.png');
INSERT INTO `item` VALUES ('164', '号令之旗', 'https://game.gtimg.cn/images/lol/act/img/item/3060.png');
INSERT INTO `item` VALUES ('165', '振奋盔甲', 'https://game.gtimg.cn/images/lol/act/img/item/3065.png');
INSERT INTO `item` VALUES ('166', '燃烧宝石', 'https://game.gtimg.cn/images/lol/act/img/item/3067.png');
INSERT INTO `item` VALUES ('167', '日炎斗篷', 'https://game.gtimg.cn/images/lol/act/img/item/3068.png');
INSERT INTO `item` VALUES ('168', '飞升残存物', 'https://game.gtimg.cn/images/lol/act/img/item/3069.png');
INSERT INTO `item` VALUES ('169', '女神之泪', 'https://game.gtimg.cn/images/lol/act/img/item/3070.png');
INSERT INTO `item` VALUES ('170', '黑色切割者', 'https://game.gtimg.cn/images/lol/act/img/item/3071.png');
INSERT INTO `item` VALUES ('171', '饮血剑', 'https://game.gtimg.cn/images/lol/act/img/item/3072.png');
INSERT INTO `item` VALUES ('172', '女神之泪（快速充能）', 'https://game.gtimg.cn/images/lol/act/img/item/3073.png');
INSERT INTO `item` VALUES ('173', '贪欲九头蛇', 'https://game.gtimg.cn/images/lol/act/img/item/3074.png');
INSERT INTO `item` VALUES ('174', '荆棘之甲', 'https://game.gtimg.cn/images/lol/act/img/item/3075.png');
INSERT INTO `item` VALUES ('175', '棘刺背心', 'https://game.gtimg.cn/images/lol/act/img/item/3076.png');
INSERT INTO `item` VALUES ('176', '提亚马特', 'https://game.gtimg.cn/images/lol/act/img/item/3077.png');
INSERT INTO `item` VALUES ('177', '三相之力', 'https://game.gtimg.cn/images/lol/act/img/item/3078.png');
INSERT INTO `item` VALUES ('178', '太空饮血剑', 'https://game.gtimg.cn/images/lol/act/img/item/3080.png');
INSERT INTO `item` VALUES ('179', '守望者铠甲', 'https://game.gtimg.cn/images/lol/act/img/item/3082.png');
INSERT INTO `item` VALUES ('180', '狂徒铠甲', 'https://game.gtimg.cn/images/lol/act/img/item/3083.png');
INSERT INTO `item` VALUES ('181', '霸王血铠', 'https://game.gtimg.cn/images/lol/act/img/item/3084.png');
INSERT INTO `item` VALUES ('182', '卢安娜的飓风', 'https://game.gtimg.cn/images/lol/act/img/item/3085.png');
INSERT INTO `item` VALUES ('183', '狂热', 'https://game.gtimg.cn/images/lol/act/img/item/3086.png');
INSERT INTO `item` VALUES ('184', '斯塔缇克电刃', 'https://game.gtimg.cn/images/lol/act/img/item/3087.png');
INSERT INTO `item` VALUES ('185', '灭世者的死亡之帽', 'https://game.gtimg.cn/images/lol/act/img/item/3089.png');
INSERT INTO `item` VALUES ('186', '沃格勒特的巫师帽', 'https://game.gtimg.cn/images/lol/act/img/item/3090.png');
INSERT INTO `item` VALUES ('187', '智慧末刃', 'https://game.gtimg.cn/images/lol/act/img/item/3091.png');
INSERT INTO `item` VALUES ('188', '监视残存物', 'https://game.gtimg.cn/images/lol/act/img/item/3092.png');
INSERT INTO `item` VALUES ('189', '贪婪之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3093.png');
INSERT INTO `item` VALUES ('190', '疾射火炮', 'https://game.gtimg.cn/images/lol/act/img/item/3094.png');
INSERT INTO `item` VALUES ('191', '岚切', 'https://game.gtimg.cn/images/lol/act/img/item/3095.png');
INSERT INTO `item` VALUES ('192', '游牧民印章', 'https://game.gtimg.cn/images/lol/act/img/item/3096.png');
INSERT INTO `item` VALUES ('193', '巨神峰之擎', 'https://game.gtimg.cn/images/lol/act/img/item/3097.png');
INSERT INTO `item` VALUES ('194', '冰霜之牙', 'https://game.gtimg.cn/images/lol/act/img/item/3098.png');
INSERT INTO `item` VALUES ('195', '巫妖之祸', 'https://game.gtimg.cn/images/lol/act/img/item/3100.png');
INSERT INTO `item` VALUES ('196', '蜂刺', 'https://game.gtimg.cn/images/lol/act/img/item/3101.png');
INSERT INTO `item` VALUES ('197', '女妖面纱', 'https://game.gtimg.cn/images/lol/act/img/item/3102.png');
INSERT INTO `item` VALUES ('198', '范达姆领主的劫掠者', 'https://game.gtimg.cn/images/lol/act/img/item/3104.png');
INSERT INTO `item` VALUES ('199', '军团圣盾', 'https://game.gtimg.cn/images/lol/act/img/item/3105.png');
INSERT INTO `item` VALUES ('200', '救赎', 'https://game.gtimg.cn/images/lol/act/img/item/3107.png');
INSERT INTO `item` VALUES ('201', '恶魔法典', 'https://game.gtimg.cn/images/lol/act/img/item/3108.png');
INSERT INTO `item` VALUES ('202', '骑士之誓', 'https://game.gtimg.cn/images/lol/act/img/item/3109.png');
INSERT INTO `item` VALUES ('203', '冰霜之心', 'https://game.gtimg.cn/images/lol/act/img/item/3110.png');
INSERT INTO `item` VALUES ('204', '水银之靴', 'https://game.gtimg.cn/images/lol/act/img/item/3111.png');
INSERT INTO `item` VALUES ('205', '守护者法球', 'https://game.gtimg.cn/images/lol/act/img/item/3112.png');
INSERT INTO `item` VALUES ('206', '以太精魂', 'https://game.gtimg.cn/images/lol/act/img/item/3113.png');
INSERT INTO `item` VALUES ('207', '禁忌雕像', 'https://game.gtimg.cn/images/lol/act/img/item/3114.png');
INSERT INTO `item` VALUES ('208', '纳什之牙', 'https://game.gtimg.cn/images/lol/act/img/item/3115.png');
INSERT INTO `item` VALUES ('209', '瑞莱的冰晶节杖', 'https://game.gtimg.cn/images/lol/act/img/item/3116.png');
INSERT INTO `item` VALUES ('210', '疾行之靴', 'https://game.gtimg.cn/images/lol/act/img/item/3117.png');
INSERT INTO `item` VALUES ('211', '太空骑士之誓', 'https://game.gtimg.cn/images/lol/act/img/item/3118.png');
INSERT INTO `item` VALUES ('212', '卑劣手斧', 'https://game.gtimg.cn/images/lol/act/img/item/3122.png');
INSERT INTO `item` VALUES ('213', '死刑宣告', 'https://game.gtimg.cn/images/lol/act/img/item/3123.png');
INSERT INTO `item` VALUES ('214', '鬼索的狂暴之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3124.png');
INSERT INTO `item` VALUES ('215', '冥火之拥', 'https://game.gtimg.cn/images/lol/act/img/item/3128.png');
INSERT INTO `item` VALUES ('216', '神圣之剑', 'https://game.gtimg.cn/images/lol/act/img/item/3131.png');
INSERT INTO `item` VALUES ('217', '考尔菲德的战锤', 'https://game.gtimg.cn/images/lol/act/img/item/3133.png');
INSERT INTO `item` VALUES ('218', '锯齿短匕', 'https://game.gtimg.cn/images/lol/act/img/item/3134.png');
INSERT INTO `item` VALUES ('219', '虚空之杖', 'https://game.gtimg.cn/images/lol/act/img/item/3135.png');
INSERT INTO `item` VALUES ('220', '幽魂面具', 'https://game.gtimg.cn/images/lol/act/img/item/3136.png');
INSERT INTO `item` VALUES ('221', '苦行僧之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3137.png');
INSERT INTO `item` VALUES ('222', '水银弯刀', 'https://game.gtimg.cn/images/lol/act/img/item/3139.png');
INSERT INTO `item` VALUES ('223', '水银饰带', 'https://game.gtimg.cn/images/lol/act/img/item/3140.png');
INSERT INTO `item` VALUES ('224', '神秘之剑', 'https://game.gtimg.cn/images/lol/act/img/item/3141.png');
INSERT INTO `item` VALUES ('225', '幽梦之魂', 'https://game.gtimg.cn/images/lol/act/img/item/3142.png');
INSERT INTO `item` VALUES ('226', '兰顿之兆', 'https://game.gtimg.cn/images/lol/act/img/item/3143.png');
INSERT INTO `item` VALUES ('227', '比尔吉沃特弯刀', 'https://game.gtimg.cn/images/lol/act/img/item/3144.png');
INSERT INTO `item` VALUES ('228', '海克斯科技左轮枪', 'https://game.gtimg.cn/images/lol/act/img/item/3145.png');
INSERT INTO `item` VALUES ('229', '海克斯科技枪刃', 'https://game.gtimg.cn/images/lol/act/img/item/3146.png');
INSERT INTO `item` VALUES ('230', '德拉克萨的暮刃', 'https://game.gtimg.cn/images/lol/act/img/item/3147.png');
INSERT INTO `item` VALUES ('231', '太空海克斯科技枪刃', 'https://game.gtimg.cn/images/lol/act/img/item/3148.png');
INSERT INTO `item` VALUES ('232', '太空破败王者之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3149.png');
INSERT INTO `item` VALUES ('233', '兰德里的折磨', 'https://game.gtimg.cn/images/lol/act/img/item/3151.png');
INSERT INTO `item` VALUES ('234', '海克斯科技原型腰带-01', 'https://game.gtimg.cn/images/lol/act/img/item/3152.png');
INSERT INTO `item` VALUES ('235', '破败王者之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3153.png');
INSERT INTO `item` VALUES ('236', '瑞格之灯', 'https://game.gtimg.cn/images/lol/act/img/item/3154.png');
INSERT INTO `item` VALUES ('237', '海克斯饮魔刀', 'https://game.gtimg.cn/images/lol/act/img/item/3155.png');
INSERT INTO `item` VALUES ('238', '玛莫提乌斯之噬', 'https://game.gtimg.cn/images/lol/act/img/item/3156.png');
INSERT INTO `item` VALUES ('239', '中娅沙漏', 'https://game.gtimg.cn/images/lol/act/img/item/3157.png');
INSERT INTO `item` VALUES ('240', '明朗之靴', 'https://game.gtimg.cn/images/lol/act/img/item/3158.png');
INSERT INTO `item` VALUES ('241', '基渣的幽魂之灯', 'https://game.gtimg.cn/images/lol/act/img/item/3159.png');
INSERT INTO `item` VALUES ('242', '烈焰之炬', 'https://game.gtimg.cn/images/lol/act/img/item/3160.png');
INSERT INTO `item` VALUES ('243', '太空比尔吉沃特弯刀', 'https://game.gtimg.cn/images/lol/act/img/item/3162.png');
INSERT INTO `item` VALUES ('244', '太空玛莫提乌斯之噬', 'https://game.gtimg.cn/images/lol/act/img/item/3163.png');
INSERT INTO `item` VALUES ('245', '莫雷洛秘典', 'https://game.gtimg.cn/images/lol/act/img/item/3165.png');
INSERT INTO `item` VALUES ('246', '月华咒刃', 'https://game.gtimg.cn/images/lol/act/img/item/3170.png');
INSERT INTO `item` VALUES ('247', '灵风', 'https://game.gtimg.cn/images/lol/act/img/item/3172.png');
INSERT INTO `item` VALUES ('248', '太空明朗之靴', 'https://game.gtimg.cn/images/lol/act/img/item/3173.png');
INSERT INTO `item` VALUES ('249', '雅典娜的邪恶圣杯', 'https://game.gtimg.cn/images/lol/act/img/item/3174.png');
INSERT INTO `item` VALUES ('250', '卡兹克的头颅', 'https://game.gtimg.cn/images/lol/act/img/item/3175.png');
INSERT INTO `item` VALUES ('252', '奥黛恩的面纱', 'https://game.gtimg.cn/images/lol/act/img/item/3180.png');
INSERT INTO `item` VALUES ('253', '血色之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3181.png');
INSERT INTO `item` VALUES ('254', '守护者战锤', 'https://game.gtimg.cn/images/lol/act/img/item/3184.png');
INSERT INTO `item` VALUES ('255', '光明使者', 'https://game.gtimg.cn/images/lol/act/img/item/3185.png');
INSERT INTO `item` VALUES ('256', '吉泰的夺命剃刀', 'https://game.gtimg.cn/images/lol/act/img/item/3186.png');
INSERT INTO `item` VALUES ('257', '奥术探测器', 'https://game.gtimg.cn/images/lol/act/img/item/3187.png');
INSERT INTO `item` VALUES ('258', '黯炎火炬', 'https://game.gtimg.cn/images/lol/act/img/item/3188.png');
INSERT INTO `item` VALUES ('259', '钢铁烈阳之匣', 'https://game.gtimg.cn/images/lol/act/img/item/3190.png');
INSERT INTO `item` VALUES ('260', '探索者的护臂', 'https://game.gtimg.cn/images/lol/act/img/item/3191.png');
INSERT INTO `item` VALUES ('261', '石像鬼石板甲', 'https://game.gtimg.cn/images/lol/act/img/item/3193.png');
INSERT INTO `item` VALUES ('262', '适应性头盔', 'https://game.gtimg.cn/images/lol/act/img/item/3194.png');
INSERT INTO `item` VALUES ('263', '海克斯核心mk-1型', 'https://game.gtimg.cn/images/lol/act/img/item/3196.png');
INSERT INTO `item` VALUES ('264', '海克斯核心mk-2型', 'https://game.gtimg.cn/images/lol/act/img/item/3197.png');
INSERT INTO `item` VALUES ('265', '完美海克斯核心', 'https://game.gtimg.cn/images/lol/act/img/item/3198.png');
INSERT INTO `item` VALUES ('266', '海克斯核心原型', 'https://game.gtimg.cn/images/lol/act/img/item/3200.png');
INSERT INTO `item` VALUES ('267', '尖刺外套', 'https://game.gtimg.cn/images/lol/act/img/item/3204.png');
INSERT INTO `item` VALUES ('268', '尖刺外套', 'https://game.gtimg.cn/images/lol/act/img/item/3205.png');
INSERT INTO `item` VALUES ('269', '破碎幽灵之精魄', 'https://game.gtimg.cn/images/lol/act/img/item/3206.png');
INSERT INTO `item` VALUES ('270', '远古魔像之精魄', 'https://game.gtimg.cn/images/lol/act/img/item/3207.png');
INSERT INTO `item` VALUES ('271', '远古魔像之精魄', 'https://game.gtimg.cn/images/lol/act/img/item/3208.png');
INSERT INTO `item` VALUES ('272', '蜥蜴长老之精魄', 'https://game.gtimg.cn/images/lol/act/img/item/3209.png');
INSERT INTO `item` VALUES ('273', '幽魂斗篷', 'https://game.gtimg.cn/images/lol/act/img/item/3211.png');
INSERT INTO `item` VALUES ('274', '米凯尔的坩埚', 'https://game.gtimg.cn/images/lol/act/img/item/3222.png');
INSERT INTO `item` VALUES ('275', '太空贪欲九头蛇', 'https://game.gtimg.cn/images/lol/act/img/item/3230.png');
INSERT INTO `item` VALUES ('276', '太空水银弯刀', 'https://game.gtimg.cn/images/lol/act/img/item/3231.png');
INSERT INTO `item` VALUES ('277', '附魔：喧哗', 'https://game.gtimg.cn/images/lol/act/img/item/3240.png');
INSERT INTO `item` VALUES ('278', '附魔：欢欣', 'https://game.gtimg.cn/images/lol/act/img/item/3241.png');
INSERT INTO `item` VALUES ('279', '附魔：统帅', 'https://game.gtimg.cn/images/lol/act/img/item/3242.png');
INSERT INTO `item` VALUES ('280', '附魔：失真', 'https://game.gtimg.cn/images/lol/act/img/item/3243.png');
INSERT INTO `item` VALUES ('281', '附魔：家园卫士', 'https://game.gtimg.cn/images/lol/act/img/item/3244.png');
INSERT INTO `item` VALUES ('282', '偷猎者的短匕', 'https://game.gtimg.cn/images/lol/act/img/item/3252.png');
INSERT INTO `item` VALUES ('283', '卢登的回声', 'https://game.gtimg.cn/images/lol/act/img/item/3285.png');
INSERT INTO `item` VALUES ('284', '卢登的回声', 'https://game.gtimg.cn/images/lol/act/img/item/3286.png');
INSERT INTO `item` VALUES ('285', '双生暗影', 'https://game.gtimg.cn/images/lol/act/img/item/3290.png');
INSERT INTO `item` VALUES ('286', '上古钱币', 'https://game.gtimg.cn/images/lol/act/img/item/3301.png');
INSERT INTO `item` VALUES ('287', '圣物之盾', 'https://game.gtimg.cn/images/lol/act/img/item/3302.png');
INSERT INTO `item` VALUES ('294', '陈旧的山岳之容', 'https://game.gtimg.cn/images/lol/act/img/item/3309.png');
INSERT INTO `item` VALUES ('295', '陈旧的窃法之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3310.png');
INSERT INTO `item` VALUES ('296', '陈旧的冰霜之牙', 'https://game.gtimg.cn/images/lol/act/img/item/3311.png');
INSERT INTO `item` VALUES ('297', '陈旧的冰霜女皇的旨令', 'https://game.gtimg.cn/images/lol/act/img/item/3312.png');
INSERT INTO `item` VALUES ('298', '监视图腾（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3340.png');
INSERT INTO `item` VALUES ('299', '扫描透镜（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3341.png');
INSERT INTO `item` VALUES ('300', '占卜宝珠（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3342.png');
INSERT INTO `item` VALUES ('301', '灵魂之锚', 'https://game.gtimg.cn/images/lol/act/img/item/3345.png');
INSERT INTO `item` VALUES ('302', '奥术探测器', 'https://game.gtimg.cn/images/lol/act/img/item/3348.png');
INSERT INTO `item` VALUES ('303', '高级图腾（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3350.png');
INSERT INTO `item` VALUES ('304', '高级透镜（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3351.png');
INSERT INTO `item` VALUES ('305', '高级透镜（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3352.png');
INSERT INTO `item` VALUES ('306', '高级侦查图腾（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3361.png');
INSERT INTO `item` VALUES ('307', '高级真视图腾（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3362.png');
INSERT INTO `item` VALUES ('308', '远见改造', 'https://game.gtimg.cn/images/lol/act/img/item/3363.png');
INSERT INTO `item` VALUES ('309', '神谕透镜', 'https://game.gtimg.cn/images/lol/act/img/item/3364.png');
INSERT INTO `item` VALUES ('310', '熔火之刃', 'https://game.gtimg.cn/images/lol/act/img/item/3371.png');
INSERT INTO `item` VALUES ('311', '炉火斗篷', 'https://game.gtimg.cn/images/lol/act/img/item/3373.png');
INSERT INTO `item` VALUES ('312', '灭世者的死亡之冠', 'https://game.gtimg.cn/images/lol/act/img/item/3374.png');
INSERT INTO `item` VALUES ('313', '炼狱面具', 'https://game.gtimg.cn/images/lol/act/img/item/3379.png');
INSERT INTO `item` VALUES ('314', '黑曜切割者', 'https://game.gtimg.cn/images/lol/act/img/item/3380.png');
INSERT INTO `item` VALUES ('315', '拯救', 'https://game.gtimg.cn/images/lol/act/img/item/3382.png');
INSERT INTO `item` VALUES ('316', '钢铁烈阳之环', 'https://game.gtimg.cn/images/lol/act/img/item/3383.png');
INSERT INTO `item` VALUES ('317', '三相之融', 'https://game.gtimg.cn/images/lol/act/img/item/3384.png');
INSERT INTO `item` VALUES ('318', '沃格勒特的巫师冠', 'https://game.gtimg.cn/images/lol/act/img/item/3385.png');
INSERT INTO `item` VALUES ('319', '中娅悖论', 'https://game.gtimg.cn/images/lol/act/img/item/3386.png');
INSERT INTO `item` VALUES ('320', '冰霜之拳', 'https://game.gtimg.cn/images/lol/act/img/item/3387.png');
INSERT INTO `item` VALUES ('321', '幽梦之魂', 'https://game.gtimg.cn/images/lol/act/img/item/3388.png');
INSERT INTO `item` VALUES ('322', '破败王者之力', 'https://game.gtimg.cn/images/lol/act/img/item/3389.png');
INSERT INTO `item` VALUES ('323', '卢登的脉冲', 'https://game.gtimg.cn/images/lol/act/img/item/3390.png');
INSERT INTO `item` VALUES ('324', '“你也有份”', 'https://game.gtimg.cn/images/lol/act/img/item/3400.png');
INSERT INTO `item` VALUES ('325', '星灵残存物', 'https://game.gtimg.cn/images/lol/act/img/item/3401.png');
INSERT INTO `item` VALUES ('326', '卡兹克的头颅', 'https://game.gtimg.cn/images/lol/act/img/item/3410.png');
INSERT INTO `item` VALUES ('327', '卡兹克的头颅', 'https://game.gtimg.cn/images/lol/act/img/item/3416.png');
INSERT INTO `item` VALUES ('328', '卡兹克的头颅', 'https://game.gtimg.cn/images/lol/act/img/item/3422.png');
INSERT INTO `item` VALUES ('329', '卡兹克的头颅', 'https://game.gtimg.cn/images/lol/act/img/item/3455.png');
INSERT INTO `item` VALUES ('330', '金色传送器', 'https://game.gtimg.cn/images/lol/act/img/item/3460.png');
INSERT INTO `item` VALUES ('331', '金色传送器（已禁用）', 'https://game.gtimg.cn/images/lol/act/img/item/3461.png');
INSERT INTO `item` VALUES ('332', '观测之石（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3462.png');
INSERT INTO `item` VALUES ('333', '炽热香炉', 'https://game.gtimg.cn/images/lol/act/img/item/3504.png');
INSERT INTO `item` VALUES ('334', '夺萃之镰', 'https://game.gtimg.cn/images/lol/act/img/item/3508.png');
INSERT INTO `item` VALUES ('335', '先锋之眼', 'https://game.gtimg.cn/images/lol/act/img/item/3513.png');
INSERT INTO `item` VALUES ('336', '先锋之眼', 'https://game.gtimg.cn/images/lol/act/img/item/3514.png');
INSERT INTO `item` VALUES ('337', '幽灵魄罗', 'https://game.gtimg.cn/images/lol/act/img/item/3520.png');
INSERT INTO `item` VALUES ('338', '黑色长矛', 'https://game.gtimg.cn/images/lol/act/img/item/3599.png');
INSERT INTO `item` VALUES ('339', '攻城传送', 'https://game.gtimg.cn/images/lol/act/img/item/3630.png');
INSERT INTO `item` VALUES ('340', '攻城弩炮', 'https://game.gtimg.cn/images/lol/act/img/item/3631.png');
INSERT INTO `item` VALUES ('341', '攻城传送', 'https://game.gtimg.cn/images/lol/act/img/item/3633.png');
INSERT INTO `item` VALUES ('342', '防御塔：灭绝光线', 'https://game.gtimg.cn/images/lol/act/img/item/3634.png');
INSERT INTO `item` VALUES ('343', '传送坪', 'https://game.gtimg.cn/images/lol/act/img/item/3635.png');
INSERT INTO `item` VALUES ('344', '防御塔：风暴壁垒', 'https://game.gtimg.cn/images/lol/act/img/item/3636.png');
INSERT INTO `item` VALUES ('345', '枢纽攻防战：围城武器栏', 'https://game.gtimg.cn/images/lol/act/img/item/3637.png');
INSERT INTO `item` VALUES ('346', '闪现地带', 'https://game.gtimg.cn/images/lol/act/img/item/3640.png');
INSERT INTO `item` VALUES ('347', '先锋战旗', 'https://game.gtimg.cn/images/lol/act/img/item/3641.png');
INSERT INTO `item` VALUES ('348', '围城武器返还', 'https://game.gtimg.cn/images/lol/act/img/item/3642.png');
INSERT INTO `item` VALUES ('349', '热寂领域', 'https://game.gtimg.cn/images/lol/act/img/item/3643.png');
INSERT INTO `item` VALUES ('350', '观测之石（饰品）', 'https://game.gtimg.cn/images/lol/act/img/item/3645.png');
INSERT INTO `item` VALUES ('351', '护盾图腾', 'https://game.gtimg.cn/images/lol/act/img/item/3647.png');
INSERT INTO `item` VALUES ('352', '攻城传送（休眠）', 'https://game.gtimg.cn/images/lol/act/img/item/3648.png');
INSERT INTO `item` VALUES ('353', '围城视野守卫', 'https://game.gtimg.cn/images/lol/act/img/item/3649.png');
INSERT INTO `item` VALUES ('354', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/3671.png');
INSERT INTO `item` VALUES ('355', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/3672.png');
INSERT INTO `item` VALUES ('356', '附魔：符能回声', 'https://game.gtimg.cn/images/lol/act/img/item/3673.png');
INSERT INTO `item` VALUES ('357', '附魔：血刃', 'https://game.gtimg.cn/images/lol/act/img/item/3675.png');
INSERT INTO `item` VALUES ('358', '覆霜佳肴', 'https://game.gtimg.cn/images/lol/act/img/item/3680.png');
INSERT INTO `item` VALUES ('359', '超辣佳肴', 'https://game.gtimg.cn/images/lol/act/img/item/3681.png');
INSERT INTO `item` VALUES ('360', '浓缩佳肴', 'https://game.gtimg.cn/images/lol/act/img/item/3682.png');
INSERT INTO `item` VALUES ('361', '彩虹佳肴派对套餐！', 'https://game.gtimg.cn/images/lol/act/img/item/3683.png');
INSERT INTO `item` VALUES ('362', '星界枷锁', 'https://game.gtimg.cn/images/lol/act/img/item/3690.png');
INSERT INTO `item` VALUES ('363', '奇点灯笼', 'https://game.gtimg.cn/images/lol/act/img/item/3691.png');
INSERT INTO `item` VALUES ('364', '暗物质镰刀', 'https://game.gtimg.cn/images/lol/act/img/item/3692.png');
INSERT INTO `item` VALUES ('365', '引力靴', 'https://game.gtimg.cn/images/lol/act/img/item/3693.png');
INSERT INTO `item` VALUES ('366', '群星斗篷', 'https://game.gtimg.cn/images/lol/act/img/item/3694.png');
INSERT INTO `item` VALUES ('367', '死兆星魔印', 'https://game.gtimg.cn/images/lol/act/img/item/3695.png');
INSERT INTO `item` VALUES ('368', '追猎者的刀锋', 'https://game.gtimg.cn/images/lol/act/img/item/3706.png');
INSERT INTO `item` VALUES ('369', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/3707.png');
INSERT INTO `item` VALUES ('370', '附魔：符文阔剑', 'https://game.gtimg.cn/images/lol/act/img/item/3708.png');
INSERT INTO `item` VALUES ('371', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/3709.png');
INSERT INTO `item` VALUES ('372', '追踪者的匕首', 'https://game.gtimg.cn/images/lol/act/img/item/3711.png');
INSERT INTO `item` VALUES ('373', '巡林者的利器', 'https://game.gtimg.cn/images/lol/act/img/item/3713.png');
INSERT INTO `item` VALUES ('374', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/3714.png');
INSERT INTO `item` VALUES ('375', '游击者的军刀', 'https://game.gtimg.cn/images/lol/act/img/item/3715.png');
INSERT INTO `item` VALUES ('376', '附魔：符文阔剑', 'https://game.gtimg.cn/images/lol/act/img/item/3716.png');
INSERT INTO `item` VALUES ('377', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/3717.png');
INSERT INTO `item` VALUES ('378', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/3719.png');
INSERT INTO `item` VALUES ('379', '附魔：符文阔剑', 'https://game.gtimg.cn/images/lol/act/img/item/3720.png');
INSERT INTO `item` VALUES ('380', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/3721.png');
INSERT INTO `item` VALUES ('381', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/3723.png');
INSERT INTO `item` VALUES ('382', '附魔：符文阔剑', 'https://game.gtimg.cn/images/lol/act/img/item/3724.png');
INSERT INTO `item` VALUES ('383', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/3725.png');
INSERT INTO `item` VALUES ('384', '亡者的板甲', 'https://game.gtimg.cn/images/lol/act/img/item/3742.png');
INSERT INTO `item` VALUES ('385', '流水之杖', 'https://game.gtimg.cn/images/lol/act/img/item/3744.png');
INSERT INTO `item` VALUES ('386', '巨型九头蛇', 'https://game.gtimg.cn/images/lol/act/img/item/3748.png');
INSERT INTO `item` VALUES ('387', '斑比的熔渣', 'https://game.gtimg.cn/images/lol/act/img/item/3751.png');
INSERT INTO `item` VALUES ('388', '正义荣耀', 'https://game.gtimg.cn/images/lol/act/img/item/3800.png');
INSERT INTO `item` VALUES ('389', '晶体护腕', 'https://game.gtimg.cn/images/lol/act/img/item/3801.png');
INSERT INTO `item` VALUES ('390', '遗失的章节', 'https://game.gtimg.cn/images/lol/act/img/item/3802.png');
INSERT INTO `item` VALUES ('391', '死亡之舞', 'https://game.gtimg.cn/images/lol/act/img/item/3812.png');
INSERT INTO `item` VALUES ('392', '太空死亡之舞', 'https://game.gtimg.cn/images/lol/act/img/item/3813.png');
INSERT INTO `item` VALUES ('393', '夜之锋刃', 'https://game.gtimg.cn/images/lol/act/img/item/3814.png');
INSERT INTO `item` VALUES ('406', '随意开火', 'https://game.gtimg.cn/images/lol/act/img/item/3901.png');
INSERT INTO `item` VALUES ('407', '死亡之女', 'https://game.gtimg.cn/images/lol/act/img/item/3902.png');
INSERT INTO `item` VALUES ('408', '鼓舞士气', 'https://game.gtimg.cn/images/lol/act/img/item/3903.png');
INSERT INTO `item` VALUES ('409', '双生暗影', 'https://game.gtimg.cn/images/lol/act/img/item/3905.png');
INSERT INTO `item` VALUES ('410', '缚法宝珠', 'https://game.gtimg.cn/images/lol/act/img/item/3907.png');
INSERT INTO `item` VALUES ('411', '湮灭宝珠', 'https://game.gtimg.cn/images/lol/act/img/item/3916.png');
INSERT INTO `item` VALUES ('412', '附魔：满足的吞噬者', 'https://game.gtimg.cn/images/lol/act/img/item/3930.png');
INSERT INTO `item` VALUES ('413', '附魔：满足的吞噬者', 'https://game.gtimg.cn/images/lol/act/img/item/3931.png');
INSERT INTO `item` VALUES ('414', '附魔：满足的吞噬者', 'https://game.gtimg.cn/images/lol/act/img/item/3932.png');
INSERT INTO `item` VALUES ('415', '附魔：满足的吞噬者', 'https://game.gtimg.cn/images/lol/act/img/item/3933.png');
INSERT INTO `item` VALUES ('416', '幽灵行者(仅近战可用)', 'https://game.gtimg.cn/images/lol/act/img/item/4001.png');
INSERT INTO `item` VALUES ('417', '救生索', 'https://game.gtimg.cn/images/lol/act/img/item/4003.png');
INSERT INTO `item` VALUES ('418', '幽魂弯刀', 'https://game.gtimg.cn/images/lol/act/img/item/4004.png');
INSERT INTO `item` VALUES ('419', '放血面纱', 'https://game.gtimg.cn/images/lol/act/img/item/4010.png');
INSERT INTO `item` VALUES ('420', '傲之追猎者的刀锋', 'https://game.gtimg.cn/images/lol/act/img/item/4101.png');
INSERT INTO `item` VALUES ('421', '附魔：战士', 'https://game.gtimg.cn/images/lol/act/img/item/4102.png');
INSERT INTO `item` VALUES ('422', '附魔：熔渣巨人', 'https://game.gtimg.cn/images/lol/act/img/item/4103.png');
INSERT INTO `item` VALUES ('423', '附魔：符能回声', 'https://game.gtimg.cn/images/lol/act/img/item/4104.png');
INSERT INTO `item` VALUES ('424', '附魔：血刃', 'https://game.gtimg.cn/images/lol/act/img/item/4105.png');
INSERT INTO `item` VALUES ('425', '多兰的失落之盾', 'https://game.gtimg.cn/images/lol/act/img/item/4201.png');
INSERT INTO `item` VALUES ('426', '多兰的失落之刃', 'https://game.gtimg.cn/images/lol/act/img/item/4202.png');
INSERT INTO `item` VALUES ('427', '多兰的失落之戒', 'https://game.gtimg.cn/images/lol/act/img/item/4203.png');
INSERT INTO `item` VALUES ('428', '多兰的失落之偶', 'https://game.gtimg.cn/images/lol/act/img/item/4204.png');
INSERT INTO `item` VALUES ('429', '贤者印章', 'https://game.gtimg.cn/images/lol/act/img/item/4301.png');
INSERT INTO `item` VALUES ('430', '巨神峰之心', 'https://game.gtimg.cn/images/lol/act/img/item/4302.png');
INSERT INTO `item` VALUES ('431', '自然之力', 'https://game.gtimg.cn/images/lol/act/img/item/4401.png');
INSERT INTO `item` VALUES ('432', '激发之匣', 'https://game.gtimg.cn/images/lol/act/img/item/4402.png');
INSERT INTO `item` VALUES ('433', '坚忍之属性手杖', 'https://game.gtimg.cn/images/lol/act/img/item/4403.png');

-- ----------------------------
-- Table structure for newintroduce
-- ----------------------------
DROP TABLE IF EXISTS `newintroduce`;
CREATE TABLE `newintroduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `new_tag` varchar(255) NOT NULL,
  `new_name` varchar(255) NOT NULL,
  `new_desc` varchar(255) NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `physics` varchar(255) NOT NULL,
  `magic` varchar(255) NOT NULL,
  `defense` varchar(255) NOT NULL,
  `new_img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newintroduce
-- ----------------------------
INSERT INTO `newintroduce` VALUES ('1', '新英雄', '涤魂圣枪 赛娜', '\"我要你好好活着，才能继续吻我\"', '2', '80', '60', '20', '//img.crawler.qq.com/lolwebschool/0/JAutoCMS_LOLWeb_919a12119f2a0fb5277a62d7cd7a1184/0');
INSERT INTO `newintroduce` VALUES ('2', '新皮肤', '未来战士 锤石', '全新皮肤上线', '3', '60', '40', '80', '//img.crawler.qq.com/lolwebschool/0/JAutoCMS_LOLWeb_f81fd5edf11e7d8fd7cd3bd783b31ef3/0');

-- ----------------------------
-- Table structure for runes
-- ----------------------------
DROP TABLE IF EXISTS `runes`;
CREATE TABLE `runes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of runes
-- ----------------------------

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `introduceImg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill
-- ----------------------------
INSERT INTO `skill` VALUES ('1', '屏障', '//ossweb-img.qq.com/images/lol/img/spell/SummonerBarrier.png', '为你的英雄套上护盾，吸收115-455（取决于英雄等级）伤害，持续2秒。', '//ossweb-img.qq.com/images/lol/web201310/summoner/21.jpg');
INSERT INTO `skill` VALUES ('2', '净化', '//ossweb-img.qq.com/images/lol/img/spell/SummonerBoost.png', '移除身上的所有限制效果和召唤师技能的减益效果，并且若在接下来的3秒里再次被施加限制效果时，新效果的持续时间会减少65%。', '//ossweb-img.qq.com/images/lol/web201310/summoner/1.jpg');
INSERT INTO `skill` VALUES ('3', '引燃', '//ossweb-img.qq.com/images/lol/img/spell/SummonerDot.png', '引燃是对单体敌方目标施放的持续性伤害技能，在5秒的持续时间里造成70-410（取决于英雄等级）真实伤害，获得目标的视野，并减少目标所受的治疗和回复效果。', '//ossweb-img.qq.com/images/lol/web201310/summoner/14.jpg');
INSERT INTO `skill` VALUES ('4', '虚弱', '//ossweb-img.qq.com/images/lol/img/spell/SummonerExhaust.png', '虚弱目标敌方英雄，降低目标英雄30%的移动速度和攻击速度，以及10护甲与魔法抗性，并且他们所造成的伤害减少40%，持续2.5秒。', '//ossweb-img.qq.com/images/lol/web201310/summoner/3.jpg');
INSERT INTO `skill` VALUES ('5', '闪现', '//ossweb-img.qq.com/images/lol/img/spell/SummonerFlash.png', '使英雄朝着你的指针所停的区域瞬间传送一小段距离。', '//ossweb-img.qq.com/images/lol/web201310/summoner/4.jpg');
INSERT INTO `skill` VALUES ('6', '幽灵疾步', '//ossweb-img.qq.com/images/lol/img/spell/SummonerHaste.png', '你的英雄能在移动时无视单位的碰撞体积，移动速度增加28-45%（基于英雄等级），持续10秒。', '//ossweb-img.qq.com/images/lol/web201310/summoner/6.jpg');
INSERT INTO `skill` VALUES ('7', '治疗术', '//ossweb-img.qq.com/images/lol/img/spell/SummonerHeal.png', '为你和目标友军英雄回复95-345（取决于英雄等级）生命值，并为你和目标友军英雄提供30%移动速度加成，持续1秒。若目标近期已受到过其它治疗术的影响，则治疗术对目标产生的治疗效果减半。', '//ossweb-img.qq.com/images/lol/web201310/summoner/7.jpg');
INSERT INTO `skill` VALUES ('8', '清晰术', '//ossweb-img.qq.com/images/lol/img/spell/SummonerMana.png', '为你的英雄回复50%的最大法力值。也会为周围的友军回复25%的最大法力值', '//ossweb-img.qq.com/images/lol/web201310/summoner/13.jpg');
INSERT INTO `skill` VALUES ('9', '护驾！', '//ossweb-img.qq.com/images/lol/img/spell/SummonerPoroRecall.png', '快速位移到魄罗之王旁边。', '//ossweb-img.qq.com/images/lol/web201310/summoner/30.jpg');
INSERT INTO `skill` VALUES ('10', '魄罗投掷', '//ossweb-img.qq.com/images/lol/img/spell/SummonerPoroThrow.png', '把一个魄罗投向你的敌人。如果它命中了一名敌人，那么你接下来就可以快速位移到被命中的敌人旁边。', '//ossweb-img.qq.com/images/lol/web201310/summoner/31.jpg');
INSERT INTO `skill` VALUES ('11', '惩戒', '//ossweb-img.qq.com/images/lol/img/spell/SummonerSmite.png', '对目标史诗野怪、大型野怪或敌方小兵造成390-1000（取决于英雄等级）真实伤害。在用在野怪身上时，回复一部分最大生命值。', '//ossweb-img.qq.com/images/lol/web201310/summoner/11.jpg');
INSERT INTO `skill` VALUES ('12', '标记', '//ossweb-img.qq.com/images/lol/img/spell/SummonerSnowball.png', '沿直线扔出一个雪球。如果雪球命中了一个敌人，那么这个敌人会被【标记】，并且你的英雄接下来可以快速突进到被【标记】的目标旁边。', '//ossweb-img.qq.com/images/lol/web201310/summoner/32.jpg');
INSERT INTO `skill` VALUES ('13', '传送', '//ossweb-img.qq.com/images/lol/img/spell/SummonerTeleport.png', '在引导4.5秒后，将英雄传送到友方建筑物、小兵或守卫旁边。', '//ossweb-img.qq.com/images/lol/web201310/summoner/12.jpg');
