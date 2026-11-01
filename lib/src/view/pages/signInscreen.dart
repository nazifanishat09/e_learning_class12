import 'package:class12/src/view/widgets/customText.dart';
import 'package:class12/src/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            "assets/img/images.jpg",
            height: MediaQuery.sizeOf(context).height/2,
            fit: BoxFit.fitHeight,
          ),
          Positioned(
            top: 70,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/logo/logo.png", height: 100),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    child: CustomTextWidget(
                      title: 'Find the best boarding house and live more comfortably',
                      maxline: 2,
                      fS: 20,
                      fW: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    child: CustomTextWidget(
                      title: 'Find a comfortable boarding house to be your new home',
                      maxline: 2,
                      fC: Colors.grey,
                      fS: 18,
                      fW: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(top: 300,
            left: 0,
            right: 0,
            bottom: 0,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 480),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 15,
                    children: [
                      CustomTextWidget(title: 'Welcome', fS: 25, fW: FontWeight.w600),
                      CustomTextWidget(
                        title: 'Log in to continue searching for the best boarding house',
                        fS: 15,
                        fW: FontWeight.w500,
                        fC: Colors.grey,
                        maxline: 2,
                      ),
                      CustomTextWidget(
                        title: 'Phone Number',
                        fS: 18,
                        fW: FontWeight.w500,
                      ),
                      CustomTextField(
                        title: 'Enter Phone Number',
                        keyboard: TextInputType.phone,
                        password: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
