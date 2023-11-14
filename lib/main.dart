import 'package:flutter/material.dart';
import 'view/home_view.dart'; // home view


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlairPair',
      home: HomePage(), // Set HomePage as the home
    );
  }
}