import 'package:flutter/material.dart';

// import all views that can be accessed from home page
import 'bottom_navbar.dart';  // Import the custom bottom navigation bar
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';  // Import the ViewModel

class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),

      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}