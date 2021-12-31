import 'dart:async';
import 'package:flutter/material.dart';
import 'package:real_estate/pages/main_page.dart';
import 'package:real_estate/theme.dart';

class SplashPage extends StatefulWidget {
  

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, color: orangeColor, size: 30,),
            SizedBox(height: 8,),
            Text('CARI RUMAH', style: titleTextStyle.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}