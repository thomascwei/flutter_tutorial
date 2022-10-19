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
              onPressed: () => Navigator.pushNamed(context, '/product'),
              child: Text('跳轉'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/product/1'),
              child: Text('商品1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/product/2'),
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
  final String id;

  const ProductDetail({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Text('當前商品的id: $id'),
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
