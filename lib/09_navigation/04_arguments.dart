import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('首頁'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                'product',
                arguments: {'title': '主頁傳來的參數'},
              ),
              child: Text('跳轉到商品頁面'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                'productDetail',
                arguments: {'id': 1},
              ),
              child: Text('商品1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                'productDetail',
                arguments: {'id': 2},
              ),
              child: Text('商品2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'user'),
              child: Text('未知路由'),
            ),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('商品頁'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: Center(
        child: Column(
          children: [
            Text('接收到的參數是 ${arguments['title']}'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}

class Unknown extends StatelessWidget {
  const Unknown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('404'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('商品詳情頁'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: Center(
        child: Column(
          children: [
            Text('當前商品的id: ${arguments['id']}'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}
