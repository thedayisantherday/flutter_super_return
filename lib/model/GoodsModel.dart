class GoodsModel {
  String skuId; // sku id
  String skuName; // 商品名
  String skuImg; // 商品图
  bool isVideo; // 是否视频展示
  String price;  // 商品价格
  String discountPrice; // 商品活动价
  String type; // 商品类型
  String logo; // 商品logo
  String slogan; // 商品运营语
  String coupon; // 优惠券
  String monthlySales;

  GoodsModel(this.skuId, this.skuName, this.skuImg, this.isVideo, this.price,
      this.discountPrice, this.type, this.logo, this.slogan, this.coupon,
      this.monthlySales); // 月销量


}

List<GoodsModel> testData = [
  new GoodsModel('0001', "【第二件0元】1.8L特级酱油", "https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/85554/12/449/76335/5dad6b36E8f212cf4/8e5aef4a95fb1924.jpg", false, "45.8", "42.8", "1", "", "分享赚¥4.16", "3元券", "169835"),
  new GoodsModel('0002', "30哥学生专用2B橡皮擦", "https://img13.360buyimg.com/mobilecms/s372x372_jfs/t1/104465/22/11725/78908/5e463eb2E1ed321b0/07617e91a5cca30e.jpg", true, "9.9", "8.8", "1", "", "分享赚¥1.06", "2元券", "3823"),
  new GoodsModel('0003', "日本马卡龙牙刷4支超值装", "https://img10.360buyimg.com/mobilecms/s372x372_jfs/t1/106804/8/19148/379691/5e9d90edE3ba32de7/a866bfc21a230180.jpg", false, "19.8", "12.8", "1", "", "分享赚¥2.2", "5元券", "54000"),
  new GoodsModel('0004', "漫花抽纸10包秒杀价8.9", "https://img10.360buyimg.com/n2/s240x240_jfs/t1/66319/9/13820/656194/5db29748E8faeffd8/77216bda9c7b46af.png", false, "9.9", "8.9", "1", "", "分享赚¥0.87", "1元券", "133279"),
  new GoodsModel('0005', "小红书推荐学生儿童玻璃水杯", "https://img12.360buyimg.com/n2/s240x240_jfs/t1/102027/36/16425/120029/5e7dbc4bEcaed9f74/136e71eacd1ae142.jpg", false, "14.9", "9.9", "1", "", "分享赚¥1.01", "3元券", "68530"),
  new GoodsModel('0006', "【索瑞尔】吸盘式车载手机架", "https://img11.360buyimg.com/n2/s240x240_jfs/t1/92415/23/14224/122659/5e61bd23E34bef228/f7ac67955f3e292f.jpg", false, "12.8", "8.8", "1", "", "分享赚¥1.29", "1元券", "125892"),
  new GoodsModel('0007', "厨房神器防油防潮一擦净", "https://img13.360buyimg.com/mobilecms/s316x316_jfs/t28861/24/1123809529/196444/5737b37d/5cd6fc8cN0fa8c249.jpg", false, "14.8", "9.8", "1", "", "分享赚¥1.01", "5元券", "169835"),
  new GoodsModel('0008', "时尚性感美背百搭隐形吊带裹胸", "https://img14.360buyimg.com/mobilecms/s372x372_jfs/t1/27927/28/7378/94262/5c6a77d4E6cb8ec96/bc46f497c4f98def.jpg", false, "39.8", "29.8", "1", "", "分享赚¥2.16", "10元券", "63190"),
];