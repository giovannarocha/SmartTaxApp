import 'package:consultax/utils/myColors.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  MyTextFormField(this.hint, {this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: MyColors.myDefaultBlue,
          
          labelText: hint,
          labelStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
