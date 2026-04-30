import 'package:flutter/material.dart';

class FloatingNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const FloatingNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 24, left: 8, right: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final itemWidth = constraints.maxWidth / 4;

          return Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOutCubic,
                left: selectedIndex * itemWidth + (itemWidth * 0.1),
                child: Container(
                  width: itemWidth * 0.8,
                  height: 54,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1E9F9),
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),

              Row(
                children: [
                  _item(Icons.home_outlined, Icons.home_rounded, "Home", 0),
                  _item(Icons.bar_chart_rounded, Icons.bar_chart_rounded, "Stats", 1),
                  _item(Icons.medical_services_outlined, Icons.medical_services_rounded, "Doctors", 2),
                  _item(Icons.person_outline, Icons.person_rounded, "Profile", 3),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _item(IconData inactiveIcon, IconData activeIcon, String label, int index) {
    final isActive = selectedIndex == index;
    const activeColor = Color(0xFF6B4BA3);
    const inactiveColor = Color(0xFFB5A8C6);

    return Expanded(
      child: GestureDetector(
        onTap: () => onItemSelected(index),
        behavior: HitTestBehavior.opaque,
        child: SizedBox(
          height: 54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedScale(
                scale: isActive ? 1.05 : 1.0,
                duration: Duration(milliseconds: 250),
                child: Icon(
                  isActive ? activeIcon : inactiveIcon,
                  size: 26,
                  color: isActive ? activeColor : inactiveColor,
                ),
              ),
              SizedBox(height: 2),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                  color: isActive ? activeColor : inactiveColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}