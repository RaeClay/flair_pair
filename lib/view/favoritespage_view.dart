import 'package:flair_pair/packages.dart';


class FavoritesPage extends StatefulWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  FavoritesPage({super.key});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        decoration: BackgroundDeco.getRadialGradient(),
        child: GridView.builder(
          itemCount: globalFavorites.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (context, index) {
            final PairingModel pairing = globalFavorites[index];
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
                        pairing.flavorProfile,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: Icon(
                          globalFavorites.contains(pairing) ? Icons.favorite : Icons.favorite_border,
                          color: globalFavorites.contains(pairing) ? Colors.red : null,
                        ),
                        onPressed: () {
                          _toggleFavorite(pairing);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: widget.viewModel, context: context),
    );
  }

  void _toggleFavorite(PairingModel pairing) {
    setState(() {
      final isInFavorites = globalFavorites.contains(pairing);
      if (isInFavorites) {
        globalFavorites.remove(pairing);
      } else {
        globalFavorites.add(pairing);
      }
    });
  }
}