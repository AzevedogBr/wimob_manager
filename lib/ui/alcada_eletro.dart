import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:wimob_manager/ui/alcada_sim.dart';
import 'package:wimob_manager/ui/alcada_nao.dart';

class AlcadaEletro extends StatefulWidget {
  static String tag = 'alcada-eletro';

  @override
  _AlcadaEletroState createState() => _AlcadaEletroState();
}

class _AlcadaEletroState extends State<AlcadaEletro>
    with TickerProviderStateMixin {
  final _obsController = TextEditingController();

  _renderSpeedDial() {
    return SpeedDial(
      backgroundColor: Colors.teal,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      // child: Icon(Icons.add),
      //onOpen: () => print('OPENING DIAL'),
      //onClose: () => print('DIAL CLOSED'),
      // visible: _dialVisible,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/ic_n_autori.png',
              alignment: Alignment.center,
            ),
          ),
          backgroundColor: Colors.white,
          onTap: () {
           Navigator.push(
              context,
                 new MaterialPageRoute(
                    builder: (context) => new AlcadaNao()));
                },

          //onTap: () => print('FIRST CHILD'),
          label: 'Não Autorizados',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.deepOrangeAccent,
        ),
        SpeedDialChild(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/ic_autori.png',
              alignment: Alignment.center,
            ),
          ),

          backgroundColor: Colors.white,
        onTap: () {
           Navigator.push(
              context,
                 new MaterialPageRoute(
                    builder: (context) => new AlcadaSim()));
                },
          //onTap: () => print('SECOND CHILD'),
          label: 'Autorizados',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.greenAccent,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
        title: Text(
          "Autorizações",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),
      ),
      body: _buildBody(context),
      floatingActionButton: _renderSpeedDial(),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance
          .collection('Autorizacao')
          .where('Check', isEqualTo: false)
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
              _obsController.clear();
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: const EdgeInsets.all(16.0),
                      title: new Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[Text(record.name)],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8.0, top: 0.0, right: 0.0, left: 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  record.setor,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.red),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Flexible(
                                child: Text('Solicitação: '
                                  +record.solic,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    
                                  )
                                ),
                              )
                            ],

                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 0.0, top: 10.0, right: 0.0, left: 0.0
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text("Total: R\$ "),
                                Text(
                                  record.valor.toString(),
                                  style: TextStyle(
                                    color: Colors.red,
                                    decoration: TextDecoration.underline),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: TextField(
                                controller: _obsController,
                                autofocus: true,
                                decoration: new InputDecoration(
                                    labelText: 'Observação',
                                    hintText: 'Digite uma observação'),
                              ))
                            ],
                          )
                        ],
                      ),
                      actions: <Widget>[
                        Container(
                          height: 20.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            //color: Colors.teal,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.1,
                            ),
                          ),
                          child: FlatButton(
                              onPressed: () {
                                Firestore.instance
                                    .runTransaction((transaction) async {
                                  final freshSnapshot =
                                      await transaction.get(record.reference);
                                  final fresh = Record.fromSnapshot(freshSnapshot);
                                  await transaction.update(record.reference, {
                                    'AutSim': fresh.autsim = true,
                                    'Check': fresh.check = true,
                                    'Obs': fresh.obs = _obsController.text
                                  });
                                  Navigator.of(context).pop();
                                });
                              },
                              child: new Text("Sim")),
                        ),
                        Container(
                          height: 20.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            //color: Colors.teal,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.1,
                            ),
                          ),
                          child: FlatButton(
                              onPressed: () {
                                Firestore.instance
                                    .runTransaction((transaction) async {
                                  final freshSnapshot =
                                      await transaction.get(record.reference);
                                  final fresh = Record.fromSnapshot(freshSnapshot);
                                  await transaction.update(record.reference, {
                                    'AutSim': fresh.autsim = false,
                                    'Check': fresh.check = true,
                                    'Obs': fresh.obs = _obsController.text
                                  });
                                  Navigator.of(context).pop();
                                });
                              },
                              child: new Text("Não")),
                        ),
                        Container(
                          height: 20.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                            //color: Colors.teal,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.1,
                            ),
                          ),
                          child: FlatButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: new Text('Cancelar')),
                        )
                      ],
                    );
                  });
            },

//          onTap: () => Firestore.instance.runTransaction((transaction) async {
//            final freshSnapshot = await transaction.get(record.reference);
//            final fresh = Record.fromSnapshot(freshSnapshot);
//
//            await transaction
//                .update(record.reference, {'votes': fresh.votes + 1});
//          }),
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