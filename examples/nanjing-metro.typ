#import "../src/lib.typ": *
#import "../src/core/vec.typ"


#set page(width: auto, height: auto, margin: 0pt)

#let (N, S, W, E, NW, NE, SW, SE) = dirs

#let corner-radius = 0.2
#let pin-round = pin.with(corner-radius: corner-radius)

#let lines = (
  line(
    id: "1",
    color: rgb("#009ace"),

    pin(x: 5., y: 11., cfg: "L1-N"),
    station([八卦洲大桥南], [BAGUAZHOUDAQIAONAN], anchor: W, logo-anchor: S),
    station([笆斗山], [BADOUSHAN], x: 3.),
    pin-round(x: 2., d: W),
    station([燕子矶], [YANZIJI], y: 10.),
    station([吉祥庵], [JIXIANG'AN]),
    station([晓庄], [XIAOZHUANG]),
    pin(y: 7., d: S, cfg: none),
    station([迈皋桥], [MAIGAOQIAO], y: 7., logo-anchor: SE),
    pin-round(y: 6.5, d: S),
    station([红山动物园], [HONGSHAN ZOO], y: 6.1, anchor: SE),
    station([南京站], [NANJING RAILWAY STATION], anchor: E),
    pin-round(x: 0., d: SW),
    station([新模范马路], [XINMOFANMALU], y: 4),
    station([玄武门], [XUANWUMEN]),
    station([鼓楼], [GULOU]),
    station([珠江路], [ZHUJIANGLU]),
    station([新街口], [XINJIEKOU]),
    station([张府园], [ZHANGFUYUAN]),
    station([三山街], [SANSHANJIE], y: -2.),
    pin-round(y: -3.5, d: S),
    station([中华门], [ZHONGHUAMEN], y: -4.),
    station([安德门], [ANDEMEN], y: -5.25),
    pin-round(x: -2., d: SW),
    station([天隆寺], [TIANLONGSI], y: -6.5),
    pin-round(y: -7., d: S),
    station([软件大道], [RUANJIANDADAO], x: -1.),
    station([花神庙], [HUASHENMIAO], x: 0.),
    pin-round(x: 1. + 0.1, d: E),
    station([南京南站], [NANJING SOUTH RAILWAY STATION], y: -8., anchor: NW),
    pin-round(y: -8.5, d: S),
    pin-round(x: 2.5, d: E),
    station([双龙大道], [SHUANGLONGDADAO], y: -9.),
    station([河定桥], [HEDINGQIAO]),
    station([胜太路], [SHENGTAILU], y: -11.),
    station([百家湖], [BAIJIAHU], y: -12.75),
    pin-round(y: -13., d: S),
    station([小龙湾], [XIAOLONGWAN], anchor: N),
    station([竹山路], [ZHUSHANLU]),
    station([天印大道], [TIANYINDADAO], x: 6.),
    station([龙眠大道], [LONGMIANDADAO], x: 7.),
    pin-round(x: 7.5, d: E),
    station([南医大·江苏经贸学院], [NMU/JIETT]),
    station([南京交院], [NJCI]),
    station([中国药科大学], [CPU], logo-anchor: NW),
    pin(y: -15., d: SE),
  ),
  line(
    id: "2",
    color: rgb("#a6093d"),

    pin(x: -12., y: -8.5, cfg: "L2-W"),
    station([鱼嘴], [YUZUI], marker-rotation: 90deg, logo-anchor: SE),
    station([天保街], [TIAOBAOJIE]),
    station([青莲街], [QINGLIANJIE], anchor: N),
    station([螺塘路], [LUOTANGLU], anchor: NW),
    pin-round(x: -7.5 + 0.2, d: E),
    pin(x: -6.75 + 0.2, y: -7.75, d: NE, cfg: none),
    station([油坊桥], [YOUFANGQIAO], r: 0, anchor: W, logo-anchor: NE),
    pin-round(x: -5.75, d: NE),
    station([雨润大街], [YUANTONG], y: -6.25, anchor: NE),
    pin-round(x: -6.75, d: NW),
    station([元通], [YUANTONG]),
    station([奥体东], [OLYMPIC STADIUM EAST], y: -4.),
    pin-round(x: -4.5, d: NE),
    station([兴隆大街], [XINGLONGDAJIE], y: -3.),
    station([集庆门大街], [XINGLONGDAJIE], y: -2, cfg-not: "no-jqmdj"),
    pin-round(y: -1, d: N),
    station([云锦路], [YUNJINLU]),
    pin-round(x: -3.25, d: E),
    station([莫愁湖], [MOCHOUHU], x: -3.),
    pin-round(y: 0., d: NE),
    station([汉中门], [HANZHONGMEN], x: -2.),
    station([上海路], [SHANGHAILU]),
    station([新街口], [XINJIEKOU]),
    station([大行宫], [DAXINGGONG]),
    station([西安门], [XI'ANMEN], x: 2., anchor: N),
    station([明故宫], [MINGGUGONG]),
    station([苜蓿园], [MUXUYUAN], x: 5.),
    station([下马坊], [XIAMAFANG]),
    station([孝陵卫], [XIAOLINGWEI], x: 7.),
    station([钟灵街], [ZHONGLINGJIE], x: 8.),
    pin-round(x: 8.5, d: E),
    pin-round(y: 1. + 0.1, d: NE),
    station([马群], [MAQUN], x: 10.0),
    pin-round(x: 11., d: E),
    station([金马路], [JINMALU], anchor: E, y: 3.),
    pin-round(y: 3.75, d: N),
    station([仙鹤门], [XIANHEMEN], x: 11.5),
    station([学则路], [XUEZELU]),
    station([仙林中心], [XIANLINZHONGXIN]),
    station([羊山公园], [YANGSHANGONGYUAN], x: 14.0),
    pin-round(y: 7., d: NE),
    station([南大仙林校区], [NJU XIANLIN CAMPUS], x: 15.5),
    station([经天路], [JINGTIANLU], x: 17., anchor: N, logo-anchor: S),
    pin(x: 17., d: E, cfg: "L2-EE"),
    pin-round(x: 18.4, d: E),
    station([仙林湖], [XIANLINHU], anchor: E),
    pin(y: 8., d: N),
  ),
  line(
    id: "3",
    color: rgb("#009a44"),

    pin(x: -11, y: 12.),
    station([林场], [LINCHANG], logo-anchor: N),
    station([星火路], [XINGHUOLU], x: -9.5),
    station([东大成贤学院], [SEU CHENGXIAN COLLEGE], anchor: N),
    station([泰冯路], [TAIFENGLU]),
    station([天润城], [TIANRUNCHENG], x: -6.),
    pin-round(x: -5.5, y: 12., d: E),
    station([柳洲东路], [LIUZHOUDONGLU]),
    station([上元门], [SHANGYUANMEN], x: -2.25),
    station([五塘广场], [WUTANGGUANGCHANG], anchor: E),
    station([小市], [XIAOSHI]),
    station([南京站], [NANJING RAILWAY STATION]),
    pin-round(y: 4.5, d: SE),
    station([南京林业大学·新庄], [XINZHUANG], y: 4.),
    pin-round(y: 3.5, d: S),
    pin-round(x: 1., d: SW),
    station([鸡鸣寺], [JIMINGSI], y: 2.),
    station([浮桥], [FUQIAO]),
    station([大行宫], [DAXINGGONG]),
    station([常府街], [CHANGFUJIE]),
    station([夫子庙], [FUZIMIAO], y: -2.),
    pin-round(y: -2.25, d: S),
    pin-round(x: 1.5, d: SE),
    station([武定门], [WUDINGMEN], y: -3.),
    pin-round(y: -3.75, d: S),
    station([雨花门], [YUHUAMMEN], y: -4.),
    pin-round(x: 2., d: SE),
    station([卡子门], [KAZIMEN]),
    station([大明路], [DAMINGLU], anchor: NW),
    pin-round(y: -7.5, d: S),
    station([明发广场], [MINGFAGUANGCHANG]),
    pin-round(x: 1., d: E),
    station([南京南站], [NANJING SOUTH RAILWAY STATION], y: -8.),
    station([宏运大道], [HONGYUNDADAO], y: -9.),
    station([胜太西路], [SHENGTAIXILU], y: -11.),
    station([天元西路], [TIANYUANXILU], y: -13.),
    pin-round(y: -14., d: S),
    station([九龙湖], [JIULONGHU]),
    pin-round(x: 3., d: E),
    station([诚信大道], [CHENGXINDADAO], y: -15.),
    station([东大九龙湖校区], [SEU JIULONGHU CAMPUS]),
    station([秣周东路], [MOZHOUDONGLU], r: 1., logo-anchor: E),
    pin(y: -17., d: S, cfg: "3-3"),
    station([上秦淮西], [SHANGQINHUAIXI], r: 0.5),
    station([秣陵], [MOLING], logo-anchor: E),
    pin(y: -19., d: S),
  ),
  line(
    id: "4",
    color: rgb("#7d55c7"),

    pin(x: -12., y: 13., cfg: "L4-3"),
    station([余家营], [YUJIAYING], logo-anchor: E),
    station([南京北站], [NANJING NORTH RAILWAY STATION], anchor: NW),
    station([护国村], [HUGUOCUN], y: 11.0),
    pin-round(y: 10.75, d: S),
    pin-round(y: 9.25, d: SE),
    station([龙之谷], [LONGZHIGU]),
    pin-round(y: 8.5, d: S),
    pin(x: -10.75, d: SW, cfg: "L4-2"),
    station([珍珠泉东], [ZHENZHUQUANDONG], r: 0., anchor: SE, logo-anchor: SE),
    station([瑞龙郊野公园], [RUILONGJIAOYEGONGYUAN], anchor: SE),
    pin-round(y: 7.25, d: SW),
    station([石佛寺], [SHIFOSI], y: 7.),
    station([定山大街], [DINGSHANDAJIE]),
    station([江北商务区], [JIANGBEISHANGWUQU], anchor: W),
    station([江北市民中心], [JIANGBEISHIMINZHONGXIN], y: 5.25),
    station([江心洲尾], [JIANGXINZHOUWEI], y: 2.5),
    pin-round(x: -6.5, y: 2.),
    pin(x: -5., y: 2., cfg: none),
    station([龙江], [LONGJIANG], logo-anchor: E),
    station([草场门], [CAOCHANGMEN]),
    station([云南路], [YUNNANLU]),
    station([鼓楼], [GULOU]),
    station([鸡鸣寺], [JIMINGSI]),
    station([九华山], [JIUHUASHAN], x: 2., anchor: N),
    pin-round(x: 2.5, d: E),
    station([岗子村], [GANGZICUN], y: 2.75),
    station([蒋王庙], [JIANGWANGMIAO], x: 4.5),
    station([王家湾], [WANGJIAWAN], x: 5.25),
    pin-round(x: 5.5, d: NE),
    station([聚宝山], [JUBAOSHAN], x: 8.0),
    pin-round(x: 9.5, d: E),
    station([徐庄], [XUZHUANG], x: 10.),
    pin-round(x: 11. + 0.2, d: SE),
    station([金马路], [JINMALU], y: 3.),
    pin-round(y: 2., d: S),
    pin-round(dx: 0.5, d: E),
    pin-round(dx: 1., d: NE),
    station([汇通路], [HUITONGLU], x: 13.),
    station([灵山], [LINGSHAN], x: 14.),
    station([东流], [DONGLIU], x: 16.),
    pin-round(x: 18.0, d: E),
    station([孟北], [MENGBEI], x: 18.25),
    pin-round(dx: 1.0, d: NE),
    station([西岗桦墅], [XIGANGHUASHU], dy: 0.75),
    pin-round(y: 7.0, d: N),
    pin-round(dx: -0.4, d: NW),
    station([仙林湖], [XIANLINHU], r: 1.0, logo-anchor: SW),
    pin(y: 8., d: N, cfg: "L4-4"),
    pin-round(y: 8.5, d: N),
    pin-round(x: 18.25, d: NW),
    station([白象], [BAIXIANG], y: 9.5, anchor: E),
    pin-round(y: 10.0, d: N),
    pin-round(x: 18.5, d: NE),
    station([官窑山路], [GUANYAOSHANLU], anchor: SE),
    pin-round(y: 11.0, d: N),
    station([华侨城], [HUAQIAOCHENG], x: 19.0),
    station([欢乐谷], [HUANLEGU], logo-anchor: N),
    pin(x: 20.0, d: E),
  ),
  line(
    id: "5",
    color: rgb("#fdda24"),
    optional: true,

    pin(x: -4.5, y: 7., cfg: "L5-N"),
    station([方家营], [FANGJIAYING], logo-anchor: S),
    station([南京西站], [NANJINGXIZHAN], anchor: SE),
    pin-round(y: 5.75, d: SW),
    station([静海寺], [JINGHAISI], dy: -0.25, anchor: E),
    pin-round(y: 5., d: S),
    station([下关], [XIAGUAN], anchor: SW),
    station([盐仓桥], [YANCANGQIAO], x: -3.75),
    pin-round(x: -3.5, d: E),
    station([福建路], [FUJIANLU]),
    station([虹桥], [HONGQIAO]),
    station([青春广场], [QINGCHUNGUANGCHANG], x: -1.5),
    pin-round(x: -1., d: SE),
    station([云南路], [YUNNANLU]),
    station([五台山], [WUTAISHAN]),
    station([上海路], [SHANGHAILU]),
    station([朝天宫], [CHAOTIANGONG]),
    pin-round(y: -2., d: S),
    station([三山街], [SANSHANJIE]),
    station([夫子庙], [FUZIMIAO]),
    station([通济门], [TONGJIMEN], x: 2., anchor: N),
    station([光华门], [GUANGHUAMEN]),
    pin-round(x: 4.5, d: E),
    station([石门坎], [SHIMENKAN]),
    station([七桥瓮], [QIQIAOWENG], y: -4.),
    station([大校场], [DAJIAOCHANG]),
    station([神机营], [SHENJIYING], y: -7.),
    station([东山香樟园], [DONGSHANXIANGZHANGYUAN], y: -9.),
    pin(y: -10., d: S, cfg: "L5-S"),
    station([文靖路], [WENJINGLU], r: 0.),
    station([东山], [DONGSHAN]),
    station([新亭路], [XINTINGLU]),
    station([竹山路], [ZHUSHANLU]),
    station([科宁路], [KENINGLU]),
    pin-round(y: -15., d: S),
    station([前庄], [QIANZHUANG], x: 4., anchor: N),
    station([诚信大道], [CHENGXINDADAO]),
    pin-round(x: 2.5, d: W),
    pin-round(y: -16., d: S),
    station([九龙湖南], [JIULONGHUNAN], x: 1.),
    station([吉印大道], [JIYINDADAO], logo-anchor: SE),
    pin(x: -0.5, d: W),
  ),
  line(
    id: "6",
    color: rgb("#4bbbb4"),
    optional: true,

    pin(x: 1. + 0.05, y: -8. + 0.1),
    station([南京南站], [NANJING SOUTH RAILWAY STATION], x: 1.),
    pin-round(x: 3.5, d: E),
    station([夹岗], [JIAGANG], y: -7.),
    station([机场跑道旧址], [JICHANGPAODAOJIUZHI], anchor: NE),
    station([市中医院], [SHIZHONGYIYUAN]),
    station([应天东街], [YINGTIANDONGJIE]),
    station([中和桥], [ZHONGHEQIAO]),
    station([光华门], [GUANGHUAMEN]),
    station([明故宫], [MINGGUGONG]),
    station([富贵山], [FUGUISHAN], y: 1.5),
    pin-round(y: 2., d: N),
    pin-round(y: 2.5 - 0.07, d: NW),
    station([岗子村], [GANGZICUN]),
    pin-round(x: 4., d: NE),
    pin-round(y: 4., d: N),
    station([花园路], [HUAYUANLU], y: 4.5),
    pin-round(x: 3., d: NW),
    station([红山新城], [HONGSHANXINCHENG], y: 6.),
    pin-round(y: 6.5, d: N),
    station([营苑南路], [YINGYUANNANLU]),
    pin-round(x: 4., d: NE),
    station([万寿], [WANSHOU]),
    pin-round(y: 10., d: N),
    station([燕江新城], [YANJIANGXINCHENG], x: 4.5),
    station([兴学路], [XINGXUELU], x: 6.),
    station([兴智街], [XINGZHIJIE]),
    station([十月广场], [SHIYUEGUANGCHANG], x: 9.5, anchor: S),
    pin-round(x: 11.0, d: E),
    pin-round(dy: 0.5, d: N),
    station([金陵石化], [JINLINGSHIHUA], x: 12.5),
    station([栖霞山], [QIXIASHAN], r: 1.0, logo-anchor: NW),
    pin(x: 15., d: E, cfg: "L6-E"),
    pin-round(x: 18.0, d: E),
    pin-round(y: 10.0 + 0.1, d: S),
    station([摄山], [SHESHAN], r: 1.0, anchor: N, logo-anchor: S),
    pin(x: 19.0, d: E),
  ),
  line(
    id: "7",
    color: rgb("#4a7729"),
    optional: true,
    features: ("L7-full": ("L7-N", "L7-S", "L7-M")),

    pin(x: 10., y: 9., cfg: "L7-N"),
    station([仙新路], [XIANXINLU], marker-rotation: -45deg, logo-anchor: N, logo-offset: (0, -0.1)),
    station([尧化门], [YAOHUAMEN]),
    station([尧化新村], [YAOHUAXINCUN]),
    station([丁家庄南], [DINGJIAZHUANGNAN], y: 6.5),
    pin-round(x: 7., y: 6., d: W),
    station([丁家庄], [DINGJIAZHUANG], y: 7.),
    pin-round(x: 5., d: NW),
    station([万寿], [WANSHOU]),
    station([晓庄], [XIAOZHUANG]),
    station([幕府山], [MUFUSHAN], x: 0.5),
    pin-round(x: -1., d: W),
    station([五塘广场], [WUTANGGUANGCHANG]),
    pin-round(x: -1.5, d: SW),
    station([幕府西路], [MUFUXILU], r: 1., anchor: E),
    pin(y: 7., d: S, cfg: "L7-M"),
    station([钟阜路], [ZHONGFULU], anchor: SE),
    pin-round(y: 5.5, d: S),
    station([福建路], [FUJIANLU]),
    pin-round(x: -3., d: SW),
    station([古平岗], [GUPINGGANG], y: 3.25),
    station([草场门], [CAOCHANGMEN]),
    station([清凉山], [QINGLIANGSHAN]),
    station([莫愁湖], [MOCHOUHU]),
    station([大士茶亭], [DASHICHATING]),
    station([南湖], [NANHU]),
    station([应天大街], [YINGTIANDAJIE], y: -3),
    pin(y: -3., d: S, cfg: "L7-S"),
    pin-round(y: -3.5, d: S),
    station([梦都大街东], [MENGDUDAJIEDONG]),
    station([新城科技园], [XINCHENGKEJIYUAN]),
    station([中胜], [ZHONGSHENG]),
    station([嘉陵江东街], [JIALINGJIANGDONGJIE], y: -6.25),
    pin-round(y: -6.75, d: SW),
    pin-round(dx: -1., d: W),
    station([永初路], [YONGCHULU]),
    station([太清路], [TAIQINGLU], y: -7.75),
    pin-round(y: -8., d: SW),
    station([螺塘路], [LUOTANGLU]),
    pin-round(y: -9.5 + 0.14, d: S),
    station([西善桥], [XISHANQIAO], logo-anchor: SE),
    pin(y: -10. + 0.07, d: SW),
  ),
  line(
    id: "8",
    color: rgb("#ab2328"),
    optional: true,

    pin(x: -0.5, y: -4., cfg: none),
    station([中华门], [ZHONGHUAMEN]),
    station([雨花门], [YUHUAMMEN]),
    pin-round(x: 2.25, d: E),
    station([康安里], [KANGANLI]),
    pin-round(x: 3.25, d: NE),
    station([中和桥], [ZHONGHEQIAO]),
    station([石门坎], [SHIMENKAN]),
    station([胜利村], [SHENGLICUN], marker-rotation: 90deg),
    pin-round(x: 6.5, d: E),
    station([双拜岗], [SHUANGBAIGANG], x: 7.25),
    pin-round(dy: 1., d: NE),
    station([沧波门], [CANGBOMEN], x: 8.25),
    pin-round(x: 8.5, d: E),
    pin-round(x: 9., d: SE),
    station([建南], [JIANNAN]),
    pin-round(x: 10., d: E),
    station([麒麟生态公园], [QILINSHENGTAIGONGYUAN], y: -2.0),
    pin-round(x: 11., d: NE),
    station([天成路], [TIANCHENGLU]),
    pin-round(x: 12., d: E),
    station([定林], [DINGLIN]),
    pin-round(x: 13., d: NE),
    station([芝嘉路], [ZHIJIALU]),
    station([麒麟门], [QILINMEN]),
    pin-round(y: 2., d: N),
    pin-round(x: 14., d: E),
    station([灵山], [LINGSHAN]),
    pin-round(y: 5.5, d: N),
    station([仙林中心], [XIANLINZHONGXIN]),
    pin-round(x: 13., d: NW),
    pin-round(y: 8., d: N),
    station([文澜路], [WENLANLU]),
    pin-round(y: 9.25, d: NW),
    station([仙林站], [XIANLINZHAN]),
    pin-round(x: 10.75, d: SW),
    station([仙新路], [XIANXINLU]),
    pin-round(x: 9.5, d: NW),
    station([十月广场], [SHIYUEGUANGCHANG], logo-anchor: NE),
    pin(y: 10., d: N),
  ),
  line(
    id: "9",
    color: rgb("#fa4616"),
    optional: true,

    pin(x: 3. - 0.1, y: 6.),
    station([红山新城], [HONGSHANXINCHENG], logo-anchor: NE),
    pin-round(y: 5., d: S),
    station([红山路], [HONGSHANLU], x: 2.),
    pin-round(x: 1.5 - 0.15, d: W),
    station([南京站], [NANJING RAILWAY STATION]),
    pin-round(y: 6., d: NW),
    station([中央门], [ZHONGYANGMEN]),
    station([钟阜路], [ZHONGFULU]),
    station([四平路广场], [SIPINGLUGUANGCHANG]),
    pin-round(x: -5., d: W),
    station([下关], [XIAGUAN]),
    station([白云亭], [BAIYUNTING]),
    station([三汊河], [SANCHAHE]),
    station([龙江], [LONGJIANG]),
    station([管子桥], [GUANZIQIAO]),
    station([江东门], [JIANGDONGMEN]),
    pin-round(y: -1., d: S),
    station([清江南路], [QINGJIANNANLU], dx: -0.5),
    pin-round(dx: -1., d: W),
    station([上新河], [SHANGXINHE], y: -1.25, anchor: SE),
    station([绿博园], [LÜBOYUAN]),
    pin-round(dx: -1., d: SW),
    station([江苏大剧院·宪法公园], [JSCPA/XIANFAGONGYUAN], r: 1.0, anchor: E, logo-anchor: NE),
    pin(y: -3.0, d: S, cfg: "L9-2"),
    pin-round(y: -4.0, d: S),
    station([棉花堤], [MIANHUADI]),
    station([青奥村], [QINGAOCUN]),
    station([黄河路], [HUANGHELU]),
    station([淮河路], [HUAIHELU]),
    pin-round(y: -7.5, d: SW),
    station([龙王街], [LONGWANGJIE]),
    pin-round(x: -12.0, d: W),
    station([保双街], [BAOSHUANGJIE], y: -7.75),
    station([鱼嘴], [YUZUI]),
    pin(y: -8.5, d: S, cfg: "L9-3"),
    pin-round(y: -9.0, d: S),
    station([足球小镇], [ZUQIUXIAOZHEN], anchor: NE),
    pin-round(y: -9.7, d: SE),
    station([刘村], [LIUCUN], logo-anchor: SE),
    station([凤集大道], [FENGJIDADAO]),
    station([凤汇大道], [FENGHUIDADAO]),
    pin-round(x: -13.5, d: SW),
    station([板桥中心], [BANQIAOZHONGXIN]),
    pin-round(y: -12.5, d: S),
    station([板桥], [BANQIAO], marker-rotation: 45deg),
    station([莲花湖公园], [LIANHUAHUGONGYUAN], anchor: W, marker-rotation: 45deg, logo-anchor: NW),
    pin(x: -10.0, d: E),
  ),
  line(
    id: "10",
    color: rgb("#b9975b"),
    optional: true,

    pin(x: -18.5, y: 0., cfg: "L10-3"),
    station([科工园], [KEGONGYUAN], logo-anchor: SE),
    station([新胜河], [XINSHENGHE]),
    pin(x: -16.5, y: 2.),
    station([雨山路], [YUSHANLU], r: 0.0, cfg: none, logo-anchor: SE),
    station([文德路], [WENDELU]),
    station([龙华路], [LONGHUALU]),
    pin-round(x: -13.5, y: 5., d: NE),
    station([南京工业大学], [NANJING TECH]),
    station([浦口万汇城], [PUKOUWANHUICHENG]),
    station([临江·青奥体育公园], [LINJIANG/YOGSP], x: -11.5),
    station([江心洲], [JIANGXINZHOU], x: -8.25),
    station([绿博园], [LÜBOYUAN]),
    pin-round(x: -5.5, y: -3, d: SE),
    station([梦都大街], [MENGDUDAJIE], y: -3.25, anchor: SE),
    station([奥体中心], [OLYMPIC STADIUM], y: -3.75),
    pin-round(y: -4., d: SW),
    station([元通], [YUANTONG]),
    station([中胜], [ZHONGSHENG]),
    station([小行], [XIAOHANG]),
    pin-round(x: -4., d: SE),
    pin-round(x: -3. + 0.14, d: E),
    station([安德门], [ANDEMEN], r: 1.0, logo-anchor: SE),
    pin(y: -5.25, d: NE, cfg: "L10-2"),
    pin-round(y: -5., d: NE),
    station([共青团路], [GONGQINGTUANLU], x: -0.5, anchor: N),
    station([雨花台], [YUHUATAI], x: 0.5, anchor: N),
    station([卡子门], [KAZIMEN]),
    pin-round(x: 2.25, d: E),
    pin-round(x: 3.25, d: SE),
    station([机场跑道旧址], [JICHANGPAODAOJIUZHI]),
    pin-round(x: 4., d: E),
    station([大校场], [DAJIAOCHANG]),
    station([承天大道], [CHENGTIANDADAO]),
    station([高桥门], [GAOQIAOMEN], x: 5.75),
    pin-round(x: 6., d: NE),
    station([杨庄], [YANGZHUANG], x: 7.5),
    station([石杨路], [SHIYANGLU]),
    station([东麒路], [DONGQILU], logo-anchor: NE),
    pin(x: 9.5, d: E),
  ),
  line(
    id: "11",
    color: rgb("#ef426f"),
    optional: true,

    pin(x: -5., y: 12.5),
    station([浦洲路], [PUZHOULU], logo-anchor: S),
    station([柳洲东路], [LIUZHOUDONGLU]),
    pin-round(y: 11., d: S),
    station([明滨路], [MINGBINLU], x: -5.25),
    station([长江大桥北], [CHANGJIANGDAQIAOBEI]),
    station([柳洲南路], [LIUZHOUNANLU]),
    station([浦东路], [PUDONGLU]),
    station([新马路], [XINMALU]),
    station([南京铁道学院], [NJRTS]),
    station([广西埂大街], [GUANGXIGENGDAJIE]),
    station([江北商务区], [JIANGBEISHANGWUQU]),
    station([七里河], [QILIHE]),
    station([临滁路], [LINCHULU]),
    station([浦口万汇城], [PUKOUWANHUICHENG]),
    station([城南河], [CHENGNANHE]),
    station([江淼路], [JIANGMIAOLU]),
    station([卓越路], [ZHUOYUELU]),
    station([行知路], [XINGZHILU]),
    station([绿水湾路], [LÜSHUIWANLU]),
    station([西江口], [XIJIANGKOU], y: -2),
    station([马骡圩], [MALUOWEI], logo-anchor: SE),
    pin(y: -4., d: SW),
  ),
  line(
    id: "12",
    color: rgb("#c87a30"),
    optional: true,

    pin(x: 11.0 + 0.1, y: 3.0),
    station([金马路], [JINMALU], logo-anchor: W),
    pin-round(y: 1.5, d: S),
    pin-round(x: 12.0, d: E),
    station([百水桥], [BAISHUIQIAO]),
    pin-round(y: 0.5, d: S),
    station([南湾营], [NANWANYING]),
    station([花岗], [HUAGANG]),
    pin-round(x: 10.0, d: SW),
    station([麒麟生态公园], [QILINSHENGTAIGONGYUAN]),
    pin-round(x: 10.75, d: SE),
    station([光华路], [GUANGHUALU]),
    pin-round(x: 9.5, d: SW),
    station([东麒路], [DONGQILU]),
    station([远泰路], [YUANTAILU]),
    station([上坊], [SHANGFANG]),
    pin-round(y: -9.0, d: S),
    station([万安西路], [WANANXILU]),
    pin-round(y: -11.0, d: SW),
    station([金箔路], [JINBOLU]),
    station([东山], [DONGSHAN]),
    pin-round(x: 4.0, d: W),
    station([杨家圩], [YANGJIAWEI], anchor: E),
    pin-round(y: -12.5, d: S),
    station([西门子路], [XIMENZILU]),
    pin-round(x: 2.5 + 0.1, d: W),
    station([百家湖], [BAIJIAHU]),
    pin-round(y: -13.0, d: S),
    station([天元西路], [TIANYUANXILU]),
    pin-round(x: 0.0, d: W),
    station([爱涛路], [AITAOLU]),
    pin-round(y: -14.0, d: S),
    station([河海大学·佛城西路], [HHU/FOCHENGXILU], anchor: NW),
    station([康厚街], [KANGHOUJIE]),
    station([牛首山], [NIUSHOUSHAN], logo-anchor: N),
    pin(x: -3.0, d: W),
  ),
  line(
    id: "13",
    color: rgb("#007654"),
    optional: true,

    pin(x: -11.5, y: 6.),
    station([国际健康社区], [GUOJIJIANKANGSHEQU], logo-anchor: N),
    pin-round(dx: 1.0 - 0.14, d: E),
    station([江北商务区], [JIANGBEISHANGWUQU]),
    station([江北市民中心], [JIANGBEISHIMINZHONGXIN]),
    pin-round(x: -9.0, d: SE),
    pin-round(y: 3.0, d: S),
    station([江心洲北], [JIANGXINZHOUBEI], x: -7.25),
    pin-round(x: -7.0, d: SE),
    station([乐山路], [LESHANLU], x: -5.75),
    station([管子桥], [GUANZIQIAO]),
    station([嫩江路], [NENJIANGLU], anchor: N),
    station([清凉山], [QINGLIANGSHAN]),
    station([广州路], [GUANGZHOULU], anchor: N),
    station([五台山], [WUTAISHAN]),
    station([珠江路], [ZHUJIANGLU]),
    station([浮桥], [FUQIAO]),
    station([马标], [MABIAO], x: 2.0),
    pin-round(x: 2.5, d: E),
    station([解放路], [JIEFANGLU], y: -0.5),
    pin-round(y: -1.0, d: S),
    station([月牙湖], [YUEYAHU], x: 4.0),
    station([后标营], [HOUBIAOYING]),
    station([南京农业大学], [NANJINGNONGYEDAXUE], x: 6.0),
    pin-round(x: 6.5, d: E),
    station([胜利村], [SHENGLICUN]),
    pin-round(y: -3.5 + 0.14, d: S),
    station([高桥门], [GAOQIAOMEN], logo-anchor: S, logo-offset: (-0.2, 0)),
    pin(dx: -0.8, d: SW),
  ),
  line(
    id: "16",
    color: rgb("#ef7f1b"),
    optional: true,

    pin(x: 3.5, y: -6.0 + 0.1),
    station([机场跑道旧址], [JICHANGPAODAOJIUZHI], logo-anchor: NW),
    pin-round(x: 2.5, d: W),
    station([大明路], [DAMINGLU]),
    station([玉兰路], [YULANLU], x: 1.5, anchor: SE),
    pin-round(y: -7.0 - 0.1, d: SW),
    station([软件大道], [RUANJIANDADAO], x: -1.0),
    pin-round(x: -2.0, d: W),
    station([宁双路], [NINGSHUANGLU], y: -7.4, anchor: E),
    station([铁心桥], [TIEXINQIAO]),
    station([银杏山庄], [YINXINGSHANZHUANG], y: -9.5),
    pin-round(y: -10.0, d: S),
    station([大定坊], [DADINGFANG], x: -3.0),
    station([梅苑南路], [MEIYUANNANLU]),
    station([梅欣路], [MEIXINLU], x: -7.0),
    pin-round(x: -7.5, d: W),
    station([西善花苑], [XISHANHUAYUAN], x: -8.0),
    station([华兴路], [HUAXINGLU]),
    station([新城大街], [XINCHENGDAJIE]),
    station([莲花湖公园], [LIANHUAHUGONGYUAN]),
    station([板桥东], [BANQIAODONG]),
    pin-round(x: -11.0, d: SW),
    station([绿洲], [LÜZHOU], x: -11.5),
    station([板桥南], [BANQIAONAN], marker-rotation: 45deg, logo-anchor: SE),
    pin(x: -12.5, d: W),
  ),
  line(
    id: "18",
    color: rgb("#ee7852"),
    optional: true,

    pin(x: -12 - 0.1, y: 12, layer: -5),
    station([南京北站], [NANJING NORTH RAILWAY STATION], logo-anchor: NE),

    pin-round(y: 11.0 - 0.3, d: S, corner-radius: 0.25),
    pin-round(x: -10.75, d: SE),
    pin-round(y: 8.75, d: S),
    station([南京铁道学院], [NANJINGTIEDAOXUEYUAN]),
    station([新华街], [XINHUAJIE], y: 6.25),
    pin-round(y: 3.25, d: SE),
    station([古平岗], [GUPINGGANG]),
    pin-round(x: -1.5, d: E),
    pin-round(y: 2.1, d: SE),
    pin-round(x: 0.25, d: E),
    station([鼓楼], [GULOU]),
    station([新街口], [XINJIEKOU]),
    pin-round(y: -2.5, d: S),
    pin-round(dx: 0.25, d: SE),
    pin-round(y: -3.25, d: S),
    station([中华门], [ZHONGHUAMEN]),
    pin-round(dx: -1.0, d: SW),
    pin-round(dy: -0.5, d: S),
    pin-round(x: 1.75, d: E),
    pin-round(y: -8.25, d: S),
    station([南京南站], [NANJINGNANZHAN]),
    pin-round(x: -0.25, d: W),
    station([河海大学·佛城西路], [HHU/FOCHENGXILU]),
    pin-round(y: -16.25, d: S),
    pin-round(dx: 0.75, d: SE),
    station([禄口东], [LUKOUDONG], y: -18.0),
    pin-round(y: -19.0, d: S),
    station([翔宇路南], [XIANGYULUNAN]),
    pin-round(x: -1.0, d: W),
    pin-round(y: -20.0 - 0.1, d: S),
    station([禄口机场西], [LUKOUJICHANGXI]),
    station([禄口机场], [LUKOUJICHANG], logo-anchor: N),
    pin(x: 1.0, d: E),
  ),
  line(
    id: "S1",
    color: rgb("#4bbbb4"),
    optional: true,

    pin(x: 1. + 0.05, y: -8 + 0.1),
    station([南京南站], [NANJING SOUTH RAILWAY STATION]),
    pin-round(dx: -1.0, d: W),
    pin-round(x: -0.5, d: SW),
    station([翠屏山], [CUIPINGSHAN], y: -11., anchor: E),
    station([河海大学·佛城西路], [HHU/FOCHENGXILU], y: -14.0, anchor: E),
    station([吉印大道], [JIYINDADAO]),
    station([正方中路], [ZHENGFANGZHONGLU]),
    station([翔宇路北], [XIANGYULUBEI]),
    station([翔宇路南], [XIANGYULUNAN]),
    pin-round(y: -20., d: S),
    station([禄口机场], [LUKOU INTERNATIONAL AIRPORT]),
    station([空港新城江宁], [KONGGANGXINCHENGJIANGNING], logo-anchor: N),
    pin(dx: 3., d: E),
  ),
  line(
    id: "S2",
    color: rgb("#ab2328"),
    optional: true,

    pin(x: -0.5, y: -4., cfg: none),
    station([中华门], [ZHONGHUAMEN]),
    pin-round(x: -2., d: W),
    station([凤台南路], [FENGTAINANLU]),
    station([小行], [XIAOXING]),
    pin-round(x: -5., d: SW),
    pin-round(x: -6., d: W),
    station([油坊桥], [YOUFANGQIAO]),
    pin-round(x: -10., d: SW),
    pin(x: -9., y: -10., cfg: none),
    station([西善桥], [XISHANQIAO], y: -10.),
    station([雨花经济开发区], [YUHUAJINGJIKAIFAQU]),
    station([板桥], [BANQIAO]),
    station([板桥南], [BANQIAONAN]),
    station([江宁镇], [JIANGNINGZHEN]),
    station([江宁滨江开发区], [JIANGNINGBINJIANGKAIFAQU]),
    station([牧龙], [MULONG]),
    station([铜井], [TONGJING]),
    pin-round(dy: -6., d: SW),
    station([慈湖], [CIHU], dy: -0.5),
    station([湖北路], [HUBEILU]),
    station([湖南路], [HUNANLU]),
    station([雨山东路], [YUSHANDONGLU]),
    station([九华路], [JIUHUALU]),
    station([采石河], [CAISHIHE]),
    station([当涂东站], [DANGTU EAST RAILWAY STATION]),
    station([当涂南], [DANGTUNAN], logo-anchor: N),
    pin(dy: -6., d: S),
  ),
  line(
    id: "S3",
    color: rgb("#b06c96"),
    optional: true,

    pin(x: 1. + 0.05, y: -8),
    station([南京南站], [NANJING SOUTH RAILWAY STATION]),
    station([景明佳园], [JINGMINGJIAYUAN], x: -0.5),
    station([铁心桥], [TIEXINQIAO]),
    station([春江路], [CHUNJIANGLU]),
    station([贾西], [JIAXI]),
    pin-round(x: -6.5, d: W),
    station([油坊桥], [YOUFANGQIAO]),
    station([永初路], [YONGCHULU]),
    pin-round(x: -8.125, d: NW),
    station([平良大街], [PINGLIANGDAJIE], y: -6.75),
    station([吴侯街], [WUHOUJIE]),
    station([高庙路], [GAOMIAOLU], y: -8.),
    station([天保], [TIANBAO], x: -11.0),
    station([刘村], [LIUCUN], y: -10.25),
    pin-round(dy: -4.5, d: SW),
    pin-round(dx: -7.25, d: NW, x: -19.75, y: -3.75),
    station([马骡圩], [MALUOWEI], x: -20.),
    station([兰花塘], [LANHUATANG], x: -20.5),
    station([双垅], [SHUANGLONG]),
    station([石碛河], [SHIQIHE]),
    station([桥林新城], [QIAOLINXINCHENG]),
    station([林山], [LINSHAN]),
    station([高家冲], [GAOJIACHONG], logo-anchor: SE),
    pin(dx: -3.25, d: SW, end: true),

    pin(x: 1.0, y: -8.0),
    station([南京南站], [NANJING SOUTH RAILWAY STATION]),
    pin-round(x: 4.0, d: E),
    station([金盛路], [JINSHENGLU], anchor: E),
    pin-round(dy: -1.0, d: S),
    station([东山香樟园], [DONGSHANXIANGZHANGYUAN]),
    pin-round(dx: 1.0, d: E),
    station([湖西路], [HUXILU], dx: 1.0),
    pin-round(x: 8.5, d: NE),
    station([上坊工业园], [SHANGFANGGONGYEYUAN], y: -5., anchor: E),
    station([石杨路], [SHIYANGLU]),
    pin-round(y: -3., d: N),
    pin-round(dx: 1.0 + 0.14, d: E),
    station([麒麟生态公园], [QILINSHENGTAIGONGYUAN], y: -2.0),
    pin-round(y: -1.75, d: NE),
    pin-round(x: 13.5, d: E),
    station([泉水路], [QUANSHUILU]),
    pin-round(dx: 1.0, d: NE),
    station([中科院], [ZHONGKEYUAN]),
    pin-round(y: 1.0 - 0.1, d: N),
    station([东郊小镇], [DONGJIAOXIAOZHEN], x: 15.0),
    pin-round(x: 16.0, d: E),
    station([东流], [DONGLIU]),
    station([三阳路], [SANYANGLU], y: 4.5, anchor: E),
    pin-round(y: 5.0, d: N),
    pin-round(y: 5.5, d: NW),
    station([南大仙林校区], [NJU XIANLIN CAMPUS]),
    station([江苏广电], [JSBC], y: 9.0),
    pin-round(y: 9.5, d: N),
    pin-round(x: 12.0 - 0.14, d: W),
    station([仙林站], [XIANLIN RAILWAY STATION]),
    pin(dy: -0.7, d: SW),
  ),
  line(
    id: "S4",
    color: rgb("#ff661f"),
    optional: true,

    pin(x: -12. + 0.1, y: 12.),
    station([南京北站], [NANJING NORTH RAILWAY STATION], anchor: E),
    pin-round(dy: 1.5, d: N),
    station([北斗产业园], [BEIDOUCHANYEYUAN]),
    pin-round(dx: -1., d: NW),
    station([张堡], [ZHANGBAO]),
    pin-round(dx: -1. - 0.1, d: W),
    station([汊河], [CHAHE], dx: -0.5),
    station([汊河新城], [CHAHEXINCHENG], dx: -1.0),
    station([相官], [XIANGGUAN], dx: -1.75),
    station([十二里半], [SHIERLIBAN]),
    pin-round(dx: -4., d: NW),
    station([水口], [SHUIKOU], dx: -0.5),
    station([林楼], [LINLOU], dx: -1.5),
    pin-round(dx: -2., d: W),
    station([大王郢], [DAIWANGYING]),
    pin-round(dy: -1., d: S),
    station([苏滁商务中心], [SUCHUSHANGWUZHONGXIN], dy: -0.25),
    station([担子], [DANZI]),
    pin-round(dy: -1.5, d: SW),
    station([滁州政务中心], [CHUZHOUZHENGWUZHONGXIN], dx: -0.5),
    station([琅琊山], [LANGYASHAN], dx: -1.5),
    pin-round(dx: -2., d: W),
    station([花博园], [HUABOYUAN], dy: -0.5),
    station([腰铺], [YAOPU], dy: -1.5),
    pin-round(dy: -2., d: S),
    station([滁州高铁站], [CHUZHOU RAILWAY STATION], logo-anchor: N),
    pin(dy: -0.5, d: SE),
  ),
  line(
    id: "S5",
    color: rgb("#f5df4d"),
    optional: true,

    pin(x: 16.0 + 0.1, y: 3.0, cfg: "L5-S"),
    station([东流], [DONGLIU], logo-anchor: NW),
    pin-round(dy: 1.0, d: N),
    pin-round(dy: 1., d: NE),
    station([骆家边], [LUOJIABIAN], x: 17.5),
    pin-round(x: 18.5, d: E),
    pin(x: 18.5, y: 8., cfg: none),
    station([仙林湖], [XIANLINHU], r: 0),
    pin-round(dy: 2., d: N),
    station([摄山], [SHESHAN], dx: 0.5),
    pin-round(dx: 1.5, d: E),
    station([江乘], [JIANGCHENG]),
    station([龙潭], [LONGTAN], dx: 1.25),
    pin-round(dx: 1.5, d: NE),
    station([花园营防], [HUAYUANYINGFANG], dx: 0.5),
    station([龙潭新城], [LONGTANXINCHENG]),
    station([靖安], [JINGAN], dx: 2.5),
    pin-round(dx: 3., d: E),
    station([黄天荡], [HUANGTIANDANG], dy: 0.5),
    station([万年路], [WANNIANLU], dy: 2.),
    pin-round(dy: 2.5, d: N),
    station([工农路], [GONGNONGLU], dx: 0.5),
    station([天宁大道], [TIANNINGDADAO]),
    station([仪征开发区], [YIZHENGKAIFAQU], dx: 2.5),
    station([朴席], [PUXI], dx: 4.),
    pin-round(dx: 4.5, d: E),
    station([扬州汊河], [CHAHE], anchor: E),
    station([站南路], [ZHANNANLU], anchor: E),
    station([扬州西站], [YANGZHOU WEST RAILWAY STATION], anchor: E, logo-anchor: S),
    pin(dy: 3., d: N),
  ),
  line(
    id: "S6",
    color: rgb("#c98bdb"),
    optional: true,

    pin(x: 6.0, y: -1.0 + 0.1, cfg: "S6-W"),
    station([南京农业大学], [NJAU], logo-anchor: N),
    pin-round(x: 6.5 + 0.1, d: E, corner-radius: 0.3),
    pin-round(y: -1.5, d: S),
    station([南京理工大学], [NJUST], x: 7.5),
    pin-round(x: 8.5, d: E),
    station([顾家营], [GUJIAYING], y: -0.5),
    pin-round(y: -0.25, d: N),
    station([五棵松], [WUKESONG]),
    pin-round(y: 1.0, d: NE),
    pin(x: 10.0, y: 1., cfg: none),
    station([马群], [MAQUN], r: 0, logo-anchor: N),
    station([百水桥], [BAISHUIQIAO], x: 12.0),
    station([麒麟门], [QILINMEN], x: 13.0),
    station([东郊小镇], [DONGJIAOXIAOZHEN], x: 15.0),
    station([古泉], [GUQUAN], x: 17.0),
    pin-round(dx: 7.5, d: E),
    pin-round(dx: 0.5, d: NE),
    station([南京猿人洞], [NANJINGYUANRENDONG]),
    pin-round(dx: 1.5, d: E),
    station([汤山], [TANGSHAN]),
    pin-round(dy: -0.75, d: S),
    pin-round(dx: -0.5, d: SW),
    station([泉都大街], [QUANDOUDAJIE]),
    pin-round(dy: -0.5, d: S),
    pin-round(dx: 0.25, d: SE),
    pin-round(dx: 0.75, d: E),
    station([黄梅], [HUANGMEI]),
    pin-round(dx: 1., d: SE),
    station([童世界], [TONGSHIJIE], dx: 1.5),
    pin-round(dx: 2., d: E),
    station([华阳], [HUAYANG]),
    station([崇明], [CHONGMING]),
    station([句容], [JURONG], logo-anchor: N),
    pin(dy: -6., d: S),
  ),
  line(
    id: "S7",
    color: rgb("#e89cae"),
    optional: true,

    pin(x: 2.5, y: -20.),
    station([空港新城江宁], [KONGGANGXINCHENGJIANGNING]),
    pin-round(dx: 1.25, d: E),
    station([柘塘], [ZHETANG], x: 4.),
    station([空港新城溧水], [KONGGANGXINCHENGLISHUI]),
    station([群力], [QUNLI], x: 5.),
    pin-round(dx: 1.5, d: SE),
    station([卧龙湖], [WOLONGHU], y: -21.75),
    station([溧水], [LISHUI]),
    station([中山湖], [ZHONGSHANHU]),
    station([幸庄], [XINGZHUANG]),
    station([无想山], [WUXIANGSHAN], logo-anchor: N),
    pin(dy: -2.5, d: S),
  ),
  line(
    id: "S8",
    color: rgb("#ea7600"),
    optional: true,

    pin(x: -6., y: 10., cfg: "S8-N"),
    station([长江大桥北], [CHANGJIANGDAQIAOBEI], logo-anchor: E),
    station([毛纺厂路], [MAOFANGCHANGLU]),
    pin(dy: 1.25, d: NW, cfg: none),
    station([泰山新村], [TAISHANXINCUN], r: 0., logo-anchor: NW),
    pin-round(dy: 0.25, d: NW),
    station([泰冯路], [TAIFENGLU]),
    station([高新开发区], [GAOXIN DEVELOPMENT ZONE]),
    station([信息工程大学], [NUIST]),
    station([卸甲甸], [XIEJIADIAN], y: 14.25),
    pin-round(dy: 3.5, d: N),
    station([大厂], [DACHANG]),
    station([葛塘], [GETANG]),
    station([长芦], [ZHANGLU]),
    station([化工园], [HUAGONGYUAN]),
    station([六合开发区], [LIUHEKAIFAQU]),
    station([龙池], [LONGCHI]),
    station([雄州], [XIONGZHOU]),
    station([凤凰山公园], [FENGHUANGSHANGONGYUAN]),
    station([方州广场], [FANGZHOUGUANGCHANG]),
    station([沈桥], [SHENQIAO]),
    station([八百桥], [BABAIQIAO]),
    station([金牛湖], [JINNIUHU], logo-anchor: S),
    pin(dx: 6., d: NE),
  ),
  line(
    id: "S9",
    color: rgb("#f1b434"),
    optional: true,

    pin(x: -0.5, y: -19.),
    station([翔宇路南], [XIANGYULUNAN], logo-anchor: SE),
    pin-round(dx: -0.1, d: SW),
    pin-round(y: -20.75, d: S),
    station([铜山], [TONGSHAN]),
    pin-round(x: 0.5, d: E),
    station([石湫], [SHIJIAO], y: -21.),
    station([明觉], [MINGJUE], y: -22.),
    station([团结圩], [TUANJIEWEI], y: -24.),
    station([高淳], [GAOCHUN], logo-anchor: E),
    pin(y: -25., d: S),
  ),
  line(
    id: "2-9",
    color: rgb("#ffc65f"),
    optional: true,
    pin(x: -4.5 - 0.1, y: -2),
    station([集庆门大街], [JIQINGMENDAJIE], logo-anchor: SE),
    pin-round(y: -1 - 0.1, d: N),
    station([清江南路], [QINGJIANGNANLU]),
    pin(x: -5.5, d: W),
  ),
)

#let nj-metro = metro(
  lines,
  features: (
    "phase-1": ("L:1", "L:2", "L:3", "L:4", "L:10", "L:S1", "L:S8"),
    "phase-2": (
      "L1-N",
      "L2-W",
      "L:5",
      "L:6",
      "L:7",
      "L:9",
      "L:11",
      "L:S2",
      "L:S3",
      "L:S4",
      "L:S5",
      "L:S6",
      "L:S7",
      "L:S9",
    ),
    "phase-3": ("L2-EE",),
    "built": ("phase-1", "L1-N", "L2-W", "L:5", "L:6", "L:7", "L7-full", "L:S3", "L:S4", "L:S6", "L:S7", "L:S9"),
    "progress": ("L:6", "L:9", "L:11"),
    "futures": (),
  ),
  default-features: ("phase-1", "phase-2"),
)
#let nj-radish = radish(
  nj-metro,
  default-features: true,
  // features: ("phase-1", "built", "L2-EE", "no-jqmdj", "L5-S", "L5-N", "L7-N", "L7-S"),
  enable-all: true,
  // consider-disabled: true,
)

#let land-fill = rgb("#f6f6f6")
#let water-fill = rgb("#c3ddf4")
#let water-stroke = stroke(paint: rgb("#c5d6ea"), thickness: 2pt, cap: "round", join: "round")
#let mountain-fill = rgb("#bfe0d7")

#let bg-label(name, name-en, text-size: 1em) = {
  show: place.with(center + horizon)
  set par(spacing: 0.25em)
  set align(center)
  set text(font: "Microsoft YaHei", fill: white, size: text-size)

  text(0.8em, name)
  parbreak()
  text(0.3em, name-en)
}

