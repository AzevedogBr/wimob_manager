import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class Expedicao extends StatefulWidget {
  static String tag = 'expedicao';

  @override
  _ExpedicaoState createState() => _ExpedicaoState();
}

class _ExpedicaoState extends State<Expedicao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
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
