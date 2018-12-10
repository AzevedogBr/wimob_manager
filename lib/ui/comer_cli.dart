import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/comercial.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class ComerCli extends StatefulWidget {
  static String tag = 'comer-cli';

  @override
  _ComerCliState createState() => _ComerCliState();
}

class _ComerCliState extends State<ComerCli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
        title: Text(
          "Relatório de Clientes",
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
                                      builder: (context) => new ComerCli()));
                            },
                            child: Container(
                              height: 70.0,
                              width: 350.0,
                              decoration: BoxDecoration(
                                //color: Colors.teal,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 0.2,
                                ),
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
                                                  //color: Colors.grey,
                                                  width: 0.2)),
                                          child: Padding(
                                              padding:
                                              const EdgeInsets.all(4.0),
                                              child: Image.asset(
                                                'assets/ic_posit.png',
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
                                        'Positivação',
                                        style: TextStyle(
                                            color: Colors.teal.shade900,
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
                                      builder: (context) => new Comercial()));
                            },
                            child: Container(
                              height: 70.0,
                              width: 350.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.2,
                                  ),
                                 // color: Colors.orange.shade300
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
                                            color: Colors.orange.shade900,
                                            borderRadius:
                                            BorderRadius.circular(20.0),
//
                                          ),
                                          child: Padding(
                                              padding:
                                              const EdgeInsets.all(4.0),
                                              child: Image.asset(
                                                'assets/ic_volXcli.png',
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
                                        'Volume x Clientes',
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
                                      builder: (context) => new Comercial())
                              );
                            },
                            child: Container(
                              height: 70.0,
                              width: 350.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.2,
                                  ),
                              //    color: Colors.pinkAccent
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
                                            color: Colors.lightBlue,
                                            borderRadius:
                                            BorderRadius.circular(20.0),
//
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
                                        'Teste',
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
