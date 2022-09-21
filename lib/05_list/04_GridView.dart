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
      body: GridViewBuilderDemo(),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        padding: EdgeInsets.all(20.0),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: List.generate(
            10,
            (index) => ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orangeAccent)),
                  onPressed: () {},
                  child: Text('Button$index'),
                )),
      ),
    );
  }
}

class GridViewExtendDemo extends StatelessWidget {
  const GridViewExtendDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        maxCrossAxisExtent: 180.0,
        // 子組件的寬度
        children:
            List.generate(10, (index) => Image.asset('images/flutter.png')),
      ),
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  final List<dynamic> _tiles = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: _tiles.length,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _tiles[index];
        },
      ),
    );
  }
}
