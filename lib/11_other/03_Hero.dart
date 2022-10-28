import 'package:flutter/material.dart';
import 'ImageDetail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hero Animation'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: HeroAnimation(),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: GridView.extent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        children: List.generate(20, (index) {
          String imageURL = "https://picsum.photos/id/$index/300/400";
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ImageDetail(imageURL);
              }));
            },
            child: Hero(
              tag: imageURL,
              child: Image.network(imageURL),
            ),
          );
        }),
      ),
    );
  }
}
