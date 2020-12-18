import 'package:flutter/material.dart';


class MyLabel extends StatelessWidget {
  final String texto;
  final Color cor;
  final double size;
  final bool isBold;
  final bool isCenter;

  MyLabel(this.texto, {this.size = 16, this.cor = Colors.white, this.isBold = false, this.isCenter = true});


  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        color: cor,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal
      ),
      textAlign: isCenter ? TextAlign.center : TextAlign.left,
      
    );
  }
}