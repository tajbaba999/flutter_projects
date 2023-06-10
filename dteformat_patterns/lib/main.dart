import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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


  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Date and Time'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selected Date',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(onPressed: () async {
                  DateTime? datepicker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2024));

                  if(datepicker != null){
                    print('Date pciker: ${datepicker.day}-${datepicker.month}-${datepicker.day}-${datepicker.hour}-${datepicker.minute}');
                  }
                }, child: Text('show'));
                Container(
                  height: 10,
                ),
                ElevatedButton(onPressed: () async{
                    TimeOfDay? pickedTime = ShowTimepicker(
                      context = context,
                      initialTime : TimeOfDay.now(),
                      initialEntryMode : TimePcikerEntryMode.input
                    );

                    if(pickedTime != null){
                      print('Time selected : ${pickedTime.hour} : ${pickedTime.minute}')
                    }

                  }
                )

              ],
            ),
          ),
        );
  }
}
