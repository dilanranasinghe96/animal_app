import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {super.key,
      required this.ontap,
      required this.text,
      required this.imagePath});

  VoidCallback ontap;
  String text;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath),
            ),
          ),
          CustomText(
              text: text,
              color: Colors.white,
              fsize: 20,
              fweight: FontWeight.w400),
        ],
      ),
    );
  }
}
