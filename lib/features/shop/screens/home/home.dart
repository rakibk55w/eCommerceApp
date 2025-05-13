import 'package:e_commerce_app/common/widgets/curved_edges.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/circular_container.dart';
import '../../../../common/widgets/curved_edges_widget.dart';
import '../../../../common/widgets/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Container()
            ),
          ],
        ),
      ),
    );
  }
}
