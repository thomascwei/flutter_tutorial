import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shared Preference'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: SharedPreferenceDemo(),
    );
  }
}

class SharedPreferenceDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('遞增'),
          ),
          ElevatedButton(
            onPressed: _decrementCounter,
            child: Text('遞減'),
          ),
          ElevatedButton(
            onPressed: _removeCounter,
            child: Text('刪除'),
          ),
        ],
      ),
    );
  }

  _incrementCounter() async {
    //  獲取保存instance
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1; // 不存在設為0,已存在+1
    print('Press $counter times');
    await prefs.setInt('counter', counter);
  }

  _decrementCounter() async {
    //  獲取保存instance
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = prefs.getInt('counter') ?? 0; // 不存在設為0,已存在+1
    if (counter > 0) {
      counter--;
    }
    print('Press $counter times');
    await prefs.setInt('counter', counter);
  }

  _removeCounter() async {
    //  獲取保存instance
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('counter');
    int counter = prefs.getInt('counter') ?? 0; // 不存在設為0,已存在+1
    print('Press $counter times');
  }
}
