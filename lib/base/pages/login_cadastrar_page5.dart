import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyNextButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class LoginCadastroPage5 extends StatefulWidget {
  @override
  _LoginCadastroPage5State createState() => _LoginCadastroPage5State();
}

class _LoginCadastroPage5State extends State<LoginCadastroPage5> {


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
              "Quantas transações você realiza por mês?",
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
                       MyLabel(
                        "Brasil",
                        cor: MyColors.myDefaultBlue,
                      ),
                      Radio(value: 1, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "De 0 a 150",
                        cor: MyColors.myDefaultBlue,
                      ),
                      Radio(value: 2, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "De 151 a 450",
                        cor: MyColors.myDefaultBlue,
                      ),
                    ],
                  ),
                  Row(
                    
                    children: [
                       MyLabel(
                        "Exterior",
                        cor: MyColors.myDefaultBlue,
                      ),
                      Radio(value: 2, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "De 451 a 1000",
                        cor: MyColors.myDefaultBlue,
                      ),
                      Radio(value: 2, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Mais de 1000",
                        cor: MyColors.myDefaultBlue,
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Radio(value: 3, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "De 0 a 50",
                        cor: MyColors.myDefaultBlue,
                      ),
                      Radio(value: 3, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "De 51 a 150",
                        cor: MyColors.myDefaultBlue,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 3, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "De 151 a 500",
                        cor: MyColors.myDefaultBlue,
                      ),
                      Radio(value: 3, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Mais de 500",
                        cor: MyColors.myDefaultBlue,
                      ),
                    ],
                  )
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