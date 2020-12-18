import 'package:consultax/widgets/MyButton.dart';
import 'package:consultax/widgets/MyTextFormField.dart';
import 'package:flutter/material.dart';


class LoginCadastro extends StatefulWidget {
  @override
  _LoginCadastroState createState() => _LoginCadastroState();
}

class _LoginCadastroState extends State<LoginCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
         Stack(
            children: [

              Image.asset('assets/img/bg.jpeg', fit: BoxFit.cover,),
                            Text("SmartTax", style: TextStyle(fontSize: 25),),
            ],
          ),
          Container(
           padding: EdgeInsets.only(top: 50),
           child: Column(
             children: [
               MyTextFormField("Nome completo"),
               MyTextFormField("E-mail"),
               MyTextFormField("Telefone"),
               MyTextFormField("Celular"),
               SizedBox(height: 15,),
               MyButton("Continuar", _rota)
  
                            ],
                          ),
                        ),
                       ],
                     ),
                     
                   );
                 }
               

_rota() {
  Navigator.pushNamed(context, "/CadastroPageView");
  }


                 
}


