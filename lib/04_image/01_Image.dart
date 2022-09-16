import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image'),
        leading: const Icon(Icons.menu),
        actions: [const Icon(Icons.settings)],
      ),
      body: ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //加載本地圖片
        Image.asset(
          'images/Dart.png',
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://images.pexels.com/photos/6431576/pexels-photo-6431576.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
          width: 300.0,
          height: 300.0,
          repeat: ImageRepeat.repeat,
          //與背景色混合
          colorBlendMode: BlendMode.colorDodge,
          color: Colors.green,
        ),
      ],
    );
  }
}
