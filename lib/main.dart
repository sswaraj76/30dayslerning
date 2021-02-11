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
      theme: ThemeData(
          primaryColor: Colors.orangeAccent,
          accentColor: Colors.amber,
          fontFamily: GoogleFonts.walterTurncoat().fontFamily),
      //home: HomePage(),
      routes: {
        '/': (context) => LogIn(),
        MyRoutesName.home: (context) => HomePage()
      },
    );
  }
}
