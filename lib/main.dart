import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thepilcompany/Login.dart';

void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'thePILcompany',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(primary: Colors.white)),
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
              primary: Colors.black,
              textStyle: TextStyle(color: Colors.white),
            ))),
        home: Container(
          width: 150,
          height: 200,
          child: AnimatedSplashScreen(
            nextScreen: Login(),
            duration: 5000,
            splash: "assets/logo.jpg",
            pageTransitionType: PageTransitionType.leftToRight,
            splashTransition: SplashTransition.scaleTransition,
          ),
        )
    );
  }
}
