import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cupertino'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget dialogBox() {
      if (Platform.isIOS) {
        return CupertinoDemo();
      } else {
        return MaterialDemo();
      }
    }

    return Container(
      child: Column(
        children: [
          //安卓風格
          // MaterialDemo(),
          // //IOS風格組件
          // CupertinoDemo(),
          dialogBox(),
        ],
      ),
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('提示'),
        content: Text('確定？'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('取消'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('確認'),
          ),
        ],
      ),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text('提示'),
        content: Text(''),
        actions: [
          CupertinoDialogAction(
            child: Text('取消'),
            onPressed: () {},
          ),
          CupertinoDialogAction(
            child: Text('確定'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
