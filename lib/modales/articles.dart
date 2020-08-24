class Article {
  String author, title, description, urlToImage, content;

  Article(
      {this.author,
      this.title,
      this.description,
      this.urlToImage,
      this.content});
  Article.fromJson(Map<String, dynamic> mapJson){
    this.author = mapJson['author'];
    this.title = mapJson['title'];
    this.description = mapJson['description'];
    this.urlToImage = mapJson['urlToImage'];
    this.author = mapJson['author'];
  }
}
