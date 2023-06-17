import 'dart:async';

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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirst = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4),(){
      reload();
    });

    void reload(){
      setState(() {
        isFirst = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo Animation"),
      ),
      body: AnimatedCrossFade(
        duration: Duration(seconds: 4),
        firstChild: Container(
          width: 200,
          height: 200,
          color: Colors.blueGrey.shade200,
        ),
        secondChild:
        Image.asset('assets/images/kaylie.png',
          width: 200,
          height: 200,),
        crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond;
      ),
    );
  }
}
