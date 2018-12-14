import 'package:flutter/material.dart';

class ComerRel extends StatefulWidget {
  static String tag = 'comer-rel';

  final Function() onPressed;
  final String tooltip;
  final IconData icon;

  ComerRel({this.onPressed, this.tooltip, this.icon});

  @override
  _ComerRelState createState() => _ComerRelState();
}

class _ComerRelState extends State<ComerRel>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  @override
  initState() {
    _animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget add() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget image() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Image',
        child: Icon(Icons.image),
      ),
    );
  }

  Widget inbox() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Inbox',
        child: Icon(Icons.inbox),
      ),
    );
  }

  Widget toggle() {
    return Container(
      child: FloatingActionButton(
        backgroundColor: _buttonColor.value,
        onPressed: animate,
        tooltip: 'Toggle',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animateIcon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Transform(
            transform: Matrix4.translationValues(
              0.0,
              _translateButton.value * 3.0,
              0.0,
            ),
            child: add(),
          ),
          Transform(
            transform: Matrix4.translationValues(
              0.0,
              _translateButton.value * 2.0,
              0.0,
            ),
            child: image(),
          ),
          Transform(
            transform: Matrix4.translationValues(
              0.0,
              _translateButton.value,
              0.0,
            ),
            child: inbox(),
          ),
          toggle(),
        ],
      ),
    );
  }
}








//import 'package:flutter/material.dart';
//import 'package:gradient_app_bar/gradient_app_bar.dart';
//
//
//class ComerRel extends StatelessWidget {
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: new GradientAppBar(
//        backgroundColorStart: Colors.teal.shade700,
//        backgroundColorEnd: Colors.teal.shade900,
//        title: Text(
//          "Relatório de Clientes",
//          style: TextStyle(
//              fontSize: 20.0,
//              fontWeight: FontWeight.w700,
//              fontFamily: 'Arial',
//              color: Colors.white),
//        ),
//      ),
//      body: Column(
//        children: <Widget>[
//          Row(children: <Widget>[
//
//          ],
//
//          ),
//
//          Row(
//
//          )
//        ],
//
//      ),
//      floatingActionButton: Container(
//        alignment: Alignment.topCenter,
//        margin: EdgeInsets.only(left: 30.0, top: 100.0, right: 0.0, bottom: 0.0),
//        child: new FloatingActionButton(
//          backgroundColor: Colors.teal,
//          onPressed: () => Notification,
//          tooltip: 'Increment',
//          child: new Icon(Icons.insert_chart),
//        ),
//      ),
//
//
//    );
//  }
//}


/* import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class ComerRel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
        title: Text(
          "Teste",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),
      ),

      body: Container(


        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ComerRel()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                              Image.asset(
                                'assets/ic_ven.png',
                                height: 20.0,
                                width: 20.0,

                              )
                              ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                Text('Vendedor',
                                style: TextStyle(
                                  color: Colors.white
                                ),)
                              ],

                              ),
                            )
                          ],
                        ),

                      ),

                    ),
                  )
                ],


              ),
              Column(
                children: <Widget>[
                  new Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ComerRel()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade300,
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/ic_ven.png',
                                    height: 20.0,
                                    width: 20.0,

                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Vendedor',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),)
                                ],

                              ),
                            )
                          ],
                        ),

                      ),

                    ),
                  )
                ],


              ),
              Column(
                children: <Widget>[
                  new Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ComerRel()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(100.0),
//                          border: Border.all(
//                            color: Colors.transparent,
//                            //width: 0.1,
//                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/ic_ven.png',
                                    height: 20.0,
                                    width: 20.0,

                                  )
                                ],

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Vendedor',
                                    style: TextStyle(
                                        color: Colors.white
                                    ),)
                                ],

                              ),
                            )
                          ],
                        ),

                      ),

                    ),
                  )
                ],


              ),

            ],
          ),
        ),

      ),

    );
  }
}
*/