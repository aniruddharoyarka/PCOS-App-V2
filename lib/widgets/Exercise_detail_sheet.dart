import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:pcos_app_v2/widgets/exercise_modal.dart';
 void showExerciseDetailSheet(BuildContext context,ExerciseModel exercise)
 {
   showModalBottomSheet(
       context: context,
       isScrollControlled: true,
       backgroundColor: Colors.transparent,
       barrierColor: Colors.black.withOpacity(.35),
       builder: (_) => exerciseDetailsSheet(
           exercise: exercise)
   );



 }

class exerciseDetailsSheet extends StatefulWidget {
   final ExerciseModel exercise;
  const exerciseDetailsSheet({super.key , required this.exercise});

  @override
  State<exerciseDetailsSheet> createState() => _exerciseDetailsSheetState();
}

class _exerciseDetailsSheetState extends State<exerciseDetailsSheet> {
   bool isPlaying=false;
   YoutubePlayerController?playerController;//player controller variable which will store object of ytplayer controller
   void startVideo(){
     playerController=YoutubePlayerController(
       initialVideoId: widget.exercise.youtubeId,
       flags: const YoutubePlayerFlags(
         autoPlay: true,
         mute: false,
       )

     );
   }
  @override
  Widget build(BuildContext context) {


    return const Placeholder();
  }
}
