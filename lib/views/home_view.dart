import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Article_Model.dart';
import 'package:flutter_application_1/services/News_Services.dart';
import 'package:flutter_application_1/widgets/Cateegory_Card.dart';
import 'package:flutter_application_1/widgets/Categores_List_View.dart';
import 'package:flutter_application_1/widgets/News_List_View.dart';
import 'package:flutter_application_1/widgets/News_List_View_builder.dart';
import 'package:flutter_application_1/widgets/newsTile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 appBar: AppBar(
title: Row(
  mainAxisAlignment: MainAxisAlignment.center,
 // mainAxisSize: MainAxisSize.min,
  children: [
    Text("News",style: TextStyle(color: Colors.black) ),
     Text("Cloud",style: TextStyle(color: Colors.amber) ),
    
  ],
),

 ),
body: 
Padding(
  padding: EdgeInsets.symmetric(horizontal: 16),
  child: CustomScrollView(
  slivers: [
  SliverToBoxAdapter(child: Categores_List_View()),
  SliverToBoxAdapter(child: SizedBox(height: 20,)),
 News_List_View_builder(Category: 'general',)
  ],
  
  
  ),
),


    );
  }
}
