import 'package:flutter/material.dart';

        void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
                title: 'FlairPair',
                theme: ThemeData(
                primarySwatch: Colors.blue,
      ),
        home: MyHomePage(),
    );
    }
}

class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _selectedIndex = 0;

    static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            ];

    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
                appBar: AppBar(
                title: Text('Flutter App with Nav Bar'),
      ),
        body: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
          ),
        BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
          ),
        BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
                selectedItemColor: Colors.blue[800],
                onTap: _onItemTapped,
      ),
    );
    }
}