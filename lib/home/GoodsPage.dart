import 'package:flutter/material.dart';
import 'package:flutter_supper_return/model/GoodsModel.dart';
import 'package:flutter_supper_return/home/GoodsListItem.dart';
import 'package:flutter_supper_return/home/GoodsGridItem.dart';
import 'package:flutter/rendering.dart';

class GoodsPage extends StatefulWidget {

  bool isScroll;
  List<GoodsModel> goodsList;
  bool isList;

  GoodsPage({this.isScroll = true, this.goodsList, this.isList = false});

  @override
  GoodsPageState createState() {
    return new GoodsPageState();
  }
}

class GoodsPageState extends State<GoodsPage> {
  @override
  Widget build(BuildContext context) {
    return widget.isList ? new ListView.builder(
      shrinkWrap: !widget.isScroll,
      physics: widget.isScroll ? null : NeverScrollableScrollPhysics(),
      itemCount: widget.goodsList.length,
      itemBuilder: (context, i) => new GoodsListItem(goodsModel: widget.goodsList[i]),
    ):
    new GridView.builder(
      shrinkWrap: !widget.isScroll,
      physics: widget.isScroll ? null : NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
      ),
      itemCount: widget.goodsList.length,
      itemBuilder: (context, i) => new GoodsGridItem(goodsModel: widget.goodsList[i]),
    );
  }
}
