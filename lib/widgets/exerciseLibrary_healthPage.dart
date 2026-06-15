import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_app_v2/widgets/tagChip_exerciseLibrary_healthPage.dart';
import 'package:pcos_app_v2/widgets/exercise_modal.dart';
import 'package:pcos_app_v2/widgets/exercise_card.dart';

class ExerciseLibrary extends StatefulWidget {
  const ExerciseLibrary({super.key});

  @override
  State<ExerciseLibrary> createState() => _ExerciseLibraryState();
}

class _ExerciseLibraryState extends State<ExerciseLibrary> {

  String selectedCategory = "All";

  final List<ExerciseModel> allExercises = [
    ExerciseModel(
      title: "Brisk Walk",
      category: "Walking",
      level: "Beginner",
      duration: "20 min",
      calories: "100 cal",
      icon: Icons.directions_walk,
    ),
    ExerciseModel(
      title: "Nature Walk",
      category: "Walking",
      level: "Beginner",
      duration: "30 min",
      calories: "120 cal",
      icon: Icons.directions_walk,
    ),
    ExerciseModel(
      title: "Sun Salutation",
      category: "Yoga",
      level: "Intermediate",
      duration: "15 min",
      calories: "80 cal",
      icon: Icons.self_improvement,
    ),
  ];

  List<ExerciseModel> get filteredExercises {
    if (selectedCategory == "All") return allExercises;

    return allExercises
        .where((e) => e.category == selectedCategory)
        .toList();
  }

  void changeCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Exercise Library",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),

          const SizedBox(height: 10),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              TagchipExerciselibraryHealthpage(
                text: "All",
                isSelected: selectedCategory == "All",
                onTap: () => changeCategory("All"),
              ),
              TagchipExerciselibraryHealthpage(
                text: "Walking",
                isSelected: selectedCategory == "Walking",
                onTap: () => changeCategory("Walking"),
              ),
              TagchipExerciselibraryHealthpage(
                text: "Yoga",
                isSelected: selectedCategory == "Yoga",
                onTap: () => changeCategory("Yoga"),
              ),
              TagchipExerciselibraryHealthpage(
                text: "Pilates",
                isSelected: selectedCategory == "Pilates",
                onTap: () => changeCategory("Pilates"),
              ),
              TagchipExerciselibraryHealthpage(
                text: "Strength Training",
                isSelected: selectedCategory == "Strength Training",
                onTap: () => changeCategory("Strength Training"),
              ),
            ],
          ),

          const SizedBox(height: 15),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredExercises.length,
            itemBuilder: (context, index) {
              final exercise = filteredExercises[index];

              return ExerciseCard(
                exercise: exercise,
                onTap: () {

                  showModalBottomSheet(
                    context: context,
                    builder: (_) => Container(
                      padding: const EdgeInsets.all(20),
                      child: Text(exercise.title),
                    ),
                  );
                },
              );
            },
          ),

        ],
      ),
    );
  }
}