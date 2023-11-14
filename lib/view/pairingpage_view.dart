import 'package:flutter/material.dart';
import 'package:flair_pair/viewmodel/pairing_view_model.dart';
import 'package:provider/provider.dart';
import 'bottom_navbar.dart';
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';

class PairingsPage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Pairings'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => PairingViewModel(),
        child: PairingBody(),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}

class PairingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pairingViewModel = Provider.of<PairingViewModel>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (query) {
              var results = pairingViewModel.searchPairings(query);
              // Do something with the results (e.g., update UI)
            },
            decoration: InputDecoration(
              labelText: 'Search for Food or Alcohol Pairing',
            ),
          ),
        ),
        Expanded(
          child: Consumer<PairingViewModel>(
            builder: (context, viewModel, child) {
              var pairingResults = viewModel.pairings;
              return ListView.builder(
                itemCount: pairingResults.length,
                itemBuilder: (context, index) {
                  var pairing = pairingResults[index];
                  return ListTile(
                    title: Text(pairing.foodName),
                    subtitle: Text(pairing.alcoholName),
                    onTap: () {
                      // Handle item tap (like, navigate to details)
                    },
                  );
                },
              );
            },
          ),
        ),
      ],

    );
  }
}




