// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stagger Animation'),
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
  late Animation<double> animation;
  late Animation sizeAnimation;
  late Animation colorAnimation;
  late Animation rotationAnimation;

  @override
  void initState() {
    super.initState();
    //  1. 創建controller
    controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 3,
      ),
    );

    //  2. 創建動畫
    animation = CurvedAnimation(
      parent: controller,
      curve: Interval(0.0, 0.5),
    )..addListener(() {
        setState(() {});
      });

    //  3. 讓動畫反複運行
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();

    //  4. 設置其他動畫
    sizeAnimation = Tween(
      begin: 0.0,
      end: 200.0,
    ).animate(animation);
    colorAnimation = ColorTween(
      begin: Colors.yellow,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0.5, 0.8, curve: Curves.bounceIn),
    )..addListener(() {
        setState(() {});
      }));

    rotationAnimation = Tween(
      begin: 0.0,
      end: 2 * pi,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0.8, 1.0, curve: Curves.easeIn),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // animation.addStatusListener((status) {
              //   if (status == AnimationStatus.completed) {
              //     controller.reverse();
              //   } else if (status == AnimationStatus.dismissed) {
              //     controller.forward();
              //   }
              // });
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
          Opacity(
            opacity: controller.value,
            child: Transform.rotate(
              angle: rotationAnimation.value,
              child: Container(
                width: sizeAnimation.value,
                height: sizeAnimation.value,
                color: colorAnimation.value,
              ),
            ),
          ),
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
