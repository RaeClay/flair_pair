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
              flex: 4, // Maintained flex for carousel
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
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 210, // Adjust width as needed
                      height: 130, // Adjust height as needed
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OnboardingPage1()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A1E24),
                          padding: EdgeInsets.zero, // Set padding to zero
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Stack(
                          children: [
                            const Align(
                              alignment: Alignment.topLeft, // Aligns 'Tips' text to the top left
                              child: Padding(
                                padding: EdgeInsets.only(top: 10, left: 20), // Padding for the 'Tips' text
                                child: Text(
                                  'Tips',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20, // Font size for 'Tips'
                                    fontFamily: 'ArchivoBlack', // Specified font family
                                  ),
                                ),
                              ),
                            ),
                            const Center( // Centered text
                              child: Text(
                                "How to pair like a pro...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Archivo', // Font size for the central text
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight, // Aligns the image to the bottom right
                              child: Padding(
                                padding: const EdgeInsets.all(10), // Padding for the image
                                child: Image.asset(
                                  'assets/images/tips-lightbulb.png', // Path to your image
                                  width: 35, // Set your desired width
                                  height: 35, // Set your desired height
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 210, // Adjust the width as needed
                      height: 130, // Adjust the height as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement action for 'For you'
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A1E24),
                          padding: EdgeInsets.zero, // Set padding to zero for consistency
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft, // Aligns text to the top left
                              child: Padding(
                                padding: EdgeInsets.only(top: 10, left: 20), // Padding for the text
                                child: Text(
                                  'Where to Pair',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20, // Font size
                                    fontFamily: 'ArchivoBlack', // Specified font family
                                  ),
                                ),
                              ),
                            ),
                            Center( // Centered text (Replace with your desired text)
                              child: Text(
                                "Find eateries nearby!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Archivo', // Font size for the central text
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight, // Position for an image or icon
                              child: Padding(
                                padding: EdgeInsets.all(10), // Padding for the image/icon
                                child: Icon(
                                  dining, // Example icon, replace with your desired icon or image
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
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

const IconData dining = IconData(0xe1cf, fontFamily: 'MaterialIcons');