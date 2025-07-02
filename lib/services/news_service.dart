import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{
  final Dio dio;

  NewsService(this.dio);

  getTopHeadlines() async{
    try{
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=8b4c4c0281e440098baccbe18bd1c4f9&category=general&country=us');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles']; 
      print(articles);
    }
    catch(e){}
  }
}