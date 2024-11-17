import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/auth/signup/doctor_sign_up.dart';
import 'package:animal_app/screens/doctor/online_visit_doctor.dart';
import 'package:flutter/material.dart';

import '../../../components/sign_in_form.dart';

class DoctorSignIn extends StatefulWidget {
  const DoctorSignIn({super.key});

  @override
  State<DoctorSignIn> createState() => _DoctorSignInState();
}

class _DoctorSignInState extends State<DoctorSignIn> {
  TextEditingController doUsernameController = TextEditingController();
  TextEditingController doPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00b4d8),
        centerTitle: true,
        title: CustomText(
            text: 'Doctor',
            color: Colors.black,
            fsize: 30,
            fweight: FontWeight.bold),
      ),
      body: CustomBackground(
        child: SignInForm(
          doUsernameController: doUsernameController,
          doPasswordController: doPasswordController,
          size: size,
          signIn: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnlineVisitDoctor(),
                ));
          },
          signUp: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoctorSignUp(),
                ));
          },
        ),
      ),
    );
  }
}
