import 'package:animal_app/components/custom_background_farmer.dart';
import 'package:animal_app/components/online_visit.dart';
import 'package:animal_app/screens/farmer/doctor_list.dart';
import 'package:animal_app/screens/farmer/farmer_location.dart';
import 'package:flutter/material.dart';

class OnlineVisitFarmer extends StatefulWidget {
  const OnlineVisitFarmer({super.key});

  @override
  State<OnlineVisitFarmer> createState() => _OnlineVisitFarmerState();
}

class _OnlineVisitFarmerState extends State<OnlineVisitFarmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(182, 250, 166, 0.50),
        leading: const BackButton(
          color: Color.fromRGBO(3, 139, 57, 1),
        ),
      ),
      body: CustomBackgroundFarmer(
        child: OnlineVisit(
          onlineImage: 'lib/assets/online_farmer.png',
          visitImage: 'lib/assets/visit_farmer.png',
          onlineRoute: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoctorList(),
                ));
          },
          visitRoute: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FarmerLocation(),
                ));
          },
        ),
      ),
    );
  }
}
