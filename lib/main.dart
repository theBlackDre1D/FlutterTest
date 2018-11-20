import 'package:flutter/material.dart';

import './products_manager.dart';
import './custom_drawer.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
  // List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    print('[MyApp] build()');

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home: Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: Text("Easy list"),
          ),
          body: ProductManager("Food tester")
          ),
    );
  }
}
