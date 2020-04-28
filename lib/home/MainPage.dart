import 'package:flutter/material.dart';
import 'package:flutter_supper_return/home/GoodsPage.dart';
import 'package:flutter_supper_return/model/GoodsModel.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/rendering.dart';

const List<String> bannerImg = const <String>[
  "https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/104136/27/16148/141942/5e7b30a3E14bf5c66/5e1b44c3f6746944.jpg",
  "https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/114211/16/1866/198811/5e9d4f21E8e130ceb/3f7ad0fa65fd7863.jpg",
  "https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/95896/32/18780/85950/5e96a9c6Ef6d02172/91410ee3b6c24c76.jpg",
  "https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/111941/40/2147/74076/5ea00901E0d4d09f9/433b694d8ef26e75.jpg",
  "https://m.360buyimg.com/mobilecms/s700x280_jfs/t1/31162/17/1128/101786/5c46ead8E22ee9740/f66061da227c1965.jpg"
];

const List<String> notices = const <String>[
  "爆款",
  "包邮",
  "热销"
];

class MainPage extends StatefulWidget {

  List<GoodsModel> goodsList;
  bool isList;

  MainPage({this.goodsList, this.isList = false});

  @override
  MainPageState createState() {
    return new MainPageState(this.goodsList, this.isList);
  }
}

class MainPageState extends State<MainPage> {
  List<GoodsModel> goodsList;
  bool isList;
  ScrollController controller = new ScrollController();
  bool isGiftHide = false;

  MainPageState(this.goodsList, this.isList);

  @override
  void initState() {
    super.initState();
    controller.addListener((){
      if(controller.offset > 3) {
        isGiftHide = true;
      } else {
        isGiftHide = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Stack(
        children: <Widget>[
          new CustomScrollView(
            controller: controller,
            slivers: <Widget>[
              new SliverPadding(
                padding: EdgeInsets.all(0),
                sliver: new SliverList(
                  delegate: new SliverChildListDelegate(
                    <Widget>[
                      new Container(
                        height: ScreenUtil().setWidth(300),
                        margin: EdgeInsets.all(ScreenUtil().setWidth(10)),
                        child: new Swiper(
                          itemCount: bannerImg.length,
                          autoplay: true,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                bannerImg[index],
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                          pagination: SwiperPagination(),
                        ),
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ButtunAreaItem(icon: "https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/96795/33/16662/4749/5e7d6385Ec31e4b29/f36c778122286405.png", text: "超级返现"),
                          ButtunAreaItem(icon: "https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/105719/14/16594/7294/5e7d605eE007a21e7/63392310fbb001a4.png", text: "爆款专区"),
                          ButtunAreaItem(icon: "https://m.360buyimg.com/mobilecms/s80x80_jfs/t17422/194/2017793180/12782/83f66fd3/5ae13830N1e98ef9c.png", text: "9.9专区"),
                          ButtunAreaItem(icon: "https://m.360buyimg.com/mobilecms/s80x80_jfs/t19120/326/2015194654/5703/bb2c7da9/5ae060d7N7a921d20.png", text: "新手教程"),
                        ],
                      ),
                      new Container(
                        height: 40,
                        child:new Swiper(
                          itemCount: notices.length,
                          autoplay: true,
                          itemBuilder: (context, index) {
                            return new Container(
                                padding: EdgeInsets.all(10),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(Icons.notifications, color: Color.fromARGB(255, 255, 140, 0),),
                                    new Text(notices[index]),
                                    new Icon(Icons.keyboard_arrow_right, color: Colors.black54,)
                                  ],
                                )
                            );
                          },
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                      new Container(
                        child: new GoodsPage(isScroll: false, goodsList: goodsList, isList: false),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            width: ScreenUtil().setWidth(120),
            height: ScreenUtil().setWidth(120),
            bottom: ScreenUtil().setWidth(300),
            right: isGiftHide ? ScreenUtil().setWidth(-80) : ScreenUtil().setWidth(10),
            child: new Container(
              child: new GestureDetector(
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
                        style: new TextStyle(
                            fontSize: ScreenUtil().setWidth(25),
                            color: Colors.white
                        )
                    )
                  ],
                ),
                onTap: (){

                },
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(60)),
                color: Colors.red,
                border: Border.all(color: Colors.white, width: ScreenUtil().setWidth(2))
              ),
            ),
          ),
          Positioned(
            width: ScreenUtil().setWidth(90),
            height: ScreenUtil().setWidth(90),
            bottom: ScreenUtil().setWidth(150),
            right: isList ? ScreenUtil().setWidth(20) : ScreenUtil().setWidth(-200),
            child: new GestureDetector(
              child: new Container(
                child: Icon(
                  isList ? Icons.border_all : Icons.list,
                  color: Color.fromARGB(255, 255, 127, 80),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenUtil().setWidth(60)),
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: ScreenUtil().setWidth(2))
                ),
              ),
              onTap: () {
                isList = false;
                setState(() {});
              },
            ),
          ),
          Positioned(
            width: ScreenUtil().setWidth(90),
            height: ScreenUtil().setWidth(90),
            bottom: ScreenUtil().setWidth(40),
            right: isGiftHide ? ScreenUtil().setWidth(20) : ScreenUtil().setWidth(-200),
            child: new GestureDetector(
              child: new Container(
                child:
                Icon(
                  Icons.arrow_upward,
                  color: Color.fromARGB(255, 255, 127, 80),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenUtil().setWidth(60)),
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: ScreenUtil().setWidth(2))
                ),
              ),
              onTap: () {
                isGiftHide = false;
                setState(() {});
              },
            ),
          ),
        ],
      )
    );
  }
}

class ButtunAreaItem extends StatelessWidget {
  final String icon;
  final String text;

  ButtunAreaItem({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          width: 50,
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: new ClipOval(
            child: new Image.network(
              icon,
              fit: BoxFit.fill,
            ),
          ),
        ),
        new Text(text)
      ],
    );
  }
}