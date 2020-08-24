import 'package:flutter/material.dart';
import 'package:news/constants.dart';

Widget customHomeAppBar(){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child: Row(
      children: <Widget>[
        _customText('Explore ', KWhiteColor),
        _customText('Categories', Colors.cyan.shade300),
      ],
    ),
  );
}
Widget _customText(text, color){
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 26.0,
    ),
  );
}