-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-10-30 11:30:11
-- 服务器版本： 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dd`
--

-- --------------------------------------------------------

--
-- 表的结构 `accountadmin`
--

CREATE TABLE `accountadmin` (
  `AdminID` int(11) NOT NULL,
  `AdminAccount` varchar(30) NOT NULL,
  `AdminPwd` varchar(32) NOT NULL,
  `Role` int(11) NOT NULL DEFAULT '0',
  `AddTime` int(11) NOT NULL DEFAULT '0',
  `AddPerson` varchar(40) NOT NULL DEFAULT '',
  `Remark` varchar(200) NOT NULL DEFAULT '',
  `Status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `Name` varchar(1) NOT NULL,
  `AssocAgent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `accountadmin`
--

INSERT INTO `accountadmin` (`AdminID`, `AdminAccount`, `AdminPwd`, `Role`, `AddTime`, `AddPerson`, `Remark`, `Status`, `Name`, `AssocAgent`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '', '', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `adminareaassoc`
--

CREATE TABLE `adminareaassoc` (
  `ID` int(10) UNSIGNED NOT NULL,
  `AdminID` smallint(5) UNSIGNED NOT NULL COMMENT '管理员ID',
  `AreaID` tinyint(3) UNSIGNED NOT NULL COMMENT '地区ID',
  `AddTime` int(10) UNSIGNED NOT NULL COMMENT '新增时间',
  `Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态,1为正常,2为锁定'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理地区关联表';

-- --------------------------------------------------------

--
-- 表的结构 `admingameassoc`
--

