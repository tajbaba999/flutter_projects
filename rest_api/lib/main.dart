import 'package:flutter/material.dart';
import 'package:rest_api/Home_Screen.dart';
import 'package:rest_api/example_two.dart';

import 'example_three.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ExampleThree(),
    );
  }
}
