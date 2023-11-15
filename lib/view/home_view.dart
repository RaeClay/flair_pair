import 'package:flutter/material.dart';
import 'package:flair_pair/view/customappbar.dart';
import 'package:flair_pair/view/bottom_navbar.dart';
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';


class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 200, // Adjust as needed
              decoration: BoxDecoration(
                color: Colors.black12, // Container color
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrangeAccent.withOpacity(0.5), // Shadow color with some transparency
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3), // Position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Content goes here',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 200, // Adjust as needed
              decoration: BoxDecoration(
                color: Colors.black12, // Container color
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrangeAccent.withOpacity(0.5), // Shadow color with some transparency
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3), // Position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Content goes here',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 200, // Adjust as needed
              decoration: BoxDecoration(
                color: Colors.black12, // Container color
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrangeAccent.withOpacity(0.5), // Shadow color with some transparency
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 1), // Position of shadow
                  ),
                ],
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
