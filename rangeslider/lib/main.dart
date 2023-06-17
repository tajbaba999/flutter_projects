import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  RangeValues values = RangeValues(1, 2);

   // MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Range'),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          onChanged: (newvalue){

          },
        ),
      ),
    );
  }
}
