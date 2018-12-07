import 'package:flutter/material.dart';

class Financeiro extends StatefulWidget {
  static String tag = 'financeiro';

  @override
  _FinanceiroState createState() => _FinanceiroState();
}

class _FinanceiroState extends State<Financeiro> {
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
