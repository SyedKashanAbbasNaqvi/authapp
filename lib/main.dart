import 'package:flutter/material.dart';
import 'package:listandtable/layout/home.dart'; // Ensure this import is correct
import 'splash_screen.dart'; // Adjust if needed

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AuthApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), 
    );
  }
}
