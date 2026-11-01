import 'package:class12/src/view/appData.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.keyboard,
    this.suffixicon,  this.isClick = false, this.prefixIcon,
  });
  final String title;
  final TextInputType keyboard;
  final Widget? suffixicon;
  final bool isClick ;
  final Icon? prefixIcon;


  @override
  Widget build(BuildContext context) {
    return TextField(cursorColor: primaryColor,

      obscureText: isClick,
      keyboardType: keyboard,
      scrollPadding: EdgeInsets.only(bottom: 7000),
      decoration: InputDecoration(fillColor: colorW,filled: true,
        suffixIcon: suffixicon,prefixIcon: prefixIcon,
        hintText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: colorG),
        ),enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: colorG),),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: primaryColor),
        )
      ),
    );
  }
}
