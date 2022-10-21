import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Check Box'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: CheckBoxDemo(),
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _male = true;
  bool _female = false;
  bool _transGender = true;
  bool _value1 = true;
  bool _value2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            value: _male,
            onChanged: (bool? value) {
              setState(() {
                _male = value!;
              });
            },
          ),
          title: Text('男性'),
        ),
        ListTile(
          leading: Checkbox(
            value: _female,
            onChanged: (bool? value) {
              setState(() {
                _female = value!;
              });
            },
          ),
          title: Text('女性'),
        ),
        ListTile(
          leading: Checkbox(
            activeColor: Colors.red,
            checkColor: Colors.black,
            value: _transGender,
            onChanged: (bool? value) {
              setState(() {
                _transGender = value!;
              });
            },
          ),
          title: Text('變性'),
        ),
        CheckboxListTile(
          activeColor: Colors.green,
          checkColor: Colors.black,
          selected: _value1,
          secondary: Icon(
            Icons.lock_clock,
            size: 40,
          ),
          title: Text('吃飯了沒'),
          subtitle: Text('不要遲到了'),
          value: _value1,
          onChanged: (bool? value) {
            setState(() {
              _value1 = value!;
            });
          },
        ),
        CheckboxListTile(
          secondary: Icon(
            Icons.lock_clock,
            size: 40,
          ),
          title: Text('該起床了'),
          subtitle: Text('不要遲到了'),
          value: _value2,
          onChanged: (bool? value) {
            setState(() {
              _value2 = value!;
            });
          },
        ),
      ],
    );
  }
}
