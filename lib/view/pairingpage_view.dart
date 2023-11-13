/* this will be that page that pops up when looking for pairings --
   it should appear when the "Find Pairings" button is pressed on
   the nav bar
 */

import 'package:flutter/material.dart';

class PairingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Pairings'),
      ),
      body: Center(
        child: Text('This is the Pairings Page'),
      ),
    );
  }
}