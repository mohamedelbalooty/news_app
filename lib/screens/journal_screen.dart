import 'package:flutter/material.dart';
import 'package:news/api/journal_api.dart';
import 'package:news/modales/articles.dart';
import 'package:news/widgets/custom_appBar.dart';
import 'package:news/widgets/custom_cardDetails.dart';
import '../constants.dart';
import '../functions.dart';
import 'newsDetails_screen.dart';

class JournalScreen extends StatelessWidget {
  static String id = 'JournalScreen';
  final JournalApi _journalApi = JournalApi();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar('Wall Street Journal'),
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
          future: _journalApi.getJournalDta(),
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
/*FutureBuilder(
              future: _journalApi.getJournalDta(),
              // ignore: missing_return
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return isLoading(height, width);
                    break;
                  case ConnectionState.active:
                    return isLoading(height, width);
                    break;
                  case ConnectionState.none:
                    return noConnection();
                    break;
                  case ConnectionState.done:
                    if (snapshot.hasData) {
                      Article article = snapshot.data[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NewsDetailsScreen(article)));
                        },
                        child: customCardDetails(
                          context,
                          height,
                          width,
                          article.urlToImage,
                          article.author,
                          article.title,
                          article.description,
                        ),
                      );
                    } else {
                      return noData();
                    }
                    break;
                }
              },
            );*/