#let polygon = polygon.with(corner-radius: 0.25)

#let changjiang = polygon(
  fill: water-fill,
  stroke: water-stroke,
  label: bg-label([长江], [CHANGJIANG], text-size: 1.2em),
  label-pos: (9.0, 12.0),
  (-17, -26), // bottom-right
  (-17, -11),
  (-13, -7),
  (-10.5, -7),
  (-8, -4.5),
  (-8, -2),
  (-6., 0),
  (-6., 6),
  (-3, 9),
  (-1.5, 9),
  (1., 11.5),
  (19, 11.5),
  (20.0, 12.5),
  (30, 12.5),
  (30, 13),
  (19.5, 13),
  (19, 12.5),
  (8, 12.5),
  (8, 17),
  (-2, 17),
  (-2, 11.5),
  (-10, 3.5),
  (-10, 2),
  (-13, -1),
  (-13, -4),
  (-19, -10),
  (-19, -26), // bottom-left
)

#let baguazhou = polygon(
  fill: land-fill,
  stroke: water-stroke,
  (7., 12.5), // bottom-right
  (7., 16.),
  (-1., 16.),
  (-1., 11.75),
  (-2.25, 10.5),
  (-1.5, 10.5),
  (0.5, 12.5), // bottom-left
)
#let jiangxinzhou = polygon(
  fill: land-fill,
  stroke: water-stroke,
  (-6.5, 3.5), // top-right
  (-6.5, 0.25),
  (-8.5, -1.75),
  (-8.5, -4.25),
  (-10.75, -6.5),
  (-13, -6.5),
  (-11, -4.5),
  (-11, -1.5),
  (-7.5, 2),
  (-7.5, 2.5),
)
#let qianzhou = polygon(
  fill: land-fill,
  stroke: water-stroke,
  (-6.5, 4.5), // bottom-right
  (-6.5, 5.5),
  (-8, 4),
  (-8, 3),
)
#let xuanwuhu = polygon(
  fill: water-fill,
  stroke: water-stroke,
  label: bg-label([玄武湖], [XUANWU LAKE]),
  label-pos: (1.25, 3.5),
  (0.75, 2.5), // bottom-left
  (2.5, 2.5),
  (2.5, 3.25),
  (1.75, 4.0),
  (1.75, 4.25),
  (0.75, 5.25),
  (0.25, 4.75),
  (0.25, 3.0),
)
#let shijiuhu = polygon(
  fill: water-fill,
  stroke: water-stroke,
  label: bg-label([石臼湖], [SHIJIU LAKE]),
  label-pos: (0.1, -23),
  (2.0, -22.25), // top-right
  (-1.5, -22.25),
  (-1.5, -23.75),
  (2.0, -23.75), // bottom-right
)
#let rw = 1 / 16
#let rw2 = rw / 2
#let qinhuaihe = polygon(
  fill: water-fill,
  stroke: water-stroke,
  corner-radius: 1 / 8,
  // start from sanchahe
  (-6.0, 3.5 - rw),
  (-4.0 - rw, 3.5 - rw),
  (-4.0 - rw, 1.5 - rw2),
  (-1.5 - rw, -1.0 - rw2),
  (-1.5 - rw, -3.5 - rw),
  (1.75 + rw, -3.5 - rw),
  (1.75 + rw, -3.25 - rw),
  (5.5 - rw, -3.25 - rw),
  (5.5 - rw, -7.75 + rw2),
  (3.75 - rw, -9.25 + rw2),
  (3.75 - rw, -9.75 + rw), // turn near hedingqiao
  (0.75 + rw2, -9.75 + rw),
  (0.0 + rw2, -9.0 + rw),
  (-13.0 + rw, -9.0 + rw),
  (-14.0 + rw, -8.0 + rw),
  // at yuzui
  (-14.0 - rw, -8.0 - rw),
  (-13.0 - rw, -9.0 - rw),
  (0.0 - rw2, -9.0 - rw),
  (0.75 - rw2, -9.75 - rw),
  (3.75 - rw, -9.75 - rw),
  (3.75 - rw, -14.0 - rw2),
  (4.25 - rw, -14.5 - rw2),
  (4.25 - rw, -18.0),
  // back from shangqinhuai
  (4.25 + rw, -18.0),
  (4.25 + rw, -14.5 + rw2),
  (3.75 + rw, -14.0 + rw2),
  (3.75 + rw, -9.25 - rw2),
  (5.5 + rw, -7.75 - rw2),
  (5.5 + rw, -3.25 + rw),
  (1.75 - rw, -3.25 + rw), // turn near wudingmen
  (1.75 - rw, -3.5 + rw),
  (-1.5 + rw, -3.5 + rw),
  (-1.5 + rw, -1.0 + rw2),
  (-4.0 + rw, 1.5 + rw2),
  (-4.0 + rw, 3.5 + rw),
  (-6.0, 3.5 + rw),
  // back to sanchahe
)

