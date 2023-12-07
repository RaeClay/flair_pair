import 'package:flutter/material.dart';

List<Widget> carouselItems = [
  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/winter-background.jpg'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '\'Tis the Season',
            style: TextStyle(
              fontFamily:'RubikBubbles',
              fontSize: 40,

              color: const Color(0xff9E6E61),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min, // To align the contents in the center
              children: [
                Flexible( // Wrap the Text widget with Flexible
                  child: Text(
                    'mulled wine and gingerbread',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'RubikBubbles',
                      fontWeight: FontWeight.w900,
                      color: Colors.white,

                    ),
                    overflow: TextOverflow.ellipsis, // Prevents text from overflowing
                  ),
                ),
                SizedBox(width: 10), // Provides some space between text and image
                Image.asset(
                  'assets/images/mulled-wine.png', // Path to your image file
                  width: 40, // Adjust the size as needed
                  height: 40, // Adjust the size as needed
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10), // Add padding around the text
            decoration: BoxDecoration(
              color: const Color(0xff679876), //background color
              borderRadius: BorderRadius.circular(10), // Rounded edges
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Text(
              'Celebrate the cold weather with a pairing we love - a classic mulled wine with a rich, spiced gingerbread. The warmth of the wine complements the sweet and spicy flavors of the gingerbread, perfect for cozy winter evenings.',
              textAlign: TextAlign.center, // Center align the text
              style: TextStyle(
                fontFamily: 'RubikBubbles',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ),
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