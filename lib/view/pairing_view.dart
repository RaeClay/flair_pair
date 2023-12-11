import 'package:flair_pair/packages.dart';

// PairingsPage is a StatelessWidget representing the main page for pairings.
class PairingsPage extends StatelessWidget {
  // ViewModel for managing pairings data.
  final PairingViewModel _pairingViewModel = PairingViewModel(PairingRepository());

  // ViewModel for the bottom navigation bar.
  final BottomNavBarVM _viewModel = BottomNavBarVM();

  // Constructor for PairingsPage.
  PairingsPage({super.key});

  // Build method to define the widget's UI.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with custom styling.
      appBar: const CustomAppBar(),
      body: Container(
        // Background UI deco.
        decoration: BackgroundDeco.getRadialGradient(),
        // Main content represented by PairingsScreen widget.
        child: PairingsScreen(pairingViewModel: _pairingViewModel),
      ),
      // Bottom navigation bar with custom ViewModel.
      bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }
}

// PairingsScreen is a StatefulWidget representing the screen that displays pairings.
class PairingsScreen extends StatefulWidget {
  // ViewModel for managing pairings data.
  final PairingViewModel pairingViewModel;

  // Constructor for PairingsScreen.
  const PairingsScreen({super.key, required this.pairingViewModel});

  @override
  _PairingsScreenState createState() => _PairingsScreenState();
}

class _PairingsScreenState extends State<PairingsScreen> {
  // Controller for handling text input in the search field.
  final TextEditingController _searchController = TextEditingController();
  
  // List to store search results based on user input.
  List<PairingModel> _searchResults = [];

  // Build method to define the widget's UI.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Search field widget for user input.
          _buildSearchField(),
          const SizedBox(height: 20),
          // Results list widget displaying pairings.
          _buildResultsList(),
        ],
      ),
    );
  }

  // Widget to build the search field for user input.
  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      style: const TextStyle(color: Colors.white,
        fontFamily: 'ArchivoBlack'),
      decoration: const InputDecoration(
        labelText: 'Search Pairings',
        labelStyle: TextStyle(color: Colors.white,
          fontFamily: 'ArchivoBlack'),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(),
      ),
      onChanged: _onSearchTextChanged,
      cursorColor: Colors.white,
    );
  }

  // Method to handle changes in the search field text.
  void _onSearchTextChanged(String query) {
    setState(() {
      // Update search results based on the user's input.
      _searchResults = widget.pairingViewModel.searchPairings(query);
    });
  }

  // Widget to build the list of search results.
  Widget _buildResultsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          final pairing = _searchResults[index];
          return InkWell(
            onTap: () {
              // Navigate to PairingDetailScreen when a pairing is tapped.
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PairingDetailScreen(
                    // Pass pairing details to PairingDetailScreen.
                    foodName: pairing.foodName,
                    alcoholName: pairing.alcoholName,
                    pairingDescription: pairing.pairingDescription,
                    keyIngredients: pairing.keyIngredients,
                    flavorProfile: pairing.flavorProfile,
                    vegan: pairing.vegan,
                    glutenFree: pairing.glutenFree,
                  ),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 5.0,
              clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display pairing names.
                    Text(
                      '${pairing.foodName} and ${pairing.alcoholName}',
                      style: const TextStyle(fontSize: 20.0, 
                        fontFamily: 'ArchivoBlack'),
                    ),
                    const SizedBox(height: 8.0),
                    // Display pairing description with a smaller font size.
                    Text(
                      pairing.pairingDescription,
                      style: const TextStyle(fontSize: 14.0, 
                        fontFamily: 'Archivo'),
                    ),
                    // IconButton for adding/removing pairings from favorites.
                    IconButton(
                      icon: Icon(
                        globalFavorites.contains(pairing) ? Icons.favorite : Icons.favorite_border,
                        color: globalFavorites.contains(pairing) ? Colors.red : null,
                      ),
                      onPressed: () {
                        setState(() {
                          // Toggle pairing's favorite status when the IconButton is pressed.
                          if (globalFavorites.contains(pairing)) {
                            globalFavorites.remove(pairing);
                          } else {
                            globalFavorites.add(pairing);
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}