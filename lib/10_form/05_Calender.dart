import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calender'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: CalenderDemo(),
    );
  }
}

class CalenderDemo extends StatefulWidget {
  const CalenderDemo({Key? key}) : super(key: key);

  @override
  State<CalenderDemo> createState() => _CalenderDemoState();
}

class _CalenderDemoState extends State<CalenderDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView(children: [
        Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            formattedDate,
            style: TextStyle(
              backgroundColor: Colors.cyan,
              fontSize: 30.0,
            ),
          ),
        ),
        _showDatePicker(context),
      ]),
    );
  }

  String formattedDate = '尚未選擇日期';

  ElevatedButton _showDatePicker(context) {
    return ElevatedButton(
      onPressed: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2020, 6),
          lastDate: DateTime(2023, 6),
          helpText: '日期選擇器',
        );
        if (pickedDate != null) {
          setState(() {
            formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          });
        }
      },
      child: Text('選個好日字'),
    );
  }
}
