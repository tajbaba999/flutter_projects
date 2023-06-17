import 'package:flutter/material.dart';

class DashBoardscreen extends StatelessWidget {
  const DashBoardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Dashboard Screen",style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),),
      ),
    );
  }
}
