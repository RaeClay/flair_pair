import 'package:flair_pair/packages.dart';

class ProfilePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text('This is the Profile Page'),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}