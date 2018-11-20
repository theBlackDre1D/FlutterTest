import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    print('[Products] build()');

    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/burger.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
