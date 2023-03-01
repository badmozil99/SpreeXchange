import 'package:flutter/material.dart';
import 'package:spreexchange/screens/intro_screen.dart';
import 'package:spreexchange/screens/onboarding_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.lightBlue,
      ),
      home: OnBoardingScreen(),
    );
  }
}

