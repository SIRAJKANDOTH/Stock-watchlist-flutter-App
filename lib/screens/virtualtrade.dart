import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:intl/intl.dart';

class VirtualTrade extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.black,
        title: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Stock Trade Assistant",style: TextStyle(fontSize: 26),),
                  Icon(Icons.whatshot,color: Colors.red,size: 30,),
                ]),SizedBox(height: 16,),
            SizedBox(height: 6, width:MediaQuery.of(context).size.width,child: ColoredBox(color:Colors.blue),            ),
            SizedBox(height: 10,)

          ],
        ),

      ),
      body:Column(
        children: [
          SizedBox(width: 10,height: 18,),
          Text("Tata Motors         ",style: TextStyle(fontSize: 16,letterSpacing: 2,fontWeight: FontWeight.w300),),
          SizedBox(width: MediaQuery.of(context).size.width,height: 25,),
          Row(
            children: [

              SizedBox(width: 10,height: 2,),
              Text("select a differernt stock",style: TextStyle(color: Colors.blue,fontSize: 18),),
              IconButton(icon: Icon(Icons.edit,color: Colors.red,), onPressed: (){}),
            ],
          ),

          SizedBox(width: MediaQuery.of(context).size.width,height: 50,),
          MyHomePage(),
          Text("                                Weeks",style: TextStyle(fontSize: 8,letterSpacing: 2,fontWeight: FontWeight.w300),),
          Text("Tata Motors         ",style: TextStyle(fontSize: 16,letterSpacing: 2,fontWeight: FontWeight.w300),),

        ],
      )



    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<SalesData> _chartData;
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

            child: SfCartesianChart(
              title: ChartTitle(text: 'Time Series Forecasting '),
              legend: Legend(isVisible: true),
              tooltipBehavior: _tooltipBehavior,
              series: <ChartSeries>[
                LineSeries<SalesData, double>(
                    name: 'price',
                    dataSource: _chartData,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true)
              ],
              primaryXAxis: NumericAxis(
                edgeLabelPlacement: EdgeLabelPlacement.shift,
              ),
              primaryYAxis: NumericAxis(
                  labelFormat: '₹{value}'
                  ),
            ));
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(1, 25),
      SalesData(2, 12),
      SalesData(3, 24),
      SalesData(4, 18),
      SalesData(5, 30),
      SalesData(6, 25),
      SalesData(7, 12),
      SalesData(8, 24),
      SalesData(9, 18),
      SalesData(10, 30)
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}