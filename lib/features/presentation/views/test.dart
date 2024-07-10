import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 150,
        child: Stack(
          clipBehavior: Clip.none, // Allow the image to extend beyond the Stack
          children: [
            Container(
              width: 300,
              height: 150,
              padding: EdgeInsets.only(left: 60), // Adjust padding as needed
              decoration: BoxDecoration(
                color: Colors.blue[100],
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'This is some text that is placed to the right of the image. The image extends beyond the container.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              left:
                  -30, // Adjust to control how much of the image extends outside
              top: -25,
              child: Container(
                width: 80,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img6.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
