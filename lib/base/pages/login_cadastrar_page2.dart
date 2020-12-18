import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyButton.dart';
import 'package:consultax/widgets/MyTextFormField.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginCadastroPage2 extends StatefulWidget {
  @override
  _LoginCadastroPage2State createState() => _LoginCadastroPage2State();
}

bool _isChecked = false;

class _LoginCadastroPage2State extends State<LoginCadastroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Image.asset(
                'assets/img/bg.jpeg',
                fit: BoxFit.cover,
              ),
              Text(
                "SmartTax",
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                MyLabel(
                  "Cadastro",
                  cor: MyColors.myDefaultBlue,
                  size: 25,
                ),
                MyTextFormField("CPF"),
                MyTextFormField("Data de nascimento"),
                MyTextFormField("Senha"),
                MyTextFormField("Confirmar Senha"),
                CheckboxListTile(
                  value: _isChecked,
                  onChanged: (bool newValue) {
                    setState(() {
                      _isChecked = newValue;
                      if (newValue) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                MyTextFormField("Nome do Dependente"),
                                MyTextFormField("CPF do Dependente"),
                                MyTextFormField("Data de Nascimento do Dependente")
                              ],),
                              actions: [
                                FlatButton(onPressed: ()=> Navigator.pop(context) , child: Text("Cadastrar"))
                              ],
                            );
                          },
                        );
                      }
                    });
                  },
                  title: Text("Possui conta conjunta?"),
                ),
                SizedBox(
                  height: 15,
                ),
                MyButton("Continuar", () {}),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Ao clicar em Continuar, você concorda com as nossas ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  GestureDetector(
                    child: Text("Políticas de privacidade ",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    color: MyColors.myDefaultOrange
                  ),),
                    onTap: _urlpolitica,

                  ),
                  Text("e",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    
                  ),),
                  GestureDetector(
                    child: Text(" Contrato de serviços",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    color: MyColors.myDefaultOrange
                  ),),
                    onTap: _urlpolitica,

                  )
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }

  _urlpolitica() async {
  const url = 'https://google.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



}
