import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image.asset('assets/images/kylie.png',
          width: 100,
          height: 100,
          ),
        ),
      ),
    );
  }
}
