import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

class OnlineVisit extends StatelessWidget {
  OnlineVisit(
      {super.key,
      required this.onlineRoute,
      required this.visitRoute,
      required this.onlineImage,
      required this.visitImage});

  VoidCallback onlineRoute;
  VoidCallback visitRoute;
  String onlineImage;
  String visitImage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomIconButton(
            imagePath: onlineImage,
            ontap: onlineRoute,
            text: 'Online',
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          CustomIconButton(
            imagePath: visitImage,
            ontap: visitRoute,
            text: 'Visit',
          ),
        ],
      ),
    );
  }
}
