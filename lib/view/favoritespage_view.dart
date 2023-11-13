import 'package:flutter/material.dart';


class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
      ),
      body: Center(
        child: Text('This is the Favorites Page'),
      ),
    );
  }
}