#let zijinshan = polygon(
  fill: mountain-fill,
  label: bg-label([紫金山], [ZIJIN MOUNTAIN]),
  label-pos: (6.75, 2.5),
  (3.75, 3.0), // top-left
  (5.5, 4.75),
  (8.0, 4.75),
  (9.75, 3.0),
  (9.75, 1.5),
  (8.5, 0.25),
  (5.0, 0.25),
  (3.75, 1.5), // bottom-left
)

#let line-logo(num, color, text-color: white) = {
  set text(size: if "-" in num { 2.5em } else { 3em })
  show: box.with(width: 0.5em * num.len(), height: 1.0em, fill: color)
  set align(center + horizon)
  show: box.with(width: 1em * num.len())
  show: scale.with(x: 80%, y: 100%)
  set text(font: "Swis721 BT", fill: text-color)
  show "S": box(scale(x: 90%, y: 95%, reflow: true, [S]))
  num
}

#let draw-line-logo(line, station) = {
  let metadata = station.metadata.named()
  if "terminal" in station and "logo-anchor" in metadata and metadata.logo-anchor != none {
    let logo-pos = station.pos
    let logo-offset = metadata.at("logo-offset", default: none)
    if logo-offset != none {
      logo-pos = vec.add(logo-pos, logo-offset)
    }
    let payload = (
      body: box(inset: 1em, line-logo(line.id, line.color)),
      pos: logo-pos,
      anchor: metadata.logo-anchor,
    )
    payload
  }
}

