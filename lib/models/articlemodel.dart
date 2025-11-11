class ArticleModel {
  final String? image;
  final String? title;
  final String? subtitle;
  ArticleModel(
      {required this.image, required this.title, required this.subtitle});

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
}
