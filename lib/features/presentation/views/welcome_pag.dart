import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funiture_app/core/widgets/navigation_button.dart';
import 'package:funiture_app/features/presentation/bloc/cubit/navigation_cubit.dart';
import 'package:funiture_app/features/presentation/views/cart_page.dart';
import 'package:funiture_app/features/presentation/views/home_screen.dart';

import 'package:funiture_app/features/presentation/views/profile_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          switch (state.selectedIndex) {
            case 0:
              return const HomeScreen();

            case 1:
              return const ProfilePage();
            case 2:
              return const CartPage();
            default:
              return Container();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (value) {
              context.read<NavigationCubit>().selectedIndex(value);
            },
            backgroundColor: Colors.grey.shade900,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: state.selectedIndex == 0
                    ? const CustomSelectedIcon(
                        icon: CupertinoIcons.home,
                      )
                    : const Icon(
                        CupertinoIcons.home,
                        // color: Colors.white,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: state.selectedIndex == 1
                    ? const CustomSelectedIcon(
                        icon: Icons.person_2,
                      )
                    : const Icon(
                        CupertinoIcons.person_solid,
                        // color: Colors.white,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: state.selectedIndex == 2
                    ? const CustomSelectedIcon(
                        icon: CupertinoIcons.cart,
                      )
                    : const Icon(
                        CupertinoIcons.cart,
                        // color: Colors.white,
                      ),
                label: '',
              ),
            ],
            selectedItemColor: Colors
                .white, // Makes the default white selection color transparent
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          );
        },
      ),
    );
  }
}
