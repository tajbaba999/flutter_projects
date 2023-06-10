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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var arrColours = [Colors.orange,
            Colors.deepPurple,
            Colors.blue,
            Colors.brown,
            Colors.blueGrey,
            Colors.pink,
            Colors.black87,
            Colors.cyanAccent];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        children: [
          GridView.count(crossAxisCount: 4,
          crossAxisSpacing: 34,
          mainAxisSpacing: 22,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[0],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[1],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[2],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[3],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[4],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[5],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[6],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: arrColours[7],),
            )
          ],),
          Container(
            height: 25,
          ),
          GridView.extent(maxCrossAxisExtent: 100,
          children: [
            Container(color: arrColours[0],),
            Container(color: arrColours[1],),
            Container(color: arrColours[2],),
            Container(color: arrColours[3],),
            Container(color: arrColours[4],),
            Container(color: arrColours[5],),
            Container(color: arrColours[6],),
            Container(color: arrColours[7],),
          ],)
        ],
      )

    );
  }
}
