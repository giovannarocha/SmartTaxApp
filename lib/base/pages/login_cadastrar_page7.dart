import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyNextButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';


class LoginCadastroPage7 extends StatefulWidget {
  @override
  _LoginCadastroPage7State createState() => _LoginCadastroPage7State();
}

class _LoginCadastroPage7State extends State<LoginCadastroPage7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: MyColors.myDefaultBlue,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 8),
        child: Column(
          children: <Widget>[
            
            SizedBox(
              height: 45,
            ),
            MyLabel(
              "Desde quando gostaria de usar os recursos do SmartTax?",
              cor: MyColors.myDefaultBlue,
              isBold: true,
              size: 20,
            ),
            SizedBox(height: 45,),
            MyLabel("Brasil", cor: MyColors.myDefaultBlue, size: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton(items: null, onChanged: null, hint: Text("Mês"),),
                DropdownButton(items: null, onChanged: null, hint: Text("Ano"),),
              ],
            ),
            SizedBox(height: 60,),
            MyLabel("Exterior", cor: MyColors.myDefaultBlue, size: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton(items: null, onChanged: null, hint: Text("Mês"),),
                DropdownButton(items: null, onChanged: null, hint: Text("Ano"),),
              ],
            ),
            
            SizedBox(height: 80,),
            Container(
              padding: EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyNextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}