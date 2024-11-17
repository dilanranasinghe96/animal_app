import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  CustomBackground({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(color: Color(0xFF00b4d8)),
        child: child);
  }
}
