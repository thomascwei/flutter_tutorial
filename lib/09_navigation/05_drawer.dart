import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drawer'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: HomePage(),
      drawer: DrawerList(),
      endDrawer: DrawerList(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          // Text('Drawer'),
          UserAccountsDrawerHeader(
            accountName: Text('thomas'),
            accountEmail: Text('thomas@123.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/Dart.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('設置'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('餘額'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('我的'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            // leading: Icon(Icons.person),
            title: Text('回退'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pop(context),
          ),
          AboutListTile(
            child: Text('關於'),
            applicationName: 'thomas demo',
            applicationVersion: 'v 1.0.0',
            icon: CircleAvatar(
              child: Text('aaa'),
            ),
            applicationLegalese: '法律條款',
            aboutBoxChildren: [
              Text('版權所有'),
              Text('翻印必究'),
            ],
            applicationIcon: Image(
              width: 50.0,
              image: AssetImage('images/flutter.png'),
            ),
          ),
        ],
      ),
    );
  }
}
