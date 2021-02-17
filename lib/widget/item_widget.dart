import 'package:flutter/material.dart';

import '../models/products.dart';

class ItemWidgets extends StatelessWidget {
  final Items items;

  const ItemWidgets({Key key, @required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.network(items.image),
          title: Text(items.name),
          subtitle: Text(items.desc),
          trailing: Text(
            "₹${items.price.toString()}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
