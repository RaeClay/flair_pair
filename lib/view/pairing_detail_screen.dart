import 'package:flair_pair/packages.dart';

class PairingDetailScreen extends StatelessWidget {
  final BottomNavBarVM _viewModel = BottomNavBarVM();
  final String foodName;
  final String alcoholName;
  final String pairingDescription;
  final List<String> keyIngredients;
  final String flavorProfile;
  final bool vegan;
  final bool glutenFree;

  PairingDetailScreen({
    required this.foodName,
    required this.alcoholName,
    required this.pairingDescription,
    required this.keyIngredients,
    required this.flavorProfile,
    required this.vegan,
    required this.glutenFree,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        decoration: BackgroundDeco.getRadialGradient(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          // Replace with image or asset decoration
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text('Food: $foodName'),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          // Replace with image or asset decoration
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text('Alcohol: $alcoholName'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                'Description: $pairingDescription',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Key Ingredients: ${keyIngredients.join(", ")}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Flavor Profile: $flavorProfile',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Vegan: ${vegan ? "Yes" : "No"}',
                style: const TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Gluten-Free: ${glutenFree ? "Yes" : "No"}',
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }
}