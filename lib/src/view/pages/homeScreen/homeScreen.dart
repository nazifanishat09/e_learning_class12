import 'package:class12/src/view/appData.dart';
import 'package:class12/src/view/widgets/customText.dart';
import 'package:class12/src/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Map<String, dynamic>> gender = [
    {'title': 'All', 'icon': Icons.home_filled, 'color': Colors.blue},
    {'title': 'Male', 'icon': Icons.boy, 'color': Colors.black},
    {'title': 'FeMale', 'icon': Icons.girl, 'color': Colors.pink},
    {'title': 'Custom', 'icon': Icons.transgender, 'color': Colors.greenAccent},
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 10,
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
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.location_on, color: primaryColor),
                    CustomTextWidget(
                      title: 'Kallynpur,Dhaka',
                      fS: 18,
                      fW: FontWeight.w500,
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),

              SizedBox(
                height: 50,
                child: CustomTextField(
                  title: 'Search boarding houses, locations, or campuses...',
                  prefixIcon: Icon(Icons.search),
                  keyboard: TextInputType.text,
                ),
              ),

              SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: gender.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),

                  itemBuilder: (c, v) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = v;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: colorW,
                            border: Border.all(
                              color: selected == v ? primaryColor : Colors.grey,
                              width: selected == v ? 3 : 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                gender[v]['icon'],
                                color: gender[v]['color'] as Color,
                              ),
                              CustomTextWidget(
                                title: '${gender[v]['title']}',
                                fS: 16,
                                fW: FontWeight.w600,
                                fC: primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
