import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class AlcadaNao extends StatefulWidget {
  static String tag = 'alcada-nao';

  @override
  _AlcadaNao createState() => _AlcadaNao();
}

class _AlcadaNao extends  State<AlcadaNao>  {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
        title: Text(
          "Não Autorizados",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),
      ),
      body: _buildBody(context),
      
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance
          .collection('Autorizacao')
          .where('Check', isEqualTo: true)
          .where('AutSim', isEqualTo: false)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 10.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      child: Container(
        child: Card(
          color: Colors.red.shade200,
          elevation: 4.0,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              ),
          child: ListTile(
            title: Text(
              record.setor,
              style: TextStyle(
                  color: Colors.red.shade500,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0
                  ),
            ),
            subtitle: Text(
              record.solic,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            leading: Container(
              alignment: Alignment.center,
              height: 50.0,
              width: 80.0,
              child: Text(
                record.name,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.teal.shade800,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            trailing: Text('R\$'+
              record.valor.toString(),
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w800,
                  color: Colors.red.shade800,
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    titlePadding:EdgeInsets.all(8.0), 
                    title: new Column(
                        children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Motivo Negativa', 
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.red
                            ),
                            )
                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(record.obs,
                            style: TextStyle(
                              fontSize: 12.0
                            ),)
                          ],
                        )
                      ],
                    ),
                  );
                }
              );
            },

          ),
        ),
      ),
    );
  }
}

class Record {
  final String name;
  final String setor;
  final String solic;
  String obs;
  final int valor;
  final DocumentReference reference;
  bool autsim;
  bool check;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['Func'] != null),
        assert(map['Setor'] != null),
        assert(map['Solic'] != null),
        assert(map['AutSim'] != null),
        assert(map['Check'] != null),
        assert(map['Valor'] != null),
        assert(map['Obs'] != null),
        obs = map['Obs'],
        autsim = map['AutSim'],
        valor = map['Valor'],
        check = map['Check'],
        name = map['Func'],
        setor = map['Setor'],
        solic = map['Solic'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$valor:$setor:$solic:$obs>";
}