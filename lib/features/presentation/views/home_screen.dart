import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            'Furniture \n in your style',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      )),
    );
  }
}
