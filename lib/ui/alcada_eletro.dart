import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//class AlcadaEletro extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter ListView',
//      home: new Home(),
//      theme: new ThemeData(primaryColor: Colors.orange),
//    );
//  }
//}

class AlcadaEletro extends StatefulWidget {
  static String tag = 'alcada-eletro';

  @override
  _AlcadaEletroState createState() => new _AlcadaEletroState();
}

class _AlcadaEletroState extends State<AlcadaEletro> {

  @override
  Widget build(BuildContext context) {
    var spacecrafts = [
      "James Web",
      "Enterprise",
      "Hubble",
      "Kepler",
      "Juno",
      "Casini",
      "Columbia",
      "Challenger",
      "Huygens",
      "Galileo",
      "Apollo",
      "Spitzer",
      "WMAP",
      "Swift",
      "Atlantis"];
    var Desc = [

    ];
    var listItem = new ListView.builder(
      itemCount: spacecrafts.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListTile(
          title: new Card(
            elevation: 5.0,
            child: new Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Text(spacecrafts[index]),
            ),
          ),
          onTap: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                child: new CupertinoAlertDialog(
                  title: new Column(
                    children: <Widget>[
                      new Text("Autorizar?"),
                      new Icon(
                        Icons.assignment_turned_in,
                        //color: Colors.red,
                      ),
                    ],
                  ),
                  content: new Text( spacecrafts[index]),
                  actions: <Widget>[
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: new Text("Sim")),
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: new Text("Não")),
                  ],
                ));
          },
        );
      },
    );

    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Flutter ListView")
      ),
      body: listItem,
    );
  }
}
void main() {
  runApp(new AlcadaEletro());
}