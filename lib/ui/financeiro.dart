import 'dart:async';

import 'package:flutter/material.dart';


class Financeiro extends StatefulWidget {
  static String tag = 'financeiro';

  @override
  _FinanceiroState createState() => _FinanceiroState();
}

class _FinanceiroState extends State<Financeiro> {
  @override





//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.purple,
//      ),
//      home: new MyHomePage(),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new ListTile(
        title: new Text("Some item"),
        trailing: new RaisedButton(
          child: new Text("Delete"),
          onPressed: _handlePressed,
        ),
      ),
    );
  }

  void _handlePressed() {
    var onYes = () {
      print("~~~ onYes");
    };

    var onNo = () {
      print("~~~ onYes");
    };

    confirmDialog3(context, onYes, onNo).then((_) {
      print("done");
    });
  }
}

Future<bool> confirmDialog1(BuildContext context) {
  return showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Are you sure?'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('YES'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            new FlatButton(
              child: const Text('NO'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      });
}

Future<Map> confirmDialog2(BuildContext context) {
  return showDialog<Map>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Are you sure?'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('YES'),
              onPressed: () {
                var sendBack = <String, dynamic>{
                  'from': 'Brandon',
                  'value': true,
                };
                Navigator.of(context).pop(sendBack);
              },
            ),
            new FlatButton(
              child: const Text('NO'),
              onPressed: () {
                var sendBack = <String, dynamic>{
                  'from': 'Brandon',
                  'value': false,
                };
                Navigator.of(context).pop(sendBack);
              },
            ),
          ],
        );
      });
}

Future<Null> confirmDialog3(BuildContext context, void onNo(), void onYes()) {
  return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Are you sure?'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('YES'),
              onPressed: () {
                Navigator.of(context).pop();
                onYes();
              },
            ),
            new FlatButton(
              child: const Text('NO'),
              onPressed: () {
                Navigator.of(context).pop();
                onNo();
              },
            ),
          ],
        );
      });
}




//import 'package:flutter/material.dart';
//
//class Financeiro extends StatefulWidget {
//  static String tag = 'financeiro';
//
//  @override
//  _FinanceiroState createState() => _FinanceiroState();
//}
//
//class _FinanceiroState extends State<Financeiro> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      appBar: new AppBar(
//        backgroundColor: Colors.teal,
//        title: Text(
//          "Financeiro",
//          style: TextStyle(
//              fontSize: 20.0,
//              fontWeight: FontWeight.w700,
//              fontFamily: 'Arial',
//              color: Colors.white),
//        ),
//      ),
//
//
//    );
//  }
//}
