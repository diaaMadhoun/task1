import 'package:flutter/material.dart';
import 'package:task1/screens/homescreen.dart';
import 'package:task1/screens/onescreen.dart';
import 'package:task1/screens/screenfourth.dart';
import 'package:task1/screens/threescreen.dart';
import 'package:task1/screens/twoscreen.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
