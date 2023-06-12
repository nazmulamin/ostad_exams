import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Photo Gallery'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shopping List'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Cart is Empty')));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ListView(
              shrinkWrap: true,
              children: const [
                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text('Apples'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text('Bananas'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text('Bread'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text('Milk'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text('Eggs'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