CREATE TABLE `admingameassoc` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `AdminID` smallint(5) UNSIGNED NOT NULL COMMENT '管理员ID',
  `GameID` smallint(5) UNSIGNED NOT NULL COMMENT '游戏ID',
  `AddTime` int(10) UNSIGNED NOT NULL COMMENT '添加时间',
  `AddName` varchar(50) NOT NULL COMMENT '添加人',
  `Status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态, 1为正常,2为锁定'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员游戏关联表';

--
-- 转存表中的数据 `admingameassoc`
--

INSERT INTO `admingameassoc` (`ID`, `AdminID`, `GameID`, `AddTime`, `AddName`, `Status`) VALUES
(7, 4, 1, 1510218230, 'mjqxadmin', 1),
(9, 11, 1, 1510218265, 'mjqxadmin', 1),
(12, 20, 1, 1510219794, 'mjqxadmin', 1),
(16, 12, 1, 1510220806, 'mjqxadmin', 1),
(17, 21, 1, 1510790150, 'mjqxadmin', 1),
(30, 17, 1, 1511157014, 'mjqxadmin', 1),
(31, 17, 2, 1511157014, 'mjqxadmin', 1),
(32, 18, 1, 1511157022, 'mjqxadmin', 1),
(33, 18, 2, 1511157022, 'mjqxadmin', 1),
(52, 16, 1, 1512553042, 'mjqxadmin', 1),
(53, 16, 2, 1512553042, 'mjqxadmin', 1),
(110, 25, 1, 1515485437, 'mjqxadmin', 1),
(111, 25, 3, 1515485437, 'mjqxadmin', 1),
(123, 2, 1, 1516088386, 'mjqxadmin', 1),
(124, 2, 3, 1516088386, 'mjqxadmin', 1),
(125, 2, 4, 1516088386, 'mjqxadmin', 1),
(126, 2, 5, 1516088386, 'mjqxadmin', 2),
(133, 3, 1, 1516179672, 'mjqxadmin', 1),
(134, 3, 3, 1516179672, 'mjqxadmin', 1),
(135, 3, 4, 1516179672, 'mjqxadmin', 1),
(136, 3, 5, 1516179672, 'mjqxadmin', 2),
(152, 33, 3, 1517218540, 'mjqxadmin', 1),
(153, 32, 4, 1517218551, 'mjqxadmin', 1),
(154, 34, 5, 1517218562, 'mjqxadmin', 2),
(157, 10, 1, 1517384847, 'mjqxadmin', 1),
(158, 10, 5, 1517384847, 'mjqxadmin', 2),
(159, 35, 5, 1517392029, 'panwei', 2),
(165, 29, 1, 1518067444, 'mjqxadmin', 1),
(166, 29, 3, 1518067444, 'mjqxadmin', 1),
(167, 29, 4, 1518067444, 'mjqxadmin', 1),
(168, 29, 5, 1518067444, 'mjqxadmin', 2),
(169, 26, 1, 1518067455, 'mjqxadmin', 1),
(170, 26, 3, 1518067455, 'mjqxadmin', 1),
(171, 26, 4, 1518067455, 'mjqxadmin', 1),
(172, 26, 5, 1518067455, 'mjqxadmin', 2),
(191, 13, 1, 1518499501, 'mjqxadmin', 1),
(192, 13, 3, 1518499501, 'mjqxadmin', 1),
(193, 13, 4, 1518499501, 'mjqxadmin', 1),
(200, 19, 1, 1518499681, 'mjqxadmin', 1),
(201, 19, 3, 1518499681, 'mjqxadmin', 1),
(202, 19, 4, 1518499681, 'mjqxadmin', 1),
(203, 19, 5, 1518499681, 'mjqxadmin', 2),
(260, 40, 1, 1521771057, 'mjqxadmin', 1),
(261, 40, 2, 1521771057, 'mjqxadmin', 1),
(262, 40, 3, 1521771057, 'mjqxadmin', 1),
(263, 40, 4, 1521771057, 'mjqxadmin', 1),
(264, 40, 5, 1521771057, 'mjqxadmin', 2),
(265, 40, 6, 1521771057, 'mjqxadmin', 1),
(277, 42, 1, 1524814511, 'mjqxadmin', 1),
(282, 38, 5, 1525434330, 'mjqxadmin', 2),
(283, 38, 6, 1525434330, 'mjqxadmin', 1),
(284, 43, 1, 1527216821, 'mjqxadmin', 1),
(285, 43, 2, 1527216821, 'mjqxadmin', 1),
(286, 43, 3, 1527216821, 'mjqxadmin', 1),
(287, 43, 4, 1527216821, 'mjqxadmin', 1),
(288, 43, 6, 1527216821, 'mjqxadmin', 1),
(289, 44, 2, 1527757367, 'zhangxiang', 1),
(292, 47, 2, 1527759185, 'zhangxiang', 1),
(293, 48, 2, 1527759205, 'zhangxiang', 1),
(296, 51, 2, 1527759280, 'zhangxiang', 1),
(306, 53, 2, 1530082968, 'zhangxiang', 1),
(319, 41, 1, 1532500395, 'wangchenyu', 1),
(320, 41, 3, 1532500395, 'wangchenyu', 1),
(321, 56, 1, 1532500950, 'mjqxadmin', 1),
(322, 28, 1, 1532501343, 'mjqxadmin', 1),
(323, 28, 2, 1532501343, 'mjqxadmin', 1),
(324, 28, 3, 1532501343, 'mjqxadmin', 1),
(325, 28, 4, 1532501343, 'mjqxadmin', 1),
(326, 28, 6, 1532501343, 'mjqxadmin', 1),
(327, 31, 1, 1532569447, 'mjqxadmin', 1),
(328, 31, 3, 1532569447, 'mjqxadmin', 1),
(352, 57, 7, 1533540751, 'mjqxadmin', 1),
(353, 27, 1, 1533797010, 'mjqxadmin', 1),
(354, 27, 2, 1533797010, 'mjqxadmin', 1),
(355, 27, 3, 1533797010, 'mjqxadmin', 1),
(356, 27, 4, 1533797010, 'mjqxadmin', 1),
(357, 27, 6, 1533797010, 'mjqxadmin', 1),
(358, 27, 7, 1533797010, 'mjqxadmin', 1),
(359, 52, 1, 1533834668, 'mjqxadmin', 1),
(360, 52, 2, 1533834668, 'mjqxadmin', 1),
(361, 52, 3, 1533834668, 'mjqxadmin', 1),
(362, 52, 4, 1533834668, 'mjqxadmin', 1),
(363, 52, 6, 1533834668, 'mjqxadmin', 1),
(364, 58, 7, 1534299694, 'mjqxadmin', 1),
(366, 30, 1, 1534832156, 'mjqxadmin', 1),
(367, 30, 2, 1534832156, 'mjqxadmin', 1),
(368, 30, 3, 1534832156, 'mjqxadmin', 1),
(369, 30, 4, 1534832156, 'mjqxadmin', 1),
(370, 30, 6, 1534832156, 'mjqxadmin', 1),
(371, 30, 7, 1534832156, 'mjqxadmin', 1),
(372, 30, 8, 1534832156, 'mjqxadmin', 1),
(373, 22, 1, 1534832169, 'mjqxadmin', 1),
(374, 22, 2, 1534832169, 'mjqxadmin', 1),
(375, 22, 3, 1534832169, 'mjqxadmin', 1),
(376, 22, 4, 1534832169, 'mjqxadmin', 1),
(377, 22, 6, 1534832169, 'mjqxadmin', 1),
(378, 22, 7, 1534832169, 'mjqxadmin', 1),
(379, 22, 8, 1534832169, 'mjqxadmin', 1),
(382, 59, 7, 1535016826, 'mjqxadmin', 1),
(383, 24, 2, 1535016840, 'mjqxadmin', 1),
(384, 24, 8, 1535016840, 'mjqxadmin', 1),
(385, 60, 1, 1535440220, 'mjqxadmin', 1),
(386, 60, 2, 1535440220, 'mjqxadmin', 1),
(387, 60, 3, 1535440220, 'mjqxadmin', 1),
(388, 60, 4, 1535440221, 'mjqxadmin', 1),
(389, 60, 6, 1535440221, 'mjqxadmin', 1),
(390, 60, 7, 1535440221, 'mjqxadmin', 1),
(391, 60, 8, 1535440221, 'mjqxadmin', 1),
(392, 15, 1, 1535911017, 'mjqxadmin', 1),
(393, 15, 2, 1535911017, 'mjqxadmin', 1),
(394, 15, 3, 1535911017, 'mjqxadmin', 1),
(395, 15, 4, 1535911017, 'mjqxadmin', 1),
(396, 15, 6, 1535911017, 'mjqxadmin', 1),
(397, 15, 7, 1535911017, 'mjqxadmin', 1),
(398, 15, 8, 1535911017, 'mjqxadmin', 1),
(399, 14, 1, 1536829312, 'mjqxadmin', 1),
(400, 14, 2, 1536829312, 'mjqxadmin', 1),
(401, 14, 3, 1536829312, 'mjqxadmin', 1),
(402, 14, 4, 1536829312, 'mjqxadmin', 1),
(403, 14, 6, 1536829312, 'mjqxadmin', 1),
(404, 14, 7, 1536829312, 'mjqxadmin', 1),
(405, 14, 8, 1536829312, 'mjqxadmin', 1),
(406, 37, 1, 1537151926, 'mjqxadmin', 1),
(407, 37, 2, 1537151926, 'mjqxadmin', 1),
(408, 37, 3, 1537151926, 'mjqxadmin', 1),
(409, 37, 4, 1537151926, 'mjqxadmin', 1),
(410, 37, 6, 1537151926, 'mjqxadmin', 1),
(411, 37, 7, 1537151926, 'mjqxadmin', 1),
(412, 37, 8, 1537151926, 'mjqxadmin', 1),
(413, 50, 2, 1537858383, 'zhangxiang', 1),
(414, 50, 8, 1537858383, 'zhangxiang', 1),
(415, 49, 2, 1537858400, 'zhangxiang', 1),
(416, 49, 8, 1537858400, 'zhangxiang', 1),
(417, 45, 2, 1537858411, 'zhangxiang', 1),
(418, 45, 8, 1537858411, 'zhangxiang', 1),
(427, 36, 1, 1537865674, 'mjqxadmin', 1),
(428, 36, 2, 1537865674, 'mjqxadmin', 1),
(429, 36, 3, 1537865674, 'mjqxadmin', 1),
(430, 36, 4, 1537865674, 'mjqxadmin', 1),
(431, 36, 6, 1537865674, 'mjqxadmin', 1),
(432, 36, 7, 1537865674, 'mjqxadmin', 1),
(433, 36, 8, 1537865674, 'mjqxadmin', 1),
(434, 23, 2, 1537865715, 'mjqxadmin', 1),
(435, 23, 8, 1537865715, 'mjqxadmin', 1),
(438, 46, 2, 1537869125, 'zhangxiang', 1),
(439, 54, 2, 1537926359, 'zhangxiang', 1),
(440, 54, 8, 1537926359, 'zhangxiang', 1),
(441, 55, 2, 1538274972, 'zhangxiang', 1),
(442, 55, 8, 1538274972, 'zhangxiang', 1),
(443, 61, 6, 1539598389, 'mjqxadmin', 1),
(451, 39, 1, 1540791751, 'mjqxadmin', 1),
(452, 39, 2, 1540791751, 'mjqxadmin', 1),
(453, 39, 3, 1540791751, 'mjqxadmin', 1),
(454, 39, 4, 1540791751, 'mjqxadmin', 1),
(455, 39, 6, 1540791751, 'mjqxadmin', 1),
(456, 39, 7, 1540791751, 'mjqxadmin', 1),
(457, 39, 8, 1540791751, 'mjqxadmin', 1);

-- --------------------------------------------------------

--
-- 表的结构 `agentbank`
--

CREATE TABLE `agentbank` (
  `ID` int(11) NOT NULL,
  `BankName` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `BankP` varchar(20) NOT NULL,
  `BankC` varchar(20) NOT NULL,
  `BankA` varchar(30) NOT NULL,
  `BankAccount` varchar(20) NOT NULL,
  `Status` tinyint(3) UNSIGNED NOT NULL,
  `AddTime` int(11) NOT NULL,
  `AgentUserID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `agentgameassoc`
