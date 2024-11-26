// import 'package:animal_app/components/custom_background_farmer.dart';
// import 'package:flutter/material.dart';

// import '../../../components/custom_button.dart';
// import '../../../components/custom_text.dart';
// import '../../../components/custom_textfield.dart';
// import '../signIn/farmer_sign_in.dart';

// class FarmerSignUp extends StatefulWidget {
//   const FarmerSignUp({super.key});

//   @override
//   State<FarmerSignUp> createState() => _FarmerSignUpState();
// }

// class _FarmerSignUpState extends State<FarmerSignUp> {
//   TextEditingController faUsernameController = TextEditingController();
//   TextEditingController faContactController = TextEditingController();
//   TextEditingController faLocationController = TextEditingController();
//   TextEditingController faMobileController = TextEditingController();
//   TextEditingController faNicController = TextEditingController();
//   TextEditingController faPasswordController = TextEditingController();

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
//                     color: Color.fromRGBO(3, 139, 57, 1),
//                   ),
//                   Row(
//                     children: [
//                       CustomText(
//                           text: 'Farmer',
//                           color: const Color.fromRGBO(3, 139, 57, 1),
//                           fsize: 25,
//                           fweight: FontWeight.bold),
//                     ],
//                   ),
//                   const Icon(
//                     Icons.menu,
//                     color: Color.fromRGBO(3, 139, 57, 1),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//       body: CustomBackgroundFarmer(
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
//                           color: Color.fromRGBO(5, 204, 58, 1),
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
//                             controller: faUsernameController,
//                             prefix: Icons.person),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'contact',
//                             controller: faContactController,
//                             prefix: Icons.contact_mail),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'location',
//                             controller: faLocationController,
//                             prefix: Icons.location_on),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'mobile no',
//                             controller: faMobileController,
//                             prefix: Icons.phone),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                             label: 'NIC no',
//                             controller: faNicController,
//                             prefix: Icons.numbers),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         CustomTextField(
//                           label: 'password',
//                           controller: faPasswordController,
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
//                                             const FarmerSignIn(),
//                                       ));
//                                 },
//                                 text: 'Sign Up',
//                                 buttonColor:
//                                     const Color.fromRGBO(5, 204, 58, 1),
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
//                                             const FarmerSignIn(),
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

import 'package:animal_app/components/custom_background_farmer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_textfield.dart';
import '../../../models/farmer_model.dart';
import '../../../providers/auth providers/farmer_auth_provider.dart';
import '../signIn/farmer_sign_in.dart';

class FarmerSignUp extends StatefulWidget {
  const FarmerSignUp({super.key});

  @override
  State<FarmerSignUp> createState() => _FarmerSignUpState();
}

class _FarmerSignUpState extends State<FarmerSignUp> {
  TextEditingController faUsernameController = TextEditingController();
  TextEditingController faContactController = TextEditingController();
  TextEditingController faLocationController = TextEditingController();
  TextEditingController faMobileController = TextEditingController();
  TextEditingController faNicController = TextEditingController();
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
                          color: Color.fromRGBO(5, 204, 58, 1),
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
                            controller: faUsernameController,
                            prefix: Icons.person),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'contact',
                            controller: faContactController,
                            prefix: Icons.contact_mail),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'location',
                            controller: faLocationController,
                            prefix: Icons.location_on),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'mobile no',
                            controller: faMobileController,
                            prefix: Icons.phone),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                            label: 'NIC no',
                            controller: faNicController,
                            prefix: Icons.numbers),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          label: 'password',
                          controller: faPasswordController,
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
                                    final farmer = Farmer(
                                      username: faUsernameController.text,
                                      contact: faContactController.text,
                                      location: faLocationController.text,
                                      mobileNo: faMobileController.text,
                                      nicNo: faNicController.text,
                                      password: faPasswordController.text,
                                    );
                                    await Provider.of<FarmerAuthProvider>(
                                            context,
                                            listen: false)
                                        .signUp(farmer);
                                    Navigator.of(context)
                                        .pop(); // Close loading dialog
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const FarmerSignIn(),
                                        ));
                                  } catch (error) {
                                    Navigator.of(context)
                                        .pop(); // Close loading dialog
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
                                    const Color.fromRGBO(5, 204, 58, 1),
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
                                            const FarmerSignIn(),
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
