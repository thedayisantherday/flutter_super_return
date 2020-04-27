import 'package:flutter/material.dart';
import 'package:flutter_supper_return/mine/MineInfo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body:Container(
        color: Color.fromARGB(8, 0, 0, 0),
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          children: <Widget>[
            MineInfo(),
            MineItem(text: '分享超级返现'),
            Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(1))),
            MineItem(text: '淘宝授权'),
            Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(1))),
            MineItem(text: '联系客服'),
            Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(1))),
            MineItem(text: '清楚缓存'),
            Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(5))),
            MineItem(text: '我要提现'),
            Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(1))),
            MineItem(text: '帮助中心'),
          ],
        ),
      ),
    );
  }
}

class MineItem extends StatelessWidget {

  final String text;

  const MineItem({
    Key key,
    this.text: ''
  }) : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding: EdgeInsets.all(ScreenUtil().setWidth(18)),
      child:new Row(
        children: [
          new Expanded(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Text(
                  text,
                  style: new TextStyle(
                    fontSize: ScreenUtil().setSp(30),
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black38,
          ),
        ]
      ),
    );
  }
}