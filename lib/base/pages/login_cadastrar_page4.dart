import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyNextButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';


class LoginCadastroPage4 extends StatefulWidget {
  @override
  _LoginCadastroPage4State createState() => _LoginCadastroPage4State();
}

 bool _isChecked = false;

class _LoginCadastroPage4State extends State<LoginCadastroPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: MyColors.myDefaultBlue,
      ),
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 1),
          child: Column(
            children: <Widget>[
              
              SizedBox(
                height: 15,
              ),
              MyLabel(
                "Marque quais os tipos de investimento de renda variável que você possui",
                cor: MyColors.myDefaultBlue,
                isBold: true,
                size: 20,
              ),
              SizedBox(height: 45,),
              Container(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Column(
                  children: [
                    CheckboxListTile(value: _isChecked, onChanged: (bool newValue){
                   setState(() {
                   _isChecked = newValue;
                   });
                 }, title: Text("Mercado a vista"),),
                 CheckboxListTile(value: _isChecked, onChanged: (bool newValue){
                   setState(() {
                   _isChecked = newValue;
                   });
                 }, title: Text("FB"),),
                 CheckboxListTile(value: _isChecked, onChanged: (bool newValue){
                   setState(() {
                   _isChecked = newValue;
                   });
                 }, title: Text("Mercado Opções"),),
                 CheckboxListTile(value: _isChecked, onChanged: (bool newValue){
                   setState(() {
                   _isChecked = newValue;
                   });
                 }, title: Text("Mercado a termo"),),
                 CheckboxListTile(value: _isChecked, onChanged: (bool newValue){
                   setState(() {
                   _isChecked = newValue;
                   });
                 }, title: Text("Mercado Futuro"),),
                 CheckboxListTile(value: _isChecked, onChanged: (bool newValue){
                   setState(() {
                   _isChecked = newValue;
                   });
                 }, title: Text("Exterior - Ofshore"),),
                 CheckboxListTile(value: _isChecked, onChanged: (bool newValue){
                   setState(() {
                   _isChecked = newValue;
                   });
                 }, title: Text("Exterior - PF"),),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.only(right: 35, bottom: 10),
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
      ),
    );
  }
}