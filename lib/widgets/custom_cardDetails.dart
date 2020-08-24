import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/screens/newsDetails_screen.dart';

Widget customCardDetails(context, height, width, urlToImage, author, title, description,) {
  return Card(
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Container(
      height: height > 360.0 ? height * 0.32 : height * 0.45,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(urlToImage != null ? urlToImage : 'assets/images/placeholder.png'),
                  radius: 32.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: Text(
                        author != null ? author : '', //author
                        style: TextStyle(
                          color: KBlackColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 220.0,
                      child: Text(
                        title != null ? title : '', //title
                        style: TextStyle(
                          color: KFontColor,
                          fontSize: 16.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              description != null ? description : '', //description
              style: TextStyle(
                color: KTitleColor,
                fontSize: 17.0,
                height: 1.5,
              ),
              maxLines: height > 360.0 ? 3 : 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ),
  );
}
