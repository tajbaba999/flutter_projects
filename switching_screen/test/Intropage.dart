import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switching_screen/main.dart';

class Intropage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text('Intro'),
        ),
       body: Column(
         children: [
           Text('Welcome',style: TextStyle(
             fontSize: 34,
             fontWeight: FontWeight.bold,
           ),),
           SizedBox(
             height: 20,
           ),
           ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Title'),
              ));
           }, child: Text('Next'))

         ],
       ),
     );
  }

}