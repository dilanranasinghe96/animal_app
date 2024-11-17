import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text.dart';

class OnlineVisit extends StatelessWidget {
  OnlineVisit({super.key, required this.onlineRoute, required this.visitRoute});

  VoidCallback onlineRoute;
  VoidCallback visitRoute;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
              text: 'Choose category',
              color: Colors.black,
              fsize: 40,
              fweight: FontWeight.bold),
          CustomButton(
            ontap: () {
              onlineRoute;
            },
            text: 'Online',
            buttonColor: Colors.brown,
            textColor: Colors.white,
            height: size.height * 0.08,
            width: size.width * 0.5,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              ontap: () {
                visitRoute;
              },
              text: 'Visit',
              buttonColor: Colors.brown,
              textColor: Colors.white,
              height: size.height * 0.08,
              width: size.width * 0.5)
        ],
      ),
    );
  }
}
