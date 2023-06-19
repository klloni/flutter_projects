import 'package:first_app/pages/home_page.dart';
import 'package:flutter/material.dart';

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
      home: HomePage(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
