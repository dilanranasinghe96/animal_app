import 'package:animal_app/components/custom_background_doctor.dart';
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
                  CustomText(
                      text: 'Doctor',
                      color: const Color.fromRGBO(0, 76, 151, 1),
                      fsize: 25,
                      fweight: FontWeight.bold),
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
        child: SignUpForm(
            doUsernameController: doUsernameController,
            doPasswordController: doPasswordController,
            color: const Color.fromRGBO(45, 73, 212, 1),
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
