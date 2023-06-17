import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/Dashboard.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  @override
  void initState(){
    super.initState();


    Timer(Duration( seconds: 2), (){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> DashBoardscreen(),
      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text('Classio',style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color:  Colors.white
        ),)),
      ),
    );
  }
}
