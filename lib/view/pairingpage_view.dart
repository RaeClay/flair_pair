/* this will be that page that pops up when looking for pairings --
   it should appear when the "Find Pairings" button is pressed on
   the nav bar
 */

import 'package:flutter/material.dart';
import 'bottom_navbar.dart';  // Import the custom bottom navigation bar
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';  // Import the ViewModel

class PairingsPage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Pairings'),
      ),
      body: Center(
        child: Text('This is the Pairings Page'),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}