import 'package:flutter/material.dart';
import 'package:pcos_app_v2/widgets/home_cycle_status_card.dart';
import 'package:pcos_app_v2/widgets/home_screen_header.dart';
import 'package:pcos_app_v2/widgets/log_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeScreenHeader(name: "Aria"),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: HomeCycleStatusCard(),
              ),
              //LogCard(),

            ],
          ),
        ),
      ),
    );
  }
}