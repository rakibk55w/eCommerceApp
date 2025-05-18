import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/list_tiles/user_profile_list.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                  AppAppbar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: AppColors.white),
                    ),
                  ),

                  //User profile card
                  const AppUserProfileTile(),
                  const SizedBox(height: AppSizes.spaceBetweenSections),
                ],
              ),
            ),

            //Body
            const Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  //Account settings
                  AppSectionHeading(title: 'Account Settings'),
                  SizedBox(height: AppSizes.spaceBetweenItems),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
