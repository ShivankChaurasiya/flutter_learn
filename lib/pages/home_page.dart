import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Shivank";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),

      body: Container(height: 100, width: 100, color: Colors.red),

      drawer: MyDrawer(),
    );
  }
}
