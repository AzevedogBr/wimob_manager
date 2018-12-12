import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ComerRelPV extends StatefulWidget {
  static String tag = 'comer-rel-pv';


  @override
  _ComerRelPVState createState() => _ComerRelPVState();
}

class _ComerRelPVState extends State<ComerRelPV> {
  @override
  Widget build(BuildContext context) {

    var data=[
      Vendas ("Eduardo",3850 ),
      Vendas ("Andre",5430 ),
      Vendas ("Charles",3000 ),
      Vendas ("Alex",4120 ),
      Vendas ("Paulo",4740 ),
      Vendas ("Pedro",2650 ),

    ];

    var series =[
      charts.Series(
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (Vendas vendas,_)=>vendas.vend,
        measureFn: (Vendas vendas,_)=>vendas.valor,
        id: 'Vendas',
        data: data
      )
    ];

    var chart = charts.BarChart(
      series

    );

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, top: 30.0, right: 10.0, bottom: 0.0),
        child: Column(
          children: <Widget>[
            Text('Ranking Vendedor',
              style: TextStyle(
                fontSize: 30.0
              ),
            ),
            SizedBox(
                height: 400.0,
                child: chart),
          ],
        ),
      ),


    );
  }
}

class Vendas{
  final String vend;
  final int valor;

  Vendas(this.vend, this.valor);

}