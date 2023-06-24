import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}



class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speed test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello',style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
      ),
    );
  }
}
