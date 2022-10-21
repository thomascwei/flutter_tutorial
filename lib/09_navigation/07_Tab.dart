import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // 菜單數組
  final List<Widget> _tabs = [
    Tab(
      text: '首頁',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: '添加',
      icon: Icon(Icons.add),
    ),
    Tab(
      text: '搜索',
      icon: Icon(Icons.search),
    ),
  ];

  // 頁面數組
  final List<Widget> _tabViews = [
    Icon(
      Icons.home,
      size: 120.0,
      color: Colors.indigoAccent,
    ),
    Icon(
      Icons.add,
      size: 120.0,
      color: Colors.teal,
    ),
    Icon(
      Icons.search,
      size: 120.0,
      color: Colors.deepOrangeAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tab'),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          bottom: TabBar(
            tabs: _tabs,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black26,
          ),
        ),
        body: TabBarView(
          children: _tabViews,
        ),
        bottomNavigationBar: TabBar(
          tabs: _tabs,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black26,
        ),
      ),
    );
  }
}
