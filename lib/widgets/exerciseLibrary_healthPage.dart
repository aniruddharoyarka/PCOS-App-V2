import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_app_v2/widgets/tagChip_exerciseLibrary_healthPage.dart';
class exerciseLibrary extends StatefulWidget {
  const exerciseLibrary({super.key});

  @override
  State<exerciseLibrary> createState() => _exerciseLibraryState();
}

class _exerciseLibraryState extends State<exerciseLibrary> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Exercise Library",style:GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,

        ) ,),
        SizedBox(height: 10,),
        Wrap(
          spacing: 4,
          runSpacing: 8,
          children: [

            TagchipExerciselibraryHealthpage(text: "All",),
            TagchipExerciselibraryHealthpage(text: "Walking",),
            TagchipExerciselibraryHealthpage(text: "Yoga",),
            TagchipExerciselibraryHealthpage(text: "Pilates",),
            TagchipExerciselibraryHealthpage(text: "Strength Training",),
          ],
        )
      ],
        ),
         );

  }
}
