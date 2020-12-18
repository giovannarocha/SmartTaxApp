import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyNextButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class LoginCadastroPage6 extends StatefulWidget {
  @override
  _LoginCadastroPage6State createState() => _LoginCadastroPage6State();
}

class _LoginCadastroPage6State extends State<LoginCadastroPage6> {
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
              "Desde quando opera no mercado financeiro de renda variável ou no exterior?",
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