import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  List _pages = [
    HomePage(),
    Text('page2'),
    Text('page3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
          onTap: _onItemTabbed,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('account')),
          ]),
    );
  }

  void _onItemTabbed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
