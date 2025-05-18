import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import 'circular_container.dart';
import 'curved_edges_widget.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: AppCircularContainer(
                backgroundColor: AppColors.textWhite.withAlpha(
                  (255 * 0.1).toInt(),
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: AppCircularContainer(
                backgroundColor: AppColors.textWhite.withAlpha(
                  (255 * 0.1).toInt(),
                ),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
