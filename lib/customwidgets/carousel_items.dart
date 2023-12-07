import 'package:flutter/material.dart';

List<Widget> carouselItems = [
  Container(
    margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
    decoration: BoxDecoration(
      color: Colors.green[300], // Festive color for the season
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Tis the Season',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Celebrate with a classic mulled wine paired with a rich, spiced gingerbread. The warmth of the wine complements the sweet and spicy flavors of the gingerbread, perfect for cozy winter evenings.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    ),
  ),
  Container(
    margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
    decoration: BoxDecoration(
      color: Colors.green, // Different color for each container
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 24, color: Colors.white))),
  ),
  Container(
    margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
    decoration: BoxDecoration(
      color: Colors.blue, // Different color for each container
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 24, color: Colors.white))),
  ),
];