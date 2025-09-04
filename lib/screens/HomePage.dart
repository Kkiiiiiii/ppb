import 'package:flutter/material.dart';
import 'package:tugas_ppb/screens/Dashboard.dart';
import 'package:tugas_ppb/screens/DetailPembayaran.dart';
import 'package:tugas_ppb/screens/ProfilePage.dart';
class HomePage extends StatefulWidget {
  final String token;
  final int userId;

  const HomePage({super.key, required this.token, required this.userId});

  @override
  State<HomePage> createState() => _HomePageState(); 
}
//kelas yang menyimpan data dinamis
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; //var yang menyimpan indeks tab yg aktif

   //Daftar widget halaman yg ditampilkan brdasarkan tab yg dipilih
   late final  List<Widget> _pages;

   @override
   void initState(){
    super.initState();
    _pages = [
      HomeDash(),
      DetailPay(),
      const Center(child: Text('ini hal cart'),),
      Profilepage(userId: widget.userId),
    ];
   }

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
              icon: Icon(Icons.home_outlined),selectedIcon: Icon(Icons.home_rounded), label: 'Dashboard'),
          NavigationDestination(
              icon: Icon(Icons.history_outlined),selectedIcon: Icon(Icons.history), label: 'Riwayat'),
          NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined),selectedIcon: Icon(Icons.shopping_bag), label: 'Payment'),
          NavigationDestination(
              icon: Icon(Icons.person_outlined),selectedIcon: Icon(Icons.person_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}
