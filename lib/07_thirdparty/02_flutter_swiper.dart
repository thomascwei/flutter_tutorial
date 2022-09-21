import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('flutter swiper'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: FlutterSwiperDemo(),
    );
  }
}

class FlutterSwiperDemo extends StatelessWidget {
  final List<String> imgs = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (BuildContext, index) {
              return Image.asset(
                imgs[index],
                fit: BoxFit.cover,
              );
            },
            pagination: SwiperPagination(), // 輪播圖的指示點
            control: SwiperControl(), // 左右箭頭導航
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (BuildContext, index) {
              return Image.asset(
                imgs[index],
                fit: BoxFit.cover,
              );
            },
            viewportFraction: 0.7,
            control: SwiperControl(), // 左右箭頭導航
            scale: 0.7,
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (BuildContext, index) {
              return Image.asset(
                imgs[index],
                fit: BoxFit.cover,
              );
            },
            control: SwiperControl(), // 左右箭頭導航
            itemWidth: 300.0,
            layout: SwiperLayout.STACK,
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (BuildContext, index) {
              return Image.asset(
                imgs[index],
                fit: BoxFit.cover,
              );
            },
            control: SwiperControl(), // 左右箭頭導航
            itemWidth: 300.0,
            itemHeight: 200.0,
            layout: SwiperLayout.TINDER,
          ),
        ),
      ],
    );
  }
}
