import 'package:class12/src/view/pages/homeScreen/homeScreen.dart';
import 'package:class12/src/view/pages/signInscreen.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: SignInScreen());
  }
}
