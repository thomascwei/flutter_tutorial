import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Column_Row'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent.shade100,
      width: double.infinity,
      child: Column(
        //主軸對齊方式
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 交岔軸對齊方式
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.abc,
            size: 50,
          ),
          Icon(
            Icons.baby_changing_station,
            size: 50,
          ),
          Icon(
            Icons.cabin,
            size: 50,
          ),
          Icon(
            Icons.dangerous,
            size: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.abc,
                size: 50,
              ),
              Icon(
                Icons.baby_changing_station,
                size: 50,
              ),
              Icon(
                Icons.cabin,
                size: 50,
              ),
              Icon(
                Icons.dangerous,
                size: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
