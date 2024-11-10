import 'package:flutter/material.dart';

import '../screens/auth/signIn/doctor_sign_in.dart';
import 'custom_button.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    super.key,
    required this.doUsernameController,
    required this.doPasswordController,
    required this.signIn,
    required this.signUp,
    required this.size,
  });

  final TextEditingController doUsernameController;
  final TextEditingController doPasswordController;
  void Function() signIn;
  void Function() signUp;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: 'Username',
              color: Colors.black,
              fsize: 20,
              fweight: FontWeight.w200),
          CustomTextField(
              label: 'username',
              controller: doUsernameController,
              prefix: Icons.person),
          const SizedBox(
            height: 20,
          ),
          CustomText(
              text: 'Password',
              color: Colors.black,
              fsize: 20,
              fweight: FontWeight.w200),
          CustomTextField(
            label: 'password',
            controller: doPasswordController,
            prefix: Icons.lock,
            isPassword: true,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  size: size,
                  ontap: signIn,
                  text: 'Sign in',
                  buttonColor: Colors.brown,
                  textColor: Colors.white,
                  height: 60,
                  width: size.width * 0.5),
            ),
          ),
          const Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 1,
                color: Colors.black,
              )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('OR'),
              ),
              Expanded(
                  child: Divider(
                thickness: 1,
                color: Colors.black,
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: 'Dont you have an account?',
                  color: Colors.black,
                  fsize: 18,
                  fweight: FontWeight.w200),
              TextButton(
                  onPressed: signUp,
                  child: CustomText(
                      text: 'Sign Up',
                      color: Colors.black,
                      fsize: 18,
                      fweight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}
