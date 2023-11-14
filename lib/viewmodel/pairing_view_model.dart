import 'package:flutter/material.dart';
import 'package:flair_pair/models/pairing_model.dart';


class PairingViewModel extends ChangeNotifier {
  List<PairingModel> _pairings = [
    PairingModel(
      foodName: 'Cheese',
      alcoholName: 'Red Wine',
      pairingDescription: 'A classic combination for wine enthusiasts.',
    ),
    // Add more pairings as needed
  ];

  List<PairingModel> get pairings => _pairings;

  List<PairingModel> searchPairings(String query) {
    query = query.toLowerCase();
    return _pairings.where((pairing) {
      return pairing.foodName.toLowerCase().contains(query) ||
          pairing.alcoholName.toLowerCase().contains(query);
    }).toList();
  }
}
