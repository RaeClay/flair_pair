import 'package:flutter/material.dart';

List<Widget> carouselItems = [
  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/winterbackground2.jpg'),
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
                      color: const Color(0xff9E6E61),

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
          SizedBox(height: 23),
          Container(
            padding: const EdgeInsets.all(10), // Add padding around the text

            child: Text(
              'Celebrate the cold weather with a pairing we love - a classic mulled wine with a rich, spiced gingerbread. The warmth of the wine complements the sweet and spicy flavors of the gingerbread, perfect for cozy winter evenings.',
              textAlign: TextAlign.center, // Center align the text
              style: TextStyle(
                fontFamily: 'RubikBubbles',
                fontSize: 16,
                color: Colors.brown,
              ),
            ),
          )
        ],
      ),
    ),
  ),




  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/taco-background.jpg'),
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
            'The Classics',
            style: TextStyle(
              fontFamily:'RubikBubbles',
              fontSize: 40,
              color: const Color(0xffEBB314),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min, // To align the contents in the center
              children: [
                Flexible( // Wrap the Text widget with Flexible
                  child: Text(
                    'tacos and a marg',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'RubikBubbles',
                      fontWeight: FontWeight.w900,
                      color: const Color(0xffEBB314),

                    ),
                    overflow: TextOverflow.ellipsis, // Prevents text from overflowing
                  ),
                ),
                SizedBox(width: 10), // Provides some space between text and image
                Image.asset(
                  'assets/images/margarita.png', // Path to your image file
                  width: 40, // Adjust the size as needed
                  height: 40, // Adjust the size as needed
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(10), // Add padding around the text

            child: Text(
              'Does this ever get old? No matter the taco filling or the flavor of margartia, this'
                  ' classic combo never fails in brining a sigh of relief.',
              textAlign: TextAlign.center, // Center align the text
              style: TextStyle(
                fontFamily: 'RubikBubbles',
                fontSize: 16,
                color: const Color(0xffEBB314),
              ),
            ),
          )
        ],
      ),
    ),
  ),

  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/bbqbackground.jpg'),
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
            'BBQ and Brews',
            style: TextStyle(
              fontFamily: 'RubikBubbles',
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min, // To align the contents in the center
            children: [
              Flexible( // Wrap the Text widget with Flexible
                child: Text(
                  'pulled pork and amber ale',
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
                'assets/images/beer-bottle.png', // Path to your image file
                width: 40, // Adjust the size as needed
                height: 40, // Adjust the size as needed
              ),
            ],
          ),
          SizedBox(height: 23),
          Container(
            padding: const EdgeInsets.all(10), // Add padding around the text
            child: Text(
              'Smoky pulled pork meets the caramel smoothness of amber ale - the ale\'s subtle bitterness cuts through the richness of the pork, making each bite and sip a perfectly balanced flavor dance.',
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
];