import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wimob_manager/ui/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _cnpjController = new TextEditingController();
  final TextEditingController _idController = new TextEditingController();
  String usuario = "";
  bool _salvsenha = false;


  void _onChanged (bool value) {
    setState(() {
      _salvsenha = value;
    });
  }

  // criar metodo para os campos

  void mostraUsuario() {
    usuario = '${_idController.text}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: new Center(
        child: new Wrap(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // logo wibi tela login

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "assets/logo.png",
                  width: 192.0,
                  height: 192.0,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "WiMob Manager",
                  style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'righteous_regular',
                      fontWeight: FontWeight.w200,
                      color: Colors.teal.shade900),
                ),
              ],
            ),
            // campos login
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextField(
                    controller: _cnpjController,
                    decoration: InputDecoration(
                        hintText: 'Digite o Cnpj',
                        prefixIcon: Icon(Icons.person)),
                  )
                ],
              ),
            ),

        //linha divisoria

//            Padding(
//              padding: const EdgeInsets.all(5.0),
//              child: Container(
//                height: 0.1,
//                color: Colors.black,
//              ),
//            ),

            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextField(
                    obscureText: true,
                    controller: _idController,
                    decoration: InputDecoration(
                        hintText: 'Digite o ID',
                        prefixIcon: Icon(Icons.vpn_key)),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  new SwitchListTile(
                    title: Text('Lembrar usuário',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    activeColor: Colors.teal.shade900,
                    value: _salvsenha,
                    onChanged: (bool value){_onChanged(value);},
                      )
                ],
              ),

              ),

            Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF0a4142),
//                      Colors.teal.shade900,
                    Colors.teal.shade800,
                  ],
                  begin: FractionalOffset.bottomLeft,
                  end: FractionalOffset.bottomRight,
                ),
              ),
              child: new FlatButton(
                child: Text(
                  "Entrar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _navigateToHomePage(context);
                },
              ),
            ),
          ],
          //  ),
        ),
      ),
    );
  }

  _navigateToHomePage (BuildContext context) async {
    // ignore: assignment_to_type, assignment_to_type
    Map use = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage(id: _idController.text)),
    );
  }
}
