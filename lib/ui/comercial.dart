import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
// import 'package:wimob_manager/ui/comer_vend.dart';
import 'package:wimob_manager/ui/comer_rel.dart';
import 'package:wimob_manager/ui/graf_cli.dart';
import 'package:wimob_manager/ui/graf_ven.dart';


class Comercial extends StatefulWidget {
  static String tag = 'comercial';

  @override
  _ComercialState createState() => _ComercialState();
}

class _ComercialState extends State<Comercial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
        title: Text(
          "Comercial",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: new Material(
                          child: new InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new GrafCli()));
                            },
                            child: Container(
                              height: 80.0,
                                width: 350.0,
                                
                              child: Card(
                                elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                                
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        //crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.teal,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.2)),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Image.asset(
                                                  'assets/ic_cli.png',
                                                  height: 30.0,
                                                  width: 30.0,
                                                  alignment: Alignment.center,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Clientes',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: new Material(
                          child: new InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new GrafVen()));
                            },
                            child: Container(
                              height: 80.0,
                                width: 350.0,
                                
                              child: Card(
                                elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
//
                                            ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Image.asset(
                                                  'assets/ic_ven.png',
                                                  height: 30.0,
                                                  width: 30.0,
                                                  alignment: Alignment.center,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Vendedor',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: new Material(
                          child: new InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new ComerRel())
                              );
                            },
                            child: Container(
                              height: 80.0,
                                width: 350.0,
                                
                              child: Card(
                                elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        //crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                          decoration: BoxDecoration(
                                            color: Colors.lightBlue.shade300,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            border: Border.all(
                                                color: Colors.grey, width: 0.2),
                                          ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Image.asset(
                                                'assets/ic_prod.png',
                                                height: 30.0,
                                                width: 30.0,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Produtos',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}


