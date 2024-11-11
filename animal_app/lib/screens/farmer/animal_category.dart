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
          title: CustomText(
              text: 'Animal Category',
              color: Colors.black,
              fsize: 25,
              fweight: FontWeight.w400),
        ),
        body: Center(
          child: Column(
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
        ));
  }
}
