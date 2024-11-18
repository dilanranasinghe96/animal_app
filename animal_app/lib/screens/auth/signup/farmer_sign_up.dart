import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../signIn/farmer_sign_in.dart';

class FarmerSignUp extends StatefulWidget {
  const FarmerSignUp({super.key});

  @override
  State<FarmerSignUp> createState() => _FarmerSignUpState();
}

class _FarmerSignUpState extends State<FarmerSignUp> {
  TextEditingController faUsernameController = TextEditingController();
  TextEditingController faPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00b4d8),
        centerTitle: true,
        title: CustomText(
            text: 'Farmer',
            color: Colors.black,
            fsize: 30,
            fweight: FontWeight.bold),
      ),
      body: CustomBackground(
        child: SignUpForm(
            doUsernameController: faUsernameController,
            doPasswordController: faPasswordController,
            signIn: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FarmerSignIn(),
                  ));
            },
            signUp: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FarmerSignIn(),
                  ));
            },
            size: size),
      ),
    );
  }
}
