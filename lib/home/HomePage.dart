import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_supper_return/home/MainPage.dart';
import 'package:flutter_supper_return/home/GoodsPage.dart';
import 'package:flutter_supper_return/model/GoodsModel.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 0, length: testTabs.length);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          isScrollable: true,
          tabs: testTabs.map((item) {
            return Tab(text: item);
          }).toList(),
        ),
        actions: <Widget>[
          SearchBar()
        ],
      ),
      body: new Container(
        color: Color.fromARGB(10, 0, 0, 0),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            MainPage(goodsList: testData),
            GoodsPage(goodsList: testData),
            GoodsPage(goodsList: testData),
            GoodsPage(goodsList: testData),
            GoodsPage(goodsList: testData),
            GoodsPage(goodsList: testData),
            GoodsPage(goodsList: testData),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.card_giftcard,
              color: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(5)),),
            Text(
              "选礼品",
              style: new TextStyle(fontSize: ScreenUtil().setWidth(25))
            )
          ],
        ),
        onPressed: () => print("open chats"),
      )*/
    );
  }
}

const List<String> testTabs = const <String>["推荐", "女装", "男装", "内衣", "母婴", "居家", "美食"];

class SearchBar extends StatelessWidget {

  final String text;

  const SearchBar({
    Key key,
    this.text: ''
  }) : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().setWidth(720),
        margin: EdgeInsets.only(left: ScreenUtil().setWidth(15), right: ScreenUtil().setWidth(15), top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(10)),
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          //背景
          color: Colors.white,
          //设置四周圆角 角度
          borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setWidth(8))),
        ),
        child: TextField(
            decoration: InputDecoration(
              hintText: "复制宝贝标题快速搜索",
              border: InputBorder.none,
              prefixIcon: new Icon(
                Icons.search,
                color: Colors.black26,
                size: ScreenUtil().setWidth(36),
              ),
            ),
            cursorColor: Colors.black38,
            cursorWidth: ScreenUtil().setWidth(2),
        ),
    );
  }
}

