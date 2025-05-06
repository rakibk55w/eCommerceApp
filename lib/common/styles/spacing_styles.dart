import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';

class AppSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: AppSizes.appbarHeight,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
  );
}