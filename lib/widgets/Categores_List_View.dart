
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Category_model.dart';
import 'package:flutter_application_1/widgets/Cateegory_Card.dart';

class Categores_List_View extends StatelessWidget {
  const Categores_List_View({
    super.key,
  });
 final List<CategoryModel> Categories= const[
CategoryModel(
  image: 'assets/business.avif',
   Category_Name:'Business',
),
CategoryModel(
  image: 'assets/general.avif',
  Category_Name: 'Entertainment',
),
CategoryModel(
  image: 'assets/health.avif',
  Category_Name: 'Health',
),
CategoryModel(
  image: 'assets/science.avif',
  Category_Name: 'Science',
),
CategoryModel(
  image: 'assets/technology.jpeg',
  Category_Name: 'Technology',
),

 ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length
        ,itemBuilder: (context, index) => Cateegory_Card(catigory: Categories[index],),),
    );
  }
}