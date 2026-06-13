import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_app_v2/widgets/health_tagChip.dart';

class healthchip extends StatelessWidget {
  const healthchip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Health Hub",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.deepPurple

        ),),
        //SizedBox(height: 3,),
        Text("Personalized routines for your wellness journey",
        style: GoogleFonts.poppins(
           color: Colors.grey,
        ),),
        SizedBox(height: 5,),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            HealthTagchip(text: "Exercise",icon:Icons.fitness_center),
            HealthTagchip(text: "Skin Care",icon: Icons.face_retouching_natural,),
            HealthTagchip(text: "Hair Care",icon: Icons.dry,),
            HealthTagchip(text: "Doctor",icon:Icons.local_hospital,)
          ],
        )

      ],




    );
  }
}
