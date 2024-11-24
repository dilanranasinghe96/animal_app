import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomAppoinmentData extends StatelessWidget {
  CustomAppoinmentData(
      {super.key,
      required this.title,
      required this.data,
      this.isMessage = false});

  String title;
  String data;
  bool isMessage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: title,
            color: Colors.black,
            fsize: 18,
            fweight: FontWeight.w300),
        Container(
          width: size.width * 0.8,
          height: isMessage == true ? size.height * 0.3 : null,
          decoration: BoxDecoration(
              color: isMessage == true
                  ? const Color.fromRGBO(255, 255, 255, 0.22)
                  : const Color.fromRGBO(203, 229, 243, 0.77),
              borderRadius: BorderRadius.circular(5),
              border: isMessage == true
                  ? Border.all(width: 2, color: Colors.white)
                  : null),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleChildScrollView(
              child: CustomText(
                  text: data,
                  color: const Color.fromRGBO(14, 40, 153, 1),
                  fsize: 18,
                  fweight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
