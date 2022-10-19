import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Life Cycle'),
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
  late int _num;

  @override
  void initState() {
    super.initState();
    print('init state');
    _num = 1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyState oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  void _increment() {
    setState(() {
      print('setState');
      _num++;
    });
  }

  void _decrement() {
    setState(() {
      print('setState');
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _increment,
            child: Icon(Icons.add),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('$_num'),
          ),
          ElevatedButton(
            onPressed: _decrement,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
