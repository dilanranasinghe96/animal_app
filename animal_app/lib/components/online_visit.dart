import 'package:animal_app/components/custom_background.dart';
import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

class OnlineVisit extends StatelessWidget {
  OnlineVisit({super.key, required this.onlineRoute, required this.visitRoute});

  VoidCallback onlineRoute;
  VoidCallback visitRoute;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomIconButton(
              imagePath: 'lib/assets/online.png',
              ontap: onlineRoute,
              text: 'Online',
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            CustomIconButton(
              imagePath: 'lib/assets/visit.png',
              ontap: visitRoute,
              text: 'Visit',
            ),
          ],
        ),
      ),
    );
  }
}
