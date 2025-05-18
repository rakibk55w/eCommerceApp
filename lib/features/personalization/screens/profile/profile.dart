import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: const AppAppbar(showBackArrow: true, title: Text('Profile')),
      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const AppCircularImage(
                      image: AppImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //Profile details
              const SizedBox(height: AppSizes.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBetweenItems),
              const AppSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              AppProfileMenu(
                title: 'Name',
                value: 'Real Name',
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'Username',
                value: 'User Name',
                onPressed: () {},
              ),

              //Personal info
              const SizedBox(height: AppSizes.spaceBetweenItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBetweenItems),
              const AppSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              AppProfileMenu(
                title: 'User ID',
                value: '123456',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'Email',
                value: 'example@gmail.com',
                onPressed: () {},
              ),
              AppProfileMenu(
                title: 'Phone Number',
                value: '01712345678',
                onPressed: () {},
              ),
              AppProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              AppProfileMenu(
                title: 'Date of Birth',
                value: '29 Feb 1986',
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              //Delete account button
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
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
