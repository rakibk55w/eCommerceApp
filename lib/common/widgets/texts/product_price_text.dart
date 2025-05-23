import 'package:flutter/material.dart';

class AppProductPriceText extends StatelessWidget {
  const AppProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    final baseStyle = isLarge
        ? Theme.of(context).textTheme.headlineMedium
        : Theme.of(context).textTheme.titleLarge;
    final textStyle = baseStyle?.apply(
      decoration: lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
    );
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: textStyle
          // isLarge
          //     ? Theme.of(context).textTheme.headlineMedium!.apply(
          //       decoration: lineThrough ? TextDecoration.lineThrough : null,
          //     )
          //     : Theme.of(context).textTheme.titleLarge!.apply(
          //       decoration: lineThrough ? TextDecoration.lineThrough : null,
          //     ),
    );
  }
}
