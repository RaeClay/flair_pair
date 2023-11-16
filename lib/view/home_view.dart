import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flair_pair/view/customappbar.dart';
import 'package:flair_pair/view/bottom_navbar.dart';
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';

class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.grey[800]!, // Lighter color in the center
              Colors.deepOrangeAccent, // Darker color towards the edges
            ],
            center: Alignment.center,
            radius: 1.0,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20), // Space between app bar and carousel
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 450,
                  viewportFraction: 0.8, // 80% of the viewport width
                  enlargeCenterPage: true, // Enlarge the central page
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0), // Margin for spacing
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20), // Rounded corners
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Button $i',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}