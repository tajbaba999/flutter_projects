import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_api/models/User_model.dart';
import 'package:http/http.dart' as http;

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {

  List<UserModel> userList = [];

  Future<List<UserModel>> getUserApi () async{
    final responce = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if(responce.statusCode == 200){
      var data = jsonDecode(responce.body.toString());
      for(Map i in data){
        print(i['name']);
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    }else{
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Modle'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child:FutureBuilder(
                future: getUserApi(),
                builder: (context, AsyncSnapshot<List<UserModel>> snapshot){
                  if(!snapshot.hasData){
                  return CircularProgressIndicator();

                  }else{
                    return ListView.builder(
                        itemCount: userList.length,
                        itemBuilder: (context, index){
                          return Card(
                            child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ResuableRow(title: 'Name', value: snapshot.data![index].name.toString() ),
                                          ResuableRow(title: 'Username', value: snapshot.data![index].username.toString() ),
                                          ResuableRow(title: 'Email', value: snapshot.data![index].email.toString() )
                                        ],
                                      ),
                                    ),
                                  ],
                            ),
                          );
                        });
                  }
                }

                ),
          ),
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
