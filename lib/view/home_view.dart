import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_navbar.dart';  // Import the custom bottom navigation bar
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';  // Import the ViewModel

class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // Increased height
        backgroundColor: Colors.white, // White background color
        title: Padding(
          padding: EdgeInsets.only(top: 50, bottom: 20), // Increase padding to move text up
          child: Row(  // START OF MODIFICATION
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'FLAIRPAIR',
                style: GoogleFonts.bungeeShade(
                  textStyle: TextStyle(
                    color: Colors.black, // Font color
                    fontSize: 44, // Font size
                  ),
                ),
              ),
              SizedBox(width: 10), // Spacing between title and slogan
              Text(
                'Elevate Your Enjoyment', // Slogan text
                style: GoogleFonts.archivoNarrow(
                  textStyle: TextStyle(
                    color: Colors.black.withOpacity(0.6), // Slogan font color
                    fontSize: 14, // Slogan font size
                  ),
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.sports_bar, // Example icon, choose one that fits your theme
                size: 16, // Icon size
                color: Colors.black,
              ),
            ],
          ),  // END OF MODIFICATION
        ),
        centerTitle: false, // Aligns the title to the left
      ),
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