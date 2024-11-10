import 'package:animal_app/components/custom_button.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/auth/signIn/doctor_sign_in.dart';
import 'package:animal_app/screens/auth/signIn/farmer_sign_in.dart';
import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: 'I am a',
                color: Colors.black,
                fsize: 40,
                fweight: FontWeight.bold),
            CustomButton(
              size: size,
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorSignIn(),
                    ));
              },
              text: 'Doctor',
              buttonColor: Colors.brown,
              textColor: Colors.white,
              height: size.height * 0.08,
              width: size.width * 0.5,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                size: size,
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FarmerSignIn(),
                      ));
                },
                text: 'Farmer',
                buttonColor: Colors.brown,
                textColor: Colors.white,
                height: size.height * 0.08,
                width: size.width * 0.5)
          ],
        ),
      ),
    );
  }
}
