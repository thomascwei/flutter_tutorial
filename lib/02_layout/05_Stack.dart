import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stack'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      // color: Colors.deepPurpleAccent.shade100,
      // width: double.infinity,
      // height: 300.0,
      child: Stack(
        // 聲明未定位widget排序方式
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CircleAvatar(
            radius: 200.0,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/6431576/pexels-photo-6431576.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.green,
              child: Text(
                '推薦',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            top: 40.0,
            right: 20.0,
          ),
          Text(
            '無指定位置',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          )
        ],
      ),
    );
  }
}
