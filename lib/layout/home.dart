import 'package:flutter/material.dart';
import 'package:listandtable/layout/sidebar.dart';
import 'package:listandtable/splash_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Our App!!!"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      drawer: const Sidebar(), // Use the correct casing here
      body: Row(
        children: [
          // const Sidebar(), // Include the Sidebar in the Row
          Expanded(
            child: Center(
              child: SplashScreen(), // Placeholder for main content
            ),
          ),
        ],
      ),
    );
  }
}
