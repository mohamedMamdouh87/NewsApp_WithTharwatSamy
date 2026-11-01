
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Article_Model.dart';
import 'package:flutter_application_1/services/News_Services.dart';
import 'package:flutter_application_1/widgets/newsTile.dart';

class NewsListView extends StatelessWidget {
 NewsListView({required this.articles});

final List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return  SliverList(
  
  delegate:  SliverChildBuilderDelegate( 
    childCount: articles.length,
    (context, index) {
  
   return Newstile(articleModel: articles[index],);
 },
 ));
  }
}
