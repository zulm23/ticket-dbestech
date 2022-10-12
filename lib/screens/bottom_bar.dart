import 'package:dbestech/screens/profile_screen.dart';
import 'package:dbestech/screens/search_screen.dart';
import 'package:dbestech/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.greenAccent,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        // onTap: (value) => _onItemTapped(value),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Ticket'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile'),
        ],
      ),
    );
  }
}
