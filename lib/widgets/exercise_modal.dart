
import 'package:flutter/material.dart';
class ExerciseModel {
  final String title;
  final String category;
  final String level;
  final String duration;
  final String calories;
  final IconData icon;

  const ExerciseModel({
    required this.title,
    required this.category,
    required this.level,
    required this.duration,
    required this.calories,
    required this.icon,
  });
}