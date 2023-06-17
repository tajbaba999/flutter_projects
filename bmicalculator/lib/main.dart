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

class _MyHomePageState extends State<MyHomePage>{

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       title: Text('BMI '),
     ),
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('BMI', style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(
                  height: 21,
                ),
                TextField(
                    controller : wtController,
                    decoration: InputDecoration(
                      label : Text("Enter your weight (in kgs)"),
                      prefixIcon: Icon(Icons.line_weight)
                    ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller : ftController,
                  decoration: InputDecoration(
                      label : Text("Enter your height (in fts)"),
                      prefixIcon: Icon(Icons.height_rounded)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller : inController,
                  decoration: InputDecoration(
                      label : Text("Enter your inches (in inches)"),
                      prefixIcon: Icon(Icons.height_sharp)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(onPressed: (){
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch =  inController.text.toString();

                  if(wt != "" && ft != "" && inch != ""){

                    var cinch = int.parse(inch);
                    var cft = int.parse(ft);
                    var cwt = int.parse(wt);

                    var tInch = (cft*12) + cinch;

                    var tCm = tInch*2.54;

                    var tM = tCm/100;

                    var bmi = cwt / (tM*tM);
                    setState(() {
                      result = "Your BMI is ${bmi.toStringAsFixed(4)}";

                    });

                  }
                  else{
                        setState(() {
                          result = "Please fil all the input blanks";
                        });
                  }

                }, child: Text('Calculate')),
                SizedBox(
                  height: 45,
                ),
                Text(" ${result}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
