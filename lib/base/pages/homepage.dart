import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/drawer.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyColors.myDefaultBlue, title: Text("SmartTax"),),
      drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Center(child: MyLabel("Meus Investimentos", cor: MyColors.myDefaultBlue, size: 25, isBold: true,)),
            SizedBox(height: 35,),
            PieChart(dataMap: dataMap,
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.left
            ),
            chartType: ChartType.ring,
            colorList: colorList,
            ) 
          ],
        ),
      ),
    );
  }
}


Map<String, double> dataMap = {
    "FII": 50,
    "Opções": 36,
    "Ações": 42,
  };


  List<Color> colorList = [
    MyColors.myDefaultBlue,
    Colors.grey,
    Colors.black87,
  ];