import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  var list = ["Account", "Info"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child: Center(
        child: Text("Welcome to the $days days of Flutter by $name"),
      )), drawer: Drawer(),
    );
  }
}
