import 'dart:html';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  var nameController = TextEditingController();
  static const String KEYNAME = "";
  var namevalue = "No value Saved";

  @override
  void initState() {
      super.initState();
      getValue();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  label: Text('Name'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)
                  )
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(onPressed: () async {
              var name = nameController.text.toString();

              var prefs = await SharedPreferences.getInstance();

              prefs.setString(KEYNAME, name);
           },
                child: Text("Save")),
            SizedBox(
              height: 11,
            ),
            Text(namevalue)
          ],
        ),
      ),
    );
  }

  void getValue() async{
    var prefs = await SharedPreferences.getInstance();

  var getName =   prefs.getString(KEYNAME);

    namevalue = getName ?? "No value saved";
  setState(() {

  });
  }
}
