import 'package:flair_pair/packages.dart';

class FavoritesPage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: const Center(
        child: Text('This is the Favorites Page'),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}