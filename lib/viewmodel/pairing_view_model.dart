import 'package:flutter/material.dart';
import 'package:flair_pair/models/pairing_model.dart';
import 'package:flair_pair/repositories/pairing_repository.dart';

class PairingViewModel extends ChangeNotifier {
  final PairingRepository _pairingRepository;

  PairingViewModel(this._pairingRepository);

  List<List<PairingModel>> getAllPairings() {
    return _pairingRepository.getAllPairings();
  }
  
  // Function to search pairings based on a query
  List<PairingModel> searchPairings(String query) {
    if (query.isEmpty) {
      return []; // Return an empty list if the query is empty
    }
    query = query.toLowerCase();

    List<PairingModel> results = [];      // Initialize a list to store search results

  // Iterate through allPairings, which is a list of lists of PairingModel
   for (List<PairingModel> pairingList in _pairingRepository.getAllPairings()) {
      for (PairingModel pairing in pairingList) {
        if (pairing.foodName.toLowerCase().contains(query) ||
            pairing.alcoholName.toLowerCase().contains(query)) {
          results.add(pairing);
        }
      }
    }
    return results;
  } // end of search function
}
