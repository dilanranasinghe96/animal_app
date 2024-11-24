import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/components/sign_in_form.dart';
import 'package:animal_app/screens/auth/signup/farmer_sign_up.dart';
import 'package:animal_app/screens/farmer/animal_category.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_background_farmer.dart';

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
          child: SignInForm(
            doUsernameController: faUsernameController,
            doPasswordController: faPasswordController,
            size: size,
            color: const Color.fromRGBO(5, 204, 58, 1),
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
