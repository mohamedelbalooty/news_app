import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:news/modales/articles.dart';

class TechnologyApi{
  Future<List<Article>> getTechnologyData() async{
    String techUrl = 'http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=d2c6784d9ce6486dbaedb5cb5c736300';
    List<Article> articles = [];
    var response = await http.get(techUrl);
    if(response.statusCode == 200){
      var jsonData = jsonDecode(response.body);
      var data = jsonData['articles'];
      for(var itemObject in data){
        articles.add(Article.fromJson(itemObject));
      }
      return articles;
    }
    else{
      throw Exception('Exception Error');
    }
  }
}