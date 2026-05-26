

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
  final String image;
  final List<String> tags;




  DoctorModel({


    required this.name,
    required this.speciality,
    required this.rating,
    required this.review,
    required this.experience,
    required this.location,
    required this.fee,
    required this.about,
    required this.image,
    required this.tags,



    required this.availabletime,


  });
}

class ViewProfile extends StatelessWidget {
  final List<DoctorModel> doctors;
  const ViewProfile({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:20 ,right: 20,top: 16),
      color: const Color(0xFFFAF6FF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 70,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),


              ],
            ),
          SizedBox(height: 30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            CircleAvatar(
            radius: 34,
            //backgroundImage: NetworkImage(doctors[index].image),
            )
]
    )


        ],
      ),

    );
  }
}
