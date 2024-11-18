import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/components/sign_in_form.dart';
import 'package:animal_app/screens/auth/signup/farmer_sign_up.dart';
import 'package:animal_app/screens/farmer/animal_category.dart';
import 'package:flutter/material.dart';

class FarmerSignIn extends StatefulWidget {
  const FarmerSignIn({super.key});

  @override
  State<FarmerSignIn> createState() => _FarmerSignInState();
}

class _FarmerSignInState extends State<FarmerSignIn> {
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
          child: SignInForm(
            doUsernameController: faUsernameController,
            doPasswordController: faPasswordController,
            size: size,
            signIn: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimalCategory(),
                  ));
            },
            signUp: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FarmerSignUp(),
                  ));
            },
          ),
        ));
  }
}
