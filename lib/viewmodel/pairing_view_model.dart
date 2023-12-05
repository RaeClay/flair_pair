import 'package:flair_pair/packages.dart';

class PairingViewModel extends ChangeNotifier {
  final PairingRepository _pairingRepository;

  PairingViewModel(this._pairingRepository);

  Map<String, List<PairingModel>> getAllPairings() {
    return _pairingRepository.getAllPairings();
  }
  
  // Function to search pairings based on a query
 List<PairingModel> searchPairings(String query) {
  if (query.isEmpty) {
    return []; // Return an empty list if the query is empty
  }

  query = query.toLowerCase();

  List<PairingModel> results = []; // Initialize a list to store search results

  // Iterate through allPairings, which is a map of alcohol types to lists of PairingModel
  _pairingRepository.getAllPairings().forEach((alcoholType, pairingList) {
    pairingList.forEach((pairing) {
      if (pairing.foodName.toLowerCase().contains(query) ||
          pairing.alcoholName.toLowerCase().contains(query)) {
        results.add(pairing);
      }
    });
  });

  return results;
}
}
