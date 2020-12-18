import 'package:consultax/utils/myColors.dart';
import 'package:flutter/material.dart';



class MyNextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
       decoration: BoxDecoration(
            color: MyColors.myDefaultBlue,
            borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.arrow_forward_outlined, color: Colors.white,)
      ),
    );
  }
}