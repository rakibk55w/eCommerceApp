import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppCircularLoader extends StatelessWidget {
  const AppCircularLoader({
    super.key,
    this.foregroundColor = AppColors.white,
    this.backgroundColor = AppColors.primary,
  });

  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.lg),
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Center(
        child: CircularProgressIndicator(
          color: foregroundColor,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
