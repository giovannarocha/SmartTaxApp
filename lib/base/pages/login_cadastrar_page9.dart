import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyButton.dart';
import 'package:consultax/widgets/MyNextButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';



class LoginCadastroPage9 extends StatefulWidget {
  @override
  _LoginCadastroPage9State createState() => _LoginCadastroPage9State();
}

class _LoginCadastroPage9State extends State<LoginCadastroPage9> {

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
              "Você gostaria que nossa equipe técnica fique responsável por toda gestão tributária e contábil dos seus investimentos deixando você focado para buscar as melhores opções de aplicações e momentos ideais para resgates e ganhar o desconto progressivo que oferecemos?",
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
                      Radio(value: 2, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Sim",
                        cor: MyColors.myDefaultBlue,
                      ),
                      
                    ],
                  ),
                  
                  Row(
                    children: [
                      Radio(value: 3, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Não",
                        cor: MyColors.myDefaultBlue,
                      ),
                      
                    ],
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 80,),
            MyButton("Finalizar", (){}),
          ],
        ),
      ),
    );
  }
}