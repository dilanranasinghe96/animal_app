// import 'package:animal_app/components/custom_background_doctor.dart';
// import 'package:animal_app/components/custom_text.dart';
// import 'package:animal_app/screens/auth/signup/doctor_sign_up.dart';
// import 'package:animal_app/screens/doctor/online_visit_doctor.dart';
// import 'package:flutter/material.dart';

// import '../../../components/sign_in_form.dart';

// class DoctorSignIn extends StatefulWidget {
//   const DoctorSignIn({super.key});

//   @override
//   State<DoctorSignIn> createState() => _DoctorSignInState();
// }

// class _DoctorSignInState extends State<DoctorSignIn> {
//   TextEditingController doIdController = TextEditingController();
//   TextEditingController doPasswordController = TextEditingController();

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
//         child: SignInForm(
//           idController: doIdController,
//           passwordController: doPasswordController,
//           size: size,
//           color: const Color.fromRGBO(45, 73, 212, 1),
//           signIn: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const OnlineVisitDoctor(),
//                 ));
//           },
//           signUp: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const DoctorSignUp(),
//                 ));
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:animal_app/components/custom_background_doctor.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/auth/signup/doctor_sign_up.dart';
import 'package:animal_app/screens/doctor/online_visit_doctor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/sign_in_form.dart';
import '../../../providers/auth providers/doctor_auth_provider.dart';

class DoctorSignIn extends StatefulWidget {
  const DoctorSignIn({super.key});

  @override
  State<DoctorSignIn> createState() => _DoctorSignInState();
}

class _DoctorSignInState extends State<DoctorSignIn> {
  TextEditingController doIdController = TextEditingController();
  TextEditingController doPasswordController = TextEditingController();

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
        child: SignInForm(
          idController: doIdController,
          passwordController: doPasswordController,
          size: size,
          color: const Color.fromRGBO(45, 73, 212, 1),
          signIn: () async {
            // Show a loading dialog while logging in
            showDialog(
              context: context,
              builder: (ctx) =>
                  const Center(child: CircularProgressIndicator()),
            );
            try {
              await Provider.of<DoctorAuthProvider>(context, listen: false)
                  .loginDoctor(doIdController.text, doPasswordController.text);
              Navigator.of(context).pop(); // Close the loading dialog
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnlineVisitDoctor(),
                ),
              );
            } catch (error) {
              Navigator.of(context).pop(); // Close the loading dialog
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Error"),
                  content: const Text("Invalid email or password"),
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
                builder: (context) => const DoctorSignUp(),
              ),
            );
          },
        ),
      ),
    );
  }
}
