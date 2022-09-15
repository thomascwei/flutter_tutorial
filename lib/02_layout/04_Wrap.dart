import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wrap'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  final List<String> _list = ['劉備', '關羽', '張飛', '趙雲', '馬超', '黃忠', '魏延', '諸葛亮'];

  List<Widget> _listShuGen() {
    return _list
        .map((item) => Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Text(
                  '蜀',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              label: Text(item),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.redAccent.shade100,
            child: Text(
              '吳',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          label: Text('孫權'),
        ),
        Wrap(
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Text(
                  '魏',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              label: Text('曹操'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Text(
                  '魏',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              label: Text('張遼'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Text(
                  '魏',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              label: Text('于禁'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Text(
                  '魏',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              label: Text('李典'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Text(
                  '魏',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              label: Text('樂進'),
            ),
          ],
        ),
        Wrap(
          spacing: 18.0, // 水平間距
          runSpacing: 10.0, // 垂直間距
          children: _listShuGen(),
        )
      ],
    );
  }
}
