import 'package:flutter/material.dart';

import 'package:funiture_app/core/widgets/custom_app_bar.dart';
import 'package:funiture_app/features/presentation/widgets/color_containers.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  Color? selectedColor;

  void selectColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Halmar Chair',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This single light pendant lights brings mid-century modern style to your home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Colors',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        ColorContainer(
                          color: const Color.fromARGB(255, 27, 50, 28),
                          isSelected: selectedColor ==
                              const Color.fromARGB(255, 27, 50, 28),
                          onTap: () => selectColor(
                              const Color.fromARGB(255, 27, 50, 28)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ColorContainer(
                          color: const Color.fromARGB(228, 235, 228, 27),
                          isSelected: selectedColor ==
                              const Color.fromARGB(228, 235, 228, 27),
                          onTap: () => selectColor(
                              const Color.fromARGB(228, 235, 228, 27)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ColorContainer(
                          color: const Color.fromARGB(255, 41, 32, 109),
                          isSelected: selectedColor ==
                              const Color.fromARGB(255, 41, 32, 109),
                          onTap: () => selectColor(
                              const Color.fromARGB(255, 41, 32, 109)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ColorContainer(
                          color: const Color.fromARGB(255, 141, 160, 142),
                          isSelected: selectedColor ==
                              const Color.fromARGB(255, 141, 160, 142),
                          onTap: () => selectColor(
                            const Color.fromARGB(255, 141, 160, 142),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ColorContainer(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          isSelected: selectedColor ==
                              const Color.fromARGB(255, 0, 0, 0),
                          onTap: () => selectColor(
                            const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Quantity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                                color: Color.fromARGB(255, 21, 64, 43),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              child: const Icon(
                                Icons.add,
                                size: 30,
                                color: Color.fromARGB(255, 21, 64, 43),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '\$299',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 110, 130, 120),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                              child: Text(
                            'AR View',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 21, 64, 43),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
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
