import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key,required this.username});
String username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Welcome ${widget.username}'),
      ),
      bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Anasayfa',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Arama',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profil',
    ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.blue,
    onTap: _onItemTapped,
    ),

    );

  }
}
