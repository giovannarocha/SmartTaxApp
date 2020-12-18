import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class LoginHomePage extends StatefulWidget {

  final PageController controller;
  LoginHomePage(this.controller);


  @override
  _LoginHomePageState createState() => _LoginHomePageState(controller);
}

class _LoginHomePageState extends State<LoginHomePage> {

  final PageController pageController;
  _LoginHomePageState(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:<Widget> [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SmartTax", style: TextStyle(fontSize: 25),),
              background: Image.asset("assets/img/bg.jpeg", fit: BoxFit.cover,),
            centerTitle: true,
            collapseMode: CollapseMode.parallax,
            ),
            expandedHeight: 200,
            backgroundColor: MyColors.myDefaultBlue,
            pinned: true,
            floating: true,
          ),
          SliverFillRemaining(
            child: Container( 
              color: MyColors.myDefaultBlue,
              child: Column(   
                mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        MyButton("Entrar", (){
                          pageController.previousPage(
                            duration: Duration(seconds: 1), 
                            curve: Curves.ease
                            );
                        }, isWhite: true),
                        SizedBox(height: 10,),
                        MyButton("Cadastrar", (){
                          pageController.nextPage(
                            duration: Duration(seconds: 1), 
                            curve: Curves.ease
                            );
                        })
                      ],
                    ),
                  ),

               
              ),
            
         
        ],
      ),
    );
  }
}