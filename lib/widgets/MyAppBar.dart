import 'package:consultax/utils/myColors.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String appbartxt;

  MyAppBar(this.appbartxt);



  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.myDefaultBlue,
      title: Text(appbartxt),
    );
  }
}