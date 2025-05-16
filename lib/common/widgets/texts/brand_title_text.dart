import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';


class AppBrandTitleText extends StatelessWidget {
  const AppBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.color,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: switch (brandTextSize) {
        TextSizes.small => Theme.of(
          context,
        ).textTheme.labelMedium!.apply(color: color),
        TextSizes.medium => Theme.of(
          context,
        ).textTheme.bodyLarge!.apply(color: color),
        TextSizes.large => Theme.of(
          context,
        ).textTheme.titleLarge!.apply(color: color),
      },
    );
  }
}
