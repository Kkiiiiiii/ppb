import 'package:flutter/material.dart';
import 'package:tugas_ppb/screens/Dashboard.dart';
import 'package:tugas_ppb/screens/DetailPembayaran.dart';
import 'ProfilePage.dart'; // Importing ProfilePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); 
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeDash(),
    DetailPay(),
    Center(
      child: Text('Ini halaman Cart'),
    ),
    Profilepage(),  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi IuranWarga'),
      ),
      body: 
      _pages[_selectedIndex],
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
              icon: Icon(Icons.history_rounded), label: 'Riwayat'),
          NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Payment'),
          NavigationDestination(
              icon: Icon(Icons.person_outlined), label: 'Profile'),
        ],
      ),
    );
  }
}
