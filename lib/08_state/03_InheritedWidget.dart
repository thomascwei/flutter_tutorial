import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stateful Widget'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: MyState(),
    );
  }
}

class MyState extends StatefulWidget {
  const MyState({Key? key}) : super(key: key);

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _num = 0;

  void _increment() {
    setState(() {
      _num++;
    });
  }

  void _decrement() {
    setState(() {
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShareDataWidget(
      num: _num,
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _increment,
              child: Icon(Icons.add),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              // child: Text('$_num'),
              //  跨組件訪問數據
              child: MyCounter(),
            ),
            ElevatedButton(
              onPressed: _decrement,
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    // 使用inherited widget共享數據
    return Text(ShareDataWidget.of(context).num.toString());
  }
}

// 數據共享組件
class ShareDataWidget extends InheritedWidget {
  final int num;

  const ShareDataWidget({
    Key? key,
    required Widget child,
    required this.num,
  }) : super(key: key, child: child);

  static ShareDataWidget of(BuildContext context) {
    final ShareDataWidget? result =
        context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
    assert(result != null, 'No ShareDataWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ShareDataWidget old) {
    return true;
  }
}
