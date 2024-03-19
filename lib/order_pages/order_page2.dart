import 'package:flutter/material.dart';

class order_page2 extends StatelessWidget {
  final String title;

  const order_page2({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('This is the order page for $title'),
      ),
    );
  }
}
// TODO Implement this library.