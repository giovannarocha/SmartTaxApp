import 'package:consultax/base/pages/login_cadastrar.dart';
import 'package:consultax/base/pages/login_entrar.dart';
import 'package:consultax/base/pages/login_home_page.dart';
import 'package:flutter/material.dart';


class LoginPageview extends StatelessWidget {

  final pageController = PageController(initialPage: 1);


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget> [
        LoginEntrar(),
        LoginHomePage(pageController),
        LoginCadastro()
      ],
    );
  }
}