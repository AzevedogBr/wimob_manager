import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/comercial.dart';
import 'package:wimob_manager/ui/financeiro.dart';
import 'package:wimob_manager/ui/expedicao.dart';
import 'package:wimob_manager/ui/sinc.dart';
import 'package:wimob_manager/ui/config.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:wimob_manager/ui/alcada_eletro.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final String id;
  _showSnackBar(){
    print('Você tem novas autorizações pendentes');
    final snackBar = new SnackBar(
        content: new Text('Você tem autorizações pendentes!')
    );

    _scaffoldKey.currentState.showSnackBar(snackBar);


  }

  HomePage({Key key, this.id}) : super(key: key);

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //Menu superior esquerdo "Drawer"-
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 7.0, right: 0.0, bottom: 2.0),
                      child: Image.asset(
                        'assets/ic_launcher.png',
                        height: 50.0,
                        width: 50.0,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 20.0, right: 0.0, bottom: 0.0),
                      child: Text(
                        "WiMob Manager",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          //fontFamily: 'slim_jim',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                      child: Text(
                        "Versão: 1.0",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          //fontFamily: 'slim_jim',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF0a4142),
                    Colors.teal.shade600,
                  ],
                  begin: FractionalOffset.bottomLeft,
                  end: FractionalOffset.bottomRight,
                ),
              ),
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.group, color: Colors.black),
              title: Text('Comercial'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Comercial()));
              },
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.attach_money, color: Colors.black),
              title: Text(
                'Financeiro',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Financeiro()));
              },
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.airport_shuttle, color: Colors.black),
              title: Text(
                'Expediçao',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Expedicao()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 0.5,
                color: Colors.black,
              ),
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.autorenew, color: Colors.black),
              title: Text(
                'Sincronismo',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Sinc()));
              },
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.build, color: Colors.black),
              title: Text(
                'Configuração',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Config()));
              },
            ),
          ],
        ),
      ),

      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade900,
        backgroundColorEnd: Colors.teal.shade700,
        title: Text(
          "Relatórios",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              //fontFamily: 'slim_jim',
              color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.info),
              onPressed: _showSnackBar)
        ],

//        Adição de icones superiores no AppBar
//        actions: <Widget>[
////          IconButton (icon: new Icon(Icons.list), iconSize: 25.0, color: Colors.white,onPressed: () => debugPrint("Voce Clicou")),
////          IconButton (icon: new Icon(Icons.assessment),iconSize: 25.0, color: Colors.white, onPressed: () => debugPrint("Voce Clicou")), // onPressed:() => "comando"
////          IconButton (icon: new Icon(Icons.timeline), iconSize: 25.0, color: Colors.white, onPressed: () => debugPrint("Voce Clicou"))
//        ],
      ),

      body: new Container(
        padding: const EdgeInsets.all(9.0),

        //alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Container(
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
                                child: new InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Expedicao()));
                                  },
                                  child: Container(
                                    height: 130.0,
                                      width: 130.0,
                                      
                                    child: new Card(
                                      elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                                      
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/entrega.png',
                                                  height: 40.0,
                                                  width: 40.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'Expedição',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  //fontFamily: slim_jim
                                                ),
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
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: new Material(
                                child: new InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Financeiro()));
                                  },
                                  child: Container(
                                     height: 130.0,
                                      width: 130.0,
                                      
                                    child: new Card(
                                      elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/finan.png',
                                                  height: 40.0,
                                                  width: 40.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'Financeiro',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500),
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
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
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
                                     height: 130.0,
                                      width: 130.0,
                                      
                                    child: new Card(
                                      elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/vendas.png',
                                                  height: 40.0,
                                                  width: 40.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'Comercial',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500),
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
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: new Material(
                                child: new InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Config()));
                                  },
                                  child: Container(
                                     height: 130.0,
                                      width: 130.0,
                                      
                                    child: new Card(
                                      elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/config.png',
                                                  height: 40.0,
                                                  width: 40.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'Configuração',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500),
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
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 0.0, top: 150.0, right: 0.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: <Widget>[
                  Container(
                    child: new Material(
                      child: new InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new AlcadaEletro()));
                        },
                        child: Container(
                          height: 90.0,
                            width: 290.0,
                         
                          
                            
                          child: new Card(
                            elevation: 4.0,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                         ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/ic_autori.png',
                                        height: 40.0,
                                        width: 40.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Autorizações',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        //fontFamily: slim_jim
                                      ),
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
            )
          ],
        ),
      ),



    );
  }
}
