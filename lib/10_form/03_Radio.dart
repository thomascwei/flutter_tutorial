import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Radio'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: RadioDemo(),
    );
  }
}

class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('男'),
              Radio(
                  value: 1,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  }),
              Text('女'),
              Radio(
                value: 2,
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(gender == 1 ? '男' : '女'),
            ],
          ),
          RadioListTile(
            selectedTileColor: Colors.greenAccent[100],
            selected: gender == 1,
            secondary: Icon(Icons.person),
            title: Text('男性'),
            subtitle: Text('鬍渣'),
            value: 1,
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),
          RadioListTile(
            selectedTileColor: Colors.greenAccent[100],
            selected: gender == 2,
            secondary: Icon(Icons.person),
            title: Text('女性'),
            subtitle: Text('長髮'),
            value: 2,
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
