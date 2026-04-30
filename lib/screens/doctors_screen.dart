import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Healthcare Partners",
        style:  GoogleFonts.inter(
          fontSize: 27,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1E1B4B),
        ),),
        centerTitle:false,

      ),
    );
  }
}
