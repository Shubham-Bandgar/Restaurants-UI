import 'package:flutter/material.dart';

class order_page1 extends StatelessWidget {
  final String title;

  const order_page1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lassi"),
      ),
      body: Center(
        child: Text('This is the order page for $title'),
      ),
    );
  }
}
