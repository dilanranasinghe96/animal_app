import 'package:animal_app/components/custom_background_doctor.dart';
import 'package:animal_app/components/custom_button.dart';
import 'package:animal_app/screens/doctor/medicine_page.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appoinment_data.dart';
import '../../components/custom_text.dart';

class AppoinmentsDetails extends StatefulWidget {
  const AppoinmentsDetails({super.key});

  @override
  State<AppoinmentsDetails> createState() => _AppoinmentsDetailsState();
}

class _AppoinmentsDetailsState extends State<AppoinmentsDetails> {
  String fName = 'Dilan Ranasinghe';
  String fContactNo = '0771234567';
  String fLocation = 'Dambulla';
  String fMessage =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';

  // Sample attachments
  final List<String> attachments = [
    'lib/assets/background.jpg',
    'lib/assets/background.jpg',
    'lib/assets/background.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 104, 254, 0.50),
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(
            width: size.width,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    color: Color.fromRGBO(0, 76, 151, 1),
                  ),
                  //
                  Icon(
                    Icons.menu,
                    color: Color.fromRGBO(0, 76, 151, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          CustomBackgroundDoctor(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 80.0), // Extra bottom padding for button
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 16.0),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomAppoinmentData(
                                  title: 'Name:',
                                  data: fName,
                                ),
                                CustomAppoinmentData(
                                  title: 'Contact number:',
                                  data: fContactNo,
                                ),
                                CustomAppoinmentData(
                                  title: 'Location:',
                                  data: fLocation,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          CustomAppoinmentData(
                              isMessage: true,
                              title: 'Message:',
                              data: fMessage),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CustomText(
                          text: 'Attachments:',
                          color: Colors.black,
                          fsize: 18,
                          fweight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8.0),
                    ListView.builder(
                      itemCount: attachments.length,
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // Let parent scroll
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              attachments[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Fixed Button at Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MedicinePage(),
                        ));
                  },
                  text: 'Get Action',
                  buttonColor: const Color.fromRGBO(45, 73, 212, 0.9),
                  textColor: Colors.white,
                  height: size.height * 0.08,
                  width: size.width * 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
