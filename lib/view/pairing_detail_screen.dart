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
          padding: EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 10.0),
          child: Column(
            children: [
              // Title with larger font size
              Center(
                child: Text(
                  '$foodName and $alcoholName',
                  style: const TextStyle(
                    fontSize: 30.0, // Adjust the font size as needed
                    color: Colors.white,
                    fontFamily: 'ArchivoBlack',
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Other details & description
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$pairingDescription\n\n'
                  'Key Ingredients:\n${keyIngredients.join(", ")}\n\n'
                  'Flavor Profile:\n$flavorProfile\n\n'
                  'Vegan:\t ${vegan ? "Yes" : "No"}\n'
                  'Gluten-Free:\t ${glutenFree ? "Yes" : "No"}',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontFamily: 'Archivo',
                    height: 2.25,
                  )
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Back to Search Results'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }
}