import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/PostModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List<PostModel> postList = [];
  Future<List<PostModel>> getPostApi() async {
    final responce = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      var data = jsonDecode(responce.body.toString());
    if(responce.statusCode == 200){
      postList.clear();
      for(Map i in data){
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    }
    else{
      return postList;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apis'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getPostApi(),
                  builder: (context, snapshot){
                if(!snapshot.hasData){
                  return Text('Loding....');
                }else{
                  return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context, index){
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tilte',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),),
                                Text(postList[index].title.toString()),
                              SizedBox(
                                height: 11,
                              ),
                                Text('Description :', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800
                                ),),
                              Text(postList[index].title.toString()),
                              SizedBox(
                                height: 11,
                              ),
                            ],
                          ),
                        ),
                      );
                      });
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
