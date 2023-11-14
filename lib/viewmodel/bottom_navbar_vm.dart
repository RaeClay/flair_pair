
/* Navigation Bar View Model */

class BottomNavBarVM {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void selectTab(int index) {
    _selectedIndex = index;
    // Add any additional logic that should occur when a tab is selected
  }
}