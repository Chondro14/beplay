import 'package:flutter/material.dart';

class no_Connection_Screen extends StatefulWidget {
  @override
  _no_Connection_Screen createState() => _no_Connection_Screen();
}

class _no_Connection_Screen extends State<no_Connection_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('No Connection'),
        ),
      ),
    );
  }
}
