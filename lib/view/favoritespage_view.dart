import 'package:flutter/material.dart';
import 'bottom_navbar.dart';  // Import the custom bottom navigation bar
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';  // Import the ViewModel

class FavoritesPage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
      ),
      body: Center(
        child: Text('This is the Favorites Page'),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}