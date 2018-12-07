import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/config.dart';
import 'package:wimob_manager/ui/home_page.dart';
import 'package:wimob_manager/ui/login_page.dart';
import 'package:wimob_manager/ui/comercial.dart';
import 'package:wimob_manager/ui/financeiro.dart';
import 'package:wimob_manager/ui/expedicao.dart';
import 'package:wimob_manager/ui/sinc.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    Comercial.tag: (context) => Comercial(),
    Financeiro.tag: (context) => Financeiro(),
    Expedicao.tag: (context) => Expedicao(),
    Sinc.tag: (context) => Sinc(),
    Config.tag: (context) => Config(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: routes,
    );
  }
}



