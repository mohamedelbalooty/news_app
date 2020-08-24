import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:news/constants.dart';

Widget customAppBar(title){
  return GradientAppBar(
    automaticallyImplyLeading: true,
    title: Text(title, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
    backgroundColorEnd: KSecondColor,
    backgroundColorStart: KMainColor,
  );
}