import 'package:animal_app/components/custom_background.dart';
import 'package:flutter/material.dart';

import '../../components/animal_button.dart';
import '../../components/custom_text.dart';

class AnimalCategory extends StatefulWidget {
  const AnimalCategory({super.key});

  @override
  State<AnimalCategory> createState() => _AnimalCategoryState();
}

class _AnimalCategoryState extends State<AnimalCategory> {
  List<String> animals = ['Cow', 'Pig', 'Goat', 'Other'];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF00b4d8),
          title: CustomText(
              text: 'Animal Category',
              color: Colors.black,
              fsize: 25,
              fweight: FontWeight.w400),
        ),
        body: CustomBackground(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimalButton(
                  animal: 'Cow',
                ),
                AnimalButton(
                  animal: 'Pig',
                ),
                AnimalButton(
                  animal: 'Goat',
                ),
                AnimalButton(
                  animal: 'Other',
                ),
              ],
            ),
          ),
        ));
  }
}
