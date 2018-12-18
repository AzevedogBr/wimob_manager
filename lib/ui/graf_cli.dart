import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//void main() {
//  runApp(MaterialApp(home: MyApp(), title: 'Flutter Speed Dial Examples'));
//}

class GrafCli extends StatefulWidget {
  static String tag = 'graf-cli';

  @override
  GrafCliState createState() => GrafCliState();
}

class GrafCliState extends State<GrafCli> with TickerProviderStateMixin {


//  ScrollController _scrollController;
//  bool _dialVisible = true;

//  initState() {
//    super.initState();
//
//    _scrollController = ScrollController()
//      ..addListener(() {
//        _setDialVisible(_scrollController.position.userScrollDirection == ScrollDirection.forward);
//      });
//  }
//
//  _setDialVisible(bool value) {
//    setState(() {
//      _dialVisible = value;
//    });
//  }
//
//  _renderBody() {
//    return ListView.builder(
//      controller: _scrollController,
//      itemCount: 30,
//      itemBuilder: (ctx, i) => ListTile(title: Text('Item $i')),
//    );
//  }

//Implantação do Floating Bottom

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
          child: Icon(Icons.accessibility, color: Colors.white),
          backgroundColor: Colors.deepOrange,
          //onTap: () => print('FIRST CHILD'),
          label: 'Positivação',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.deepOrangeAccent,
        ),
        SpeedDialChild(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/ic_prod.png',
              alignment: Alignment.center,
            ),
          ),
//              Icon(
//              Icons.brush,
//              color: Colors.white),
          backgroundColor: Colors.green,
          //onTap: () => print('SECOND CHILD'),
          label: 'Compras',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.greenAccent,
        ),
        SpeedDialChild(
          child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/ic_finan.png',
              alignment: Alignment.center,
            ),
          ),
//          Icon(
//              Icons.keyboard_voice,
//              color: Colors.white),
          backgroundColor: Colors.blue,
          //onTap: () => print('THIRD CHILD'),
          label: 'Devedores',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.lightBlueAccent,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var data = [
      Vendas("Eduardo", 3850),
      Vendas("Andre", 5430),
      Vendas("Charles", 3000),
      Vendas("Alex", 4120),
      Vendas("Paulo", 4740),
      Vendas("Pedro", 2650),
    ];

    var series = [
      charts.Series(
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
          domainFn: (Vendas vendas, _) => vendas.vend,
          measureFn: (Vendas vendas, _) => vendas.valor,
          id: 'Vendas',
          data: data)
    ];

    var chart = charts.BarChart(series);

    return Scaffold(
      appBar: new GradientAppBar(
        backgroundColorStart: Colors.teal.shade700,
        backgroundColorEnd: Colors.teal.shade900,
        title: Text(
          "Relatorio de Clientes",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, top: 30.0, right: 10.0, bottom: 0.0),
        child: Column(
          children: <Widget>[
            Text(
              'Vendas por Clientes',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(height: 400.0, child: chart),
          ],
        ),
      ),
      floatingActionButton: _renderSpeedDial(),
    );
  }
}

class Vendas {
  final String vend;
  final int valor;

  Vendas(this.vend, this.valor);
}
