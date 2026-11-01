
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Article_Model.dart';
import 'package:flutter_application_1/services/News_Services.dart';
import 'package:flutter_application_1/widgets/newsTile.dart';

class NewsListView extends StatefulWidget {
 
  const NewsListView({
    super.key,
  });
  @override
  State<NewsListView> createState() => _NewsListViewState();
}
class _NewsListViewState extends State<NewsListView> {
List<ArticleModel> articles =[];
 bool isLoading=true;
 @override
  void initState()  {
    super.initState();
    GetGenralNews();
  }

 
 Future<void> GetGenralNews() async {
   articles= await  NewsServices(Dio()).getTopHeadlines(Category: "general");
   isLoading=false;
   setState(() {
     
   });
 }


  @override
  Widget build(BuildContext context) {
    return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))   : SliverList(
  
  delegate:  SliverChildBuilderDelegate( 
    childCount: articles.length,
    (context, index) {
  
   return Newstile(articleModel: articles[index],);
 },
 ));
  }
}
