import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Hello world!'),
      ),
      body: Container(
        margin: EdgeInsets.all(45),
          color: Colors.blueGrey,

          child: Padding(
              padding: EdgeInsets.all(11),
              child: Text('Hello World!',style: TextStyle(fontSize: 30,color: Colors.white),
          )
          // padding: const EdgeInsets.only(top: 50, left : 34),

      ),
    );
  }
}
