import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyNextButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class LoginCadastroPage3 extends StatefulWidget {
  @override
  _LoginCadastroPage3State createState() => _LoginCadastroPage3State();
}

class _LoginCadastroPage3State extends State<LoginCadastroPage3> {
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
            Text(
              "As informações com o fisco relacionadas a renda variável é realizada anualmente, porém, com apuração mensal conforme legislação",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Para facilitar as apurações mensais e realizar a declaração anual, por favor, informe sobre:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45,
            ),
            MyLabel(
              "Deseja contratar o serviço para qual mercado?",
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
                        "Somente no Brasil",
                        cor: MyColors.myDefaultBlue,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 2, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Somente no Exterior",
                        cor: MyColors.myDefaultBlue,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 3, groupValue: group, onChanged: (T) {}),
                      MyLabel(
                        "Ambos os Mercados",
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
