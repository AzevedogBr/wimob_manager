/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ComerRelVxP extends StatelessWidget {
  static String tag = 'comer-rel-vxp';
  final List<charts.Series> seriesList;
  final bool animate;

  ComerRelVxP(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory ComerRelVxP.withSampleData() {
    return new ComerRelVxP(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 10.0, top: 30.0, right: 10.0, bottom:250.0),
      child: Container(
        color: Colors.white,
        height: 50.0,
        width: 50.0,


        child: new charts.BarChart(
          seriesList,
          animate: animate,
        ),
      ),
    );

  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}