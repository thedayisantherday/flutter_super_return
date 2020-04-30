import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_supper_return/home/HomePage.dart';
import 'package:flutter_supper_return/OrderPage.dart';
import 'package:flutter_supper_return/OrderMakeupPage.dart';
import 'package:flutter_supper_return/mine/MinePage.dart';

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _NavigationState();
  }
}

class _NavigationState extends State<NavigationPage> {
  // 当前所在页；
  int _currentPage = 0;

  PageView _pageView;
  // 页面切换控制器;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(initialPage: 0);

    _pageView = new PageView(
      children: [
        new HomePage(),
        new OrderPage(),
        new OrderMakeupPage(),
        new MinePage(),
      ],
      controller: _pageController,
      onPageChanged: _onPageChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    //设置适配尺寸 (填入设计稿中设备的屏幕尺寸) 假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return new Scaffold(
      body: _pageView,
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance), title: Text("首页")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.view_list), title: Text("订单")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.input), title: Text("订单补录")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: Text("我的")),
        ],
        onTap: _onTap,
        currentIndex: _currentPage,
        unselectedItemColor: Color.fromARGB(255, 50, 50, 50),
        selectedItemColor: Color.fromARGB(255, 255, 70, 0),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  _onTap(int index) {
//    print("onTap = ${index}");
    _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  _onPageChanged(int page) {
//    print("currentPage = ${page}");
    setState(() {
      this._currentPage = page;
    });
  }
}
