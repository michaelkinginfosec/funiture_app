import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funiture_app/core/widgets/custom_app_bar.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: CustomAppBar(
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
        onCartButtonPressed: () {
          Navigator.pushNamed(context, '/cartPage');
        },
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Image.asset(
              'assets/images/img1.png',
              // height: 200,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const Text(
                      'Halmar Chair',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const Text(
                      'This single light pendant lights brings mid-century modern style to your home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'Color',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white12),
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white12),
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white12),
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white12),
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white12),
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                    const Text('Quantity'),
                    Row(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              child: const Icon(Icons.remove),
                            ),
                            const Text('1'),
                            GestureDetector(
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        const Text('\$299')
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
