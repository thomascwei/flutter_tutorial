// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animation'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({Key? key}) : super(key: key);

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    //  1. 創建controller
    controller = AnimationController(
      duration: Duration(
        milliseconds: 400,
      ),
      vsync: this,
    );
    //  2.1 聲明動畫曲線
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceInOut,
    );
    // 2.2 設置動畫值的範圍
    animation = Tween(
      begin: 50.0,
      end: 300.0,
    ).animate(controller);
    //  3.  監聽動畫
    animation.addListener(() {
      print(animation.value);
      setState(() {});
    });
    //  4. 執行動畫
    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              controller.forward();
            },
            child: Text('放大'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.reverse();
            },
            child: Text('縮小'),
          ),
          ElevatedButton(
            onPressed: () {
              animation.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  controller.reverse();
                } else if (status == AnimationStatus.dismissed) {
                  controller.forward();
                }
              });
              controller.forward();
            },
            child: Text('重複'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.stop();
            },
            child: Text('停止'),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: animation.value,
          ),
          Opacity(
            opacity: controller.value,
            child: Text('透明度'),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // 釋放資源
    controller.dispose();
  }
}
