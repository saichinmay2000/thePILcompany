import 'package:flutter/material.dart';
import 'package:splashy/splashy.dart';
import 'package:thepilcompany/Login.dart';

void main()
{
  runApp(MyApp());
}
Future<Widget> customFunction(){
  print("BackgroundProcess");
  return Future.value(Login());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'thePILcompany',
      home: Splashy(
        imagePath: "assets/logo.jpg",
        duration: 3000,
        backgroundColor: Colors.white,
        customFunction: customFunction(),
        curve: Curves.easeInOut,
      ),
    );
  }
}
