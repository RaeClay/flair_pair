
import 'package:flair_pair/packages.dart';

class ExploreAllPairingsPage extends StatefulWidget {
  @override
  _ExploreAllPairingsPageState createState() => _ExploreAllPairingsPageState();
}

class _ExploreAllPairingsPageState extends State<ExploreAllPairingsPage> with SingleTickerProviderStateMixin {
  final PairingRepository _pairingRepository = PairingRepository();
  Map<String, List<PairingModel>> _sortedPairings = {};
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _sortedPairings = _pairingRepository.getAllPairings();
    _tabController = TabController(length: _sortedPairings.keys.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _sortedPairings.keys.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Explore All Pairings',
            style: TextStyle(
              fontFamily: 'ArchivoBlack',
              fontSize: 20,
            ),
          ),
          backgroundColor: const Color(0xFF160A1D),
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: _sortedPairings.keys.map((String category) => Tab(text: category)).toList(),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _sortedPairings.keys.map((String category) {
            List<PairingModel> pairings = _sortedPairings[category] ?? [];
            return ListView.separated(
              itemCount: pairings.length,
              itemBuilder: (context, index) {
                PairingModel pairing = pairings[index];
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
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text('${pairing.foodName} with ${pairing.alcoholName}'),
                    subtitle: Text(pairing.pairingDescription),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(color: Colors.grey[800]),
            );
          }).toList(),
        ),
      ),
    );
  }
}