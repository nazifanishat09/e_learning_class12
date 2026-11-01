import 'package:class12/src/view/appData.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.keyboard,
    this.suffixicon,  this.isClick = false,
  });
  final String title;
  final TextInputType keyboard;
  final Widget? suffixicon;
  final bool isClick ;

  @override
  Widget build(BuildContext context) {
    return TextField(cursorColor: primaryColor,

      obscureText: isClick,
      keyboardType: keyboard,
      scrollPadding: EdgeInsets.only(bottom: 7000),
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        hintText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: primaryColor)
        )
      ),
    );
  }
}
