import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/doctor/appoinments_details.dart';
import 'package:flutter/material.dart';

class VisitAppoinments extends StatefulWidget {
  const VisitAppoinments({super.key});

  @override
  State<VisitAppoinments> createState() => _VisitAppoinmentsState();
}

class _VisitAppoinmentsState extends State<VisitAppoinments> {
  List<String> visit = [
    'Dilan',
    'Dilan',
    'Dilan',
    'Dilan',
    'Dilan',
    'Dilan',
    'Dilan',
    'Dilan',
    'Dilan',
    'Dilan'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: 'Appoinments List(Visit)',
            color: Colors.black,
            fsize: 25,
            fweight: FontWeight.w400),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: visit.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              hoverColor: Colors.amberAccent,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppoinmentsDetails(),
                    ));
              },
              title: CustomText(
                  text: visit[index],
                  color: Colors.black,
                  fsize: 20,
                  fweight: FontWeight.w300),
            ),
          );
        },
      ),
    );
  }
}
