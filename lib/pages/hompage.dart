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
    //await Future.delayed(Duration(seconds: 5));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final jsonDecoded = jsonDecode(catalogJson);
    var productsData = jsonDecoded["products"];
    CatalogModel.items = List.from(productsData)
        .map<Items>((item) => Items.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final List dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Box'),
      ),
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ItemWidgets(
                  items: CatalogModel.items[index],
                );
              },
              itemCount: CatalogModel.items.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
