import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.purple.shade200],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text('Hello, World!', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),),
          ),
        ),
      );
  }
}