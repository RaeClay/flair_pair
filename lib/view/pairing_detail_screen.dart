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
    Key? key,
    required this.foodName,
    required this.alcoholName,
    required this.pairingDescription,
    required this.keyIngredients,
    required this.flavorProfile,
    required this.vegan,
    required this.glutenFree,
  }) : super(key: key);

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
              // Title with larger font size
              Center(
                child: Text(
                  '$foodName and $alcoholName',
                  style: const TextStyle(
                    fontSize: 28.0, // Adjust the font size as needed
                    color: Colors.white,
                    fontFamily: 'ArchivoBlack',
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              // Other details
              _buildText(pairingDescription),
              _buildText('Key Ingredients: ${keyIngredients.join(", ")}'),
              _buildText('Flavor Profile: $flavorProfile'),
              _buildText('Vegan: ${vegan ? "Yes" : "No"}'),
              _buildText('Gluten-Free: ${glutenFree ? "Yes" : "No"}'),
            
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontFamily: 'Archivo',
          height: 1.5,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}