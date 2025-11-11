import 'package:dio/dio.dart';
import 'package:newsapp/models/articlemodel.dart';

class NewService {
  Dio dio;
  NewService({required this.dio});

  Future<List<ArticleModel>> getNews(String category) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=$category&apiKey=50da9bb77829445a9cea5a1cfd6408ed',
      );
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticleModel> articlelist = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(article);

        articlelist.add(articleModel);
      }

      return articlelist;
    } on Exception {
      return [];
    }
  }
}
