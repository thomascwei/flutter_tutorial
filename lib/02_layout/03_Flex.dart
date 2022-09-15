import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flex'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.settings)],
      ),
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.cyanAccent,
              width: 50.0,
              height: 50.0,
            ),
            Expanded(
              child: Container(
                color: Colors.amberAccent,
                // expanded不用給寬度,默認使用全部寬度
                height: 50.0,
              ),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.abc,
              size: 50,
            ),
            Icon(
              Icons.baby_changing_station,
              size: 50,
            ),
            Icon(
              Icons.cabin,
              size: 50,
            ),
            Icon(
              Icons.dangerous,
              size: 50,
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.indigoAccent.shade100,
                // expanded不用給寬度,默認使用全部寬度
                height: 50.0,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.redAccent.shade100,
                // expanded不用給寬度,默認使用全部寬度
                height: 50.0,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.grey,
            width: 3.0,
          )),
          height: 100,
          margin: EdgeInsets.all(50.0),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.indigoAccent.shade100,
                  // expanded不用給寬度,默認使用全部寬度
                  height: 50.0,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.redAccent.shade100,
                  // expanded不用給寬度,默認使用全部寬度
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
