// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<BottomNavigationBarItem> BottomNavItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
        backgroundColor: Colors.blueAccent,
        label: '首頁'),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      backgroundColor: Colors.green,
      label: '消息',
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        backgroundColor: Colors.red,
        label: '購物車'),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      backgroundColor: Colors.orange,
      label: '我',
    ),
  ];

  final List<Widget> Pages = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 50.0),
      ),
    ),
    Center(
      child: Text(
        'Message',
        style: TextStyle(fontSize: 50.0),
      ),
    ),
    Center(
      child: Text(
        'ShoppingCart',
        style: TextStyle(fontSize: 50.0),
      ),
    ),
    Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 50.0),
      ),
    ),
  ];

  late int currentindex;

  @override
  void initState() {
    super.initState();
    currentindex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('底部導航'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: BottomNavItems,
        currentIndex: currentindex,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,

        onTap: (index) {
          _changePage(index);
        },
      ),
      body: Pages[currentindex],
    );
  }

  void _changePage(int index) {
    if (index != currentindex) {
      setState(() {
        currentindex = index;
      });
    }
  }
}
