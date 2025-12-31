import 'package:flutter/material.dart';
import 'package:mydemoapp/views/calculator_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: CalculatorView(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo.shade300,
          foregroundColor: Colors.white,

        ), 
      
      ),
    );
  }
}