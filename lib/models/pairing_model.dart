class PairingModel {
  final String foodName;
  final String alcoholName;
  final String pairingDescription;
  final List<String> keyIngredients;
  final String flavorProfile;
  final bool vegan;
  final bool glutenFree;

  PairingModel({
    required this.foodName,
    required this.alcoholName,
    required this.pairingDescription,
    required this.keyIngredients,
    required this.flavorProfile,
    required this.vegan,
    required this.glutenFree
  });
}

