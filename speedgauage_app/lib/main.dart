import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Speed Gauge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Speed Gauge'),
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

        backgroundColor: Colors.blue,

        title: Text('Speed gauge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 500,
              padding: EdgeInsets.all(10),
              child:KdGaugeView(
                minSpeed: 0,
                maxSpeed: 190,
                speed: 190,
                // animate: true,
                duration: Duration(seconds: 5),
                alertSpeedArray: [60, 120, 150],
                alertColorArray: [Colors.blueAccent, Colors.orange, Colors.red],
                gaugeWidth: 20,
                fractionDigits: 1,
              ),
            )
          ],

        ),
      ),
    );
  }
}
