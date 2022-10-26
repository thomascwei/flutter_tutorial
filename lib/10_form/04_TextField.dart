import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TextField'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  late String phone;
  late String password;
  late String description;

  register() {
    print('註冊的號碼是:$phone');
    print('註冊的密碼是:$password');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              // 獲取焦點時高亮邊框樣式
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
              prefixIcon: Icon(Icons.mobile_friendly_sharp),
              labelText: '手機號碼',
              hintText: '請輸入手機號碼',
            ),
            maxLength: 10,
            onChanged: (value) {
              setState(() {
                phone = value;
              });
            },
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              // 默認邊框樣式
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.yellow,
                ),
              ),
              prefixIcon: Icon(Icons.password_outlined),
              labelText: '密碼',
              hintText: '請輸入密碼',
            ),
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
          ),
          TextField(
            maxLines: 5,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: '簡介',
                hintText: '請介紹自己',
                hintStyle: TextStyle(
                  color: Colors.teal,
                )),
            onChanged: (value) {
              setState(() {
                description = value;
              });
            },
          ),
          Spacer(),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  register();
                },
                child: Text('提交')),
          )
        ],
      ),
    );
  }
}
