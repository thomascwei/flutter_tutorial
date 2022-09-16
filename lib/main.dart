import 'package:flutter/material.dart';

// import '01_basic/01_hello.dart';
// import '01_basic/02_Text.dart';
// import '02_layout/01_Container.dart';
// import '02_layout/02_Column_Row.dart';
// import '02_layout/03_Flex.dart';
// import '02_layout/04_Wrap.dart';
// import '02_layout/05_Stack.dart';
// import '02_layout/06_Card.dart';
// import '03_button/01_Button.dart';
// import '04_image/01_Image.dart';
// import '05_list/01_SingleChildScrollView.dart';
import '05_list/02_ListView.dart';

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
