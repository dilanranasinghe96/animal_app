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
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: 'Appoinments Details',
            color: Colors.black,
            fsize: 25,
            fweight: FontWeight.w400),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Center(
              child: Column(
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
                  CustomAppoinmentData(
                      isMessage: true, title: 'Message:', data: fMessage),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MedicinePage(),
                        ));
                  },
                  text: 'Get Action',
                  buttonColor: Colors.amber,
                  textColor: Colors.black,
                  height: size.height * 0.08,
                  width: size.width * 0.6),
            ),
          ],
        ),
      ),
    );
  }
}
