import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box'),
      ),
      body: Center(
        child: Text('hello world'),
      ),
      drawer: MyDrawer(),
    );
  }
}
