import 'package:news_app/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(
          'https://gnews.io/api/v4/top-headlines?category=$category&country=eg&apikey=c0ef5fd354b74e83d9d0c22167464e40');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'] ?? [];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
