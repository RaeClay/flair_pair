import 'package:flutter/material.dart';
import 'package:flair_pair/models/pairing_model.dart';


class PairingViewModel extends ChangeNotifier {
  final List<List<PairingModel>> _allPairings = [
    [
      PairingModel(
        foodName: 'Cheese',
        alcoholName: 'Wine',
        pairingDescription: 'A classic combination for wine enthusiasts.',
      ),
    ],
    [
      PairingModel(
        foodName: 'Pizza',
        alcoholName: 'Beer',
        pairingDescription: 'An all-time favorite pairing for a casual meal.',
      ),
    ],
    [
      PairingModel(
        foodName: 'Steak',
        alcoholName: 'Wine',
        pairingDescription: 'Another classic combination for wine enthusiasts.',
      ),
    ],
    [
      PairingModel(
        foodName: 'Pretzel',
        alcoholName: 'Beer',
        pairingDescription: 'A timeless combination of salty and hoppy.',
      ),
    ],
  ]; // end of list of lists (_allPairings)

  List<PairingModel> searchPairings(String query) {
    if (query.isEmpty) {
      return []; // Return an empty list if the query is empty
    }
    query = query.toLowerCase();
    List<PairingModel> results = [];

    for (List<PairingModel> pairingList in _allPairings) {
      for (PairingModel pairing in pairingList) {
        if (pairing.foodName.toLowerCase().contains(query) ||
            pairing.alcoholName.toLowerCase().contains(query)) {
          results.add(pairing);
        }
      }
    }

    return results;
  }
}
