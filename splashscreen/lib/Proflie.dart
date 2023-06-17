import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  var   nameFromHome;

   Profile(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("Welcome $nameFromHome",
        style: TextStyle(
          fontSize: 33,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),),
      ),
    );
  }
}
