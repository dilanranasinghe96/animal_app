// import 'package:animal_app/components/custom_background_doctor.dart';
// import 'package:animal_app/screens/auth/signIn/doctor_sign_in.dart';
// import 'package:flutter/material.dart';

// import '../../../components/custom_button.dart';
// import '../../../components/custom_text.dart';
// import '../../../components/custom_textfield.dart';

// class DoctorSignUp extends StatefulWidget {
//   const DoctorSignUp({super.key});

//   @override
//   State<DoctorSignUp> createState() => _DoctorSignUpState();
// }

// class _DoctorSignUpState extends State<DoctorSignUp> {
//   final TextEditingController doUsernameController = TextEditingController();
//   final TextEditingController doIdController = TextEditingController();
//   final TextEditingController doAreaController = TextEditingController();
//   final TextEditingController doEmailController = TextEditingController();
//   final TextEditingController doMobileController = TextEditingController();
//   final TextEditingController doPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         actions: [
//           SizedBox(
//             width: size.width,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const BackButton(
//                     color: Color.fromRGBO(0, 76, 151, 1),
//                   ),
//                   CustomText(
//                       text: 'Doctor',
//                       color: const Color.fromRGBO(0, 76, 151, 1),
//                       fsize: 25,
//                       fweight: FontWeight.bold),
//                   const Icon(
//                     Icons.menu,
//                     color: Color.fromRGBO(0, 76, 151, 1),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//       body: CustomBackgroundDoctor(
//           child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: SizedBox(
//             height: size.height * 0.7,
//             child: Column(
//               children: [
//                 Expanded(
//                     flex: 1,
//                     child: Container(
//                       width: size.width,
//                       decoration: const BoxDecoration(
//                           color: Color.fromRGBO(45, 73, 212, 1),
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(10),
//                               topRight: Radius.circular(10))),
//                       child: Center(
//                         child: CustomText(
//                             text: 'General Information',
//                             color: Colors.white,
//                             fsize: 20,
//                             fweight: FontWeight.w300),
//                       ),
//                     )),
//                 Expanded(
//                   flex: 9,
//                   child: Container(
//                     decoration: const BoxDecoration(
//                         color: Color.fromRGBO(243, 243, 255, 0.57),
//                         borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(10),
//                             bottomRight: Radius.circular(10))),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         CustomTextField(
//                             label: 'username',
//                             controller: doUsernameController,
//                             prefix: Icons.person),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'ID no',
//                             controller: doIdController,
//                             prefix: Icons.numbers),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'area',
//                             controller: doAreaController,
//                             prefix: Icons.location_on),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'email',
//                             controller: doEmailController,
//                             prefix: Icons.email),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'Mobile No',
//                             controller: doMobileController,
//                             prefix: Icons.phone),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                           label: 'password',
//                           controller: doPasswordController,
//                           prefix: Icons.lock,
//                           isPassword: true,
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Center(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: CustomButton(
//                                 ontap: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) =>
//                                             const DoctorSignIn(),
//                                       ));
//                                 },
//                                 text: 'Sign Up',
//                                 buttonColor:
//                                     const Color.fromRGBO(45, 73, 212, 1),
//                                 textColor: Colors.white,
//                                 height: 50,
//                                 width: size.width * 0.5),
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CustomText(
//                                 text: 'Dont have account?',
//                                 color: Colors.black,
//                                 fsize: 18,
//                                 fweight: FontWeight.w400),
//                             TextButton(
//                                 onPressed: () {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) =>
//                                             const DoctorSignIn(),
//                                       ));
//                                 },
//                                 child: CustomText(
//                                     text: 'Sign In',
//                                     color: Colors.black,
//                                     fsize: 18,
//                                     fweight: FontWeight.bold))
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       )),
//     );
//   }
// }

import 'package:animal_app/components/custom_background_doctor.dart';
import 'package:animal_app/screens/auth/signIn/doctor_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_textfield.dart';
import '../../../models/doctor_model.dart';
import '../../../providers/auth providers/doctor_auth_provider.dart';

class DoctorSignUp extends StatefulWidget {
  const DoctorSignUp({super.key});

  @override
  State<DoctorSignUp> createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<DoctorSignUp> {
  final TextEditingController doNameController = TextEditingController();
  final TextEditingController doIdController = TextEditingController();
  final TextEditingController doAreaController = TextEditingController();
  final TextEditingController doEmailController = TextEditingController();
  final TextEditingController doMobileController = TextEditingController();
  final TextEditingController doPasswordController = TextEditingController();

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
                    color: Color.fromRGBO(0, 76, 151, 1),
                  ),
                  CustomText(
                      text: 'Doctor',
                      color: const Color.fromRGBO(0, 76, 151, 1),
                      fsize: 25,
                      fweight: FontWeight.bold),
                  const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(0, 76, 151, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: CustomBackgroundDoctor(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            height: size.height * 0.7,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(45, 73, 212, 1),
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
                  flex: 9,
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
                            controller: doNameController,
                            prefix: Icons.person),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'ID no',
                            controller: doIdController,
                            prefix: Icons.numbers),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'area',
                            controller: doAreaController,
                            prefix: Icons.location_on),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'email',
                            controller: doEmailController,
                            prefix: Icons.email),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'Mobile No',
                            controller: doMobileController,
                            prefix: Icons.phone),
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
                                ontap: () async {
                                  // Show loading dialog while signing up
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => const Center(
                                        child: CircularProgressIndicator()),
                                  );
                                  try {
                                    final doctor = Doctor(
                                      name: doNameController.text,
                                      idNo: doIdController.text,
                                      area: doAreaController.text,
                                      email: doEmailController.text,
                                      mobileNo: doMobileController.text,
                                      password: doPasswordController.text,
                                    );
                                    await Provider.of<DoctorAuthProvider>(
                                            context,
                                            listen: false)
                                        .registerDoctor(doctor);
                                    Navigator.of(context)
                                        .pop(); // Close loading dialog
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DoctorSignIn(),
                                        ));
                                  } catch (error) {
                                    Navigator.of(context)
                                        .pop(); // Close loading dialog
                                    print(error);
                                    showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title: const Text("Error"),
                                        content: const Text("Signup failed"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(ctx).pop();
                                            },
                                            child: const Text("OK"),
                                          )
                                        ],
                                      ),
                                    );
                                  }
                                },
                                text: 'Sign Up',
                                buttonColor:
                                    const Color.fromRGBO(45, 73, 212, 1),
                                textColor: Colors.white,
                                height: 50,
                                width: size.width * 0.5),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                                text: 'Already have an account?',
                                color: Colors.black,
                                fsize: 18,
                                fweight: FontWeight.w400),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DoctorSignIn(),
                                      ));
                                },
                                child: CustomText(
                                    text: 'Sign In',
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
      )),
    );
  }
}
