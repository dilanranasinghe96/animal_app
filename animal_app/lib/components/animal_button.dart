import 'package:animal_app/screens/farmer/online_visit_farmer.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class AnimalButton extends StatelessWidget {
  AnimalButton({
    super.key,
    required this.animal,
  });

  String animal;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomButton(
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnlineVisitFarmer(),
                ));
          },
          text: animal,
          buttonColor: Colors.amberAccent,
          textColor: Colors.black,
          height: size.height * 0.07,
          width: size.width * 0.4),
    );
  }
}
