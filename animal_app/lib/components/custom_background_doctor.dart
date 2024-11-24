import 'package:flutter/material.dart';

class CustomBackgroundDoctor extends StatelessWidget {
  const CustomBackgroundDoctor({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromRGBO(147, 199, 251, 0.97), // #93C7FBF7 - 97%
            Color.fromRGBO(0, 104, 254, 0.50), // #0068FE80 - 50%
          ],
          center: Alignment.center, // Center the gradient
          radius: 1.0, // Adjust the gradient size
        ),
      ),
      child: child,
    );
  }
}
