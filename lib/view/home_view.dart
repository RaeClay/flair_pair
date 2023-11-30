import 'package:flair_pair/packages.dart';

class HomePage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        decoration: BackgroundDeco.getRadialGradient(),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
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
                          // Implement action for Tips
                        },
                        child: Text('Tips', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between buttons
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement action for For you
                        },
                        child: Text('For you', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
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
