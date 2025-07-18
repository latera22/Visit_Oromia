import 'package:flutter/material.dart';
import 'package:tourism/view/calendar.dart';
import 'package:tourism/view/homePage.dart';
import 'package:tourism/view/map.dart';
import 'package:tourism/view/menu.dart';
import 'package:tourism/view/search.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  static List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    EthiopiaMap(),
    CalendarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidebar(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Visit Ethiopia'),
      ),
      body: _currentIndex < _pages.length ? _pages[_currentIndex] : Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}