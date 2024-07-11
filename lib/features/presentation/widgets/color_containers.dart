import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const ColorContainer({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          border: isSelected ? Border.all(width: 2, color: Colors.white) : null,
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
