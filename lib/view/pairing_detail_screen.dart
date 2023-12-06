import 'package:flair_pair/packages.dart';


class PairingDetailScreen extends StatelessWidget {
  final BottomNavBarVM _viewModel = BottomNavBarVM();
  final String foodName;
  final String alcoholName;
  final String pairingDescription;

  PairingDetailScreen({super.key, 
    required this.foodName,
    required this.alcoholName,
    required this.pairingDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue, // Replace with your image or asset
                      // Add image or asset decoration
                    ),
                    const SizedBox(height: 8.0),
                    Text('Food: $foodName'),
                  ],
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red, // Replace with your image or asset
                      // Add image or asset decoration
                    ),
                    const SizedBox(height: 8.0),
                    Text('Alcohol: $alcoholName'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text(
              'Description: $pairingDescription',
              style: const TextStyle(fontSize: 16.0),
            ),
            // Add more details as needed
          ],
        ),
      ),
    bottomNavigationBar: BottomNavBar(viewModel: _viewModel, context: context),
    );
  }
}