import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GridView'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: GridViewDemo(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: GridView(
        /*
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 指定列數
          mainAxisSpacing: 20.0, // 主軸間距
          crossAxisSpacing: 10.0, // 交岔軸間距
          childAspectRatio: 1.5, // 子組建長寬比例
        ),
        children: [
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.limeAccent,
          ),
          Container(
            color: Colors.orangeAccent,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.purpleAccent,
          ),
          Container(
            color: Colors.indigoAccent,
          ),
          Container(
            color: Colors.orangeAccent,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.deepPurple,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.black26,
          ),
        ],
        */
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100.0,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ),
        children: [
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.limeAccent,
          ),
          Container(
            color: Colors.orangeAccent,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.purpleAccent,
          ),
          Container(
            color: Colors.indigoAccent,
          ),
          Container(
            color: Colors.orangeAccent,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.deepPurple,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
