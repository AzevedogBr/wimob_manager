import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/config.dart';
import 'package:wimob_manager/ui/home_page.dart';
import 'package:wimob_manager/ui/login_page.dart';
import 'package:wimob_manager/ui/comercial.dart';
import 'package:wimob_manager/ui/financeiro.dart';
import 'package:wimob_manager/ui/expedicao.dart';
import 'package:wimob_manager/ui/sinc.dart';
import 'package:wimob_manager/ui/comer_cli.dart';
import 'package:firebase_messaging/firebase_messaging.dart';




void main() => runApp(MyApp());

class MyApp extends StatefulWidget {



  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    Comercial.tag: (context) => Comercial(),
    Financeiro.tag: (context) => Financeiro(),
    Expedicao.tag: (context) => Expedicao(),
    Sinc.tag: (context) => Sinc(),
    Config.tag: (context) => Config(),
    Config.tag: (context) => ComerCli(),
  };



    String textValue = '';
    FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

    @override
  void initState() {
      firebaseMessaging.configure(
        onLaunch: (Map<String, dynamic> msg){
          print('onLaunch called');
        },
        onResume: (Map<String, dynamic> msg){
          print('onResume called');
        },
        onMessage: (Map<String, dynamic> msg){
          print('onMessage called');
        },
      );

      firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
          sound: true,
          alert: true,
          badge: true
        )
      );
      firebaseMessaging.onIosSettingsRegistered.listen((IosNotificationSettings setting){
        print('Ios setting Registed');
      });
//      firebaseMessaging.getToken().then((token){
//       update(token);
//      });

    super.initState();





  }

//    update(String token){
//      print(token);
//      textValue = token;
//      setState(() {
//
//      });
//    }




  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    routes: routes,

    );
  }
}


//
//class MyApp extends StatelessWidget {
//
//
//
//
//  final routes = <String, WidgetBuilder>{
//    LoginPage.tag: (context) => LoginPage(),
//    HomePage.tag: (context) => HomePage(),
//    Comercial.tag: (context) => Comercial(),
//    Financeiro.tag: (context) => Financeiro(),
//    Expedicao.tag: (context) => Expedicao(),
//    Sinc.tag: (context) => Sinc(),
//    Config.tag: (context) => Config(),
//    Config.tag: (context) => ComerCli(),
//  };
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: LoginPage(),
//      routes: routes,
//    );
//  }
//}
//


