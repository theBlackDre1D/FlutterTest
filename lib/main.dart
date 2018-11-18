import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Easy list"),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text('Add product'),
                  onPressed: () {}, // empty function for now
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/burger.jpg'),
                    Text("Some text")
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
