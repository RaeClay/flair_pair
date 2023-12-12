import 'package:flair_pair/packages.dart';

class ExploreAllPairingsPage extends StatefulWidget {
  @override
  _ExploreAllPairingsPageState createState() => _ExploreAllPairingsPageState();
}

class _ExploreAllPairingsPageState extends State<ExploreAllPairingsPage> {
  final PairingRepository _pairingRepository = PairingRepository();
  Map<String, List<PairingModel>> _sortedPairings = {};

  @override
  void initState() {
    super.initState();
    _sortedPairings = _pairingRepository.getAllPairings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore All Pairings'),
      ),
      body: ListView.builder(
        itemCount: _sortedPairings.keys.length,
        itemBuilder: (context, index) {
          String alcoholType = _sortedPairings.keys.elementAt(index);
          List<PairingModel> pairings = _sortedPairings[alcoholType] ?? [];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  alcoholType,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...pairings.map((pairing) => ListTile(
                title: Text('${pairing.foodName} with ${pairing.alcoholName}'),
                subtitle: Text(pairing.pairingDescription),
              )).toList(),
            ],
          );
        },
      ),
    );
  }
}