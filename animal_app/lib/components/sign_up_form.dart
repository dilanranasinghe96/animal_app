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
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: SizedBox(
          height: size.height * 0.45,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xFF004fff),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Center(
                      child: CustomText(
                          text: 'General Information',
                          color: Colors.white,
                          fsize: 20,
                          fweight: FontWeight.w300),
                    ),
                  )),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF90e0ef),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextField(
                          label: 'username',
                          controller: doUsernameController,
                          prefix: Icons.person),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        label: 'password',
                        controller: doPasswordController,
                        prefix: Icons.lock,
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomButton(
                              ontap: signIn,
                              text: 'Sign up',
                              buttonColor: const Color(0xFF004fff),
                              textColor: Colors.white,
                              height: 50,
                              width: size.width * 0.5),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              text: 'Already have account?',
                              color: Colors.black,
                              fsize: 18,
                              fweight: FontWeight.w400),
                          TextButton(
                              onPressed: signUp,
                              child: CustomText(
                                  text: 'Sign in',
                                  color: Colors.black,
                                  fsize: 18,
                                  fweight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
