import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/farmer/animal_details.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  List<String> doctorsList = [
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
            text: 'Doctors List',
            color: Colors.black,
            fsize: 25,
            fweight: FontWeight.w400),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: doctorsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              hoverColor: Colors.amberAccent,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimalDetails(),
                    ));
              },
              title: CustomText(
                  text: doctorsList[index],
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
