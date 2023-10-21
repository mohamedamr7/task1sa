import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_safwat/Animated.dart';
import 'package:task_safwat/HomeScreen.dart';
import 'package:task_safwat/ahmed.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }

}