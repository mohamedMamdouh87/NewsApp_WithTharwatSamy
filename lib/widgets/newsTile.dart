import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Article_Model.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articleModel});
 final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisSize: MainAxisSize.min,
children: [
ClipRRect(
 borderRadius: BorderRadius.circular(6),
 child:Image.network(articleModel.image??"no image",
 height: 200,
 width: double.infinity,
 fit: BoxFit.cover,
 )
),
SizedBox(
  height: 12,
),
Text(articleModel.title??"no title",
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: TextStyle(
color: Colors.black,
fontSize: 20,

),


),
SizedBox(
  height: 8,
),
Text(articleModel.subtitle??"no sub",
maxLines: 2,
//overflow: TextOverflow.ellipsis,
style: TextStyle(
color: Colors.grey,
fontSize: 14,

),


),
],


    ); }
}