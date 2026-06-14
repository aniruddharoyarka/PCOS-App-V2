import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TagchipExerciselibraryHealthpage extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;


  const TagchipExerciselibraryHealthpage({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return Chip(
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
