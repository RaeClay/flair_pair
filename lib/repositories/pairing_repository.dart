import 'package:flair_pair/packages.dart';

class PairingRepository {
  final Map<String, List<PairingModel>> _allPairings = {
    'Wine': [
      PairingModel(
        foodName: 'Cheese',
        alcoholName: 'Wine',
        pairingDescription: 'A classic combination for wine enthusiasts.',
        keyIngredients: ['Cheese', 'Wine'],
        flavorProfile: 'Classic',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Chocolate',
        alcoholName: 'Wine',
        pairingDescription: 'Indulge in the sweet harmony of chocolate and wine.',
        keyIngredients: ['Chocolate', 'Wine'],
        flavorProfile: 'Sweet',
        vegan: true,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Grilled Vegetables',
        alcoholName: 'White Wine',
        pairingDescription: 'Lighten up with grilled veggies and a crisp white wine.',
        keyIngredients: ['Grilled Vegetables', 'White Wine'],
        flavorProfile: 'Fresh',
        vegan: true,
        glutenFree: true,
      ),
    ],
    'Beer': [
      PairingModel(
        foodName: 'Pizza',
        alcoholName: 'Beer',
        pairingDescription: 'An all-time favorite pairing for a casual meal.',
        keyIngredients: ['Pizza', 'Beer'],
        flavorProfile: 'Comforting',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Pretzels',
        alcoholName: 'Beer',
        pairingDescription: 'Pretzels go well with a cold beer.',
        keyIngredients: ['Pretzels', 'Beer'],
        flavorProfile: 'Salty',
        vegan: true,
        glutenFree: false,
      ),
    ],
    'Sake': [
      PairingModel(
        foodName: 'Sushi',
        alcoholName: 'Sake',
        pairingDescription: 'Enhance your sushi experience with a glass of sake.',
        keyIngredients: ['Sushi', 'Sake'],
        flavorProfile: 'Umami',
        vegan: false,
        glutenFree: true,
      ),
      PairingModel(
        foodName: 'Tempura',
        alcoholName: 'Sake',
        pairingDescription: 'Crispy tempura paired with a smooth sake.',
        keyIngredients: ['Tempura', 'Sake'],
        flavorProfile: 'Crispy',
        vegan: false,
        glutenFree: false,
      ),
      PairingModel(
        foodName: 'Teriyaki Chicken',
        alcoholName: 'Sake',
        pairingDescription: 'Teriyaki chicken and sake, a delightful combination.',
        keyIngredients: ['Teriyaki Chicken', 'Sake'],
        flavorProfile: 'Savory',
        vegan: false,
        glutenFree: false,
      ),
    ],
    'IPA': [
      PairingModel(
        foodName: 'Buffalo Wings',
        alcoholName: 'IPA',
        pairingDescription: 'Kick up the heat with spicy wings and a hoppy IPA.',
        keyIngredients: ['Buffalo Wings', 'IPA'],
        flavorProfile: 'Spicy',
        vegan: false,
        glutenFree: true,
      ),
    ],
    'Tequila': [
      PairingModel(
        foodName: 'Tacos',
        alcoholName: 'Tequila',
        pairingDescription: 'Salty, spicy tacos to complement Tequila.',
        keyIngredients: ['Tacos', 'Tequila'],
        flavorProfile: 'Spicy',
        vegan: true,
        glutenFree: true,
      ),
    ],
    'Chardonnay': [
      PairingModel(
        foodName: 'Oysters',
        alcoholName: 'Chardonnay',
        pairingDescription: 'Savor the briny goodness of oysters with a buttery Chardonnay.',
        keyIngredients: ['Oysters', 'Chardonnay'],
        flavorProfile: 'Buttery',
        vegan: false,
        glutenFree: true,
      ),
    ],
  }; // end of map (_allPairings) for hardcoded data

  Map<String, List<PairingModel>> getAllPairings() {
    return _allPairings;
  }
}