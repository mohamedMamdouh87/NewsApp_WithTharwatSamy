import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/Article_Model.dart';

class NewsServices {

final Dio dio;

NewsServices(this.dio);

Future<List<ArticleModel>> getTopHeadlines( {required String Category}) async{
  
var response =await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=YOUR_NEWSAPI_KEY&category=$Category");
  Map<String,dynamic> JsonData =response.data;
  List<dynamic>  Articles =  JsonData["articles"];
List<ArticleModel> Article_List= [];

for(var Article in Articles){
ArticleModel articleModel=ArticleModel(image: Article['urlToImage'], 
title: Article["title"], subtitle:Article["description"]);

Article_List.add(articleModel);
}


return Article_List;
}
}

