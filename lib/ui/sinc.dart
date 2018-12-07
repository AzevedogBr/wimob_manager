import 'package:flutter/material.dart';

class Sinc extends StatefulWidget {
  static String tag = 'sinc';

  @override
  _SincState createState() => _SincState();
}

class _SincState extends State<Sinc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Sincronização",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),
      ),



    );
  }
}
