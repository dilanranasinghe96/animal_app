import 'package:flutter/material.dart';

import '../../components/custom_background.dart';
import '../../components/custom_text.dart';
import '../auth/accounts_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AccountsPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.width * 0.3,
                width: size.width * 0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/assets/splash.png'))),
              ),
              CustomText(
                  text: 'Animal App',
                  color: Colors.black,
                  fsize: 30,
                  fweight: FontWeight.bold),
            ],
          ),
        ),
      ),
    );
  }
}
