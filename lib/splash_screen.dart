import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    return Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => MyHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color(0xFFC88D67),
      body: Center(
        child:
        Image.asset(
          'assets/ttt.png',
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}

