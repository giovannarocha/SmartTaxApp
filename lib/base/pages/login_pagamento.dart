import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class LoginPagamento extends StatefulWidget {
  LoginPagamento({Key key, this.title}) : super(key: key);
  final String title;


  @override
  _LoginPagamentoState createState() => _LoginPagamentoState();
}

class _LoginPagamentoState extends State<LoginPagamento> {
  String cardNumber = "";
  String cardHolderName = "";
  String expiryDate = "";
  String cvv = "";
  bool showBack = false;

  FocusNode _focusNode;



  @override
  @override
  void initState() { 
    super.initState();
    _focusNode = new FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }



  Widget build(BuildContext context) {

    var cartao = new MaskTextInputFormatter(mask: '#### #### #### ####', filter: { "#": RegExp(r'[0-9]') });
    var validade = new MaskTextInputFormatter(mask: "##/##", filter: {"#": RegExp(r'[0-9]')});
    var cardcvv = new MaskTextInputFormatter(mask: "###", filter: {"#": RegExp(r'[0-9]')});



    return Scaffold(
      appBar: AppBar(
        title: Text("Pagamento"),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          CreditCard(
              cardNumber: cardNumber,
              cardExpiry: expiryDate,
              cardHolderName: cardHolderName,
              cvv: cvv,
              showBackSide: showBack,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Número de cartão"),
           //   inputFormatters: [cartao],
              onChanged: (value){
                setState(() {
                  cardNumber = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Validade"),
            //  inputFormatters: [validade],
              onChanged: (value){
                setState(() {
                 expiryDate = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Nome"),
              onChanged: (value){
                setState(() {
                 cardHolderName = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "CVV"),
            //  inputFormatters: [cardcvv],
              onChanged: (value){
                setState(() {
                 cvv = value;
                });
              },
              focusNode: _focusNode,
            ),

        ],
      ),
      
    );
  }
}