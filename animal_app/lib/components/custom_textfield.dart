import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      this.isPassword = false,
      required this.label,
      required this.controller,
      required this.prefix});
  bool isPassword;
  String label;
  IconData prefix;
  TextEditingController controller = TextEditingController();

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: size.width * 0.6,
      child: TextField(
          cursorColor: Colors.black,
          controller: widget.controller,
          obscureText: widget.isPassword == false ? !isObscure : isObscure,
          decoration: InputDecoration(
              border: InputBorder.none,
              label: Text(widget.label),
              labelStyle: const TextStyle(color: Colors.black),
              prefixIcon: Icon(widget.prefix),
              suffixIcon: widget.isPassword == true
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off))
                  : null)),
    );
  }
}
