import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget isLoading(height, width){
  return Container(
    height: height * 0.32,
    width: width-20.0,
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}
Widget noConnection(){
  return Center(
    child: Text('Check your connection', style: TextStyle(fontSize: 18.0),),
  );
}
Widget noData(){
  return Center(
    child: Text('No Data Available', style: TextStyle(fontSize: 18.0),),
  );
}
Widget error(error){
  return Center(
    child: Text(error.toString(), style: TextStyle(fontSize: 18.0),),
  );
}