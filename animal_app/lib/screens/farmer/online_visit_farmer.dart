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
        backgroundColor: const Color(0xFF00b4d8),
      ),
      body: OnlineVisit(
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
    );
  }
}
