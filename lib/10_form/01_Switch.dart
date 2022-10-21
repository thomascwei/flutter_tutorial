import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Switch'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: SwitchDemo(),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchValue0 = false;
  bool _switchValue1 = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Switch(
              value: _switchValue0,
              onChanged: (bool value) {
                setState(() {
                  _switchValue0 = value;
                });
              },
            ),
            title: Text('當前狀態是: ${_switchValue0 == true ? "選中" : "沒中"}'),
          ),
          ListTile(
            leading: Switch(
              value: _switchValue1,
              onChanged: (bool value) {
                setState(() {
                  _switchValue1 = value;
                });
              },
            ),
            title: Text('當前狀態是: ${_switchValue1 == true ? "選中" : "沒中"}'),
          ),
          ListTile(
            leading: Switch(
              activeColor: Colors.red,
              activeTrackColor: Colors.yellow,
              value: _switchValue2,
              onChanged: (bool value) {
                setState(() {
                  _switchValue2 = value;
                });
              },
            ),
            title: Text('當前狀態是: ${_switchValue2 == true ? "選中" : "沒中"}'),
          ),
          ListTile(
            leading: CupertinoSwitch(
              value: _switchValue3,
              onChanged: (bool value) {
                setState(() {
                  _switchValue3 = value;
                });
              },
            ),
            title: Text('IOS風格switch: ${_switchValue3 == true ? "選中" : "沒中"}'),
          ),
        ],
      ),
    );
  }
}
