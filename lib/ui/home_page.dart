import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/comercial.dart';
import 'package:wimob_manager/ui/financeiro.dart';
import 'package:wimob_manager/ui/expedicao.dart';
import 'package:wimob_manager/ui/sinc.dart';
import 'package:wimob_manager/ui/config.dart';

class HomePage extends StatelessWidget {
  final String id;

  HomePage({Key key, this.id}) : super(key: key);

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          fontFamily: 'slim_jim.ttf',
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
                          fontFamily: 'slim_jim.ttf',
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
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Sinc()));
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
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Config()));
              },
            ),


          ],
        ),
      ),

      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Relatórios",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),

//        Adição de icones superiores no AppBar
//        actions: <Widget>[
////          IconButton (icon: new Icon(Icons.list), iconSize: 25.0, color: Colors.white,onPressed: () => debugPrint("Voce Clicou")),
////          IconButton (icon: new Icon(Icons.assessment),iconSize: 25.0, color: Colors.white, onPressed: () => debugPrint("Voce Clicou")), // onPressed:() => "comando"
////          IconButton (icon: new Icon(Icons.timeline), iconSize: 25.0, color: Colors.white, onPressed: () => debugPrint("Voce Clicou"))
//        ],
      ),

      backgroundColor: Colors.white,
      body: new Container(

        padding: const EdgeInsets.all(9.0),

        //alignment: Alignment.center,
        child:
        Row(
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
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.grey,
                              width: 0.1,


                            ),
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                          Image.asset(
                          'assets/entrega.png',
                          height: 60.0,
                          width: 60.0,),
                            ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                              Text('Transporte'),
                            ],),
                          ],
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
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.grey,
                              width: 0.1,


                            ),
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  'assets/finan.png',
                                  height: 60.0,
                                  width: 60.0,),
                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text('Financeiro'),
                              ],),
                          ],
                        ),

                      )
                    ],

                  ),
                ),

              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.grey,
                              width: 0.1,


                            ),
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  'assets/vendas.png',
                                  height: 60.0,
                                  width: 60.0,),
                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text('Comercial'),
                              ],),
                          ],
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
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.grey,
                              width: 0.1,


                            ),
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                Image.asset(
                                  'assets/config.png',
                                  height: 60.0,
                                  width: 60.0,),
                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text('Configuração'),
                              ],),
                          ],
                        ),

                      )
                    ],

                  ),
                ),

              ],
            ),


          ],
        ),

      ),

      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.teal,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.white))),
        // sets the inactive color of the `BottomNavigationBar`

        //Barra Inferior
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              title: new Text("Add"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.delete),
              title: new Text("Delete"),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        // botão flutuante
        onPressed: null,
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      //        backgroundColor: Colors.teal
    );
  }
}
