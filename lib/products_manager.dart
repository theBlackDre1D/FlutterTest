import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    print('[Product Manager] createState()');

    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
    void initState() {
      print('[Product Manager State] initState()');

      _products.add(widget.startingProduct);

      super.initState();
    }

    @override
      void didUpdateWidget(ProductManager oldWidget) {
        // TODO: implement didUpdateWidget
        super.didUpdateWidget(oldWidget);
      }

  @override
  Widget build(BuildContext context) {
    print('[Product Manager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColorDark,
            child: Text('Add product'),
            onPressed: () {
              setState(() {
                _products.add('Advanced Foot');
              });
            },
          ),
        ),
        Products(_products),
      ],
    );
  }
}
