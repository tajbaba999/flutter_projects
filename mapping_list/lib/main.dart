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
  var arrData = [
    {'name': 'Rosy', 'mobo': '91331923234', 'unred': '1'},
    {'name': 'john', 'mobo': '2378445', 'unred': '2'},
    {'name': 'Virat', 'mobo': '3848347', 'unred': '3'},
    {'name': 'nikhil', 'mobo': '38247823', 'unred': '4'},
    {'name': 'nithin', 'mobo': '892374892', 'unred': '5'},
    {'name': 'kailsh', 'mobo': '23873274', 'unred': '6'},
    {'name': 'suzee', 'mobo': '87347823', 'unred': '7'},
    {'name': 'kayte', 'mobo': '9278347732', 'unred': '8'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
            children: arrData
                .map((value) => ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['mobno'].toString()),
                      trailing:
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                              radius: 12,
                              child: Text(value['unred'].toString())),
                    ))
                .toList()),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(21),
// color: Colors.blue.shade800,
// ),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Center(child: Text(value)),
// ),
// ),
// ),
// );
