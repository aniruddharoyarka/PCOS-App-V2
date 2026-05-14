import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCycleStatusCard extends StatelessWidget {
  const HomeCycleStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    const Color cardBackground = Color(0xFFF3EDF9); // Soft pastel purple
    const Color accentColor = Color(0xFF6D3CCB); // Deep purple for contrast
    const Color textColor = Color(0xFF1A1A24); // Dark charcoal for readability

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardBackground,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.water_drop_outlined,
                        color: accentColor,
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Cycle status",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Text(
                  "Your Cycle\nProgress",
                  style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "Next period in ~7 days",
                  style: TextStyle(
                    color: textColor.withOpacity(0.6),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: 90,
            height: 90,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: 1.0,
                  strokeWidth: 10,
                  color: Colors.white.withOpacity(0.6),
                ),
                const CircularProgressIndicator(
                  value: 18 / 28,
                  strokeWidth: 10,
                  strokeCap: StrokeCap.round,
                  color: accentColor,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "18",
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        "days",
                        style: TextStyle(
                          color: textColor.withOpacity(0.6),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}