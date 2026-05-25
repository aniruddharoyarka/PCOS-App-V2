import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Doctor {
  final String name;
  final String speciality;
  final String clinic;
  final String rating;
  final String time;

  final List<String> tags;


  Doctor({
    required this.name,
    required this.speciality,
    required this.clinic,
    required this.rating,
    required this.time,
    required this.tags,
  });
}


class RecommendedDoctor extends StatelessWidget {
  final List<Doctor> doctor;

  const RecommendedDoctor({super.key,required this.doctor});





  @override
  Widget build(BuildContext context) {
    return Container(


      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("Recommended Specialist",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Color(0xFF1E1B4B),
      ),
      ),

      SizedBox(height: 16),
        ...doctor.map(
        (doctor) =>  Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow:[ BoxShadow(
          blurRadius: 10,
          color: Colors.black12,

        )
        ]


      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 25,),
                SizedBox(width: 10,),
                Expanded
                  (child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(doctor.name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF1E1B4B)

                    ),),
                    Text(doctor.speciality,style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                          color:Colors.grey,
                        ),
                        SizedBox(width: 5,),
                        Text(doctor.clinic,style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                        )
                      ],
                    )
                  ],
                )
                ),
                Row(
                  children: [
                  const Icon(Icons.star, size: 16, color: Colors.orange),
                  Text(doctor.rating.toString()),
                 ]
                )
              ],
            ),







            const SizedBox(height: 10),

            Wrap(
              spacing: 7,
              children: doctor.tags
                  .map((tag) => Chip(label: Text(tag,
                style: TextStyle(
                  color: Color(0xFF6B4BA3)
                ),
              
              
              ),
                backgroundColor: const Color(0xFFF5EDFF),
                side: const BorderSide(
                  color: Color(0xFFF5EDFF),
                  width: 1,
                ),
              ))
                  .toList(),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(doctor.time,
                    overflow: TextOverflow.ellipsis,
                  style:
                    TextStyle(
                      color: Color(0xFF166534)
                    ),),
                ),
                TextButton(
                  onPressed: () {},
                  child:Row(
                  children: [const Text("View profile",
                  style: TextStyle(
                    color: Color(0xFF6B4BA3)
                  ),),
                    const SizedBox(width: 4),

                    const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Color(0xFF6B4BA3),
                    )
                  ]
                  )


                )

              ],
            )

          ],
        ),





      )





        ).toList(),
]
      )

    );
  }
}
