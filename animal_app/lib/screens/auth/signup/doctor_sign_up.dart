import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/components/sign_up_form.dart';
import 'package:animal_app/screens/auth/signIn/doctor_sign_in.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';

class DoctorSignUp extends StatefulWidget {
  const DoctorSignUp({super.key});

  @override
  State<DoctorSignUp> createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<DoctorSignUp> {
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
        child: SignUpForm(
            doUsernameController: doUsernameController,
            doPasswordController: doPasswordController,
            signIn: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DoctorSignIn(),
                  ));
            },
            signUp: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DoctorSignIn(),
                  ));
            },
            size: size),
      ),
    );
  }
}
