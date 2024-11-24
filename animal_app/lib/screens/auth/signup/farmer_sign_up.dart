import 'package:animal_app/components/custom_background_farmer.dart';
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
                    color: Color.fromRGBO(3, 139, 57, 1),
                  ),
                  Row(
                    children: [
                      CustomText(
                          text: 'Farmer',
                          color: const Color.fromRGBO(3, 139, 57, 1),
                          fsize: 25,
                          fweight: FontWeight.bold),
                    ],
                  ),
                  const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(3, 139, 57, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: CustomBackgroundFarmer(
        child: SignUpForm(
            doUsernameController: faUsernameController,
            doPasswordController: faPasswordController,
            color: const Color.fromRGBO(5, 204, 58, 1),
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
