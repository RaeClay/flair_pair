import 'package:flutter/material.dart';
import 'package:flair_pair/view/bottom_navbar.dart';  // Import the custom bottom navigation bar
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';  // Import the ViewModel
import 'package:flair_pair/view/customappbar.dart';

class FavoritesPage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text('This is the Favorites Page'),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}