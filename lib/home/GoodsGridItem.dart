import 'package:flutter/material.dart';
import 'package:flutter_supper_return/model/GoodsModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsGridItem extends StatelessWidget {

  final GoodsModel goodsModel;

  const GoodsGridItem({
    Key key,
    this.goodsModel
  }) : assert(goodsModel != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(10), right: ScreenUtil().setWidth(5), top: ScreenUtil().setWidth(5), bottom: ScreenUtil().setWidth(5)),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(new Radius.circular(ScreenUtil().setWidth(15))),
      ),
      child: new Column(
        children: <Widget>[
          new ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(6),bottomLeft: Radius.zero,topRight: Radius.circular(6),bottomRight:Radius.zero),
            child: new Image.network(
              goodsModel.skuImg,
              fit: BoxFit.cover,
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: ScreenUtil().setWidth(10), bottom: ScreenUtil().setWidth(15), left: ScreenUtil().setWidth(15), right: ScreenUtil().setWidth(15)),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(goodsModel.skuName, maxLines:2,),
                new Container(
                  padding: EdgeInsets.all(ScreenUtil().setSp(3)),
                  margin: EdgeInsets.only(top: ScreenUtil().setSp(10), bottom: ScreenUtil().setWidth(60)),
                  child: new Text(
                    goodsModel.slogan,
                    style: new TextStyle(
                      fontSize: ScreenUtil().setSp(25),
                      color: Color.fromARGB(255, 255, 140, 0),
                    ),
                  ),
                  decoration: new BoxDecoration(
                    //设置四周圆角 角度
                      borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setWidth(4))),
                      border: Border.all(color: Color.fromARGB(255, 255, 140, 0), width: ScreenUtil().setWidth(2))
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.all(ScreenUtil().setSp(3)),
                      margin: EdgeInsets.only(right: ScreenUtil().setWidth(10)),
                      child: new Text(
                        goodsModel.coupon,
                        style: new TextStyle(
                          fontSize: ScreenUtil().setSp(25),
                          color: Colors.white,
                        ),
                      ),
                      decoration: new BoxDecoration(
                        //设置四周圆角 角度
                        borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setWidth(4))),
                        color: Color.fromARGB(255, 255, 70, 0),
                      ),
                    ),
                    new Text(
                      "¥" + goodsModel.discountPrice,
                      style: new TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(30),
                        color: Color.fromARGB(255, 255, 70, 0),
                      ),
                    )
                  ],
                ),
                new Padding(padding: EdgeInsets.all(ScreenUtil().setWidth(5))),
                new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        "原价 "  + goodsModel.price,
                        style: new TextStyle(
                          fontSize: ScreenUtil().setSp(25),
                          color: Colors.black54,
                        ),
                      ),
                      new Text(
                        "月销" + goodsModel.monthlySales,
                        style: new TextStyle(
                          fontSize: ScreenUtil().setSp(25),
                          color: Colors.black54,
                        ),
                      )
                    ]
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}