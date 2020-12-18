import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            color: MyColors.myDefaultBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyLabel(
                  "José da Silva",
                  size: 20,
                  isBold: true,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: MyColors.myDefaultBlue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MyLabel(
                      "Home",
                      cor: MyColors.myDefaultBlue,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.monetization_on,
                      color: MyColors.myDefaultBlue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MyLabel(
                      "Contabilidade",
                      cor: MyColors.myDefaultBlue,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.money,
                      color: MyColors.myDefaultBlue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MyLabel(
                      "Imposto de Renda",
                      cor: MyColors.myDefaultBlue,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_balance_outlined,
                      color: MyColors.myDefaultBlue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MyLabel(
                      "Banco Central",
                      cor: MyColors.myDefaultBlue,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bar_chart_outlined,
                      color: MyColors.myDefaultBlue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MyLabel(
                      "Relatórios",
                      cor: MyColors.myDefaultBlue,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.picture_as_pdf,
                      color: MyColors.myDefaultBlue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MyLabel(
                      "Nota de Corretagem",
                      cor: MyColors.myDefaultBlue,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.admin_panel_settings_outlined,
                      color: MyColors.myDefaultBlue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MyLabel(
                      "Admin",
                      cor: MyColors.myDefaultBlue,
                      size: 20,
                    )
                  ],
                ),
                Divider(),
                Container(
                  height: 160,
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_box,
                            color: MyColors.myDefaultBlue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          MyLabel(
                            "Meus Dados",
                            cor: MyColors.myDefaultBlue,
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                  height: 15,
                ),
                      Row(
                        children: [
                          Icon(
                            Icons.phonelink_ring_outlined,
                            color: MyColors.myDefaultBlue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          MyLabel(
                            "Configuração de alertas",
                            cor: MyColors.myDefaultBlue,
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                  height: 15,
                ),
                    Row(
                        children: [
                          Icon(
                            Icons.playlist_add_check_sharp,
                            color: MyColors.myDefaultBlue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          MyLabel(
                            "Meu Plano contratado",
                            cor: MyColors.myDefaultBlue,
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                  height: 15,
                ),
                 Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: MyColors.myDefaultBlue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          MyLabel(
                            "Cancelar meu plano",
                            cor: MyColors.myDefaultBlue,
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                  height: 15,
                ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
