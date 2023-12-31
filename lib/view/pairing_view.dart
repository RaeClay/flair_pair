import 'package:flair_pair/packages.dart';

class PairingsPage extends StatelessWidget {
  final PairingViewModel _pairingViewModel = PairingViewModel(PairingRepository());
  final BottomNavBarVM _viewModel = BottomNavBarVM();

  // Constructor for PairingsPage.
  PairingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Pairing Search',),
      body: Container(
        decoration: BackgroundDeco.getRadialGradient(),
        // Main content represented by PairingsScreen widget.
        child: PairingsScreen(pairingViewModel: _pairingViewModel),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }
}

// PairingsScreen is a StatefulWidget representing the screen that displays pairings
class PairingsScreen extends StatefulWidget {
  final PairingViewModel pairingViewModel;
  const PairingsScreen({super.key, required this.pairingViewModel});

  @override
  _PairingsScreenState createState() => _PairingsScreenState();
}

class _PairingsScreenState extends State<PairingsScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<PairingModel> _searchResults = [];
  bool _showOnlyVegan = false;
  bool _showOnlyGlutenFree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildSearchField(),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                'Vegan',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontFamily: 'Archivo'
                ),
              ),
              Switch(
                value: _showOnlyVegan,
                onChanged: (value) {
                  setState(() {
                    _showOnlyVegan = value;
                    _onSearchTextChanged(_searchController.text);
                  });
                },
              ),
              const Text(
                'Gluten-free',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontFamily: 'Archivo'
                ),
              ),
              Switch(
                value: _showOnlyGlutenFree,
                onChanged: (value) {
                  setState(() {
                    _showOnlyGlutenFree = value;
                    _onSearchTextChanged(_searchController.text);
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          _buildResultsList(),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      style: const TextStyle(color: Colors.white, fontFamily: 'Archivo'),
      decoration: InputDecoration(
        labelText: 'Search Pairings',
        labelStyle: const TextStyle(color: Colors.white, fontFamily: 'ArchivoBlack'),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 3.0),
          borderRadius: BorderRadius.circular(20.0), 
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0), 
        ),
      ),
      onChanged: _onSearchTextChanged,
      cursorColor: Colors.white,
    );
  }

  void _onSearchTextChanged(String query) {
    setState(() {
      _searchResults = widget.pairingViewModel.searchPairings(query);
      if (_showOnlyVegan) {
        _searchResults = _searchResults.where((pairing) => pairing.vegan).toList();
      }
      if (_showOnlyGlutenFree) {
      _searchResults = _searchResults.where((pairing) => pairing.glutenFree).toList();
    }
    });
  }

  Widget _buildResultsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          final pairing = _searchResults[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PairingDetailScreen(
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
                    Text(
                      '${pairing.foodName} and ${pairing.alcoholName}',
                      style: const TextStyle(fontSize: 20.0, fontFamily: 'ArchivoBlack'),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      pairing.flavorProfile,
                      style: const TextStyle(fontSize: 14.0, fontFamily: 'Archivo'),
                    ),
                    IconButton(
                      icon: Icon(
                        globalFavorites.contains(pairing) ? Icons.favorite : Icons.favorite_border,
                        color: globalFavorites.contains(pairing) ? Colors.red : null,
                      ),
                      onPressed: () {
                        setState(() {
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