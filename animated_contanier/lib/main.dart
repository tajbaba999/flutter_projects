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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

    var _width = 200.0;
    var _height = 100.0;

    bool flag = true;

    Color bgcolor = Colors.blueGrey;

    Decoration myDec = BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      color: Colors.blueGrey
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo Animations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width,
                height: _height,
                color: bgcolor,
                curve: Curves.fastOutSlowIn,
                duration: Duration(seconds: 4),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  if(flag){
                    _height = 200.0;
                    _width = 100.0;
                    bgcolor = Colors.deepOrangeAccent;
                    flag=false;
                    myDec = BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.blueGrey,

                    );

                  }
                  _width = 200.0;
                  _height = 100.0;
                  bgcolor = Colors.cyan;
                  flag=true;
                  myDec = BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.orange
                  )
                });

              }, child: Text("Animate"))

            ],
          ),
      ),
      );
  }
}
