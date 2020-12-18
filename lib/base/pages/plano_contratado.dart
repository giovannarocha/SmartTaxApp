import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyAppBar.dart';
import 'package:consultax/widgets/drawer.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class PlanoContratado extends StatefulWidget {
  @override
  _PlanoContratadoState createState() => _PlanoContratadoState();
}

class _PlanoContratadoState extends State<PlanoContratado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meu Plano Contratado"), backgroundColor: MyColors.myDefaultBlue,),
      drawer: MyDrawer(),
      body: Column(

        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLabel("Meu Plano", cor: MyColors.myDefaultOrange, isBold: true, size: 30,),
            ],
          )
        ],
      ),
    );
  }
}