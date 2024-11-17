import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/screens/auth/signIn/doctor_sign_in.dart';
import 'package:animal_app/screens/auth/signIn/farmer_sign_in.dart';
import 'package:flutter/material.dart';

import '../../components/custom_icon_button.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomIconButton(
                imagePath: 'lib/assets/doctor.png',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoctorSignIn(),
                      ));
                },
                text: 'Doctor',
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              CustomIconButton(
                imagePath: 'lib/assets/farmer.png',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FarmerSignIn(),
                      ));
                },
                text: 'Farmer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
