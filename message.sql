-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-05-02 10:53:29
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `message`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `create_time`, `update_time`) VALUES
(1, '讲个笑话：', '男孩温柔的对女孩说，傻瓜，你不会做饭不会洗衣服，以后没有我了，你怎么办。女孩为证明自己一个人也可以过的很好，然后，跟男孩分手了。。分手了。。。了。。', 1491570685, 0),
(2, '奇趣百科', '一位上京赶考的穷书生去避雨，巧遇一位姑娘。书生和姑娘吟诗作对，相见恨晚，竟在当晚私定终身。次日，雨过天晴，书生继续赶路，他和姑娘依依惜别，并许诺：“若我得中状元，必定登门迎娶！”姑娘等那书生一走，便将他的姓名记录在册，一边写，一边自言自语道：“十五个了！分散投资，总有一个会考中吧！”', 1491570828, 0),
(3, '兰亭集序', '永和九年， 岁在癸丑， 暮春之初， 会于会稽山阴之兰亭， 修禊事也。 群贤毕至， 少长咸集。 此地有崇山峻岭， 茂林修竹， 又有清流激湍， 映带左右， 引以为流觞曲水， 列坐其次。 虽无丝竹管弦之盛， 一觞一咏， 亦足以畅叙幽情。\r\n是日也， 天朗气清， 惠风和畅， 仰观宇宙之大， 俯察品类之盛， 所以游目骋怀， 足以极视听之娱， 信可乐也。\r\n夫人之相与， 俯仰一世， 或取诸怀抱， 悟言一室之内； 或因寄所托， 放浪形骸之外。 虽趣舍万殊， 静躁不同， 当其欣于所遇， 暂得于己， 快然自足， 不知老之将至； 及其所之既倦， 情随事迁， 感慨系之矣。 向之所欣， 俯仰之间， 已为陈迹， 犹不能不以之兴怀， 况修短随化， 终期于尽！ 古人云： “死生亦大矣。” 岂不痛哉！\r\n每览昔人兴感之由， 若合一契， 未尝不临文嗟悼， 不能喻之于怀。 固知一死生为虚诞， 齐彭殇为妄作。 后之视今， 亦犹今之视昔。 悲夫！ 故列叙时人， 录其所述， 虽世殊事异， 所以兴怀， 其致一也。 后之览者， 亦将有感于斯文。', 1491571029, 0),
(4, '变形金刚系列电影十周年，盛典城市由你决定！', '亲爱的变形金刚粉丝们，变形金刚电影迎来十周年，这次超级盛典的举办地将由变形金刚粉丝们自己投票决定！20个候选城市哪个地方的变形金刚粉丝多，这次官方的盛典活动就在哪里举行！！！', 1491571330, 0),
(5, '最是那一低头的温柔', '恰似水莲花不胜凉风的娇羞', 1491571494, 0),
(6, '几何智力题', '假如你被关在一个没有门窗，四壁，天花板，地板雪白的房间。房间中只有一支铅笔和一个等腰直角三角形木片。逃出房间的唯一方法是精确地画出一个等边三角形。怎么办?', 1491571657, 0),
(7, '乐山大佛是世界最大', '世界上还有比乐山大佛更宏伟的建筑吗？', 1491571834, 0),
(8, '文字和心理', '-听说你学心理学？\r\n-嗯。\r\n-那你知不知道我心里在想什么？\r\n-……\r\n\r\n虽然我不知道你在想什么，但我可以用文字加上原理，给你科普有趣的小知识。', 1491571994, 0),
(9, 'UMEditor测试', '&lt;p&gt;&lt;strong&gt;实例化UMEditor&lt;/strong&gt;&lt;/p&gt;&lt;hr/&gt;&lt;p&gt;添加表情测试：&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0024.gif&quot;/&gt;&lt;img src=&quot;http://img.baidu.com/hi/tsj/t_0003.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;添加图片测试：&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/MessageBoard/public/static/um/php/upload/20170502/14937147416805.png&quot; style=&quot;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://localhost/MessageBoard/public/static/um/php/upload/20170502/14937147568048.png&quot; style=&quot;&quot;/&gt;&lt;/p&gt;&lt;p&gt;添加视频测试【MP4格式】：&lt;video width=&quot;300&quot; height=&quot;200&quot; style=&quot;float:none&quot; controls=&quot;&quot; autoplay=&quot;&quot; src=&quot;http://demo.itivy.com/html5-canvas-video/BigBuckBunny_640x360.mp4&quot;&gt;&lt;/video&gt;&lt;/p&gt;', 1493714823, 0);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `username`, `content`, `create_time`, `update_time`) VALUES
(1, 2, '陈独影', '心在莫名的痛！', 1491570856, 0),
(2, 2, '夜＊凄杀', '书生说：第十五个了。在忽悠几个能在京城买套房了', 1491570877, 0),
(3, 3, '李白', '擦咧！', 1491571061, 0),
(4, 3, '杜甫', '小伙子不错呦！', 1491571078, 0),
(5, 3, '王羲之', 'WTF', 1491571108, 0),
(6, 3, '白居易', '楼上装逼！', 1491571129, 0),
(7, 3, '路人甲', '+1', 1491571145, 0),
(8, 4, '楼主', '变形金刚系列电影十周年盛典城市票选活动官方海报\r\n\r\n所以，请你给自己喜爱的以下20个候选城市进行投票，获得赞数最高的候选城市将有机会举办变形金刚系列电影十周年盛典活动，最终获胜的城市将于2017年第七届北京国际电影节期间公布。此外，参与投票和讨论的用户将有机会参加盛典活动并和主创见面哦。\r\n还等什么？给你心目中最喜欢的候选城市投票吧！\r\n\r\n北京、成都、重庆、福州、广州、哈尔滨、杭州、合肥、济南、南京、上海、深圳、沈阳、石家庄、苏州、天津、武汉、西安、长沙、郑州\r\n\r\n此外，在变形金刚系列电影十周年之际，粉丝们可以通过#我和变形金刚十年#话题参与回帖讨论，写下与变形金刚息息相关的故事，也许源于儿时不可求的玩具，也许是陪伴着成长的动漫，也许是和男女朋友一起去享受的电影时的感情……把你的故事写下来，分享同属于变形金刚粉丝的感动！\r\n\r\n参与投票和参与互动将有机会获得变形金刚正版模型及通兑的电子观影券，我们将在4月5日、4月12日、4月17日公布三批随机抽取的获奖用户名单，每批奖品分别为50张电影票和20个模型~\r\n', 1491571367, 0),
(9, 4, '超神用户ID', '竟然有石家庄不过我感觉应该没人投╮（╯＿╰）╭', 1491571392, 0),
(10, 5, 'leo', '骚的一批', 1491571513, 0),
(11, 6, 'wangruyi52tsy', 'WTF', 1491571718, 0),
(12, 6, '夏河三千露', '看晕了', 1491571741, 0),
(13, 6, 'wangruyi52tsy', '其实就是先作了个30,60,90的三角形，再把两个拼起来', 1491571769, 0),
(14, 6, '5如烟', '直接在墙角画不就行了', 1491571784, 0),
(15, 7, '三十三公分', '在悬崖上硬生生凿出一尊大佛，真是厉害得不行。世界上还有哪些建筑这么叼？', 1491571865, 0),
(16, 7, 'dfaeffgkopj', ' 巴米扬大佛', 1491571885, 0),
(17, 7, '天命之幸', '已经被塔利班炸了', 1491571900, 0),
(18, 7, 'CC我又梦见你', '巴米扬算什么么，聂人王和雄霸在乐山大佛头顶上打过架，巴米扬有什么事迹可传', 1491571927, 0),
(19, 7, '西蜀之去南海', '只是说造像的话，好像狮身人面更大', 1491571950, 0),
(20, 8, '权利_如此卑微', '我猜想资料贴或学术贴如果理论性太强\r\n可能大家的兴致就不高\r\n因此希望借此贴以一个不一样的方式\r\n分享那些心理学的小知识\r\n我会以写一段文字，对应一段原理解释的形式来完成这篇贴子\r\n文字的风格和形式不定\r\n本贴所有文字部分除注明出处外都是原创\r\n原理部分会结合我的所学并查阅资料进行整理\r\n如果想要转载，请先征得我的同意\r\n祝你看帖愉快\r\n（我不介意插楼，请随意）', 1491572028, 0),
(21, 8, '权利_如此卑微', '【1】\r\n我和你曾分散在世界上的两个角落，没有任何交集。有一天你闯入我的视线，我却仿佛看不见。因为你身上的味道沁人心脾，我闭上眼，贪婪地呼吸，那也许是灵魂深处最原始的香气。但是当我睁开双眼，却发现你已经不见了，此地空留你的余香。我每天都想见到你。\r\n让我惊喜的是，你每天都会按时出现。终于有一天，我忍不住张开双臂拥抱你，再也不愿分离。\r\n我们相爱了。我终于知道，什么叫做一日不见，如隔三秋。你太可爱了，哪里都可爱。\r\n“他身上好像没有味道了。”某天我听到这句话，错愕地站在原地。我牵起你的手，把头靠近你的胸口，深呼吸。果然，什么味道也没有了。可是为什么，我的手还紧紧地攥着你的手，我也不愿抬起头。我听着你的心跳。\r\n我现在爱你，好像和香气没关系。', 1491572058, 0),
(23, 4, '永恒', '测试一下', 1491572799, 0),
(24, 9, '评论测试', '<p><em><img src="http://img.baidu.com/hi/jx2/j_0002.gif"/></em><br/></p><p><em><img src="http://localhost/MessageBoard/public/static/um/php/upload/20170502/14937149553093.jpg" style="width: 183px; height: 306px;"/></em></p><p><video width="420" height="280" style="float:right" controls="" autoplay="" src="http://demo.itivy.com/html5-canvas-video/BigBuckBunny_640x360.mp4"></video><em></em></p>', 1493715004, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `UserPassward` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `UserEmail`, `UserPassward`) VALUES
(1, 'leooman', '351234955@qq.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

