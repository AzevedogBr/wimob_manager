import 'package:flutter/material.dart';

class Expedicao extends StatefulWidget {
  static String tag = 'expedicao';

  @override
  _ExpedicaoState createState() => _ExpedicaoState();
}

class _ExpedicaoState extends State<Expedicao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: Text(
        "Financeiro",
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
