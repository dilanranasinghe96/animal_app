import 'package:flutter/material.dart';

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
    required this.color,
    required this.size,
  });

  final TextEditingController doUsernameController;
  final TextEditingController doPasswordController;
  void Function() signIn;
  void Function() signUp;
  Color color;
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
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: const BorderRadius.only(
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
                      color: Color.fromRGBO(243, 243, 255, 0.57),
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
                              text: 'Sign In',
                              buttonColor: color,
                              textColor: Colors.white,
                              height: 50,
                              width: size.width * 0.5),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              text: 'Dont have account?',
                              color: Colors.black,
                              fsize: 18,
                              fweight: FontWeight.w400),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
