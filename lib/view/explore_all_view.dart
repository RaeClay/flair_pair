
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
          title: Text('Explore All Pairings'),
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
                return ListTile(
                  title: Text('${pairing.foodName} with ${pairing.alcoholName}'),
                  subtitle: Text(pairing.pairingDescription),
                );
              },
              separatorBuilder: (context, index) => Divider(), // Adding a Divider here
            );
          }).toList(),
        ),
      ),
    );
  }
}
