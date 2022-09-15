import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Card'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(10.0),
          color: Colors.lightGreenAccent.shade100,
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  'Thomas',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                subtitle: Text('CEO'),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '電話: 121321546541321',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '地址: sdasdasdaf',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          //陰影顏色
          shadowColor: Colors.cyanAccent.shade100,
          //陰影高度
          elevation: 20.0,
          //邊框
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  'Jim',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                subtitle: Text('CTO'),
              ),
              Divider(),
              ListTile(
                title: Text(
                  '電話: 121321546541321',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '地址: sdasdasdaf',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
