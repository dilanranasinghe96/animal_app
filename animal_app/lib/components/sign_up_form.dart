import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text.dart';
import 'custom_textfield.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
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
                  ontap: signUp,
                  text: 'Sign up',
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
                  text: 'Already i have an account ',
                  color: Colors.black,
                  fsize: 18,
                  fweight: FontWeight.w200),
              TextButton(
                  onPressed: signIn,
                  child: CustomText(
                      text: 'Sign in',
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
