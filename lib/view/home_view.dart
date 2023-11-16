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
              Colors.grey[800]!,
              Colors.deepOrangeAccent,
            ],
            center: Alignment.center,
            radius: 1.0,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Expanded(
              flex: 2, // Adjusted flex for carousel
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 350, // Increased height of the carousel
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
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
            Expanded(
              flex: 3, // Increased flex for buttons to take more vertical space
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement action for Tips
                        },
                        child: Text('Tips', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between buttons
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement action for For you
                        },
                        child: Text('For you', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}
