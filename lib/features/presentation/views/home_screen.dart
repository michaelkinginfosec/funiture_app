import 'package:flutter/material.dart';

import 'package:funiture_app/features/data/models/chairs_list.dart';
import 'package:funiture_app/features/presentation/widgets/custom_card.dart';
import 'package:funiture_app/features/presentation/widgets/product_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Furniture \nin your style',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 55, 109, 57),
                      Color.fromARGB(255, 79, 137, 81),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  clipBehavior:
                      Clip.none, // Allow the image to extend beyond the Stack
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, top: 40),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Elegant \nwhite chair ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '\$ 200',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right:
                          -20, // Adjust to control how much of the image extends outside
                      top: -70,
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/img8.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      onTap: () {},
                      text: "All",
                    ),
                    CustomCard(
                      onTap: () {},
                      text: "Chairs",
                    ),
                    CustomCard(
                      onTap: () {},
                      text: "Lamps",
                    ),
                    CustomCard(
                      onTap: () {},
                      text: "Clocks",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/productDetails');
                  },
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: chair.length,
                    itemBuilder: (context, int index) {
                      return ProductField(
                        image: chair[index].imagePath,
                        name: chair[index].name,
                        price: chair[index].price.toString(),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
