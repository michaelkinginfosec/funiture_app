import 'package:flutter/material.dart';

class ProductField extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  const ProductField({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade800,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 200,
                width: 200,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ProductField extends StatelessWidget {
//   const ProductField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(decoration: BoxDecoration(

//     ),);
//   }
// }
