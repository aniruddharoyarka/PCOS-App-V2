import 'package:flutter/material.dart';
import 'package:pcos_app_v2/widgets/home_cycle_status_card.dart';
import 'package:pcos_app_v2/widgets/home_screen_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  HomeScreenHeader(name: "Aria"),
                  SizedBox(height: 10),
                  HomeCycleStatusCard(),
                ],
              ),
            )
        )
      ),
    );
  }
}
