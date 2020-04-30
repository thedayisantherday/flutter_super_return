import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'NavigationPage.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      home: NavigationPage(),
    );
  }
}
