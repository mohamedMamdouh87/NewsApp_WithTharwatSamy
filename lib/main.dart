import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/News_Services.dart';
import 'package:flutter_application_1/views/home_view.dart';
//import 'package:flutter_application_1/services/news_service.dart';

//import 'package:flutter_application_1/views/home_view.dart';



void main() {

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView()
    );
  }
}
