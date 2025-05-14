import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  AppHomeAppbar(),

                  //Searchbar

                  //Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
