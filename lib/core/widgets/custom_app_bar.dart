
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onBackButtonPressed;
  final VoidCallback? onCartButtonPressed;

  const CustomAppBar({
    super.key,
    this.title,
    this.onBackButtonPressed,
    this.onCartButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // decoration: BoxDecoration(

      //   // boxShadow: [
      //   //   BoxShadow(
      //   //     color: Colors.black.withOpacity(0.1),
      //   //     blurRadius: 10,
      //   //     offset: const Offset(0, 2),
      //   //   ),
      //   // ],
      // ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                color: Colors.grey.shade800,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed:
                      onBackButtonPressed ?? () => Navigator.of(context).pop(),
                  tooltip: 'Back',
                  color: Colors.black,
                ),
              ),
              if (title != null)
                Text(
                  title!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (onCartButtonPressed != null)
                Card(
                  color: Colors.grey.shade800,
                  child: IconButton(
                    icon: const Icon(CupertinoIcons.cart),
                    onPressed: onCartButtonPressed,
                    tooltip: 'Cart',
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
