import 'package:finalproject/HomeScreen.dart';
import 'package:finalproject/appBar.dart';
import 'package:finalproject/carouselSlider.dart';
import 'package:finalproject/fishScreen.dart';
import 'package:finalproject/loginScreen.dart';
import 'package:finalproject/registerScreen.dart';
import 'package:flutter/material.dart';

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
      title: 'HE Fish',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginScreen(),
      routes: {
        "/Login": (context) => loginScreen(),
        "/register": (context) => registerScreen(),
        "/homeScreen": (context) => homeScreen(),
        "/fishScreen": (context) => fishScreen()
      },
    );
  }
}
