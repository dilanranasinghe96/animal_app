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
              color: const Color(0xFFcaf0f8),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleChildScrollView(
              child: CustomText(
                  text: data,
                  color: Colors.black,
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
