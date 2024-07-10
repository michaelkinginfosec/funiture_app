// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  const CustomCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 100,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Card(
          elevation: 0,
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
