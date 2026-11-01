import 'package:class12/src/view/appData.dart';
import 'package:class12/src/view/pages/homeScreen/homeScreen.dart';
import 'package:class12/src/view/widgets/customText.dart';
import 'package:class12/src/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import 'homeScreen/widgets/loginButton.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            right: 0,
            width: 300,

            child: ShaderMask(
              shaderCallback: (rect) => const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.transparent, Colors.black],
                stops: [0.0, 0.45],
              ).createShader(rect),
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                "assets/img/images.jpg",
                height: 400,
                // height: MediaQuery.sizeOf(context).height / 2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 50,
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
                  SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    child: CustomTextWidget(
                      title: 'Find a comfortable boarding house to be your new home',
                      maxline: 2,
                      fC: Colors.grey[600],
                      fS: 18,
                      fW: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              constraints: BoxConstraints(maxHeight: 500),

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
                    CustomTextWidget(
                      title: 'Welcome',
                      fS: 25,
                      fW: FontWeight.w600,
                    ),
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
                    ),

                    CustomTextWidget(
                      title: 'Password',
                      fS: 18,
                      fW: FontWeight.w500,
                    ),
                    CustomTextField(
                      title: 'Enter Phone Number',
                      keyboard: TextInputType.text,
                      isClick: isShow,
                      suffixicon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isShow = !isShow;
                          });
                        },

                        child: isShow
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomTextWidget(
                        title: '	Forgot Password?',
                        fC: primaryColor,
                        fW: FontWeight.w600,
                      ),
                    ),

                    LogInButton(),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextWidget(
                          title: "	Don't have an account?",
                          fS: 15,
                          fW: FontWeight.w500,
                        ),
                        CustomTextWidget(
                          title: '	Sign Up Now',
                          fS: 15,
                          fW: FontWeight.w500,
                          fC: primaryColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

