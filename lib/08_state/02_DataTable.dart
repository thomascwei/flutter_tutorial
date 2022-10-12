import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Data Table'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: UserList(),
    );
  }
}

class User {
  String name;
  int age;
  bool selected;

  User(this.name, this.age, {this.selected = false});
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User> data = [
    User('yvonne', 18),
    User('max', 17, selected: true),
    User('jim', 9),
    User('mb', 16),
  ];
  bool _sortAscending = true;

  List<DataRow> _getUserRows() {
    List<DataRow> dataRows = [];
    for (int i = 0; i < data.length; i++) {
      dataRows.add(
        DataRow(
          selected: data[i].selected,
          onSelectChanged: (selected) {
            setState(() {
              data[i].selected = selected!;
            });
          },
          cells: [
            DataCell(Text('${data[i].name}')),
            DataCell(Text('${data[i].age}')),
            DataCell(Text('M')),
          ],
        ),
      );
    }

    return dataRows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: _sortAscending,
          dataRowHeight: 100.0,
          horizontalMargin: 20.0,
          columns: [
            DataColumn(label: Text('姓名')),
            DataColumn(
              label: Text('年齡'),
              numeric: true,
              onSort: (int columnIndex, bool asscending) {
                setState(() {
                  _sortAscending = asscending;
                  if (asscending) {
                    data.sort((a, b) => a.age.compareTo(b.age));
                  } else {
                    data.sort((a, b) => b.age.compareTo(a.age));
                  }
                });
              },
            ),
            DataColumn(label: Text('性別')),
          ],
          rows: _getUserRows(),
          // [
          //   DataRow(cells: [
          //     DataCell(Text('thomas')),
          //     DataCell(Text('20')),
          //     DataCell(Text('M')),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text('thomas')),
          //     DataCell(Text('20')),
          //     DataCell(Text('M')),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text('thomas')),
          //     DataCell(Text('20')),
          //     DataCell(Text('M')),
          //   ]),
          // ],
        ),
      ),
    );
  }
}
