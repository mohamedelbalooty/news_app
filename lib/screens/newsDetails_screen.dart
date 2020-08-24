import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/modales/articles.dart';
import 'package:news/widgets/custom_devider.dart';

class NewsDetailsScreen extends StatelessWidget {
  static String id = 'NewsDetailsScreen';
  @override
  Widget build(BuildContext context) {
    Article article = ModalRoute.of(context).settings.arguments;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            automaticallyImplyLeading: true,
            title: Text(article.author != null ? article.author : 'No author',
              style: TextStyle(
                color: KWhiteColor,
                fontWeight: FontWeight.bold,
              ),),
            elevation: 8.0,
            expandedHeight: height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: article.urlToImage != null ?
                    NetworkImage(article.urlToImage) :
                    ExactAssetImage('assets/images/placeholder/placeholder.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: height*0.9,
              width: width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: width * 0.75,
                      child: Text(
                        article.title != null ? article.title : 'No title available',
                        style: TextStyle(
                          color: KBlackColor,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    _customTitle('Description'),
                    _customText(
                        width,
                        article.description != null ?
                        article.description :
                        'Description Not Available'
                    ),
                    SizedBox(height: 10.0,),
                    customDivider(width),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _customTitle(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 5.0,
          width: 5.0,
          margin: EdgeInsets.only(bottom: 4.0),
          decoration: BoxDecoration(
            color: KMainColor,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 4.0,),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: KBlackColor,
          ),
        ),
      ],
    );
  }
  Widget _customText(width, String text) {
    return SizedBox(
      width: width * 0.8,
      child: Text(
        '${text}',
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            letterSpacing: 0.6,
            height: 1.9
        ),
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
