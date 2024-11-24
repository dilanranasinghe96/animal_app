import 'package:animal_app/components/custom_animal_category.dart';
import 'package:animal_app/components/custom_background_farmer.dart';
import 'package:flutter/material.dart';

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
          automaticallyImplyLeading: false,
          actions: [
            SizedBox(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButton(
                      color: Color.fromRGBO(3, 139, 57, 1),
                    ),
                    Row(
                      children: [
                        CustomText(
                            text: 'Farmer',
                            color: const Color.fromRGBO(3, 139, 57, 1),
                            fsize: 25,
                            fweight: FontWeight.bold),
                      ],
                    ),
                    const Icon(
                      Icons.menu,
                      color: Color.fromRGBO(3, 139, 57, 1),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        body: CustomBackgroundFarmer(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomAnimalCategory(
                      category: 'Cow',
                      imageUrl: 'lib/assets/animal_category/cow.png'),
                  CustomAnimalCategory(
                    category: 'Pig',
                    imageUrl: 'lib/assets/animal_category/pig.png',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomAnimalCategory(
                    category: 'Goat',
                    imageUrl: 'lib/assets/animal_category/goat.png',
                  ),
                  CustomAnimalCategory(
                    category: 'Other',
                    imageUrl: 'lib/assets/animal_category/other.png',
                  ),
                ],
              )
            ],
          )),
        ));
  }
}
