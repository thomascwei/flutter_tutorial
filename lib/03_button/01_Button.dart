import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Button'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.settings)],
        ),
        body: ButtonDemo(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onLongPress: () {
              print('long press');
            },
            onPressed: () {
              print('Click TextButton');
            },
            child: Text('TextButton'),
          ),
          ElevatedButton(
            onLongPress: () {
              print('long press');
            },
            onPressed: () {
              print('Click TextButton');
            },
            child: Text('ElevatedButton'),
          ),
          OutlinedButton(
            style: ButtonStyle(
              // 聲明按鈕的形狀
              shape: MaterialStateProperty.all(StadiumBorder()),
              side: MaterialStateProperty.all(BorderSide(
                color: Colors.black38,
                width: 2.0,
              )),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                // 按下按鈕時的前景色
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                }
                return Colors.blue;
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                // 按下按鈕時的背景色
                if (states.contains(MaterialState.pressed)) {
                  return Colors.amberAccent;
                }
                return Colors.white;
              }),
              textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 30.0),
              ),
              // 設置水波紋顏色
              overlayColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.purple;
                }
              }),
              minimumSize: MaterialStateProperty.all(
                Size(
                  150.0,
                  60.0,
                ),
              ),
            ),
            onLongPress: () {
              print('long press');
            },
            onPressed: () {
              print('Click TextButton');
            },
            child: Text('OutlinedButton'),
          ),
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.orange;
                  }
                }),
              ),
            ),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('OutLineTheme'),
            ),
          ),
          IconButton(
            tooltip: "???",
            splashColor: Colors.grey,
            color: Colors.pink,
            iconSize: 30.0,
            onPressed: () {
              print('IconButton');
            },
            icon: Icon(Icons.add_alarm),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.cabin_rounded),
            label: Text('TextButtonIcon'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.dangerous),
            label: Text('ElevatedButtonIcon'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.face),
            label: Text('OutlinedButtonIcon'),
          ),
          Container(
            color: Colors.lightGreenAccent.shade100,
            width: double.infinity,
            child: ButtonBar(
              // button的組合
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.dangerous),
                  label: Text('ElevatedButtonIcon'),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.face),
                  label: Text('OutlinedButtonIcon'),
                ),
              ],
            ),
          ),
          BackButton(),
          CloseButton(),
        ],
      ),
    );
  }
}
