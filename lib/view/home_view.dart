import 'package:flutter/material.dart';

import 'package:flair_pair/view/customappbar.dart';
import 'bottom_navbar.dart';  // Import the custom bottom navigation bar
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';  // Import the ViewModel

class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 600, // Adjust as needed
              decoration: BoxDecoration(
                color: Colors.black12, // Container color
              ),
              child: Center(
                child: Text(
                  'Content goes here',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          // Add more content here if needed










        ],
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}