import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:flutter/rendering.dart';



class GrafVen extends StatefulWidget {
  @override
  _GrafVenState createState() => _GrafVenState();
}

class _GrafVenState extends State<GrafVen> {
  
  @override
  
  Widget build(BuildContext context) {

   

  Firestore.instance.collection('VendasVendedor').document();
 // .setData({ 'vendedor': 'Vendedor', 'vendas': 'Vendas' });


  return Scaffold(
    
    body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('VendasVendedor').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError)
            return new Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting: return new Text('Loading...');
            default:
              return  new charts.BarChart(
                    seriesList,
                    animate: animate,
                  children: snapshot.data.documents.map((DocumentSnapshot document) {
                  print(document['Vendedor']);
                  return new ListTile(
                    title: new Text(document['Vendedor']),
                    subtitle: new Text(document['Vendas'].toString()),
                  );
                }).toList(),
              );
          }
        },
      ),
  );
  }
  
}




// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/rendering.dart';

// class GrafVen extends StatefulWidget {
//   @override
//   _GrafVenState createState() => _GrafVenState();
// }

// class _GrafVenState extends State<GrafVen> {
//   @override
  
  
//   Widget build(BuildContext context) {
    

    

//     return Scaffold(
//       body: _buildBody(context),
      
//     );
//   }
//   Widget _buildBody(BuildContext context){
//     return StreamBuilder<QuerySnapshot>(
//       stream:  Firestore.instance
//       .collection('VendasVendedor')
//       .snapshots() ,
//      builder: (context, snapshot){
//        if (!snapshot.hasData)
//        return LinearProgressIndicator();
       
//        return _buildList(context, snapshot.data.documents);
       
//      }, 
//     );
//   }
//   Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot){
  
//   return ListView(
//     children: snapshot.map((data) => _buildListItem(context, data)),
    
//   );
//   }
//   Widget _buildListItem(BuildContext context, DocumentSnapshot data){
//     final record = Record.fromSnapshot(data);
//     print(record);
//     print('aqui');
    
    
//     var dados = [
//       Vendas(record.vend1, record.valor1),
      
      
//     ];
  

//     var series = [
//       charts.Series(
//         colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
//         domainFn: (Vendas vendas, _) => vendas.vend,
//         measureFn: (Vendas vendas, _) => vendas.valor,
//         id: 'Vendas',
//         data: dados)
//     ];


//     var chart = charts.BarChart(series);


//    return 
   
//    Padding(
//      padding: const EdgeInsets.only(
//        left: 10.0, top: 30.0, right: 10.0, bottom: 0.0
//      ),
//      child: Column(
//        children: <Widget>[
//          Text('Vendas por Clientes'),
//          SizedBox(
//            height: 400.0,
//            child: chart),
//        ],
//      ),
//    );
//   }



// }

// class Vendas {
//   final String vend;
//   final int valor;

//   Vendas(this.vend, this.valor);
// }

// class Record {
//   final String vend1;
//   final int valor1;
//   final DocumentReference reference;
  
//   Record.fromMap(Map<String, dynamic> map, {this.reference})
//   :assert (map['Vendedor']!= null),
//    assert (map['Vendas']!= null),
//    vend1 = map['Vendedor'],
//    valor1 = map['Vendas'];

//    Record.fromSnapshot(DocumentSnapshot snapshot)
//       :this.fromMap(snapshot.data, reference: snapshot.reference);

//    @override
//    String toString() => "Record<$vend1:$valor1>";
// }