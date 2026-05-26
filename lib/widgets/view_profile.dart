

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorModel {

  final String name;
  final String speciality;
  final int rating;
  final int review;

  final double experience;
  final String location;
  final int fee;
  final String about;
  final String availabletime;




  DoctorModel({


    required this.name,
    required this.speciality,
    required this.rating,
    required this.review,
    required this.experience,
    required this.location,
    required this.fee,
    required this.about,


    required this.availabletime,


  });
}

class ViewProfile extends StatelessWidget {
  final List<DoctorModel> doctors;
  const ViewProfile({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
