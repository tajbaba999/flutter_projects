import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleFour extends StatefulWidget {
  const ExampleFour({super.key});

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> {

  var data;
  Future<void> gerUserapi() async{
    final responce = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if(responce.statusCode == 200){
        data  = jsonDecode(responce.body.toString());
    }else{

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Example 4'),
      ),
      body: Column(
        children: [
          Expanded(child: FutureBuilder(
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return CircularProgressIndicator();
              }
              else{
                return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index){
                  return Card(
                    child: Column(
                        children: [
                          ResuableRow(title: 'Name', value: data[index]['name'].toString()),
                          ResuableRow(title: 'name', value: data[index]['username'].toString())
                        ],
                    ),
                  );
                });
              }
              return Text('');
            },
          ))
        ],
      ),
    );
  }
}

class ResuableRow extends StatelessWidget {

  String value, title;
  ResuableRow({Key? key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Title :${title}',textAlign: TextAlign.start,),
        SizedBox(
          width: 23,
        ),
        Text('Value :${value}')
      ],
    );
  }
}
