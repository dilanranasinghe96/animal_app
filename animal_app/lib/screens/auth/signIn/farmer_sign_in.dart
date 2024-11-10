import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/components/sign_in_form.dart';
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
          centerTitle: true,
          title: CustomText(
              text: 'Farmer',
              color: Colors.black,
              fsize: 30,
              fweight: FontWeight.bold),
        ),
        body: SignInForm(
          doUsernameController: faUsernameController,
          doPasswordController: faPasswordController,
          size: size,
          signIn: () {},
          signUp: () {},
        ));
  }
}
