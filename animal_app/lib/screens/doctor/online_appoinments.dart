import 'package:animal_app/components/custom_text.dart';
import 'package:flutter/material.dart';

class OnlineAppoinments extends StatefulWidget {
  const OnlineAppoinments({super.key});

  @override
  State<OnlineAppoinments> createState() => _OnlineAppoinmentsState();
}

class _OnlineAppoinmentsState extends State<OnlineAppoinments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: 'Appoinments List(Online)',
            color: Colors.black,
            fsize: 25,
            fweight: FontWeight.w400),
      ),
      body: const Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
