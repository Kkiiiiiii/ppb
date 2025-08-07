import 'package:flutter/material.dart';
import 'ProfilePage.dart'; // Importing ProfilePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); 
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(
      child: Text('Ini halaman Beranda'),
    ),
    Center(
      child: Text('Ini halaman Bookmark'),
    ),
    Center(
      child: Text('Ini halaman Cart'),
    ),
    Profilepage(), // Assuming Profilepage is imported from ProfilePage.dart  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi B'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(
          milliseconds: 300,
        ),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_outlined), label: 'Dashboard'),
          NavigationDestination(
              icon: Icon(Icons.bookmark_border_outlined), label: 'Users'),
          NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Payment'),
          NavigationDestination(
              icon: Icon(Icons.person_outlined), label: 'Profile'),
        ],
      ),
    );
  }
}
