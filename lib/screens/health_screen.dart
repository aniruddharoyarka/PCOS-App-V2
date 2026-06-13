import 'package:flutter/material.dart';
import 'package:pcos_app_v2/widgets/header_tagchips_healthPage.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 45, 12, 10),
      child: Column(
        children: [
          healthchip(),
        ],
      ),


    );
  }
}
