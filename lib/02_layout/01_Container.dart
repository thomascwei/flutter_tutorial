import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Container'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // transform: Matrix4.translationValues(100, 0, 10),
      // transform: Matrix4.rotationZ(0.2),
      transform: Matrix4.skewX(0.2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // border: Border(
        //   top: BorderSide(
        //     width: 10.0,
        //     color: Colors.redAccent,
        //   ),
        //   bottom: BorderSide(
        //     width: 10.0,
        //     color: Colors.redAccent,
        //   ),
        //   left: BorderSide(
        //     width: 10.0,
        //     color: Colors.redAccent,
        //   ),
        //   right: BorderSide(
        //     width: 10.0,
        //     color: Colors.redAccent,
        //   ),
        // ),
        border: Border.all(
          width: 10.0,
          color: Colors.orangeAccent,
        ),
        // borderRadius: BorderRadius.all(
        //   Radius.circular(30.0),
        // ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        color: Colors.greenAccent[100],
        // 設置gradient之後背景色失效
        gradient: LinearGradient(
          colors: [
            Colors.lightBlue,
            Colors.white10,
          ],
        ),
      ),
      margin: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 5.0),
      padding: EdgeInsets.all(10.0),
      // color: Colors.yellowAccent.shade100,
      // width: 200.0,
      width: double.infinity,
      // height: 200,
      height: double.infinity,
      child: const Text(
        'Some of the packages that demonstrate the highest levels of quality, selected by the Flutter Ecosystem Committee',
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
