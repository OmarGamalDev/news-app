import 'dart:developer';

import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

   getNews() async {
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=53607d3a0f7d40adb010465524026936#');
    log(response.toString());
  }
  
}