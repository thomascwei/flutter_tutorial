import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
        leading: const Icon(Icons.menu),
        actions: [const Icon(Icons.settings)],
      ),
      body: TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Some of the packages that demonstrate the highest levels of quality, selected by the Flutter Ecosystem Committee',
          style: TextStyle(
            fontSize: 30,
            color: Colors.redAccent,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.blue,
            fontFamily: 'NotoSans',
          ),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.3,
        ),
        RichText(
          text: const TextSpan(
              text: 'Hello',
              style: TextStyle(
                fontSize: 40,
                color: Colors.redAccent,
              ),
              children: [
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blueAccent,
                  ),
                ),
                TextSpan(
                  text: '你好',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.purpleAccent,
                  ),
                )
              ]),
        )
      ],
    );
  }
}
