import 'package:animal_app/components/custom_background_doctor.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/doctor/appoinments_details.dart';
import 'package:flutter/material.dart';

class OnlineAppoinments extends StatefulWidget {
  const OnlineAppoinments({super.key});

  @override
  State<OnlineAppoinments> createState() => _OnlineAppoinmentsState();
}

class _OnlineAppoinmentsState extends State<OnlineAppoinments> {
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
        // leading: const BackButton(
        //   color: Color.fromRGBO(0, 76, 151, 1),
        // ),
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
                    color: Color.fromRGBO(0, 76, 151, 1),
                  ),
                  Row(
                    children: [
                      CustomText(
                          text: 'Appointment List',
                          color: const Color.fromRGBO(0, 76, 151, 1),
                          fsize: 20,
                          fweight: FontWeight.bold),
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset('lib/assets/online_doctor.png')),
                    ],
                  ),
                  const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(0, 76, 151, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: CustomBackgroundDoctor(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: online.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(left: 32, right: 32, bottom: 5, top: 5),
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.7),
                          Color.fromRGBO(145, 205, 237, 0.57)
                        ])),
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
