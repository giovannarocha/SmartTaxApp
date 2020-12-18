

import 'package:consultax/base/pages/importar_nota_corretagem.dart';
import 'package:consultax/base/pages/lancamento_saldo.dart';
import 'package:consultax/base/pages/login_cadastrar_pagamento.dart';
import 'package:consultax/base/pages/login_cadastrar_page2.dart';
import 'package:consultax/base/pages/login_pagamento.dart';
import 'package:consultax/base/pages/login_pageview.dart';
import 'package:consultax/base/pages/plano_contratado.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: PlanoContratado(),
    debugShowCheckedModeBanner: false,
    

   /* routes: {
      "/":(context) => LoginPageview(),
    },*/
  )
  );
}