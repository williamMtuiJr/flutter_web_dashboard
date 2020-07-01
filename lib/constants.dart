import 'package:flutter/material.dart';

const TextStyle kTextStyle = TextStyle(
  fontFamily: 'Google Sans',
);

const Color kIconColour = Color(0xFF0F1970);
const Color kDescriptionTextColour = Color(0xFF212237);
const Color kHeadingColour = Color(0xFF0F1146);
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);

const kDescriptionTextStyle = TextStyle(
  fontSize: 15.0,
  fontFamily: 'Helvetica',
  //color: kDescriptionTextColour,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(/*color: Colors.blueAccent,*/ width: 1),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(/*color: Colors.blueAccent,*/ width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class ColorConstants {
  static Color blue = Color(0xFF0D46BB);
}
