import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/drawer.dart';
import '../widget/item_widget.dart';
import '../models/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final jsonDecoded = jsonDecode(catalogJson);
    final productsData = jsonDecoded["products"];
    setState(() {});
    print(productsData);
    //print(catalogJson);
  }

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
