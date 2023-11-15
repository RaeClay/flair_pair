import 'package:flutter/material.dart';
import 'package:flair_pair/viewmodel/pairing_view_model.dart';
import 'bottom_navbar.dart';
import 'package:flair_pair/viewmodel/bottom_navbar_vm.dart';
import 'package:flair_pair/view/customappbar.dart';
import 'package:flair_pair/models/pairing_model.dart';


class PairingsPage extends StatelessWidget {
  final BottomNavBarVM viewModel = BottomNavBarVM(); // turned off for rn
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: PairingsScreen(),
      bottomNavigationBar: BottomNavBar(viewModel: viewModel, context: context),  // turned off for rn
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
                  hintText: 'Enter your search query',
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
  }

  void _onSearchTextChanged(String query) {
    setState(() {
      _searchResults = _pairingViewModel.searchPairings(query);
    });
  }

  Widget _buildResultsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          PairingModel pairing = _searchResults[index];
          return ListTile(
            title: Text(pairing.foodName),
            subtitle: Text(pairing.alcoholName),
          );
        },
      ),
    );
  }
}



