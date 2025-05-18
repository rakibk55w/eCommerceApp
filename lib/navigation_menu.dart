import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/features/shop/screens/store/store.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/wishlist/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          backgroundColor: dark ? AppColors.black : AppColors.white,
          indicatorColor: dark ? AppColors.white.withAlpha((256 * 0.1).toInt()) : AppColors.black.withAlpha((256 * 0.1).toInt()),

          destinations: [
            const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            const NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        );
      }),
      body: Obx(() {
        return controller.screens[controller.selectedIndex.value];
      }),
    );
  }
}

class NavigationController extends GetxController {
  final selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    Container(color: Colors.orange),
  ];
}
