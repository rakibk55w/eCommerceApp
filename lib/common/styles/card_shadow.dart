import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCardShadow{
  static final verticalProductShadow = BoxShadow(
    color: AppColors.darkGrey.withAlpha((255 * 0.1).toInt()),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: AppColors.darkGrey.withAlpha((255 * 0.1).toInt()),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );
}