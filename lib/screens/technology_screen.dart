import 'package:flutter/material.dart';
import 'package:news/api/tech_api.dart';
import 'package:news/modales/articles.dart';
import 'package:news/widgets/custom_appBar.dart';
import 'package:news/widgets/custom_cardDetails.dart';
import '../constants.dart';
import '../functions.dart';
import 'newsDetails_screen.dart';

class TechnologyScreen extends StatelessWidget {
  static String id = 'TechnologyScreen';
  final TechnologyApi _technologyApi = TechnologyApi();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar('Technology'),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [KMainColor, KSecondColor],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: FutureBuilder(
          future: _technologyApi.getTechnologyData(),
          builder: (context, snapshot){
            if(snapshot.data != null){
              List<Article> articles = snapshot.data;
              return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, NewsDetailsScreen.id, arguments: articles[index]);
                    },
                    child: customCardDetails(
                      context,
                      height,
                      width,
                      articles[index].urlToImage,
                      articles[index].author,
                      articles[index].title,
                      articles[index].description,
                    ),
                  );
                },
              );
            }else{
              return isLoading(height, width);
            }
          },
        ),
      ),
    );
  }
}