--

CREATE TABLE `agentgameassoc` (
  `ID` int(10) UNSIGNED NOT NULL,
  `AgentID` int(10) UNSIGNED NOT NULL COMMENT '代理ID',
  `GameID` tinyint(3) UNSIGNED NOT NULL COMMENT '游戏ID',
  `GameUserID` int(10) UNSIGNED NOT NULL COMMENT '在指定游戏中的userid',
  `Status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1为正常,2为锁定',
  `AddTime` int(10) UNSIGNED NOT NULL COMMENT '关联时间',
  `AddPerson` varchar(32) NOT NULL COMMENT '添加人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理游戏关联表';

-- --------------------------------------------------------

--
-- 表的结构 `agentperdefault`
--

CREATE TABLE `agentperdefault` (
  `id` int(11) NOT NULL,
  `gameQp` varchar(20) NOT NULL,
  `agentType` tinyint(4) NOT NULL COMMENT '1-超级代理2-超级代理创建的代理3-普通代理',
  `defaultPer` tinyint(3) NOT NULL COMMENT '默认比例',
  `status` tinyint(1) NOT NULL COMMENT '1-正常2-锁定'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `agents`
--

CREATE TABLE `agents` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Account` varchar(32) NOT NULL COMMENT '账号',
  `Password` varchar(32) NOT NULL COMMENT '密码',
  `Name` varchar(32) NOT NULL DEFAULT '' COMMENT '代理名称',
  `PhoneNumber` varchar(15) NOT NULL COMMENT '手机号码',
  `IsDefaultPwd` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否是默认密码',
  `Code` varchar(6) NOT NULL DEFAULT '' COMMENT '推荐码',
  `LastUpdateTime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  `LastUpdateName` varchar(50) NOT NULL DEFAULT '' COMMENT '最后修改人',
  `AddName` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `AddTime` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `Area` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '地区',
  `Type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '代理类型,1为外部代理, 2为公司代理',
  `union_id` varchar(50) NOT NULL COMMENT '游戏union_id',
  `agree` tinyint(2) NOT NULL DEFAULT '0',
  `is_send` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理总表';

-- --------------------------------------------------------

--
-- 表的结构 `areas`
--

CREATE TABLE `areas` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态,1为正常,2为锁定'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区表';

-- --------------------------------------------------------

--
-- 表的结构 `backloginlog`
--

CREATE TABLE `backloginlog` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LoginName` varchar(50) NOT NULL,
  `LoginTime` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '0',
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `Status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `backloginlog`
--

INSERT INTO `backloginlog` (`ID`, `LoginName`, `LoginTime`, `ip`, `Type`, `Status`) VALUES
(70439, 'admin', 1540804951, '::1', 2, 1),
(70440, 'admin', 1540805181, '::1', 2, 1),
(70441, 'admin', 1540805195, '::1', 2, 1),
(70442, 'admin', 1540805434, '::1', 2, 1),
(70443, 'admin', 1540805446, '::1', 2, 1),
(70444, '是', 1540805507, '::1', 2, 2),
(70445, 'admin', 1540805525, '::1', 2, 1),
(70446, 'admin', 1540805550, '::1', 2, 2),
(70447, 'admin', 1540805557, '::1', 2, 2),
(70448, 'admin', 1540805648, '::1', 2, 2),
(70449, 'admin', 1540805658, '::1', 2, 1),
(70450, 'admin', 1540805752, '::1', 2, 1),
(70451, 'admin', 1540805784, '::1', 2, 1),
(70452, 'admin', 1540807330, '::1', 2, 1),
(70453, 'admin', 1540808726, '::1', 2, 1),
(70454, 'admin', 1540808812, '::1', 2, 1),
(70455, 'admin', 1540808856, '::1', 2, 1),
(70456, 'admin', 1540808878, '::1', 2, 1),
(70457, 'admin', 1540809007, '::1', 2, 1),
(70458, 'admin', 1540809027, '::1', 2, 1),
(70459, 'admin', 1540809274, '::1', 2, 1),
(70460, 'admin', 1540809439, '::1', 2, 1),
(70461, 'admin', 1540863579, '::1', 2, 1),
(70462, 'admin', 1540864396, '::1', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `bdgameassoc`
--

CREATE TABLE `bdgameassoc` (
  `ID` int(10) UNSIGNED NOT NULL,
  `BDID` int(10) UNSIGNED NOT NULL COMMENT '地推ID',
  `GameID` tinyint(3) UNSIGNED NOT NULL COMMENT '游戏ID',
  `Status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态,1为正常,2为锁定',
  `AddTime` int(10) UNSIGNED NOT NULL COMMENT '关联时间',
  `AddPerson` varchar(32) NOT NULL COMMENT '添加人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理游戏关联表';

-- --------------------------------------------------------

--
-- 表的结构 `bds`
--

CREATE TABLE `bds` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `account` varchar(16) NOT NULL,
  `code` varchar(4) NOT NULL,
  `password` varchar(32) NOT NULL,
  `Area` tinyint(3) NOT NULL COMMENT '地区',
  `addtime` int(11) NOT NULL,
  `addperson` varchar(32) NOT NULL,
  `lastupdatetime` int(11) NOT NULL DEFAULT '0',
  `lastupdateperson` varchar(32) DEFAULT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '',
  `source` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `index` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-正常2-锁定'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `games`
--

CREATE TABLE `games` (
  `ID` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(30) NOT NULL COMMENT '游戏名称',
  `Qp` varchar(30) NOT NULL DEFAULT '' COMMENT '游戏全拼',
  `AddTime` int(10) UNSIGNED NOT NULL COMMENT '新增时间',
  `Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态, 1为正常, 2为锁定',
  `Img` varchar(100) NOT NULL,
  `RedPacketAssocAddr` varchar(32) NOT NULL DEFAULT '' COMMENT '红包关联地区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏表';

--
-- 转存表中的数据 `games`
--

INSERT INTO `games` (`ID`, `Name`, `Qp`, `AddTime`, `Status`, `Img`, `RedPacketAssocAddr`) VALUES
(1, '情怀南京麻将', 'nanjing', 1508484538, 1, '/img/logo/icon1.png', '南京'),
(2, '情怀江都麻将', 'jiangdu', 1, 1, '/img/logo/icon2.png', '扬州'),
(3, '情怀高淳麻将', 'gaochun', 1, 1, '/img/logo/icon3.png', '南京,马鞍山'),
(4, '情怀涟水麻将', 'lianshui', 1, 1, '/img/logo/icon1.png', '淮安'),
(5, '情怀兴化麻将', 'xinghua', 1, 2, '/img/logo/icon1.png', '泰州'),
(6, '哈皮淮安麻将', 'huaian', 1508484538, 1, '/img/logo/icon1.png', '淮安'),
(7, '情怀抚州麻将', 'fuzhou', 1, 1, '', '抚州'),
(8, '情怀扬州麻将', 'yangzhou', 0, 1, '', '扬州');

-- --------------------------------------------------------

--
-- 表的结构 `managebddata`
--

CREATE TABLE `managebddata` (
  `id` int(11) NOT NULL,
  `day` varchar(10) CHARACTER SET utf8 NOT NULL,
  `bdID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `isUsedUser` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usedTime` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `source` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `bindTime` varchar(10) CHARACTER SET utf8 NOT NULL,
  `addTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `managebdinfo`
--

CREATE TABLE `managebdinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 NOT NULL,
  `account` varchar(16) CHARACTER SET utf8 NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `addperson` varchar(32) CHARACTER SET utf8 NOT NULL,
  `lastupdatetime` int(11) NOT NULL DEFAULT '0',
  `lastupdateperson` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `source` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `manageidcard`
--

CREATE TABLE `manageidcard` (
  `AgentID` int(11) NOT NULL,
  `IdCard` varchar(18) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `RealName` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `AuditName` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Img` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `AddTime` int(11) NOT NULL DEFAULT '0',
  `CheckTime` int(11) NOT NULL DEFAULT '0',
  `Remark` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `managemodule`
--

CREATE TABLE `managemodule` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL DEFAULT '',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `f_id` int(11) NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `is_view` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `url` varchar(100) NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `add_person` varchar(45) NOT NULL DEFAULT '',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `managemodule`
--

INSERT INTO `managemodule` (`module_id`, `module_name`, `level`, `f_id`, `weight`, `is_view`, `url`, `add_time`, `add_person`, `status`) VALUES
(1, '代理管理', 1, 0, 95, 1, '/global', 1502186351, 'jimokk', 1),
(3, '渠道管理', 2, 1, 98, 1, '/channel/index', 1502186351, 'jimokk', 0),
(4, '代理列表', 2, 1, 97, 1, '/agent/index', 1502186351, 'jimokk', 1),
(5, '代理银行卡管理', 2, 1, 96, 1, '/bankcard/index', 1502186351, 'jimokk', 1),
(6, '财务管理', 1, 0, 94, 1, '/finance', 1502186351, 'jimokk', 1),
(8, '提现支付管理', 2, 6, 96, 1, '/pay/index', 1502186351, 'jimokk', 1),
(9, '综合信息管理', 1, 0, 93, 1, '/info', 1502186351, 'jimokk', 1),
(10, '代理实名认证', 2, 1, 95, 1, '/idcard/index', 1502186351, 'jimokk', 1),
(11, '代理申请列表', 2, 1, 96, 1, '/apply/index', 1502186351, 'jimokk', 1),
(12, '赠送道具', 2, 15, 95, 1, '/props/index', 1502186351, 'jimokk', 1),
(13, '玩家意见反馈', 2, 9, 93, 1, '/feedback/index', 1, 'jimokk', 1),
(14, '玩家列表', 2, 15, 96, 1, '/users/index', 1, 'jimokk', 1),
(15, '运营管理', 1, 0, 92, 1, '/operate', 1, 'jimokk', 1),
(16, '每日运营报告', 2, 15, 99, 1, '/data/index', 1, 'jimokk', 0),
(17, '代理解绑管理', 1, 0, 94, 1, '/unbind', 1, 'jimokk', 1),
(18, '解绑', 2, 17, 99, 1, '/unbind/index', 1, 'jimokk', 1),
(19, '解绑历史', 2, 17, 98, 1, '/unbindrecord/index', 1, 'jimokk', 1),
(20, '群组列表', 2, 15, 98, 1, '/group/index', 1, 'jimokk', 0),
(21, '群运营数据', 2, 15, 97, 1, '/groupstats/index', 1, 'jimokk', 0),
(22, '地推管理', 1, 0, 91, 1, '/bd', 1, 'jimokk', 1),
(23, '地推账号', 2, 22, 99, 1, '/bd/index', 1, 'jimokk', 1),
(24, '地推&玩家', 2, 22, 98, 1, '/bdusers/index', 1, 'jimokk', 1),
(25, '地推&代理', 2, 22, 97, 1, '/bdagents/index', 1, 'jimokk', 1),
(26, '排行榜', 2, 15, 95, 1, '/rank/index', 1, 'jimokk', 1),
(27, '日志相关', 1, 0, 90, 1, '/log', 1, 'jimokk', 1),
(28, '代理后台登录', 2, 27, 99, 1, '/agentlog/index', 1, 'jimokk', 1),
(29, '管理后台登录', 2, 27, 98, 1, '/managelog/index', 1, 'jimokk', 1),
(30, '权限管理', 1, 0, 96, 1, '/admin', 0, 'admin', 1),
(31, '账号管理', 2, 30, 95, 0, '/admin/index', 0, 'admin', 1),
(32, '角色权限管理', 2, 30, 96, 1, '/role/index', 0, 'admin', 1),
(33, '转盘红包管理', 2, 15, 94, 1, '/tredpacket/index', 1, 'mjqxadmin', 1),
(34, '活动红包管理', 2, 15, 93, 1, '/redpacket/index', 1, 'mjqxadmin', 1),
(35, '俱乐部审核', 2, 37, 97, 1, '/checkclub/index', 0, '', 1),
(36, '数据报表', 2, 15, 98, 1, '/report/index', 0, '', 1),
(37, '俱乐部管理', 1, 0, 1, 1, '/club', 1502186351, 'jimokk', 1),
(38, '俱乐部数据报表', 2, 37, 98, 1, '/club/index', 0, '', 1),
(39, '每日运营报告新', 2, 15, 99, 1, '/datanew/index', 0, '', 1),
(40, '指定代理管理', 2, 41, 1, 1, '/qinghuaicard/index', 0, '', 1),
(41, '情怀卡管理', 1, 0, 15, 1, '/qinghuai', 0, '', 1),
(42, '游戏代理管理', 2, 41, 2, 1, '/qinghuaicard/game', 0, '', 1),
(43, '商务管理', 1, 0, 2, 1, '/business ', 0, '', 1),
(45, '我的代理', 2, 43, 4, 1, '/business/index', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `managerole`
--

CREATE TABLE `managerole` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL,
  `add_person` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '权重'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `managerole`
--

INSERT INTO `managerole` (`role_id`, `role_name`, `description`, `add_time`, `add_person`, `status`, `weight`) VALUES
(1, '超级管理员', '', 1502246876, 'admin', 1, 1),
(8, '运营人员', '1', 1509935123, 'mjqxadmin', 1, 8),
(10, '地推总监', '', 1510216801, 'mjqxadmin', 1, 5),
(11, '新华网商务总监', '', 1510216827, 'mjqxadmin', 1, 10),
(12, '常用管理员', '', 1510216839, 'mjqxadmin', 1, 10),
(13, '运营总监', '', 1510216872, 'mjqxadmin', 1, 5),
(14, '权限角色测试', '权限角色测试-顾诚', 1510789709, 'mjqxadmin', 1, 10),
(15, '城市经理', '', 1511749438, 'mjqxadmin', 1, 5),
(16, '游戏客服/运营主管', '客服人员，查看玩家，赠送道具', 1512699664, 'mjqxadmin', 1, 1),
(17, '代理申请审核员', '代理申请审核员--暂时只查看代理申请页面', 1513568040, 'mjqxadmin', 1, 1),
(18, '道具赠送员', '道具赠送员', 1515983182, 'mjqxadmin', 1, 1),
(19, '财务人员', '', 1517907227, 'mjqxadmin', 1, 1),
(20, 'dev', '', 1521081452, 'mjqxadmin', 1, 1),
(21, '开发', '后台开发权限', 1521169887, 'mjqxadmin', 1, 1),
(22, '游戏运营总监', '可控制发钻权限', 1530859815, 'mjqxadmin', 1, 10);

-- --------------------------------------------------------

--
-- 表的结构 `managerule`
--

CREATE TABLE `managerule` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `last_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `managerule`
--

INSERT INTO `managerule` (`id`, `role_id`, `module_id`, `last_time`) VALUES
(48, 14, 30, 1510789896),
(49, 14, 31, 1510789896),
(50, 14, 1, 1510789896),
(51, 14, 4, 1510789896),
(52, 14, 5, 1510789896),
(53, 14, 11, 1510789896),
(54, 14, 10, 1510789896),
(55, 14, 6, 1510789896),
(56, 14, 8, 1510789896),
(57, 14, 17, 1510789896),
(58, 14, 18, 1510789896),
(59, 14, 19, 1510789896),
(60, 14, 9, 1510789896),
(61, 14, 13, 1510789896),
(62, 14, 15, 1510789896),
(63, 14, 16, 1510789896),
(64, 14, 20, 1510789896),
(65, 14, 21, 1510789896),
(66, 14, 14, 1510789896),
(67, 14, 26, 1510789896),
(68, 14, 12, 1510789896),
(69, 14, 22, 1510789896),
(70, 14, 23, 1510789896),
(71, 14, 24, 1510789896),
(72, 14, 25, 1510789896),
(73, 14, 27, 1510789896),
(74, 14, 28, 1510789896),
(75, 14, 29, 1510789896),
(624, 16, 15, 1523256277),
(625, 16, 36, 1523256277),
(626, 16, 14, 1523256277),
(627, 16, 12, 1523256277),
(628, 16, 33, 1523256277),
(629, 16, 34, 1523256277),
(630, 16, 37, 1523256277),
(631, 16, 35, 1523256277),
(632, 18, 15, 1523256287),
(633, 18, 16, 1523256287),
(634, 18, 12, 1523256287),
(635, 18, 37, 1523256287),
(636, 18, 35, 1523256287),
(1034, 11, 15, 1525248029),
(1035, 11, 39, 1525248029),
(1036, 11, 26, 1525248029),
(1037, 11, 37, 1525248029),
(1038, 11, 38, 1525248029),
(1039, 11, 35, 1525248029),
(1132, 19, 1, 1525945823),
(1133, 19, 4, 1525945823),
(1134, 19, 6, 1525945823),
(1135, 19, 8, 1525945823),
(1136, 19, 15, 1525945823),
(1137, 19, 39, 1525945823),
(1138, 19, 22, 1525945823),
(1139, 19, 23, 1525945823),
(1140, 19, 24, 1525945823),
(1141, 19, 25, 1525945823),
(1142, 21, 32, 1526976140),
(1143, 21, 31, 1526976140),
(1144, 21, 1, 1526976140),
(1145, 21, 4, 1526976140),
(1146, 21, 11, 1526976140),
(1147, 21, 5, 1526976140),
(1148, 21, 10, 1526976140),
(1149, 21, 6, 1526976140),
(1150, 21, 8, 1526976140),
(1151, 21, 17, 1526976140),
(1152, 21, 18, 1526976140),
(1153, 21, 19, 1526976140),
(1154, 21, 9, 1526976140),
(1155, 21, 13, 1526976140),
(1156, 21, 15, 1526976140),
(1157, 21, 39, 1526976140),
(1158, 21, 16, 1526976140),
(1159, 21, 36, 1526976140),
(1160, 21, 20, 1526976140),
(1161, 21, 21, 1526976140),
(1162, 21, 14, 1526976140),
(1163, 21, 26, 1526976140),
(1164, 21, 12, 1526976140),
(1165, 21, 33, 1526976140),
(1166, 21, 34, 1526976140),
(1167, 21, 22, 1526976140),
(1168, 21, 23, 1526976140),
(1169, 21, 24, 1526976140),
(1170, 21, 25, 1526976140),
(1171, 21, 27, 1526976140),
(1172, 21, 28, 1526976140),
(1173, 21, 29, 1526976140),
(1174, 21, 37, 1526976140),
(1175, 21, 38, 1526976140),
(1176, 21, 35, 1526976140),
(1256, 13, 1, 1530861128),
(1257, 13, 4, 1530861128),
(1258, 13, 11, 1530861128),
(1259, 13, 5, 1530861128),
(1260, 13, 10, 1530861128),
(1261, 13, 17, 1530861128),
(1262, 13, 18, 1530861128),
(1263, 13, 19, 1530861128),
(1264, 13, 15, 1530861128),
(1265, 13, 39, 1530861128),
(1266, 13, 36, 1530861128),
(1267, 13, 14, 1530861128),
(1268, 13, 26, 1530861128),
(1269, 13, 37, 1530861128),
(1270, 13, 38, 1530861128),
(1271, 13, 35, 1530861128),
(1473, 12, 30, 1533647441),
(1474, 12, 31, 1533647441),
(1475, 12, 1, 1533647441),
(1476, 12, 4, 1533647441),
(1477, 12, 5, 1533647441),
(1478, 12, 11, 1533647441),
(1479, 12, 10, 1533647441),
(1480, 12, 17, 1533647441),
(1481, 12, 18, 1533647441),
(1482, 12, 19, 1533647441),
(1483, 12, 6, 1533647441),
(1484, 12, 8, 1533647441),
(1485, 12, 9, 1533647441),
(1486, 12, 13, 1533647441),
(1487, 12, 15, 1533647441),
(1488, 12, 39, 1533647441),
(1489, 12, 20, 1533647441),
(1490, 12, 36, 1533647441),
(1491, 12, 21, 1533647441),
(1492, 12, 14, 1533647441),
(1493, 12, 26, 1533647441),
(1494, 12, 12, 1533647441),
(1495, 12, 33, 1533647441),
(1496, 12, 34, 1533647441),
(1497, 12, 22, 1533647441),
(1498, 12, 23, 1533647441),
(1499, 12, 24, 1533647441),
(1500, 12, 25, 1533647441),
(1501, 12, 27, 1533647441),
(1502, 12, 28, 1533647441),
(1503, 12, 29, 1533647441),
(1504, 12, 41, 1533647441),
(1505, 12, 42, 1533647441),
(1506, 12, 40, 1533647441),
(1507, 12, 37, 1533647441),
(1508, 12, 38, 1533647441),
(1509, 12, 35, 1533647441),
(1730, 15, 6, 1537865073),
(1731, 15, 8, 1537865073),
(1732, 15, 17, 1537865073),
(1733, 15, 18, 1537865073),
(1734, 15, 19, 1537865073),
(1735, 15, 9, 1537865073),
(1736, 15, 13, 1537865073),
(1737, 15, 15, 1537865073),
(1738, 15, 39, 1537865073),
(1739, 15, 36, 1537865073),
(1740, 15, 14, 1537865073),
(1741, 15, 26, 1537865073),
(1742, 15, 12, 1537865073),
(1743, 15, 22, 1537865073),
(1744, 15, 23, 1537865073),
(1745, 15, 24, 1537865073),
(1746, 15, 25, 1537865073),
(1747, 15, 41, 1537865073),
(1748, 15, 42, 1537865073),
(1749, 15, 40, 1537865073),
(1750, 15, 43, 1537865073),
(1751, 15, 45, 1537865073),
(1752, 15, 37, 1537865073),
(1753, 15, 38, 1537865073),
(1754, 15, 35, 1537865073),
(1757, 22, 1, 1537865775),
(1758, 22, 4, 1537865775),
(1759, 22, 11, 1537865775),
(1760, 22, 5, 1537865775),
(1761, 22, 10, 1537865775),
(1762, 22, 6, 1537865775),
(1763, 22, 8, 1537865775),
(1764, 22, 17, 1537865775),
(1765, 22, 18, 1537865775),
(1766, 22, 19, 1537865775),
(1767, 22, 9, 1537865775),
(1768, 22, 13, 1537865775),
(1769, 22, 15, 1537865775),
(1770, 22, 39, 1537865775),
(1771, 22, 36, 1537865775),
(1772, 22, 14, 1537865775),
(1773, 22, 26, 1537865775),
(1774, 22, 12, 1537865775),
(1775, 22, 33, 1537865775),
(1776, 22, 34, 1537865775),
(1777, 22, 22, 1537865775),
(1778, 22, 23, 1537865775),
(1779, 22, 24, 1537865775),
(1780, 22, 25, 1537865775),
(1781, 22, 41, 1537865775),
(1782, 22, 42, 1537865775),
(1783, 22, 40, 1537865775),
(1784, 22, 43, 1537865775),
(1785, 22, 45, 1537865775),
(1786, 22, 37, 1537865775),
(1787, 22, 38, 1537865775),
(1788, 22, 35, 1537865775),
(1816, 8, 1, 1537867426),
(1817, 8, 11, 1537867426),
(1818, 8, 5, 1537867426),
(1819, 8, 10, 1537867426),
(1820, 8, 6, 1537867426),
(1821, 8, 8, 1537867426),
(1822, 8, 17, 1537867426),
(1823, 8, 18, 1537867426),
(1824, 8, 19, 1537867426),
(1825, 8, 9, 1537867426),
(1826, 8, 13, 1537867426),
(1827, 8, 15, 1537867426),
(1828, 8, 39, 1537867426),
(1829, 8, 36, 1537867426),
(1830, 8, 14, 1537867426),
(1831, 8, 12, 1537867426),
(1832, 8, 33, 1537867426),
(1833, 8, 34, 1537867426),
(1834, 8, 37, 1537867426),
(1835, 8, 35, 1537867426),
(1840, 10, 1, 1537869076),
(1841, 10, 4, 1537869076),
(1842, 10, 11, 1537869076),
(1843, 10, 5, 1537869076),
(1844, 10, 10, 1537869076),
(1845, 10, 6, 1537869076),
(1846, 10, 8, 1537869076),
(1847, 10, 17, 1537869076),
(1848, 10, 18, 1537869076),
(1849, 10, 19, 1537869076),
(1850, 10, 9, 1537869076),
(1851, 10, 13, 1537869076),
(1852, 10, 15, 1537869076),
(1853, 10, 39, 1537869076),
(1854, 10, 36, 1537869076),
(1855, 10, 14, 1537869076),
(1856, 10, 26, 1537869076),
(1857, 10, 12, 1537869076),
(1858, 10, 33, 1537869076),
(1859, 10, 34, 1537869076),
(1860, 10, 22, 1537869076),
(1861, 10, 23, 1537869076),
(1862, 10, 24, 1537869076),
(1863, 10, 25, 1537869076),
(1864, 10, 41, 1537869076),
(1865, 10, 42, 1537869076),
(1866, 10, 40, 1537869076),
(1867, 10, 37, 1537869076),
(1868, 10, 38, 1537869076),
(1869, 10, 35, 1537869076),
(1875, 17, 1, 1537869373),
(1876, 17, 11, 1537869373),
(1877, 17, 15, 1537869373),
(1878, 17, 39, 1537869373),
(1879, 17, 36, 1537869373),
(1880, 20, 30, 1540791562),
(1881, 20, 32, 1540791562),
(1882, 20, 31, 1540791562),
(1883, 20, 1, 1540791562),
(1884, 20, 11, 1540791562),
(1885, 20, 5, 1540791562),
(1886, 20, 10, 1540791562),
(1887, 20, 6, 1540791562),
(1888, 20, 8, 1540791562),
(1889, 20, 17, 1540791562),
(1890, 20, 18, 1540791562),
(1891, 20, 19, 1540791562),
(1892, 20, 9, 1540791562),
(1893, 20, 13, 1540791562),
(1894, 20, 15, 1540791562),
(1895, 20, 39, 1540791562),
(1896, 20, 36, 1540791562),
(1897, 20, 14, 1540791562),
(1898, 20, 26, 1540791562),
(1899, 20, 12, 1540791562),
(1900, 20, 33, 1540791562),
(1901, 20, 34, 1540791562),
(1902, 20, 22, 1540791562),
(1903, 20, 23, 1540791562),
(1904, 20, 24, 1540791562),
(1905, 20, 25, 1540791562),
(1906, 20, 27, 1540791562),
(1907, 20, 28, 1540791562),
(1908, 20, 29, 1540791562),
(1909, 20, 41, 1540791562),
(1910, 20, 42, 1540791562),
(1911, 20, 40, 1540791562),
(1912, 20, 43, 1540791562),
(1913, 20, 45, 1540791562),
(1914, 20, 37, 1540791562),
(1915, 20, 38, 1540791562),
(1916, 20, 35, 1540791562);

-- --------------------------------------------------------

--
-- 表的结构 `noticeconfig`
--

CREATE TABLE `noticeconfig` (
  `id` int(11) NOT NULL,
  `game` varchar(20) NOT NULL DEFAULT '' COMMENT '游戏全拼',
  `content` text NOT NULL COMMENT '公告内容',
  `page` varchar(20) NOT NULL COMMENT '页面',
  `flag` tinyint(4) NOT NULL COMMENT '页面标识',
  `updateTime` int(11) DEFAULT '0' COMMENT '最后修改时间',
  `updatePerson` varchar(20) NOT NULL DEFAULT '' COMMENT '最后修改人',
  `remark` varchar(255) DEFAULT '' COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `noticeconfig`
--

INSERT INTO `noticeconfig` (`id`, `game`, `content`, `page`, `flag`, `updateTime`, `updatePerson`, `remark`) VALUES
(1, 'nanjing', '<p>尊敬的代理，欢迎来到情怀南京麻将代理后台！</p><p><br/></p><p>情怀南京麻将由新华社主办的中国最具影响力的网络媒体和具有全球影响力的中文网站—新华网出品！安全稳定，绿色健康，轻松赚钱！</p><p>情怀南京麻将是合法合规的棋牌休闲娱乐APP，严禁用于赌博、抽水等违法活动，如有发现将向公安机关举报！</p><p><br/></p><p>近期活动：<br/>单笔充值大赠送，最高获赠30%！<br/>累计充值大返还，最高还能返10%！<br/>介绍代理永久提成5%！<br/>更多优惠将持续推出，敬请期待！<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p>', 'index/index', 1, 1529639700, 'mjqxadmin', '情怀南京-首页第一栏'),
(2, 'jiangdu', '<p>尊敬的代理，欢迎来到情怀江都麻将代理后台！</p><p><br/>情怀江都麻将由新华社主办的中国最具影响力的网络媒体和具有全球影响力的中文网站—新华网出品！安全稳定，绿色健康，轻松赚钱！<br/><br/></p><p>情怀江都麻将是合法合规的棋牌休闲娱乐APP，严禁用于赌博、抽水等违法活动，如有发现将向公安机关举报！<br/></p><p><br/></p>', 'index/index', 1, 1529639715, 'mjqxadmin', '情怀江都首页第一栏'),
(5, 'nanjing', '月度充值满返，最高返还10%，利润再提高10%！每月都将有新的优惠活动推出哦！<br>\r\n                        3000元返钻5%，5000元返钻7%，10000元返钻10%', 'buy/shop', 1, 1511331387, 'mjqxadmin', '情怀南京购买钻石页第一栏'),
(6, 'jiangdu', '更多精彩，敬请期待', 'buy/shop', 1, 1511331387, 'mjqxadmin', '情怀江都购买钻石第一栏'),
(7, 'jiangdu', '<p>1.选择点击对应价位的购钻按钮，一次性购买越多，赠送越多！最多赠送20%！<br/>2.可以通过支付宝和余额两种支付方式购买钻石，选择余额支付将享受额外6%的赠送钻石！<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'buy/shop', 2, 1511503379, 'mjqxadmin', '情怀江都购买钻石第二栏'),
(8, 'nanjing', '<p>1.选择点击对应价位的购钻按钮，一次性购买越多，赠送越多！最多赠送30%！<br/>2.可以通过支付宝和余额两种支付方式购买钻石，选择余额支付将享受额外6%的赠送钻石！<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'buy/shop', 2, 1514265282, 'mjqxadmin', '情怀南京购买钻石第二栏'),
(9, 'gaochun', '<p>尊敬的代理，欢迎来到情怀高淳麻将代理后台！</p><p><br/>情怀高淳麻将由新华社主办的中国最具影响力的网络媒体和具有全球影响力的中文网站—新华网出品！安全稳定，绿色健康，轻松赚钱！<br/></p><p><br/></p><p>情怀高淳麻将是合法合规的棋牌休闲娱乐APP，严禁用于赌博、抽水等违法活动，如有发现将向公安机关举报！</p><p><br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p>', 'index/index', 1, 1529639688, 'mjqxadmin', '情怀高淳-首页第一栏'),
(10, 'gaochun', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, &quot;Luxi Sans&quot;, &quot;DejaVu Sans&quot;, Tahoma, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft YaHei&quot;; font-size: 12px; background-color: rgb(245, 247, 249);\"></span>更多精彩，敬请期待&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'buy/shop', 1, 1514265205, 'mjqxadmin', '情怀高淳购买钻石页第一栏'),
(11, 'gaochun', '<p>1.选择点击对应价位的购钻按钮，一次性购买越多，赠送越多！最多赠送30%！<br/>2.可以通过支付宝和余额两种支付方式购买钻石，选择余额支付将享受额外6%的赠送钻石！<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'buy/shop', 2, 1514265291, 'mjqxadmin', '情怀高淳购买钻石第二栏');

-- --------------------------------------------------------

--
-- 表的结构 `paychannelconfig`
--

CREATE TABLE `paychannelconfig` (
  `id` int(11) NOT NULL,
  `game` varchar(10) NOT NULL COMMENT '游戏名称',
  `systemID` tinyint(4) NOT NULL,
  `channelID` tinyint(1) NOT NULL COMMENT '支付通道ID1-现在2-爱贝',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `addPerson` varchar(20) NOT NULL COMMENT '添加人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付通道配置表';

--
-- 转存表中的数据 `paychannelconfig`
--

INSERT INTO `paychannelconfig` (`id`, `game`, `systemID`, `channelID`, `addtime`, `addPerson`) VALUES
(1, 'nanjing', 2, 3, 1508480515, 'mjqxadmin'),
(3, 'nanjing', 1, 3, 1508480515, 'mjqxadmin'),
(4, 'jiangdu', 1, 3, 1508480515, 'mjqxadmin'),
(5, 'jiangdu', 2, 3, 1508480515, 'mjqxadmin'),
(6, 'gaochun', 1, 2, 1508480515, 'mjqxadmin'),
(7, 'gaochun', 2, 2, 1508480515, 'mjqxadmin'),
(8, 'lianshui', 1, 2, 1, 'mjqxadmin'),
(9, 'lianshui', 2, 2, 1, 'mjqxadmin'),
(10, 'xinghua', 1, 2, 1, 'mjqxadmin'),
(11, 'xinghua', 2, 2, 1, 'mjqxadmin'),
(12, 'huaian', 1, 2, 1, 'mjqxadmin'),
(13, 'huaian', 2, 2, 1, 'mjqxadmin'),
(14, 'fuzhou', 1, 2, 0, 'mjqxadmin'),
(15, 'fuzhou', 2, 2, 0, ''),
(16, 'yangzhou', 1, 2, 0, ''),
(17, 'yangzhou', 2, 2, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `qinghuaicard`
--

CREATE TABLE `qinghuaicard` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ptype` tinyint(2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `qinghuaitg`
--

CREATE TABLE `qinghuaitg` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `redpacketrecord`
--

CREATE TABLE `redpacketrecord` (
  `ID` int(10) UNSIGNED NOT NULL,
  `BID` int(10) UNSIGNED NOT NULL COMMENT '红包ID',
  `UserID` int(10) UNSIGNED NOT NULL,
  `Game` varchar(50) NOT NULL,
  `Type` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '类型,1为转盘红包,2为邀请红包',
  `Remark` varchar(250) NOT NULL COMMENT '备注',
  `Opadmin` varchar(50) NOT NULL COMMENT '操作人',
  `AddTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='红包发放记录表';

-- --------------------------------------------------------

--
-- 表的结构 `reportdata`
--

CREATE TABLE `reportdata` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '报表名称',
  `proc` varchar(20) NOT NULL COMMENT '存储过程名称',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 0：不展示  1：展示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wechattoken`
--

CREATE TABLE `wechattoken` (
  `id` tinyint(4) NOT NULL,
  `game` varchar(30) NOT NULL,
  `token` text NOT NULL,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公众号基础token表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountadmin`
--
ALTER TABLE `accountadmin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `adminareaassoc`
--
ALTER TABLE `adminareaassoc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admingameassoc`
--
ALTER TABLE `admingameassoc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `agentbank`
--
ALTER TABLE `agentbank`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `agentgameassoc`
--
ALTER TABLE `agentgameassoc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `agentperdefault`
--
ALTER TABLE `agentperdefault`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backloginlog`
--
ALTER TABLE `backloginlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bdgameassoc`
--
ALTER TABLE `bdgameassoc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bds`
--
ALTER TABLE `bds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Qp` (`Qp`);

--
-- Indexes for table `managebddata`
--
ALTER TABLE `managebddata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managebdinfo`
--
ALTER TABLE `managebdinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manageidcard`
--
ALTER TABLE `manageidcard`
  ADD PRIMARY KEY (`AgentID`);

--
-- Indexes for table `managemodule`
--
ALTER TABLE `managemodule`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `managerole`
--
ALTER TABLE `managerole`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `managerule`
--
ALTER TABLE `managerule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeconfig`
--
ALTER TABLE `noticeconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paychannelconfig`
--
ALTER TABLE `paychannelconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qinghuaicard`
--
ALTER TABLE `qinghuaicard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qinghuaitg`
--
ALTER TABLE `qinghuaitg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redpacketrecord`
--
ALTER TABLE `redpacketrecord`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reportdata`
--
ALTER TABLE `reportdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wechattoken`
--
ALTER TABLE `wechattoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game` (`game`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `accountadmin`
--
ALTER TABLE `accountadmin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- 使用表AUTO_INCREMENT `adminareaassoc`
--
ALTER TABLE `adminareaassoc`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `admingameassoc`
--
ALTER TABLE `admingameassoc`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- 使用表AUTO_INCREMENT `agentbank`
--
ALTER TABLE `agentbank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `agentgameassoc`
--
ALTER TABLE `agentgameassoc`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `agentperdefault`
--
ALTER TABLE `agentperdefault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `agents`
--
ALTER TABLE `agents`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `areas`
--
ALTER TABLE `areas`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `backloginlog`
--
ALTER TABLE `backloginlog`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70463;

--
-- 使用表AUTO_INCREMENT `bdgameassoc`
--
ALTER TABLE `bdgameassoc`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `bds`
--
ALTER TABLE `bds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `managebddata`
--
ALTER TABLE `managebddata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `managebdinfo`
--
ALTER TABLE `managebdinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `managemodule`
--
ALTER TABLE `managemodule`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用表AUTO_INCREMENT `managerole`
--
ALTER TABLE `managerole`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `managerule`
--
ALTER TABLE `managerule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1917;

--
-- 使用表AUTO_INCREMENT `noticeconfig`
--
ALTER TABLE `noticeconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `paychannelconfig`
--
ALTER TABLE `paychannelconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `qinghuaicard`
--
ALTER TABLE `qinghuaicard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `qinghuaitg`
--
ALTER TABLE `qinghuaitg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `redpacketrecord`
--
ALTER TABLE `redpacketrecord`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `reportdata`
--
ALTER TABLE `reportdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wechattoken`
--
ALTER TABLE `wechattoken`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
