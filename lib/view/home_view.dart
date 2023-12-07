import 'package:flair_pair/packages.dart';

class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        decoration: BackgroundDeco.getRadialGradient(),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Expanded(
              flex: 5, // Adjusted flex for carousel
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 350,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                ),
                items: carouselItems,
              ),
            ),
            Expanded(
              flex: 3, // Increased flex for buttons to take more vertical space
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OnboardingPage1()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
                        ),
                        child: const Text('Tips', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    const SizedBox(width: 10), // Space between buttons
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement action for For you
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
                        ),
                        child: const Text('For you', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),
    );
  }
}
