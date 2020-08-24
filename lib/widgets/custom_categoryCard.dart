import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/constants.dart';

Widget customCategoryCard(height, width, imagePath, categoryName, title, context, screen) {
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, screen);
    },
    child: Container(
      height: height > 360.0 ? height * 0.2 : height * 0.3,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: KWhiteColor,
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: height > 360.0 ? height * 0.2 : height * 0.3,
            width: width * 0.3,
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(imagePath),
              ),
            ),
          ),
          Container(
            height: height * 0.2,
            width: width * 0.55,
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  categoryName,
                  style: TextStyle(
                    color: KBlackColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                  overflow: height > 360.0 ? null : TextOverflow.ellipsis,
                  style: TextStyle(
                    color: KTitleColor,
                    fontSize: 18.0,
                    height: 1.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
