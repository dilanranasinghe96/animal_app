import 'package:animal_app/screens/doctor/online_appoinments.dart';
import 'package:animal_app/screens/doctor/visit_appoinments.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text.dart';

class OnlineVisitDoctor extends StatefulWidget {
  const OnlineVisitDoctor({super.key});

  @override
  State<OnlineVisitDoctor> createState() => _OnlineVisitDoctorState();
}

class _OnlineVisitDoctorState extends State<OnlineVisitDoctor> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: 'Choose category',
                color: Colors.black,
                fsize: 40,
                fweight: FontWeight.bold),
            CustomButton(
         
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnlineAppoinments(),
                    ));
              },
              text: 'Online',
              buttonColor: Colors.brown,
              textColor: Colors.white,
              height: size.height * 0.08,
              width: size.width * 0.5,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VisitAppoinments(),
                      ));
                },
                text: 'Visit',
                buttonColor: Colors.brown,
                textColor: Colors.white,
                height: size.height * 0.08,
                width: size.width * 0.5)
          ],
        ),
      ),
    );
  }
}
