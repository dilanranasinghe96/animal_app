import 'package:animal_app/components/custom_background_farmer.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/farmer/animal_details.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton(
                    color: Color.fromRGBO(3, 139, 57, 1),
                  ),
                  Row(
                    children: [
                      CustomText(
                          text: 'Doctors',
                          color: const Color.fromRGBO(3, 139, 57, 1),
                          fsize: 25,
                          fweight: FontWeight.bold),
                    ],
                  ),
                  const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(3, 139, 57, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: CustomBackgroundFarmer(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: online.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimalDetails(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 32, right: 32, bottom: 5, top: 5),
                child: Container(
                    width: size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.7),
                              Color.fromRGBO(140, 248, 136, 0.7)
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset('lib/assets/doctor_dp.png'),
                          ),
                          SizedBox(
                            child: Image.asset('lib/assets/line.png'),
                          ),
                          CustomText(
                              text: 'Dr.Jayawardhana',
                              color: Colors.black,
                              fsize: 20,
                              fweight: FontWeight.w600)
                        ],
                      ),
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
