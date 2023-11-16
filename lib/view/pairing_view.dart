import 'package:flutter/material.dart';
import 'package:flair_pair/viewmodel/pairing_view_model.dart';
import 'package:flair_pair/view/bottom_navbar.dart';
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';
import 'package:flair_pair/view/customappbar.dart';
import 'package:flair_pair/models/pairing_model.dart';


class PairingsPage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: PairingsScreen(),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context), 
    );
  }
}

class PairingsScreen extends StatefulWidget {
  @override
  _PairingsScreenState createState() => _PairingsScreenState();
}

class _PairingsScreenState extends State<PairingsScreen> {
  PairingViewModel _pairingViewModel = PairingViewModel();
  TextEditingController _searchController = TextEditingController();
  List<PairingModel> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildSearchField(),
          SizedBox(height: 20),
          _buildResultsList(),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _searchController,
                onChanged: _onSearchTextChanged,
                decoration: InputDecoration(
                  hintText: 'Search by food or alcohol to find pairings',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              _onSearchTextChanged('');
            },
          ),
        ],
      ),
    );
  } // end of search field build

  // update when text changes
  void _onSearchTextChanged(String query) {
    setState(() {
      _searchResults = _pairingViewModel.searchPairings(query);
    });
  }

// Widget function to build and display scrollable list of pairing search results
  Widget _buildResultsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {     // Define how each item in the list should be built
          PairingModel pairing = _searchResults[index];     // Get the PairingModel instance at the current index
        
        return Card(    // return search results as listview of cards
          margin: EdgeInsets.all(8.0),
          elevation: 5.0,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          // The content of the Card
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(       // Display both foodName and alcoholName in the title
                  '${pairing.foodName} and ${pairing.alcoholName}',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),      // Display pairingDescription in the subtitle
                Text(
                  pairing.pairingDescription,
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
          ),
        );
        },
      ),
    );
  } // end of results listview build
}



