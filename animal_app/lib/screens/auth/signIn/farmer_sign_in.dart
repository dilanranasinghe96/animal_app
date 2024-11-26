// import 'package:animal_app/components/custom_text.dart';
// import 'package:animal_app/components/sign_in_form.dart';
// import 'package:animal_app/screens/auth/signup/farmer_sign_up.dart';
// import 'package:animal_app/screens/farmer/animal_category.dart';
// import 'package:flutter/material.dart';

// import '../../../components/custom_background_farmer.dart';

// class FarmerSignIn extends StatefulWidget {
//   const FarmerSignIn({super.key});

//   @override
//   State<FarmerSignIn> createState() => _FarmerSignInState();
// }

// class _FarmerSignInState extends State<FarmerSignIn> {
//   TextEditingController faIdController = TextEditingController();
//   TextEditingController faPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           actions: [
//             SizedBox(
//               width: size.width,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const BackButton(
//                       color: Color.fromRGBO(3, 139, 57, 1),
//                     ),
//                     Row(
//                       children: [
//                         CustomText(
//                             text: 'Farmer',
//                             color: const Color.fromRGBO(3, 139, 57, 1),
//                             fsize: 25,
//                             fweight: FontWeight.bold),
//                       ],
//                     ),
//                     const Icon(
//                       Icons.menu,
//                       color: Color.fromRGBO(3, 139, 57, 1),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//         body: CustomBackgroundFarmer(
//           child: SignInForm(
//             idController: faIdController,
//             passwordController: faPasswordController,
//             size: size,
//             color: const Color.fromRGBO(5, 204, 58, 1),
//             signIn: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const AnimalCategory(),
//                   ));
//             },
//             signUp: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const FarmerSignUp(),
//                   ));
//             },
//           ),
//         ));
//   }
// }

import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/components/sign_in_form.dart';
import 'package:animal_app/screens/auth/signup/farmer_sign_up.dart';
import 'package:animal_app/screens/farmer/animal_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../components/custom_background_farmer.dart';
import '../../../providers/auth providers/farmer_auth_provider.dart';

class FarmerSignIn extends StatefulWidget {
  const FarmerSignIn({super.key});

  @override
  State<FarmerSignIn> createState() => _FarmerSignInState();
}

class _FarmerSignInState extends State<FarmerSignIn> {
  TextEditingController faIdController = TextEditingController();
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
            idController: faIdController,
            passwordController: faPasswordController,
            size: size,
            color: const Color.fromRGBO(5, 204, 58, 1),
            signIn: () async {
              showDialog(
                context: context,
                builder: (ctx) => const Center(child: CircularProgressIndicator()),
              );
              try {
                await Provider.of<FarmerAuthProvider>(context, listen: false)
                    .login(faIdController.text, faPasswordController.text);
                Navigator.of(context).pop(); // Close the loading dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimalCategory(),
                  ));
              } catch (error) {
                Navigator.of(context).pop(); // Close the loading dialog
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Error"),
                    content: const Text("Invalid NIC or password"),
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

