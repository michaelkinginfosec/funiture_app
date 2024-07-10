import 'package:flutter/material.dart';

class CustomSelectedIcon extends StatelessWidget {
  final IconData icon;

  const CustomSelectedIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon,
          color: Colors.black,
          // size: 30,
        ),
      ),
    );
  }
}
