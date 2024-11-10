import 'package:animal_app/components/custom_text.dart';
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
        centerTitle: true,
        title: CustomText(
            text: 'Doctor',
            color: Colors.black,
            fsize: 30,
            fweight: FontWeight.bold),
      ),
      body: SignInForm(
        doUsernameController: doUsernameController,
        doPasswordController: doPasswordController,
        size: size,
        signIn: () {},
        signUp: () {},
      ),
    );
  }
}
