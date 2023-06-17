import 'package:flutter/material.dart';
import 'package:splashscreen/Proflie.dart';

class DashBoardscreen extends StatelessWidget {
  var nameController = TextEditingController();
  
   DashBoardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dashboard Screen",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
            ),),
            
            SizedBox(height: 11,),
            
            TextField(
              controller: nameController,
            ),
            SizedBox(height: 11,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => Profile(nameController.text.toString())
    ));
    }, child: Text('Show'))


          ],
        ),
        ),
      );
  }
}
