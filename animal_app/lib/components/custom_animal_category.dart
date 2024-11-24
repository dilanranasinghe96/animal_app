import 'package:flutter/material.dart';

import '../screens/farmer/online_visit_farmer.dart';
import 'custom_text.dart';

class CustomAnimalCategory extends StatelessWidget {
  CustomAnimalCategory(
      {super.key, required this.category, required this.imageUrl});

  String imageUrl;
  String category;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnlineVisitFarmer(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(140, 248, 136, 0.77),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          height: size.width * 0.4,
          width: size.width * 0.4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(imageUrl),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    width: size.width * 0.39,
                    height: 30,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(50, 143, 69, 0.25)),
                    child: Center(
                      child: CustomText(
                          text: category,
                          color: Colors.black,
                          fsize: 20,
                          fweight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
