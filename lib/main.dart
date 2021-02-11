import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import './pages/hompage.dart';
import './pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.orangeAccent,
          fontFamily: GoogleFonts.walterTurncoat().fontFamily),
      //home: HomePage(),
      routes: {'/': (context) => LogIn()},
    );
  }
}
