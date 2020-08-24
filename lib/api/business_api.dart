import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:news/modales/articles.dart';

class BusinessApi{
  Future<List<Article>> getBusinessData() async{
    String businessUrl = 'http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=d2c6784d9ce6486dbaedb5cb5c736300';
    List<Article> articles = [];
    var response = await http.get(businessUrl);
    if(response.statusCode == 200){
      var jsonData = jsonDecode(response.body);
      var data = jsonData['articles'];
      for(var itemObject in data){
        articles.add(Article.fromJson(itemObject));
      }
      return articles;
    }else{
      throw Exception('Exception Error');
    }
  }
}