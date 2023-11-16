import 'package:flair_pair/models/pairing_model.dart';

class PairingRepository {
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
  ]; // end of list of lists (_allPairings) for hardcoded data

  List<List<PairingModel>> getAllPairings() {
    return _allPairings;
  }

}