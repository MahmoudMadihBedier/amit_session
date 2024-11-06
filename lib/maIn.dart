import 'package:amit_session/home_screen.dart';
import 'package:amit_session/welcome_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.routeName,
      routes:{
        WelcomeScreen.routeName:(context)=>WelcomeScreen(),
        HomeScreen.routeName:(context)=>HomeScreen()
      },
    );
  }
}
