import 'package:flutter/material.dart';

List<Widget> carouselItems = [
  Container(
    margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
    decoration: BoxDecoration(
      color: Colors.red, // Different color for each container
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Center(child: Text('Item 1', style: TextStyle(fontSize: 24, color: Colors.white))),
  ),
  Container(
    margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
    decoration: BoxDecoration(
      color: Colors.green, // Different color for each container
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Center(child: Text('Item 2', style: TextStyle(fontSize: 24, color: Colors.white))),
  ),
  Container(
    margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
    decoration: BoxDecoration(
      color: Colors.blue, // Different color for each container
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Center(child: Text('Item 3', style: TextStyle(fontSize: 24, color: Colors.white))),
  ),
];