import 'package:flutter/material.dart';
import 'package:loginphone/MyNumber.dart';
// import 'dart:js';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNumber(),
    );
  }
}
