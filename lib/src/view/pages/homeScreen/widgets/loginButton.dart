import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../appData.dart';
import '../../../widgets/customText.dart';
import '../homeScreen.dart';

class LogInButton extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (c) => Homescreen()),
        );
      },
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Align(
          alignment: Alignment.center,
          child: CustomTextWidget(
            title: 'LogIn',
            fC: colorW,
            fW: FontWeight.w600,
            fS: 18,
          ),
        ),
      ),
    );
  }
}
