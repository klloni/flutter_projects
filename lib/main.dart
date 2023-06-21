import 'package:first_app/pages/Login_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 30;

    // var day = "Tuesday";
    // const pi = 3.14;

    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
