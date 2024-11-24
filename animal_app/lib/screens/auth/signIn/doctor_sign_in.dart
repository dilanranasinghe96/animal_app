import 'package:animal_app/components/custom_background_doctor.dart';
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
        child: SignInForm(
          doUsernameController: doUsernameController,
          doPasswordController: doPasswordController,
          size: size,
          color: const Color.fromRGBO(45, 73, 212, 1),
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
