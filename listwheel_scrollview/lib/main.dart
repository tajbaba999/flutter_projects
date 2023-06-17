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

  var arrInedx = [
    1,2,3,4,5,6,7,8,9,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("3D List"),
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrInedx.map((value) => Container(width: 200,color: Colors.blue,)).toLs,
      ),
    );
  }
}


 // children: [
 // Container(
 // width: 200,
 // color: Colors.blue,
 // ),
 // Container(
 // width: 200,
 // color: Colors.blue,
 // ),
 // Container(
 // width: 200,
 // color: Colors.blue,
 // ),
 // Container(
 // width: 200,
 // color: Colors.blue,
 // ),
 // Container(
 // width: 200,
 // color: Colors.blue,
 // ),
 // Container(
 // width: 200,
 // color: Colors.blue,
 // ),
 // Container(
 // width: 200,
 // color: Colors.blue,
 // ),
 // Container(
 // width: 200,
 // color: Colors.blue,
 // )
 //
 //
 // ],