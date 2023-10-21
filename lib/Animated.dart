import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_safwat/HomeScreen.dart';
class AnimatedScreen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image(image: AssetImage("assets/images/img_9.png",
        ),
          height: 500,
          width: 500,
          ),
        nextScreen: HomeScreen(),
        duration: 4000,
      ),
    );
  }

}