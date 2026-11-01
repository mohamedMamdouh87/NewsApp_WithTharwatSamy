
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Article_Model.dart';
import 'package:flutter_application_1/services/News_Services.dart';
import 'package:flutter_application_1/widgets/News_List_View.dart';

class News_List_View_builder extends StatefulWidget {
  const News_List_View_builder({
    super.key, required this.Category,
  });
final String Category;
  @override
  State<News_List_View_builder> createState() => _News_List_View_builderState();
}

class _News_List_View_builderState extends State<News_List_View_builder> {
  @override
  var future;
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsServices(Dio()).getTopHeadlines(Category: widget.Category);
  }
@override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future ,
      builder: (context, snapshot) {
        if(snapshot.hasData){
        return NewsListView(articles: snapshot.data!);
        }
        else if(snapshot.hasError){
          return SliverToBoxAdapter(child: Text("Noooooooooooo"),);
        }
        else{
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
      },
     );
    
 
    

}
}