import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderMakeupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromARGB(8, 0, 0, 0),
      body: Column(
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
          Container(
            width: ScreenUtil().setWidth(750),
            height: ScreenUtil().setWidth(200),
            color: Colors.red,
            padding: EdgeInsets.only(top: ScreenUtil().setWidth(120)),
            child: Text(
              "订单找回",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: ScreenUtil().setWidth(45),
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ),
          ),
          new Container(
            width: ScreenUtil().setWidth(720),
            margin: EdgeInsets.all(ScreenUtil().setWidth(15)),
            padding: EdgeInsets.only(top: ScreenUtil().setWidth(50), bottom: ScreenUtil().setWidth(30), left: ScreenUtil().setWidth(20), right: ScreenUtil().setWidth(20)),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(new Radius.circular(ScreenUtil().setWidth(15))),
            ),
            child: new Column(
              children: <Widget>[
                Text(
                  "输入订单编号找回订单",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setWidth(48),
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  ),
                ),
                Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(15))),
                Text(
                  "(此处仅支持真是网络订单补录)",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: ScreenUtil().setWidth(35),
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  ),
                ),
                new Container(
                  width: ScreenUtil().setWidth(100),
                  height: ScreenUtil().setWidth(5),
                  margin: EdgeInsets.only(top: ScreenUtil().setWidth(30), bottom: ScreenUtil().setWidth(50)),
                  decoration: new BoxDecoration(
                    color: Color.fromARGB(16, 0, 0, 0),
                    borderRadius: new BorderRadius.all(new Radius.circular(ScreenUtil().setWidth(2))),
                  ),
                ),
                new Container(
                  width: ScreenUtil().setWidth(720),
                  height: ScreenUtil().setWidth(100),
                  margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(50)),
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    color: Color.fromARGB(16, 0, 0, 0),
                    borderRadius: new BorderRadius.all(new Radius.circular(ScreenUtil().setWidth(50))),
                  ),
                  child: new TextField(
                    decoration: InputDecoration(
                      hintText: "请输入淘宝订单编号",
                      border: InputBorder.none
                    ),
                    cursorColor: Colors.black38,
                    cursorWidth: ScreenUtil().setWidth(2)
                  ),
                ),
                new Container(
                  width: ScreenUtil().setWidth(720),
                  height: ScreenUtil().setWidth(100),
                  margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(30)),
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.orange, Colors.red]),
                    borderRadius: new BorderRadius.all(new Radius.circular(ScreenUtil().setWidth(50))),
                  ),
                  child: new Text(
                    "立即找回",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setWidth(40),
                      color: Colors.white
                    ),
                  ),
                ),
                new Text(
                  "------------------进入淘宝复制订单编号------------------",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setWidth(30),
                      color: Colors.black38
                  ),
                ),
                Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(15))),
                new Text(
                  "进入淘宝 >",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setWidth(36),
                      color: Colors.deepOrange
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(20))),
          new Text(
            "-------- 操作流程 --------",
            textAlign: TextAlign.center,
            style: new TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: ScreenUtil().setWidth(30),
                color: Colors.black45
            ),
          ),
        ],
      ),
    );
  }
}