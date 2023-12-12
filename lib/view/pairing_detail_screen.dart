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
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Title with larger font size
              Center(
                child: Text(
                  '$foodName and $alcoholName',
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: 'ArchivoBlack',
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Other details & description smaller font
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(25.0),
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
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.all(Colors.blue), // Change the text color as needed
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'ArchivoBlack',
                      fontSize: 16.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 8.0),
                    Text('Back to Search Results'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }
}