import 'package:flutter/material.dart';
import 'package:flutter_supper_return/mine/MinePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const List<String> testTabs = const <String>["我的", "失效"];

class OrderPage extends StatefulWidget {
  OrderPage();

  @override
  _OrderPageState createState() => _OrderPageState();
}
class _OrderPageState extends State<OrderPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 0, length: testTabs.length);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          tabs: testTabs.map((item) {
            return new Container(
              margin: EdgeInsets.only(left: ScreenUtil().setWidth(100), right: ScreenUtil().setWidth(100)),
              child: Tab(text: item),
            );
          }).toList(),
        ),
        actions: <Widget>[
          Expanded(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                    "订单明细",
                  style: new TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil().setWidth(50)
                  ),
                ),
              ],
            )
          )
        ],
      ),
      body: new Container(
        color: Color.fromARGB(8, 0, 0, 0),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            new OrderEmpty(),
            new OrderEmpty(),
          ],
        ),
      ),
    );
  }
}

class OrderEmpty extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          width: 80,
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: new ClipOval(
            child: new Image.network(
              "https://img12.360buyimg.com/img/s220x220_jfs/t1/109425/11/5810/36261/5e413d09E382bfa26/d29c1a60c5f03453.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        new Text(
          "暂时没有记录",
          style: new TextStyle(
            color: Colors.black38,
            fontSize: ScreenUtil().setWidth(40),
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}