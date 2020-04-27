import 'package:flutter/material.dart';
import 'package:flutter_supper_return/model/GoodsModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsListItem extends StatelessWidget {

  final GoodsModel goodsModel;

  const GoodsListItem({
    Key key,
    this.goodsModel
  }) : assert(goodsModel != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double margin = ScreenUtil().setWidth(10);
    return new Container(
      margin: EdgeInsets.only(left: margin, right: margin, top: margin),
      decoration: new BoxDecoration(
        //背景
        color: Colors.white,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setWidth(8))),
      ),
      child:new Row(
        children: [
          new ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(6),bottomLeft: Radius.circular(6),topRight: Radius.zero,bottomRight:Radius.zero),
            child: new Image.network(
              goodsModel.skuImg,
              fit: BoxFit.cover,
              width: ScreenUtil().setWidth(270),
              height: ScreenUtil().setWidth(270),
            ),
          ),
          new Expanded(
            child: new Container(
              height: ScreenUtil().setWidth(270),
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(15), right: ScreenUtil().setWidth(15), top: ScreenUtil().setWidth(10), bottom: ScreenUtil().setWidth(10)),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          goodsModel.skuName,
                          style: new TextStyle(
                            fontSize: ScreenUtil().setSp(25),
                            color: Colors.black87,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(ScreenUtil().setSp(3)),
                          margin: EdgeInsets.only(top: ScreenUtil().setSp(10)),
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
                      ],
                    ),
                    new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Row(
                              children: [
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
                              ]
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
                        ]
                    ),
                  ],
                ),
            ),
          ),
        ]
      ),
    );
  }
}