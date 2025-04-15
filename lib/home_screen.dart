import 'package:flutter/material.dart';

import 'home_tabs/home_tab.dart';
import 'home_tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _tabs = [
    HomeTab(),
    SettingsTab(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coucou'),
        backgroundColor: _currentIndex == 0 ? Colors.blue : Colors.purple,
        centerTitle: true,
        leading: Icon(Icons.add),
        actions: [
          Icon(Icons.add),
          Icon(Icons.abc),
        ],
      ),
      body: _tabs[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: _currentIndex == 0 ? Colors.blue : Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _currentIndex = 0;
          });
        }
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
          print('New currentIndex = $_currentIndex');
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
