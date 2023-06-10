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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.cyanAccent,
                child: ListView.builder(itemBuilder: (context, index) => SizedBox(
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
                child: ListView.builder(itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Text('Name'),
                    title: Text('Name'),
                    subtitle: Text('Mod no:'),
                  ),
                )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                color: Colors.blueGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
