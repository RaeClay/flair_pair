import 'package:flair_pair/packages.dart';

class PairingRepository {
  final Map<String, List<PairingModel>> _allPairings = {
    'Wine': [
      PairingModel(
        foodName: 'Cheese',
        alcoholName: 'Wine',
        pairingDescription: 'A classic combination for wine enthusiasts.',
      ),
      PairingModel(
        foodName: 'Chocolate',
        alcoholName: 'Wine',
        pairingDescription: 'Indulge in the sweet harmony of chocolate and wine.',
      ),
      PairingModel(
        foodName: 'Grilled Vegetables',
        alcoholName: 'White Wine',
        pairingDescription: 'Lighten up with grilled veggies and a crisp white wine.',
      ),
    ],
    'Beer': [
      PairingModel(
        foodName: 'Steak',
        alcoholName: 'Red Wine',
        pairingDescription: 'A hearty steak with a robust red wine.',
      ),
      PairingModel(
        foodName: 'Pizza',
        alcoholName: 'Beer',
        pairingDescription: 'An all-time favorite pairing for a casual meal.',
      ),
      PairingModel(
        foodName: 'Pretzels',
        alcoholName: 'Beer',
        pairingDescription: 'Pretzels go well with a cold beer.',
      ),
    ],
    'Sake': [
      PairingModel(
        foodName: 'Sushi',
        alcoholName: 'Sake',
        pairingDescription: 'Enhance your sushi experience with a glass of sake.',
      ),
      PairingModel(
        foodName: 'Tempura',
        alcoholName: 'Sake',
        pairingDescription: 'Crispy tempura paired with a smooth sake.',
      ),
      PairingModel(
        foodName: 'Teriyaki Chicken',
        alcoholName: 'Sake',
        pairingDescription: 'Teriyaki chicken and sake, a delightful combination.',
      ),
    ],
    'IPA': [
      PairingModel(
        foodName: 'Buffalo Wings',
        alcoholName: 'IPA',
        pairingDescription: 'Kick up the heat with spicy wings and a hoppy IPA.',
      ),
    ],
    'Tequila': [
      PairingModel(
        foodName: 'Tacos',
        alcoholName: 'Tequila',
        pairingDescription: 'Salty, spicy tacos to complement Tequila.',
      ),
    ],
    'Chardonnay': [
      PairingModel(
        foodName: 'Oysters',
        alcoholName: 'Chardonnay',
        pairingDescription: 'Savor the briny goodness of oysters with a buttery Chardonnay.',
      ),
    ],
  }; // end of map (_allPairings) for hardcoded data

  Map<String, List<PairingModel>> getAllPairings() {
    return _allPairings;
  }

}