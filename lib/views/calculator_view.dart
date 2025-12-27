import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Container(
          child: Column(
            children: [
             //Calculator Display
             TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '0',
              ),
             ), 
            
             //Calculator Buttons
            
            ],
          ),
        ),
      );
  }
}