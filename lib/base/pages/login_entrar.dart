import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyButton.dart';
import 'package:consultax/widgets/MyTextFormField.dart';
import 'package:flutter/material.dart';


class LoginEntrar extends StatefulWidget {
  @override
  _LoginEntrarState createState() => _LoginEntrarState();
}

class _LoginEntrarState extends State<LoginEntrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: <Widget> [
         Image.asset('assets/img/bg.jpeg', fit: BoxFit.cover,),
         Container(
           padding: EdgeInsets.only(top: 50),
           child: Column(
             children: [
               MyTextFormField("Insira seu CPF"),
               MyTextFormField("Insira sua Senha"),
               SizedBox(height: 15,),
               MyButton("Entrar", (){}),
               SizedBox(height: 55,),
               FloatingActionButton(onPressed: (){},

               child: Icon(Icons.person_add), backgroundColor: MyColors.myDefaultOrange,
               
               )
             ],
           ),
         ),

         
       ],
     ),
      
    );
  }
}