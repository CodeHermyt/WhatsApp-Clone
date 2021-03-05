import 'package:flutter/material.dart';
import './screen/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.teal[800],
        accentColor: Colors.white,
      ),
      home: MainScreen(),
    );
  }
}
