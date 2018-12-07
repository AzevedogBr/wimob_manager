import 'package:flutter/material.dart';
class Comercial extends StatefulWidget {
  static String tag = 'comercial';
  @override
  _ComercialState createState() => _ComercialState();
}

class _ComercialState extends State<Comercial> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: new AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Comercial",
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
