import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,

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
  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text('User input'),
      ),
      body: Center(
        child: Container(
          width:300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.phone,
                controller: email,
                decoration: InputDecoration(

                  focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
            borderSide: BorderSide(
              color: Colors.deepOrange,
                  ),
                ),
              ),
              ),
              Container(height: 11,),
              TextField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                        ),
                    ),
                ),
              ),
              ElevatedButton(onPressed: (){
                  String uname = email.text.toString();
                  String upass = pass.text.toString();
                  
                    print("Email : $email Password: $pass");
              }, child: Text(
                'Login'
              ))
            ],
          ),
        ),
      ),
    );

  }
}
