import 'package:flutter/material.dart';
import 'package:mydemoapp/views/home_views.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: const HomeViews(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo.shade300,
          foregroundColor: Colors.white,
        ),
      
      ),
    );
  }
}