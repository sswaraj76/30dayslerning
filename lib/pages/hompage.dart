import 'package:codepur/models/products.dart';
import 'package:flutter/material.dart';

import '../widget/drawer.dart';
import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Box'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWidgets(
            items: dummyList[index],
          );
        },
        itemCount: dummyList.length,
      ),
      drawer: MyDrawer(),
    );
  }
}
