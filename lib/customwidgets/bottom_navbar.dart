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
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home), // Icon for Home
          label: 'Home', // Label for Home
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'My Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_dining_sharp),
          label: 'Find Pairings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: viewModel.selectedIndex,
      onTap: (index) {
        viewModel.selectTab(index);
        switch (index) {
          case 0:
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())); // Navigate to HomePage
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
    );
  }
}