import 'package:flutter/material.dart';

import './products_manager.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Easy list"),
          ),
          body: ProductManager()
          ),
    );
  }
}
