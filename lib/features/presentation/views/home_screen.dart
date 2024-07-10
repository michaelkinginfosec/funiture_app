import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                'Furniture \n in your style',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 29, 133, 83),
                      Color.fromARGB(255, 74, 187, 132),
                    ],
                  ),
                ),
                child: Positioned(
                  top: 50,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Elegant\n white chir',
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '\$200',
                          ),
                        ],
                      ),
                      Image.asset('asset/images/')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
