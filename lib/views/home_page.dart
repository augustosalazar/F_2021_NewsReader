import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 22, right: 2, left: 2),
        child: Container(
          child: Text("HOME PAGE"),
        ),
      ),
    );
  }
}
