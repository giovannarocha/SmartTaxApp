import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyButton.dart';
import 'package:consultax/widgets/MyTextFormField.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class LancamentoSaldo extends StatefulWidget {
  @override
  _LancamentoSaldoState createState() => _LancamentoSaldoState();
}

class _LancamentoSaldoState extends State<LancamentoSaldo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myDefaultBlue,
        title: Text("Saldo Inicial"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  height: 35,
                  width: 295,
                  child: MyLabel(
                    "Ações - Mercado comum",
                    cor: MyColors.myDefaultOrange,
                    isBold: true,
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 35,
                  width: 395,
                  child: MyLabel(
                    "Fundo Investimentos Imobiliários",
                    cor: MyColors.myDefaultOrange,
                    isBold: true,
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 35,
                  width: 295,
                  child: MyLabel(
                    "Créditos Tributários",
                    cor: MyColors.myDefaultOrange,
                    isBold: true,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 220,
            child: ListView(
              children: [
                MyTextFormField("Cia"),
                MyTextFormField("Cod"),
                MyTextFormField("Corretora"),
                MyTextFormField("Data"),
                MyTextFormField("Quantidade"),
                MyTextFormField("Custo"),
                MyTextFormField("PR Médio"),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          MyButton("Adicionar Registro", () {}),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 80,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyLabel(
                      "Gol",
                      cor: Colors.black,
                    ),
                    MyLabel(
                      "GOLL4",
                      cor: Colors.black,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.add,
                        color: MyColors.myDefaultOrange,
                      ),
                      onTap: () => showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  MyLabel("Gol", cor: MyColors.myDefaultOrange,),
                                  MyLabel("GOLL4", cor: Colors.black,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  MyLabel("Corretora:", cor: MyColors.myDefaultOrange, isBold: true,),
                                  MyLabel("Itaú", cor: Colors.black,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  MyLabel("Data:", cor: MyColors.myDefaultOrange, isBold: true,),
                                  MyLabel("30/06/2020", cor: Colors.black,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  MyLabel("Quantidade:", cor: MyColors.myDefaultOrange, isBold: true,),
                                  MyLabel("12500", cor: Colors.black,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  MyLabel("Custo:", cor: MyColors.myDefaultOrange, isBold: true,),
                                  MyLabel("230.956.233", cor: Colors.black,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  MyLabel("PR_Medio:", cor: MyColors.myDefaultOrange, isBold: true,),
                                  MyLabel("19.55", cor: Colors.black,),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyLabel(
                      "Gol",
                      cor: Colors.black,
                    ),
                    MyLabel(
                      "GOLL4",
                      cor: Colors.black,
                    ),
                    Icon(
                      Icons.add,
                      color: MyColors.myDefaultOrange,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyLabel(
                      "Gol",
                      cor: Colors.black,
                    ),
                    MyLabel(
                      "GOLL4",
                      cor: Colors.black,
                    ),
                    Icon(
                      Icons.add,
                      color: MyColors.myDefaultOrange,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyLabel(
                      "Gol",
                      cor: Colors.black,
                    ),
                    MyLabel(
                      "GOLL4",
                      cor: Colors.black,
                    ),
                    Icon(
                      Icons.add,
                      color: MyColors.myDefaultOrange,
                    )
                  ],
                )
              ],
            ),
          ),
          MyButton("Continuar", () {})
        ],
      ),
    );
  }
}
