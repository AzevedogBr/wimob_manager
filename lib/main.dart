import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/login_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() => runApp(MainActivity());

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),

  };

  String textValue = '';
  FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

  @override
  void initState() {
    firebaseMessaging.configure(
      onLaunch: (Map<String, dynamic> msg) {
        print(msg);
      },
      onResume: (Map<String, dynamic> msg) {
        print(msg);
      },
      onMessage: (Map<String, dynamic> msg) {
        print(msg);
      },
    );

    firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, alert: true, badge: true));
    firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings setting) {
      print('Ios setting Registed');
    });
    firebaseMessaging.getToken().then((token) {
      update(token);
    });

    super.initState();
  }

  update(String token) {
    print(token);
    textValue = token;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: routes,
    );
  }
}


