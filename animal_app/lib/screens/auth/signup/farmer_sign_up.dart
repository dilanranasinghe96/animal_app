import 'package:animal_app/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';

class DoctorSignUp extends StatefulWidget {
  const DoctorSignUp({super.key});

  @override
  State<DoctorSignUp> createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<DoctorSignUp> {
  TextEditingController faUsernameController = TextEditingController();
  TextEditingController faPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
            text: 'Farmer',
            color: Colors.black,
            fsize: 30,
            fweight: FontWeight.bold),
      ),
      body: SignUpForm(
          doUsernameController: faUsernameController,
          doPasswordController: faPasswordController,
          signIn: () {},
          signUp: () {},
          size: size),
    );
  }
}
