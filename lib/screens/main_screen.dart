import 'package:flutter/material.dart';
import 'package:pcos_app_v2/screens/profile_screen.dart';
import 'package:pcos_app_v2/screens/statistics_screen.dart';
import 'package:pcos_app_v2/widgets/floating_nav_bar.dart';
import 'doctors_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    StatisticsScreen(),
    DoctorsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: IndexedStack(
                index: _selectedIndex,
                children: _pages,
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: FloatingNavBar(
                selectedIndex: _selectedIndex,
                onItemSelected: (index) {
                  setState(() => _selectedIndex = index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}