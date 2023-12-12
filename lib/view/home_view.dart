
import 'package:flair_pair/packages.dart';

class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Home',),
      body: Container(
        decoration: BackgroundDeco.getRadialGradient(),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'FEATURED PAIRINGS',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'ArchivoBlack',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 4,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 350,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                ),
                items: carouselItems,
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'EXPLORE',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'ArchivoBlack',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      title: 'Tips',
                      icon: Image.asset('assets/images/tips-lightbulb.png', width: 35, height: 35),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const OnboardingPage1()),
                        );
                      },
                    ),
                    const SizedBox(width: 10), // Spacing between buttons
                    CustomButton(
                      title: 'View All Pairings',
                      icon: Icon(Icons.map, color: Colors.white, size: 35),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ExploreAllPairingsPage(),
                          ),
                        );
                      },
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

class CustomButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onPressed;

  CustomButton({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    const double maxButtonWidth = 140.0; // Fixed maximum width for each button
    const double maxButtonHeight = 150.0;

    return Container(
      width: maxButtonWidth,
      height: maxButtonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF0A1E24),
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'ArchivoBlack',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const IconData dining = IconData(0xe1cf, fontFamily: 'MaterialIcons');