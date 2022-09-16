import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SingleChildScrollView'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          // 指定卷軸滾動方向
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10.0),
          // 滾動從尾部開始
          // reverse: true,
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Button1'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Button2'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Button3'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Button4'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Button5'),
              ),
            ],
          ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Column(
        //       children: List.generate(
        //           20,
        //           (index) => OutlinedButton(
        //                 onPressed: () {},
        //                 child: Text('Button$index'),
        //               ))),
        // )
      ],
    );
  }
}
