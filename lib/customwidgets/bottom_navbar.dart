/*
This file contains the code that formats the bottom navigation bar
and the logic needed to navigate to each page
*/
import 'package:flair_pair/packages.dart';

class BottomNavBar extends StatelessWidget {
  final BottomNavBarVM viewModel;
  final BuildContext context;

  const BottomNavBar({super.key, required this.viewModel, required this.context});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF160A1D),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontFamily: 'ArchivoBlack'),
          unselectedLabelStyle: TextStyle(fontFamily: 'ArchivoBlack'),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Icon(Icons.favorite),
            ),
            label: 'My Favorites',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Icon(Icons.local_dining_sharp),
            ),
            label: 'Find Pairings',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: viewModel.selectedIndex,
        onTap: (index) {
          viewModel.selectTab(index);
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesPage()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => PairingsPage()));
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
          }
        },
      ),
    );
  }
}