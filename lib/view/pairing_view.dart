import 'package:flair_pair/packages.dart';

class PairingsPage extends StatelessWidget {
  final PairingViewModel _pairingViewModel = PairingViewModel(PairingRepository());
  final BottomNavBarVM _viewModel = BottomNavBarVM();

  PairingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        decoration: BackgroundDeco.getRadialGradient(),
        child: PairingsScreen(pairingViewModel: _pairingViewModel),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }
}

class PairingsScreen extends StatefulWidget {
  final PairingViewModel pairingViewModel;

  const PairingsScreen({super.key, required this.pairingViewModel});

  @override
  _PairingsScreenState createState() => _PairingsScreenState();
}

class _PairingsScreenState extends State<PairingsScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<PairingModel> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildSearchField(),
          const SizedBox(height: 20),
          _buildResultsList(),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        labelText: 'Search Pairings',
        labelStyle: TextStyle(color: Colors.white),
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

  void _onSearchTextChanged(String query) {
    setState(() {
      _searchResults = widget.pairingViewModel.searchPairings(query);
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
                      style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      pairing.pairingDescription,
                      style: const TextStyle(fontSize: 14.0),
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