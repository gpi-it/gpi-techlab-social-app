import 'package:flutter/material.dart';
import 'temp_tabs.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  // store the tab index in an integer
  int _currentIndex = 0;
  // list of Widgets for each tab
  final List<Widget> _children = [
    PlaceholderWidget(Colors.black),
    PlaceholderWidget(Colors.red),
    PlaceholderWidget(Colors.blue),
  ];
  // event handler for tapping on a bottom bar tab
  void onTabTapped(int index) {
    // trigger build() every time the tab index changes
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GPI Social App'),
      ),
      body: _children[_currentIndex],
      // Create the widget bottom bar and implements 3 tabs, store the index and fire on tap event
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            title: Text('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
