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
// import '05_list/02_ListView.dart';
// import '05_list/03_GridView.dart';
// import '05_list/04_GridView.dart';
// import '06_others/01_Cupertino.dart';
// import '07_thirdparty/01_dio.dart';
// import '07_thirdparty/02_flutter_swiper.dart';
// import '07_thirdparty/03_shared_preference.dart';
// import '08_state/01_StatefulWidget.dart';
// import '08_state/02_DataTable.dart';
// import '08_state/03_InheritedWidget.dart';
// import '08_state/04_LifeCycle.dart';
// import '08_state/05_Provider.dart';
// import '09_navigation/01_anonymous.dart';
// import '09_navigation/02_NamedRoute.dart';
// import '09_navigation/03_onGenerateRoute.dart';
import '09_navigation/04_arguments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: Home(),

      // 聲明命名路由
      routes: {
        'home': (context) => Home(),
        'product': (context) => Product(),
        'productDetail': (context) => ProductDetail(),
      },
      initialRoute: 'home',
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(
        builder: (context) => Unknown(),
      ),

      /*
      onGenerateRoute: (RouteSettings setting) {
        print('當前路徑 ${setting.name}');
        //  匹配首頁
        if (setting.name == '/') {
          return MaterialPageRoute(builder: (BuildContext context) {
            return Home();
          });
        }
        if (setting.name == '/product') {
          return MaterialPageRoute(builder: (BuildContext context) {
            return Product();
          });
        }

        // 匹配/product/:id
        var uri = Uri.parse(setting.name!);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'product') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(builder: (BuildContext context) {
            return ProductDetail(id: id);
          });
        }

        return MaterialPageRoute(builder: (BuildContext context) {
          return Unknown();
        });
      },
      */
      theme: ThemeData(
          // fontFamily: 'NotoSans', // 在此導入此字體就成為全局使用
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
