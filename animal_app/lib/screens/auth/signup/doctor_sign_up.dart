import 'package:animal_app/components/sign_up_form.dart';
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
        centerTitle: true,
        title: CustomText(
            text: 'Doctor',
            color: Colors.black,
            fsize: 30,
            fweight: FontWeight.bold),
      ),
      body: SignUpForm(
          doUsernameController: doUsernameController,
          doPasswordController: doPasswordController,
          signIn: () {},
          signUp: () {},
          size: size),
    );
  }
}
