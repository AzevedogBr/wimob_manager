import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/comercial.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Config extends StatefulWidget {
  static String tag = 'config';

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
        title: Text(
          "Configuração",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: new Material(
                          child:  new InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new Comercial()));
                            },
                            child: new Container(
                              height: 130.0,
                              width: 130.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.2,

                                  ) ,
                                  color: Colors.white24),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/entrega.png',
                                          height: 60.0,
                                          width: 60.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Transporte'),
                                    ],
                                  ),
                                ],
                              ),

                            ),

                          ),

                        ),




                      )
                    ],








                  ),


                )
              ],
            )
          ],

        ),

      ),


    );
  }
}
