import 'package:flutter/material.dart';
import 'package:flair_pair/view/customappbar.dart';
import 'package:flair_pair/view/bottom_navbar.dart';
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';


class PairingDetailScreen extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();
  final String foodName;
  final String alcoholName;
  final String pairingDescription;

  PairingDetailScreen({
    required this.foodName,
    required this.alcoholName,
    required this.pairingDescription,
  });

  @override
  Widget build(BuildContext context) {
    // Implement your PairingDetailScreen UI here
    return Scaffold( 
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Text('Food: $foodName'),
          Text('Alcohol: $alcoholName'),
          Text('Description: $pairingDescription'),
          // Add more details as needed
        ],
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}