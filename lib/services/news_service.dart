import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio=Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=53607d3a0f7d40adb010465524026936');
      Map<String,dynamic>jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          imageUrl: article["urlToImage"] ?? '',
          title: article["title"] ?? '',
          subTitle: article["description"] ?? '',
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      print("Error fetching news: $e");
      return [];
    }
  }
}