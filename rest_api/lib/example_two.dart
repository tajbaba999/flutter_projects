import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  List<Photos> photoslist = [];

  Future<List<Photos>> getPhotos() async{
      final responce = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
       var data = jsonDecode(responce.body);
      if(responce.statusCode == 200 ){
        for(Map i in data){
          Photos photos = Photos(title: i['title'], url: i['url'], id: i['id']);
          photoslist.add(photos);
        }
        return photoslist;
      }
      else{
        return photoslist;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Api screen2'),
      ),
      body: Column(
        children: [
            Expanded(
              child: FutureBuilder(
                  future: getPhotos(),
                  builder: (context, snapshot){
                return ListView.builder(
                    itemCount: photoslist.length,
                    itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(snapshot.data![index].url.toString()),
                    ),
                    subtitle: Text('Id : ${snapshot.data![index].id.toString()}'),
                    title: Text(snapshot.data![index].title.toString()),
                  );
                });
              }),
            )
        ],
      ),
    );
  }
}

class Photos{
  String title, url;
  int id;
  Photos({required this.title, required this.url, required this.id});
}