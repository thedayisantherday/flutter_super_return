import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MineInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      color: Colors.red,
      height: ScreenUtil().setWidth(500),
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
          Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(36))),
          new Row(
            children: [
              new Expanded(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text(
                      "我的",
                      style: new TextStyle(
                        fontSize: ScreenUtil().setSp(40),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              new Icon(Icons.settings),
            ]
          ),
          Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(18))),
          new Row(
              children: [
                new Container(
                  padding: const EdgeInsets.all(12),
                  child: new Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: ScreenUtil().setWidth(150),
                  )
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text(
                      "id:666",
                      style: new TextStyle(
                        fontSize: ScreenUtil().setSp(32),
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(10))),
                    new Row(
                        children: [
                          new Text(
                            "我的",
                            style: new TextStyle(
                              fontSize: ScreenUtil().setSp(24),
                              color: Colors.white,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(10))),
                          new Text(
                            "我的",
                            style: new TextStyle(
                              fontSize: ScreenUtil().setSp(24),
                              color: Colors.white,
                            ),
                          ),
                        ]
                    ),
                  ],
                ),
              ]
          ),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new MineMoney( money: '0.00', text:'(鼓励金明细)' ),
                new MineMoney( money: '0', text:'(好友贡献鼓励金)' ),
                new MineMoney( money: '0', text:'(好友数)' ),
              ]
          ),
        ],
      ),
    );
  }
}

class MineMoney extends StatelessWidget {

  final String money;
  final String text;

  const MineMoney({
    Key key,
    this.money: '',
    this.text: ''
  }) : assert(money != null),
        assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Text(
          money,
          style: new TextStyle(
            fontSize: ScreenUtil().setSp(45),
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(10))),
        new Text(
          text,
          style: new TextStyle(
            fontSize: ScreenUtil().setSp(24),
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 200, 200, 200),
          ),
        ),
      ],
    );
  }
}