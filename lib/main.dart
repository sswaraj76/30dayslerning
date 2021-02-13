import 'package:codepur/widget/themes.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import './pages/hompage.dart';
import './pages/login.dart';
import './utilites/routesnames.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      //home: HomePage(),
      initialRoute: MyRoutesName.home,
      routes: {
        '/': (context) => LogIn(),
        MyRoutesName.home: (context) => HomePage()
      },
    );
  }
}
