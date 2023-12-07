import 'package:flair_pair/packages.dart';


class PairingsPage extends StatelessWidget {
  final PairingViewModel _pairingViewModel = PairingViewModel(PairingRepository());
  final BottomNavBarVM _viewModel = BottomNavBarVM();

  PairingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container (
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        color: const Color.fromRGBO(255, 255, 255, 0.75), // Transparent white background
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _searchController,
                onChanged: _onSearchTextChanged,
                decoration: const InputDecoration(
                  hintText: 'Search by food or alcohol to find pairings',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              _onSearchTextChanged('');
            },
          ),
        ],
      ),
    );
  } // end of search field build

  // update when text changes
void _onSearchTextChanged(String query) {
  setState(() {
    _searchResults = widget.pairingViewModel.searchPairings(query);
  });
}

// Widget function to build and display scrollable list of pairing search results
  Widget _buildResultsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {     // Define how each item in the list should be built
          PairingModel pairing = _searchResults[index];     // Get the PairingModel instance at the current index
        
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PairingDetailScreen(
                  foodName: pairing.foodName,
                  alcoholName: pairing.alcoholName,
                  pairingDescription: pairing.pairingDescription,
                  keyIngredients: pairing.keyIngredients,
                  flavorProfile: pairing.flavorProfile,
                  vegan: pairing.vegan,
                  glutenFree: pairing.glutenFree,
                  // Don't provide values for vegan and glutenFree
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

