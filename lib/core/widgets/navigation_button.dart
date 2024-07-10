import 'package:flutter/material.dart';

class CustomSelectedIcon extends StatelessWidget {
  final IconData icon;

  const CustomSelectedIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
