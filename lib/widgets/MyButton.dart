import 'package:consultax/utils/myColors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String texto;
  final Function function;
  final bool isWhite;

  MyButton(this.texto, this.function, {this.isWhite = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.only(top: 9, bottom: 9),
        decoration: BoxDecoration(
            color: isWhite ? Colors.white : MyColors.myDefaultBlue,
            borderRadius: BorderRadius.circular(50)),
        width: 360,
        child: Text(
          texto,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16,
              color: isWhite ? MyColors.myDefaultBlue : Colors.white),
        ),
      ),
    );
  }
}
