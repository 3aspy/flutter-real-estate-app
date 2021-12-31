import 'package:flutter/material.dart';
import 'package:real_estate/pages/detail_page.dart';
import 'package:real_estate/pages/main_page.dart';
import 'package:real_estate/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home' : (context) => MainPage(),
        '/detail-page': (context) => DetailPage()
      },
    ) ;
  }
}