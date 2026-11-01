import 'package:class12/src/view/appData.dart';
import 'package:class12/src/view/widgets/customText.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List city = ['kallanpur, dhaka','Mirpur, dhaka','shymoli, dhaka','Mohammadpur, Dhaka'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                title: 'Hi, Nazifa 👋',
                fS: 24,
                fW: FontWeight.w600,
              ),
              CustomTextWidget(
                title: 'Find comfortable boarding houses nearby',
                fS: 15,
                fW: FontWeight.w600,
                fC: Colors.grey,
              ),

              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: primaryColor),
                    CustomTextWidget(
                      title: 'Kallynpur,Dhaka',
                      fS: 18,
                      fW: FontWeight.w500,
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
