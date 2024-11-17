import 'package:animal_app/components/online_visit.dart';
import 'package:flutter/material.dart';

class OnlineVisitFarmer extends StatefulWidget {
  const OnlineVisitFarmer({super.key});

  @override
  State<OnlineVisitFarmer> createState() => _OnlineVisitFarmerState();
}

class _OnlineVisitFarmerState extends State<OnlineVisitFarmer> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OnlineVisit(onlineRoute: () {
        
      },
      visitRoute: () {
        
        
      },
      ),
    );
  }
}
