import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.keyboard,
    this.suffixicon, this.password,
  });
  final String title;
  final TextInputType keyboard;
  final Widget? suffixicon;
  final bool? password;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isClick,
      keyboardType: widget.keyboard,
      scrollPadding: EdgeInsets.only(bottom: 7000),
      decoration: InputDecoration(
        suffixIcon: widget.suffixicon,
        hintText: widget.title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
