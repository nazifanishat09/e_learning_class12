import 'package:class12/src/view/pages/homeScreen/homeScreen.dart';
import 'package:class12/src/view/pages/product_page/product_screen.dart';
import 'package:class12/src/view/pages/signInscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: ProductScreen(),
    );
  }
}
