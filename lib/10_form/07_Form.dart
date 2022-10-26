import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Form'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: FormDemo(),
    );
  }
}

class FormDemo extends StatefulWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _phone;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '手機號碼',
                  ),
                  validator: (value) {
                    RegExp reg = RegExp(r'^\d{10}$');
                    if (!reg.hasMatch(value!)) {
                      return '門號格式錯誤';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    print('_phone onSaved');
                    _phone = value!;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '密碼',
                  ),
                  validator: (value) {
                    return (value?.length ?? 0) < 6 ? '密碼格式錯誤' : null;
                  },
                  onSaved: (value) {
                    print('_password onSaved');
                    _password = value!;
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('提交成功');
                      print('formKey.currentState!.save() - before');
                      formKey.currentState!.save();
                      print('formKey.currentState!.save() - after');
                      print(_phone);
                      print(_password);
                    }
                  },
                  child: Text('提交'),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.reset();
                  },
                  child: Text('重置'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
