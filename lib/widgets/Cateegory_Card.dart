 import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Category_model.dart';
import 'package:flutter_application_1/views/Category_View.dart';

class Cateegory_Card extends StatelessWidget {
  const Cateegory_Card({super.key, required this.catigory});
final CategoryModel catigory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(Category: catigory.Category_Name);
        },));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image:AssetImage(catigory.image) ),
        borderRadius: BorderRadius.circular(12)
        
          ) 
        ,child: Center(
          
          child: Text(catigory.Category_Name,style: TextStyle(backgroundColor: Colors.white,
          fontSize: 18,fontWeight: FontWeight.bold
          ),),
        ),
        
        ),
      ),
    )
;
  }
}