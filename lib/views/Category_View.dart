import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/News_List_View_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.Category});
final String Category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
News_List_View_builder(Category: Category,)
           
        ],
      )
    );
  }
}