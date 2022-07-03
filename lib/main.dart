import 'package:flutter/material.dart';
import 'package:internship_algoriza/loginscreen/loginscreen.dart';
import 'package:internship_algoriza/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
     theme:ThemeData(
       textTheme: const TextTheme(
         bodyText1: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 30.0,
           fontFamily: 'BKANT',
         ),

       ),
     ),
     home:LoginScreen(),
    );
  }
}
