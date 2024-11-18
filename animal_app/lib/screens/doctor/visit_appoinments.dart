import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/doctor/appoinments_details.dart';
import 'package:flutter/material.dart';

class VisitAppoinments extends StatefulWidget {
  const VisitAppoinments({super.key});

  @override
  State<VisitAppoinments> createState() => _VisitAppoinmentsState();
}

class _VisitAppoinmentsState extends State<VisitAppoinments> {
  List<String> online = [
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
        backgroundColor: const Color(0xFF00b4d8),
        title: CustomText(
            text: 'Appointments List(Visit)',
            color: Colors.black,
            fsize: 25,
            fweight: FontWeight.w400),
      ),
      body: CustomBackground(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: online.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(left: 32, right: 32, bottom: 5, top: 5),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFe0fbfc), Color(0xFF90e0ef)])),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppoinmentsDetails(),
                        ));
                  },
                  title: CustomText(
                      text: online[index],
                      color: Colors.black,
                      fsize: 20,
                      fweight: FontWeight.bold),
                  subtitle: CustomText(
                      text: online[index],
                      color: Colors.black,
                      fsize: 15,
                      fweight: FontWeight.w400),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
