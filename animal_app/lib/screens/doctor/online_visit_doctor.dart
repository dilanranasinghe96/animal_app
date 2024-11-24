import 'package:animal_app/components/custom_background_doctor.dart';
import 'package:animal_app/screens/doctor/online_appoinments.dart';
import 'package:animal_app/screens/doctor/visit_appoinments.dart';
import 'package:flutter/material.dart';

import '../../components/online_visit.dart';

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
      body: CustomBackgroundDoctor(
        child: OnlineVisit(
          onlineImage: 'lib/assets/online_doctor.png',
          visitImage: 'lib/assets/visit_doctor.png',
          onlineRoute: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnlineAppoinments(),
                ));
          },
          visitRoute: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisitAppoinments(),
                ));
          },
        ),
      ),
    );
  }
}
