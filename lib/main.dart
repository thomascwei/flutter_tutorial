import 'package:flutter/material.dart';

// import '01_basic/01_hello.dart';
// import '01_basic/02_Text.dart';
import '02_layout/01_Container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      theme: ThemeData(
          // fontFamily: 'NotoSans', // 在此導入此字體就成為全局使用
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
