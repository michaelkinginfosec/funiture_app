import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funiture_app/core/widgets/navigation_button.dart';
import 'package:funiture_app/features/presentation/bloc/cubit/navigation_cubit.dart';
import 'package:funiture_app/features/presentation/views/cart_page.dart';
import 'package:funiture_app/features/presentation/views/home_screen.dart';
import 'package:funiture_app/features/presentation/views/menu_page.dart';
import 'package:funiture_app/features/presentation/views/profile_page.dart';
import 'package:funiture_app/features/presentation/views/search_product.dart';

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
              return const MenuPage();
            case 2:
              return const SearchPage();
            case 3:
              return const ProfilePage();
            case 4:
              return const CartPage();
            default:
              return Container();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            // backgroundColor: Colors.grey.shade900,
            elevation: 0,
            currentIndex: state.selectedIndex,
            onTap: (index) =>
                context.read<NavigationCubit>().selectedIndex(index),
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
                        icon: CupertinoIcons.search,
                      )
                    : const Icon(
                        CupertinoIcons.search,
                        // color: Colors.white,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: state.selectedIndex == 2
                    ? const CustomSelectedIcon(
                        icon: CupertinoIcons.person,
                      )
                    : const Icon(
                        CupertinoIcons.person,
                        color: Colors.white,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: state.selectedIndex == 3
                    ? const CustomSelectedIcon(
                        icon: CupertinoIcons.cart,
                      )
                    : const Icon(
                        CupertinoIcons.cart,
                        color: Colors.white,
                      ),
                label: '',
              ),
            ],
            // selectedItemColor: Colors
            //     .transparent, // Makes the default white selection color transparent
            // unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          );
        },
      ),
    );
  }
}
