import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
//  final TextEditingController _cnpjController = new TextEditingController() ;
 // final TextEditingController _idController = new TextEditingController();

  // criar metodo para os campos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text("Login"),
//        backgroundColor: Colors.teal.shade900,
//      ),
      body:  Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
           // logo wibi tela login
            Image.asset("assets/ic_launcher.png",
            width: 192.0,
             height: 192.0,
           ),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("WiMobi Manager",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: 'righteous_regular',
                    fontWeight: FontWeight.w200,
                    color: Colors.teal.shade900
                  ),

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
                   // controller: _cnpjController ,
                    decoration: InputDecoration(
                      hintText: 'Digite o Cnpj',
                      prefixIcon: Icon(Icons.person)

                    ),

                  )

                ],

             ),

           ),

            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextField(
                  //  controller: _idController ,
                    decoration: InputDecoration(
                        hintText: 'Digite o ID',
                        prefixIcon: Icon(Icons.vpn_key)

                    ),

                  ),

                ],

              ),

            ),


            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors: [
                    Colors.teal.shade900,
                    Colors.teal.shade700,
                  ],
                  begin: FractionalOffset.bottomLeft,
                  end: FractionalOffset.bottomRight,
                ),
              ),
              child: new FlatButton(

                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    print('Clicked');
                  }
              ),
            ),


//            new MaterialButton(
//             // buttonColorGradient: [ Colors.teal.shade100, Colors.teal.shade900 ],
//              height: 50.0,
//              minWidth: 70.0,
//              color: Colors.teal.shade900,
//              //textColor: Colors.white,
//              child: new Text("Entrar",
//              style: TextStyle(
//                color: Colors.white, fontSize: 15.0
//              ),
//              ),
//              onPressed: () => {},
//              splashColor: Colors.white70,
//            ),



          ],
        ),
      ),
    );
  }
}