// Only well-displayed in full map
#let title-body = {
  set text(font: "Microsoft YaHei", size: 0.8em)
  set align(center)

  text(size: 12em, weight: "bold")[南京地铁运营线路图]
  v(-12em)
  text(size: 8em)[Nanjing Metro System Map]
  v(-6em)
  text(size: 6em)[（实际走向拓扑图）]
}
#let title = (pos: (9, 20), body: title-body)

#let legend-body = {
  let logo = image.decode(
    `<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1736037704585" class="icon" viewBox="0 0 1053 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4288" xmlns:xlink="http://www.w3.org/1999/xlink" width="205.6640625" height="200"><path d="M526.55119 0.092c-125.956 0-228.052 102.09-228.052 228.027-119.774-38.914-248.353 26.709-287.267 146.483-38.92 119.804 26.551 248.353 146.326 287.282-74.025 101.884-51.42 244.48 50.47 318.509 101.884 74.024 244.48 51.42 318.508-50.47 74.024 101.884 216.772 124.494 318.661 50.47 101.885-74.024 124.342-216.615 50.318-318.51 119.774-38.918 185.397-167.497 146.483-287.271-38.93-119.833-167.626-185.457-287.415-146.542C754.58319 102.134 652.51119 0.042 526.52119 0.042z" fill="#DE0010" p-id="4289"></path><path d="M475.60419 180.887v90.162c-152.296 24.406-268.65 156.385-268.65 315.58 0 105.104 50.667 198.366 128.943 256.651l60.933-82.012c-53.294-39.642-87.7-103.1-87.7-174.639 0-102.598 70.962-188.616 166.479-211.57v399.748H577.62119V375.06c95.516 23.003 166.637 109.025 166.637 211.57 0 71.543-34.52 134.996-87.859 174.638l60.81 82.08c78.32-58.28 129.096-151.542 129.096-256.65 0-159.146-116.403-291.115-268.65-315.58V180.97H475.61519z" fill="#FFFFFF" p-id="4290"></path></svg>`.text,
    format: "svg",
  )

  let primary-color = rgb("112653")
  set text(font: "Source Han Sans SC", fill: primary-color)

  let header(body) = {
    block(height: 1.8em)[
      #std.polygon(
        fill: primary-color,
        (0%, 0%),
        (0%, 100%),
        (100% - 0.5em, 100%),
        (100%, 100% - 0.5em),
        (100%, 0%),
      )
      #place(center + horizon)[
        #text(0.8em, white, body)
      ]
    ]
  }

  show: block.with(width: 12em)
  set block(spacing: 0em)
  set align(center)

  // header
  block(width: 100%, height: 4.5em, fill: primary-color)

  show: block.with(
    width: 100%,
    fill: rgb("#f2fafd"),
    inset: (top: 0.5em, bottom: 2em, x: 2em),
  )

  v(-2.5em)

  scale(25%, reflow: true, logo)

  v(0.6em)

  [
    #text(size: 1.2em)[南京地铁]
    #v(-1.1em)
    #text(size: 0.55em)[NANJING METRO]
  ]

  v(1.5em)

  [
    #circle(radius: 1.5em, stroke: primary-color + 1.5pt)[
      #set align(horizon)
      #text(1.2em)[Map]
    ]
    #v(0.3em)
    #stack(
      dir: ltr,
      rotate(90deg, reflow: true)[
        #text(0.75em)[System Map]
      ],
      h(0.5em),
      block(width: 1em)[
        #set par(leading: 0.25em)
        #text(1.5em)[运营线路图]
      ],
    )
  ]

  v(2em)

  header[地铁线路号]

  v(1em)

  block(inset: (x: 0.5em))[
    #grid(
      columns: 3,
      column-gutter: (1.5em, 0.2em),
      row-gutter: 0.3em,
      align: center + horizon,
      ..for line in nj-radish.lines.values() {
        if line.id.len() > 2 or line.disabled { continue }
        (
          {
            std.line(start: (0%, 0em), end: (100%, 0em), stroke: (paint: line.color, thickness: 0.4em, cap: "round"))
            place(center + horizon, circle(radius: 0.15em, fill: white, stroke: none))
          },
          text(0.35em, line-logo(line.id, line.color)),
          text(0.75em, black)[号线],
        )
      }
    )
  ]

  v(2em)

  header[图#h(3em)标]

  v(1em)

  {
    import "../src/components/std.typ" as std-comp

    set text(0.75em, black)
    grid(
      columns: 2,
      column-gutter: 2em,
      row-gutter: 0.5em,
      align: (horizon + center, horizon + left),
      scale(80%, reflow: true, std-comp.circle-marker), [换乘枢纽],
      std-comp.capsule-marker, [换乘站],
    )
  }
}
#let legend = (pos: (25, -25), anchor: SW, body: scale(200%, reflow: true, legend-body))

#let label-renderer(station) = {
  show: block.with(inset: (x: 0.5em, y: 0.5em))
  set par(spacing: 0.2em)
  set smartquote(enabled: false)

  [
    #text(font: "Source Han Sans SC", station.name)

    #text(size: 0.45em, font: "Source Han Sans SC", station.metadata.at(0))
  ]
}

#radishom(
  nj-radish,
  backend: "std",
  unit-length: 2.0cm,
  grid: none,
  foreground: (title, legend),
  background-color: land-fill,
  background: (changjiang, baguazhou, jiangxinzhou, qianzhou, xuanwuhu, shijiuhu, qinhuaihe, zijinshan),
  label-renderer: label-renderer,
  station-plugins: (draw-line-logo,),
  // draw-disabled: true
)

#place(bottom + right)[
  #set text(font: "Microsoft YaHei")
  #show: block.with(inset: 1em)
  #set par(spacing: 0.5em)
  #text(gray)[
    本图线路使用 Typst #sys.version 制作

    仅供学习交流，未经允许不得使用

    https://github.com/QuadnucYard/radishom
  ]
]
