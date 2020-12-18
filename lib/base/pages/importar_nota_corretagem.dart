import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/drawer.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class ImportarNota extends StatefulWidget {
  @override
  _ImportarNotaState createState() => _ImportarNotaState();
}

class _ImportarNotaState extends State<ImportarNota> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lançamento de nota de corretagem"),
        backgroundColor: MyColors.myDefaultBlue,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: MyColors.myDefaultOrange),
              left: BorderSide(width: 1.0, color: MyColors.myDefaultOrange),
              right: BorderSide(width: 1.0, color: MyColors.myDefaultOrange),
              bottom: BorderSide(width: 1.0, color: MyColors.myDefaultOrange),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cloud_download,size: 85,),
              MyLabel("Faça aqui o upload da sua\nnota de corretagem", cor: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}
