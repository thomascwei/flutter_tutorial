import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 2. 創建provider
    return ChangeNotifierProvider(
      create: (BuildContext context) => new LikeModel(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Provider'),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
        ),
        body: MyHomePage(),
      ),
    );
  }
}

// 1.創建數據模型
class LikeModel extends ChangeNotifier {
  int _counter = 0;

  //  getter
  int get counter => _counter;

  incrementCounter() {
    // 累加
    _counter++;
    //  通知UI更新
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // 3.在子組件中使用數據模型
          Text('${context.watch<LikeModel>().counter}'),
          TextButton(
              onPressed: Provider.of<LikeModel>(context).incrementCounter,
              child: Icon(Icons.thumb_up)),
        ],
      ),
    );
  }
}
