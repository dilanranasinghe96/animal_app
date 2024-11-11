import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.ontap,
      required this.text,
      required this.buttonColor,
      required this.textColor,
      required this.height,
      required this.width});

  VoidCallback ontap;
  Color buttonColor;
  Color textColor;
  String text;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: ontap,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: buttonColor),
          child: Center(
            child: CustomText(
                color: textColor,
                fsize: 25,
                fweight: FontWeight.bold,
                text: text),
          )),
    );
  }
}
