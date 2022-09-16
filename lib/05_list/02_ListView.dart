import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListViewBasic(),
          Container(
            height: 20,
          ),
          ListViewHorizontal(),
          Container(
            height: 20,
          ),
          ListViewBuilderDemo(),
          ListViewSepratorDemo(),
        ],
      ),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Add'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.pan_tool),
          ),
          ListTile(
            leading: Image.asset('images/flutter.png'),
            title: Text('Add'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.kayaking),
            selected: true,
            selectedTileColor: Colors.lightBlueAccent.shade100,
          ),
          ListTile(
            leading: Image.asset('images/Dart.png'),
            title: Text('Add'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.female),
          ),
          ListTile(
            leading: Icon(Icons.tab),
            title: Text('Add'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.hail),
          ),
        ],
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 100.0,
            color: Colors.green,
          ),
          Container(
            width: 100.0,
            color: Colors.orangeAccent,
          ),
          Container(
            width: 100.0,
            color: Colors.deepOrangeAccent,
          ),
          Container(
            width: 100.0,
            color: Colors.limeAccent,
          ),
          Container(
            width: 100.0,
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  final List<Widget> users = List<Widget>.generate(
      20,
      (index) => OutlinedButton(
            onPressed: () {},
            child: Text('User $index'),
          ));

  ListViewBuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemBuilder: (context, index) {
          return users[index];
        },
        itemCount: users.length,
        itemExtent: 30.0,
      ),
    );
  }
}

class ListViewSepratorDemo extends StatelessWidget {
  Widget dividerOdd = Divider(
    thickness: 2.0,
    color: Colors.red,
  );
  Widget dividerEven = Divider(
    thickness: 2.0,
    color: Colors.green,
  );
  final List<Widget> products = List.generate(
      6,
      (index) => ListTile(
            leading: Icon(Icons.add),
            title: Text('Add$index'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.pan_tool),
          ));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('aaaa'),
        ),
        Container(
          height: 200.0,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return products[index];
              },
              separatorBuilder: (context, index) {
                return index % 2 == 0 ? dividerEven : dividerOdd;

                // if (index % 2 == 0) {
                //   return dividerOdd;
                // } else {
                //   return dividerEven;
                // }
              },
              itemCount: products.length),
        )
      ],
    );
  }
}
