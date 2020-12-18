import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyNextButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class LoginCadastroPage8 extends StatefulWidget {
  @override
  _LoginCadastroPage8State createState() => _LoginCadastroPage8State();
}

class _LoginCadastroPage8State extends State<LoginCadastroPage8> {

int group = 1;

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
              "Qual instituição Financeira você realiza suas operações?",
              cor: MyColors.myDefaultBlue,
              isBold: true,
              size: 20,
            ),
            SizedBox(height: 45,),
            Container(
              padding: EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      
                      Radio(value: 1, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Ágora",
                        cor: MyColors.myDefaultBlue,
                      ),
                     
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 2, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Itaú",
                        cor: MyColors.myDefaultBlue,
                      ),
                      
                    ],
                  ),
                  
                  Row(
                    children: [
                      Radio(value: 3, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "XP",
                        cor: MyColors.myDefaultBlue,
                      ),
                      
                    ],
                  ),
                  
                ],
              ),
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