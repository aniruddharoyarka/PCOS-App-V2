import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HealthTagchip extends StatelessWidget {
  final String text;
  final IconData icon;

  const HealthTagchip({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar:Icon(
        icon,
        color: Color(0xFF6B4BA3),
        size: 18,

      ),
      label: Text(
        text,
        style: GoogleFonts.poppins(
          color: Colors.deepPurple,
        ),
      ),
        backgroundColor: const Color(0xFFF5EDFF),
        side: const BorderSide(
          color: Color(0xFFF5EDFF),
          width: 1,


        )
    );
  }
}
