import 'package:flutter/material.dart';
import 'package:nile_nini_web/constants.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  final IconData leading;
  final Function userTyped;
  final bool obscure;
  final TextInputType keyboard;
  CustomTextInput(
      {this.hintText,
      this.leading,
      this.userTyped,
      this.obscure,
      this.keyboard = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      width: 300.0,
      child: TextField(
        onChanged: userTyped,
        keyboardType: keyboard,
        onSubmitted: (value) {},
        autofocus: false,
        obscureText: obscure ? true : false,
        style: TextStyle(
            //color: kInactiveCardColour,
            ),
        decoration: kTextFieldDecoration.copyWith(
          hintText: hintText,
          icon: Icon(
            leading,
            //color: Colors.blueAccent,
            size: 25.0,
          ),
          hintStyle: kDescriptionTextStyle,
        ),
      ),
    );
  }
}
